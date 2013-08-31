<?php

class NPC
{
    public $sai = array();
    public $eai = array();
    public $texts = array();

    public  $npcId;
    public  $npcName;

    private $textGroupId = 0;
    private $textId      = 0;
    private $saiItemId   = 0;
    
    public function __construct($npcId, $npcName) {
        $this->npcId      = $npcId;
        $this->npcName    = $npcName;
        $this->saiItemId  = 0;
    }

    public function countSQLRows($isSAI = false) {
        if ($isSAI)
            return count($this->sai);
        return count($this->eai);
    }

    public function setEmoteWhenFleeing($apply) {
        foreach ($this->sai as $saiItem)
            $saiItem->setFleeingEmoteState($apply);
    }

    public function addSAI($sai)
    {
        $this->sai[] = $sai;
    }

    public function addEAI($eai)
    {
        $this->eai[] = new EAI($eai, $this);
    }

    public function addText($item, $eaiActionParams)
    {
        $textObj = new CreatureText($item, $eaiActionParams, $this);
        $this->texts[] = $textObj;
        return $textObj;
    }

    public function increaseTextGroupId() { $this->resetTextId(); $this->textGroupId++; return $this; }
    public function getGroupId()          { return $this->textGroupId; }

    public function resetTextId()         { $this->textId = 0; }
    public function getTextId()           { $this->textId++; return $this->textId - 1; }

    public function getSaiIndex()         { return $this->saiItemId; }
    public function increaseSaiIndex()    { $this->saiItemId++; return $this; }
    public function resetSaiIndex()       { $this->saiItemId = 0; }

    public function convertAllToSAI() {
        foreach ($this->eai as $eaiItem)
            $this->addSAI($eaiItem->toSAI());
        unset($this->eai); // Save some memory
    }

    public function updateTalkActions($eaiEntry, $saiEntry) {
        foreach ($this->sai as $saiItem)
            $saiItem->updateTalkActions($eaiEntry, $saiEntry);
    }

    public function getSmartScripts($write = true)
    {
        if (!$write)
        {
            foreach ($this->sai as $itr => $item)
                $item->toSQL(false);

            unset($item); // Save some memory
            return;
        }

        $this->resetSaiIndex();

        $output =  '-- '.$this->npcName.' SAI'.PHP_EOL;
        $output .= 'SET @ENTRY := '.$this->npcId.';'.PHP_EOL;
        $output .= 'UPDATE `creature_template` SET `AIName`=\'SmartAI\' WHERE `entry`=@ENTRY;'.PHP_EOL;
        $output .= 'DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;'.PHP_EOL;
        $output .= 'DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;'.PHP_EOL; # The reason default source_type is 0 is because EventAI doesn't support anything else than creature AI.
        $output .= 'INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES'.PHP_EOL;

        $saiRows = array();
        foreach ($this->sai as $item)
            foreach($item->toSQL() as $row)
                $saiRows[] = $row;

        for ($currRowId = 1, $l = count($saiRows); $currRowId < $l; ++$currRowId)
        {
            $currRow = $saiRows[$currRowId];

            for ($prevRowId = 0; $prevRowId < $currRowId; ++$prevRowId)
            {
                $prevRow = $saiRows[$prevRowId];

                while ($prevRow[3] == SMART_EVENT_LINK)
                    $prevRow = $saiRows[$prevRow[2]];

                if ($prevRow[3] != $currRow[3])
                    continue; // Different event type

                if (!($prevRow[4] & $currRow[4]))
                    continue; // Different event phase

                if ($prevRow[5] != $currRow[5])
                    continue; // Different event chance

                if (!($prevRow[6] & $currRow[6]))
                    continue; // Different event flags

                // Parameters compliance check
                $paramsMatch = true;

                for ($paramIdx = 0; $paramsMatch && $paramIdx < 4; ++$paramIdx)
                {
                    if ($prevRow[7 + $paramIdx] != $currRow[7 + $paramIdx])
                    {
                        $paramsMatch = false;
                        break;
                    }
                }

                if (!$paramsMatch)
                    continue;
                
                // Link events
                $saiRows[$currRowId][3] = SMART_EVENT_LINK;
                $saiRows[$currRowId][4] = $prevRow[4]; // We pass on phase here
                $saiRows[$currRowId][5] = 100; // no need to bother with coreside checks
                $saiRows[$currRowId][6] = $prevRow[6]; // event_flags, ignored coreside but its more beautiful
                $saiRows[$prevRowId][2] = $currRowId;
                break;
            }
        }
        
        foreach ($saiRows as $index => &$item)
            $output .= '(@ENTRY,' . implode(',', $item) . '),' . PHP_EOL;

        unset($item);
        // Remove last ",PHP_EOL"
        return substr($output, 0, - strlen(PHP_EOL) - 1).';'.PHP_EOL.PHP_EOL;
    }

    public function getCreatureText()
    {
        $qty = count($this->texts);

        foreach ($this->texts as &$textItem)
            if ($textItem->isFleeEmote())
                $qty--;

        unset($textItem); // Save some memory

        if ($qty == 0)
            return '';

        $output  = '-- Texts for '.$this->npcName.PHP_EOL;
        $output .= 'SET @ENTRY := '.$this->npcId.';'.PHP_EOL;
        $output .= 'DELETE FROM `creature_text` WHERE `entry`=@ENTRY;'.PHP_EOL;
        $output .= 'INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES'.PHP_EOL;
        foreach ($this->texts as $item)
            $output .= $item->toCreatureText();

        unset($item); // Save some memory

        return substr($output, 0, - strlen(PHP_EOL) - 1).';'.PHP_EOL.PHP_EOL;
    }
}

class SAI
{
    public function __construct($array, $parent)
    {
        $this->data = $array;
        $this->_parent = $parent;
    }

    public function updateTalkActions($eaiValue, $saiValue)
    {
        for ($i = 1; $i <= 3 ; $i++)
        {
            if (!isset($this->data['actions'][$i]))
                continue;

            $action = $this->data['actions'][$i];

            if (count($action) == 0 || $action['SAIAction'] != SMART_ACTION_TALK || $eaiValue != $action['params'][0])
                continue;

            $this->data['actions'][$i]['params'] = array($saiValue, 0, 0, 0, 0, 0);
        }

        unset($eaiValue, $saiValue); // Save some memory
    }

    public function setFleeingEmoteState($apply)
    {
        $size = count($this->data['actions']);
        for ($i = 1; $i < $size; $i++)
        {
            $action = &$this->data['actions'][$i];
            if (count($action) == 0)
                break;

            if ($action['SAIAction'] == SMART_ACTION_FLEE_FOR_ASSIST)
                $action['params'][0] = ($apply ? 1 : 0);
        }
        unset($i, $size); // Save some memory
    }

    public function toSQL($write = true)
    {
        //! We do not write anything, we only store texts.
        if (!$write)
        {
            for ($i = 1; $i <= 3; $i++)
            {
                if (!isset($this->data['actions'][$i]))
                    continue;

                $action = $this->data['actions'][$i];
                
                if (count($action) == 0)
                    continue;

                if ($action['SAIAction'] == SMART_ACTION_TALK)
                {
                    foreach ($action['extraData'] as $text)
                        $this->_parent->addText($text, $action['eaiActionParams'])->setGroupId($this->_parent->getGroupId())->setTextId($this->_parent->getTextId());
                        
                    $this->_parent->increaseTextGroupId();
                    unset($text); // Save some memory
                }
            }

            return;
        }

        $outputData = array();

        // Fast-remove all flee emotes
        // Need to be done before processing, else linking is fooked
        foreach ($this->data['actions'] as $i => $action)
            if ($action['SAIAction'] == SMART_ACTION_TALK && $action['params'][0] == -47)
                unset($this->data['actions'][$i]);

        foreach ($this->data['actions'] as $i => $action)
        {
            //! Found an empty action. Means no action's following.
            if (count($action) == 0)
                break;

            $outputData[] = array();
            $currentRecord = &$outputData[count($outputData) - 1];

            $currentRecord[] = $this->data['source_type'];
            $currentRecord[] = $this->_parent->getSaiIndex();
            $currentRecord[] = 0; // LINK INDEX, #2

            $currentRecord[] = $this->data['event_type'];
            $currentRecord[] = $this->data['event_phase'];
            $currentRecord[] = $this->data['event_chance'];
            $currentRecord[] = $this->data['event_flags'];

            for ($j = 1; $j <= 4; $j++)
                $currentRecord[] = $this->data['event_params'][$j];

            # Writing action parameters
            $currentRecord[] = $this->data['actions'][$i]['SAIAction'];

            for ($j = 0; $j < 6; $j++)
                $currentRecord[] = (isset($this->data['actions'][$i]['params'][$j]) ? $this->data['actions'][$i]['params'][$j] : 0);

            if ($this->data['actions'][$i]['SAIAction'] == SMART_ACTION_SUMMON_CREATURE && $this->data['actions'][$i]['isSpecialHandler'])
            {
                $summonData = $this->data['actions'][$i]['extraData'];
                $currentRecord[] = SMART_TARGET_POSITION.',0,0,0';
                $currentRecord[] = $summonData->position_x;
                $currentRecord[] = $summonData->position_y;
                $currentRecord[] = $summonData->position_z;
                $currentRecord[] = $summonData->orientation;
            }
            else
            {
                //! Default values of all of these is 0, so we can safely use them like this.
                $currentRecord[] = $this->data['actions'][$i]['target'];

                for ($x = 0; $x < 3; $x++)
                    $currentRecord[] = $this->data['actions'][$i]['target_params'][$x];

                for ($x = 0; $x < 4; $x++)
                    $currentRecord[] = $this->data['actions'][$i]['target_paramCoords'][$x];
            }

            # Build the comment, and we're done.
            $currentRecord[] = '"'.$this->buildComment($action['commentType'], $i).'"';
            $this->_parent->increaseSaiIndex();
        }

        return $outputData;
    }

    private function buildComment($commentType, $actionIndex)
    {
        $npcName = $this->_parent->npcName;
        $npcName = str_replace('"', "'", $npcName);

        $match = array(
            '_npcName_' => $npcName,
            '_eventName_' => Utils::GetEventString($this->data['event_type'], $this->data['event_params'])
        );

        $commentType = str_replace(array_keys($match), array_values($match), $commentType);

        if ($this->data['actions'][$actionIndex]['SAIAction'] == SMART_ACTION_TALK)
            $commentType = str_replace('_lineEntry_', $this->data['actions'][$actionIndex]['params'][0], $commentType);

        // Any DBC-needed data is dumped here
        if (Factory::hasDbcWorker())
        {
            // Place event precessors here
            if ($this->data['event_type'] == SMART_EVENT_SPELLHIT ||
                $this->data['event_type'] == SMART_EVENT_SPELLHIT_TARGET ||
                $this->data['event_type'] == SMART_EVENT_FRIENDLY_MISSING_BUFF)
            {
                if ($this->data['event_params'][1] != 0)
                {
                    $commentType = str_replace(
                        '_spellNameFirstParam_',
                        Factory::getSpellNameForLoc($this->data['event_params'][1], LOCALE),
                        $commentType);
                }
                else // @TODO: Possibly inform of missing spell id.
                    $commentType = str_replace(' _spellNameFirstParam_', '', $commentType);
            }
            elseif ($this->data['event_type'] == SMART_EVENT_HAS_AURA)
            {
                if ($this->data['event_params'][1] != 0)
                {
                    $commentType = str_replace(
                        '_hasAuraSpellId_',
                        Factory::getSpellNameForLoc($this->data['event_params'][1], LOCALE),
                        $commentType);
                }
                else // @TODO: Possibly inform of missing spell id.
                    $commentType = str_replace(' _hasAuraSpellId_', '', $commentType);
            }

            // Place action processors here
            if ($this->data['actions'][$actionIndex]['SAIAction'] == SMART_ACTION_CAST) {
                $commentType = str_replace(
                    '_castSpellId_',
                    Factory::getSpellNameForLoc($this->data['actions'][$actionIndex]['params'][0], LOCALE),
                    $commentType);
            }
            elseif ($this->data['actions'][$actionIndex]['SAIAction'] == SMART_ACTION_REMOVEAURASFROMSPELL &&
                $this->data['actions'][$actionIndex]['params'][0] != 0)
            {
                $commentType = str_replace(
                    '_removeAuraSpell_',
                    Factory::getSpellNameForLoc($this->data['actions'][$actionIndex]['params'][0], LOCALE),
                    $commentType);
            }
        }
        else
        {
            if ($this->data['actions'][$actionIndex]['SAIAction'] == SMART_ACTION_CAST)
                $commentType = str_replace('_castSpellId_', $this->data['actions'][$actionIndex]['params'][0]." (Not found in DBCs!)", $commentType);
            elseif ($this->data['actions'][$actionIndex]['SAIAction'] == SMART_ACTION_REMOVEAURASFROMSPELL &&
                $this->data['actions'][$actionIndex]['params'][0] != 0)
                $commentType = str_replace('_removeAuraSpell_', $this->data['actions'][$actionIndex]['params'][0]." (Not found in DBCs!)", $commentType);

            if ($this->data['event_type'] == SMART_EVENT_SPELLHIT ||
                $this->data['event_type'] == SMART_EVENT_SPELLHIT_TARGET)
                $commentType = str_replace('_spellNameFirstParam_', $this->data['event_params'][1]." (Not found in DBCs!)", $commentType);
        }

        if ($this->data['event_flags'] != 0)
        {
            if ($this->data['event_flags'] & SMART_EVENT_FLAG_DIFFICULTY_0 && $this->data['event_flags'] & SMART_EVENT_FLAG_DIFFICULTY_1 &&
                $this->data['event_flags'] & SMART_EVENT_FLAG_DIFFICULTY_2 && $this->data['event_flags'] & SMART_EVENT_FLAG_DIFFICULTY_3)
                $commentType .= " (Dungeon & Raid Only)";
            else
            {
                if ($this->data['event_flags'] & SMART_EVENT_FLAG_DIFFICULTY_0 && $this->data['event_flags'] & SMART_EVENT_FLAG_DIFFICULTY_1)
                    $commentType .= " (Dungeon Only)";
                else
                {
                    if ($this->data['event_flags'] & SMART_EVENT_FLAG_DIFFICULTY_0)
                        $commentType .= " (Normal Dungeon)";
                    elseif ($this->data['event_flags'] & SMART_EVENT_FLAG_DIFFICULTY_1)
                        $commentType .= " (Heroic Dungeon)";
                }

                if ($this->data['event_flags'] & SMART_EVENT_FLAG_DIFFICULTY_2 && $this->data['event_flags'] & SMART_EVENT_FLAG_DIFFICULTY_3)
                    $commentType .= " (Raid Only)";
                else
                {
                    if ($this->data['event_flags'] & SMART_EVENT_FLAG_DIFFICULTY_2)
                        $commentType .= " (Normal Raid)";
                    elseif ($this->data['event_flags'] & SMART_EVENT_FLAG_DIFFICULTY_3)
                        $commentType .= " (Heroic Raid)";
                }
            }

            if ($this->data['event_flags'] & SMART_EVENT_FLAG_DEBUG_ONLY)
                $commentType .= " (Debug)";
        }

        if ($this->data['event_phase'] != 0)
        {
            $phaseSplit = Utils::getInversedPhasesInArray($this->data['event_phase']);

            $commentType .= " (Phase";
            if (count($phaseSplit) > 1)
                $commentType .= "s";

            $commentType .= " " . implode(" & ", $phaseSplit) . ")";
        }

        return $commentType;
    }
}

class EAI
{
    public function __construct($pdoObj, $parent)
    {
        $this->_eaiItem = $pdoObj;
        $this->_parent = $parent;
    }

    public function toSAI()
    {
        $saiData = array();
        $saiData['entryorguid']  = intval($this->_eaiItem->npcId);
        $saiData['npcName']      = $this->_eaiItem->npcName;
        $saiData['source_type']  = 0;

        $saiData['event_type']   = Utils::convertEventToSAI($this->_eaiItem->event_type);
        $saiData['event_chance'] = intval($this->_eaiItem->event_chance);
        $saiData['event_flags']  = Utils::EAI2SAIFlag($this->_eaiItem->event_flags);
        $saiData['event_params'] = Utils::convertParamsToSAI($this->_eaiItem);

        $saiData['actions']      = Utils::buildSAIAction($this->_eaiItem);

        if (!is_array($saiData['actions']))
        {
            trigger_error('FATAL ERROR! Utils::buildSAIAction() did NOT return an array.', E_USER_ERROR);
            exit(1);
        }

        # Build target data
        $saiData['targetData']   = array(
            'target_type' => SMART_TARGET_NONE,
            'position'    => array(),
            'spawnTimeSecs' => 0
        );

        $saiData['event_phase']  = Utils::EAIPhaseToSAI(intval($this->_eaiItem->event_inverse_phase_mask));

        $saiData['saiEntries'] = 0;
        for ($i = 1; $i < 4; $i++)
            if (isset($saiData['actions'][$i]))
                if (count($saiData['actions'][$i]) != 0)
                    $saiData['saiEntries']++;

        return new SAI($saiData, $this->_parent);
    }
}

class CreatureText
{
    public $groupId = -1;
    public $textId  = -1;

    public function __construct($item, $eaiActionParams, $parentNpc)
    {
        $this->_item            = $item;
        $this->_eaiActionParams = $eaiActionParams;
        $this->_parent          = $parentNpc;
        $this->_eaiEntry        = $item->entry;
    }

    public function isGroupIdSet()
    {
        return $this->groupId != -1;
    }

    public function isTextIdSet()
    {
        return $this->textId != -1;
    }

    public function setGroupId($groupId)
    {
        $this->groupId = $groupId;
        return $this;
    }

    public function setTextId($textId)
    {
        $this->textId = $textId;
        return $this;
    }

    public function isFleeEmote()
    {
        return ($this->_item->entry == -47);
    }

    public function toCreatureText()
    {
        // Ignore flee emotes.
        if ($this->isFleeEmote())
        {
            $this->_parent->setEmoteWhenFleeing(true);
            return '';
        }

        $output  = '(@ENTRY,';
        $output .= $this->groupId.',';
        $output .= $this->textId.',';

        $content = addslashes($this->_item->content_default);
        $content = str_replace($this->_parent->npcName, "%s", $content);

        $output .= '"'.str_replace("\'", "'", $content).'",';
        $output .= $this->textTypeToSAI($this->_item).',';
        $output .= $this->_item->language.',';

        if ($this->_eaiActionParams[0] == $this->_eaiActionParams[1] && $this->_eaiActionParams[0] && $this->_eaiActionParams[1])
        {
            if ($this->_eaiActionParams[0] == $this->_item->entry || $this->_eaiActionParams[1] == $this->_item->entry)
                $output .= '66,';
            else
                $output .= '33,';
        }
        elseif ($this->_eaiActionParams[1] == $this->_eaiActionParams[2] && $this->_eaiActionParams[1] && $this->_eaiActionParams[2])
        {
            if ($this->_eaiActionParams[1] == $this->_item->entry || $this->_eaiActionParams[2] == $this->_item->entry)
                $output .= '66,';
            else
                $output .= '33,';
        }
        elseif ($this->_eaiActionParams[0] == $this->_eaiActionParams[2] && $this->_eaiActionParams[0] && $this->_eaiActionParams[2])
        {
            if ($this->_eaiActionParams[0] == $this->_item->entry || $this->_eaiActionParams[2] == $this->_item->entry)
                $output .= '66,';
            else
                $output .= '33,';
        }
        else
            $output .= '100,';

        $output .= $this->_item->emote.',0,';
        $output .= $this->_item->sound.',"'.addslashes($this->_parent->npcName).'"),'.PHP_EOL;
        
        $this->_parent->updateTalkActions($this->_eaiEntry, $this->groupId);
        return $output;
    }

    private function textTypeToSAI($item)
    {
        // Too lazy to add enums here.
        switch ($item->type)
        {
            case 0:
            case 1:
            case 2:
                return 12 + $item->type * 2;
            case 3:
                return 41;
            case 4:
                return 15;
            case 5:
                return 42; // YOU WIN
            case 6:
                if ($this->_item->entry == -544)
                    return 16;
                else if ($this->_item->entry == -860)
                    return 12;
            //! No break on purpose.
            default:
                return -999; // Should never happen
        }
    }
}
