<?php

class NPC
{
    private $sai = array();
    private $eai = array();
    private $texts = array();

    public  $npcId;
    public  $npcName;

    private $textGroupId  = 0;
    private $textId       = 0;

    private $actionRowCache = array();

    public function __construct($npcId, $npcName) {
        $this->npcId      = $npcId;
        $this->npcName    = $npcName;
        $this->saiItemId  = 0;
        $this->dumpSpells = (Factory::createOrGetDBCWorker() !== false);
    }

    public function __destruct() {
        $l = count($this->actionRowCache);
        for ($i = 0; $i < $l; ++$i)
            unset($this->actionRowCache[$i]);
        $l = count($this->sai);
        for ($i = 0; $i < $l; ++$i)
            unset($this->sai[$i]);
        unset($i, $l);
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

    public function addSAI($sai) {
        $this->sai[] = $sai;
    }

    public function addEAI($eai) {
        $this->eai[] = new EAI($eai, $this);
    }

    public function addText($item) {
        $textObj = new CreatureAiText($item, $this);
        $this->texts[] = $textObj;
        return $textObj;
    }

    public function increaseTextGroupId() { $this->resetTextId(); $this->textGroupId++; return $this; }
    public function getGroupId()   { return $this->textGroupId; }

    public function resetTextId()         { $this->textId = 0; }
    public function getTextId()    { $this->textId++; return $this->textId - 1; }

    public function AddSAIRow($actionRow) {
        $this->actionRowCache[] = $actionRow;
    }

    public function getSmartScripts() {
        foreach ($this->sai as $itr => &$item)
            $item->toSQL();
        foreach ($this->sai as $itr => &$item)
            unset($item, $itr);

        $output = '-- ' . $this->npcName . ' SAI' . PHP_EOL;
        $output .= 'SET @ENTRY := ' . $this->npcId . ';' . PHP_EOL;
        $output .= 'UPDATE `creature_template` SET `AIName`=\'SmartAI\' WHERE `entry`=@ENTRY;' . PHP_EOL;
        $output .= 'DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;' . PHP_EOL;
        $output .= 'DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;' . PHP_EOL; # The reason default source_type is 0 is because EventAI doesn't support timed actionlists.
        $output .= 'INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES' . PHP_EOL;

        $max = count($this->actionRowCache) - 1;
        for ($i = 0; $i < $max; ++$i) {
            $row = $this->actionRowCache[$i];
            $nextRow = &$this->actionRowCache[$i + 1];
            $row[2] = $i;
            if ($this->isEventEqual($row, $nextRow)) {
                $row[3] = $i + 1;
                $nextRow['linkIndex'] = $i; // We know we were linked on next call
            }

            if (isset($row['linkIndex'])) {
                $row[4] = SMART_EVENT_LINK;
                $row[5] = 0;
                $row[7] = 0;
                $row[8] = 0;
                $row[9] = 0;
                $row[10] = 0;
                $row[11] = 0;
            }

            unset($row['linkIndex']);
            $output .= "(" . implode(",", $row) . "," . PHP_EOL;
        }
        // Append last record

        $row = &$this->actionRowCache[$max];
        if (isset($row['linkIndex'])) {
            $row[4] = SMART_EVENT_LINK;
            $row[5] = 0;
            $row[7] = 0;
            $row[8] = 0;
            $row[9] = 0;
            $row[10] = 0;
            $row[11] = 0;
        }
        unset($row['linkIndex']);
        $row[2] = $max;
        $output .= "(" . implode(",", $this->actionRowCache[$max]) . ";" . PHP_EOL . PHP_EOL;
        for ($i = 0; $i < $max + 1; ++$i)
            unset($this->actionRowCache[$i]);
        return $output;
    }

    public function isEventEqual($a, $b) {
        if ($a[4] != $b[4]) // Event type
            return false;
        if ($a[6] != $b[6]) // Chance
            return false;
        if ($a[5] != $b[5]) // Phase
            return false;
        if ($a[9] != $b[9] || $a[10] != $b[10] || $a[11] != $b[11] || $a[8] != $b[8]) // Event params
            return false;
        if ($a[7] != $b[7]) // Flags || Not sure about linking even if repeated flag is non-repeatable, wtb halp
            return false;
        return true;
    }

    public function loadSAI() {
        foreach ($this->eai as &$eaiItem)
        {
            $this->addSAI($eaiItem->toSAI());
            unset($eaiItem);
        }
        unset($this->eai);
    }

    public function updateTalkActions($eaiEntry, $saiEntry) {
        foreach ($this->sai as $saiItem)
            $saiItem->updateTalkActions($eaiEntry, $saiEntry);
    }

    public function prepare() {
        foreach ($this->sai as $itr => &$item)
            $item->toSQL(false);

        unset($item); // Save some memory
    }

    public function getCreatureText() {
        $qty = count($this->texts);
        foreach ($this->texts as &$textItem)
            if ($textItem->isFleeEmote())
                $qty--;

        unset($textItem); // Save some memory

        if ($qty == 0)
            return '';

        $output  = '-- Texts for ' . $this->npcName . PHP_EOL;
        $output .= 'DELETE FROM `creature_text` WHERE `entry`= ' . $this->npcId . ';' . PHP_EOL;
        $output .= 'INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES' . PHP_EOL;
        foreach ($this->texts as &$item)
            $output .= $item->toCreatureText();
            
        // Free them now
        foreach ($this->texts as &$item)
            unset($item);

        return substr($output, 0, - strlen(PHP_EOL) - 1) . ';' . PHP_EOL . PHP_EOL;
    }
}

class SAI
{
    public function __construct($array, &$parent) {
        $this->data = $array;
        $this->_parent = $parent;
    }

    public function updateTalkActions($eaiValue, $saiValue) {
        for ($i = 1; $i <= 3 ; $i++) {
            if (!isset($this->data['actions'][$i]))
                continue;

            $action = &$this->data['actions'][$i];

            if (count($action) == 0 || $action['SAIAction'] != SMART_ACTION_TALK || $eaiValue != $action['params'][0])
                continue;

            $this->data['actions'][$i]['params'] = array($saiValue, 0, 0, 0, 0, 0);
        }

        unset($eaiValue, $saiValue); // Save some memory
    }

    public function setFleeingEmoteState($apply) {
        $size = count($this->data['actions']);
        for ($i = 1; $i < $size; $i++) {
            $action = &$this->data['actions'][$i];
            if (count($action) == 0)
                break;

            if ($action['SAIAction'] == SMART_ACTION_FLEE_FOR_ASSIST)
                $action['params'][0] = ($apply ? 1 : 0);
        }
        unset($i, $size); // Save some memory
    }

    public function toSQL($parseEAI = true) {
        //! We do not write anything, we only store texts.
        if (!$parseEAI) {
            for ($i = 1; $i <= 3; $i++) {
                if (!isset($this->data['actions'][$i]))
                    continue;

                $action = &$this->data['actions'][$i];

                if (count($action) == 0)
                    continue;

                if ($action['SAIAction'] == SMART_ACTION_TALK) {
                    foreach ($action['extraData'] as $text)
                        $this->_parent->addText($text)->setGroupId($this->_parent->getGroupId())->setTextId($this->_parent->getTextId());
                    $this->_parent->increaseTextGroupId();
                    unset($text); // Save some memory
                }
            }
            return;
        }

        # Fast-remove all flee emotes
        # Needs to be done before processing, else linking is fooked
        foreach ($this->data['actions'] as $i => &$action)
            if ($action['SAIAction'] == SMART_ACTION_TALK && $action['params'][0] == -47)
                unset($this->data['actions'][$i]);

        foreach ($this->data['actions'] as $i => &$action) {
            $actionRow = array();
            # Found an empty action. Means no action's following.
            #! Note: Invalid for TWO EAIs. Fix them by hand before running this script.
            #! SELECT * FROM creature_ai_scripts WHERE action1_type= 0 AND (action2_type != 0 OR action3_type != 0);
            if (count($action) == 0)
                break;

            $actionRow[0]  = "@ENTRY";
            $actionRow[1]  = $this->data['source_type'];
            $actionRow[2]  = 0; # Event id, placeholder
            $actionRow[3]  = 0; # Link, placeholder
            $actionRow[4]  = $this->data['event_type']; # Change to SMART_EVENT_LINk if linked by previous event
            $actionRow[5]  = $this->data['event_phase']; # Change to 0 if linked
            $actionRow[6]  = $this->data['event_chance'];
            $actionRow[7]  = $this->data['event_flags']; # Change to 0 if linked
            // Event params
            $actionRow[8]  = $this->data['event_params'][1]; # CHange to 0 if linked
            $actionRow[9]  = $this->data['event_params'][2]; # CHange to 0 if linked
            $actionRow[10] = $this->data['event_params'][3]; # CHange to 0 if linked
            $actionRow[11] = $this->data['event_params'][4]; # CHange to 0 if linked

            # Writing action parameters
            $actionRow[12] = $action['SAIAction'];

            for ($j = 0; $j < 6; $j++)
                $actionRow[13 + $j] = (isset($action['params'][$j]) ? $action['params'][$j] : 0);

            # Writing targets
            $actionRow[20] = $this->data['actions'][$i]['target'];

            if ($action['SAIAction'] == SMART_ACTION_SUMMON_CREATURE && $action['isSpecialHandler'])
            {
                $summonData = &$action['extraData'];
                $actionRow[20] = SMART_TARGET_POSITION;
                $actionRow[21] = 0;
                $actionRow[22] = 0;
                $actionRow[23] = 0;
                $actionRow[24] = $summonData->position_x;
                $actionRow[25] = $summonData->position_y;
                $actionRow[26] = $summonData->position_z;
                $actionRow[27] = $summonData->orientation;
            }
            else {
                $actionRow[21] = 0;
                $actionRow[22] = 0;
                $actionRow[23] = 0;
                $actionRow[24] = 0;
                $actionRow[25] = 0;
                $actionRow[26] = 0;
                $actionRow[27] = 0;
            }

            # Build the comment, and we're done.
            $actionRow[28] = ' "' . $this->buildComment($action['commentType'], $i) . '")';

            $this->_parent->AddSAIRow($actionRow);
        }
    }

    private function buildComment($commentType, $actionIndex)
    {
        $match = array(
            '_npcName_' => $this->_parent->npcName,
            '_eventName_' => Utils::GetEventString($this->data['event_type'], $this->data['event_params'])
        );

        $commentType = str_replace(array_keys($match), array_values($match), $commentType);

        if ($this->data['actions'][$actionIndex]['SAIAction'] == SMART_ACTION_TALK) {
            $commentType = str_replace('_lineEntry_', $this->data['actions'][$actionIndex]['params'][0], $commentType);
        }

        // Any DBC-needed data is dumped here
        if (($factory = Factory::createOrGetDBCWorker()) !== false) {
            // Place event precessors here
            if ($this->data['event_type'] == SMART_EVENT_SPELLHIT || $this->data['event_type'] == SMART_EVENT_SPELLHIT_TARGET) {
                // For some bitch reason, some spellhit events have 0 as the spell hitter
                if ($this->data['event_params'][1] != 0) {
                    $commentType = str_replace(
                        '_spellHitSpellId_',
                        $factory->getFieldFromRecord($this->data['event_params'][1], 'SpellNameLang0', DBC::STRING),
                        $commentType); # Use your own locale here. I do not have english DBCs.
                }
                else
                    $commentType = str_replace(' _spellHitSpellId_ ', '', $commentType); // Extra space needed to remove double whitespaces
            }

            // Place action processors here
            if ($this->data['actions'][$actionIndex]['SAIAction'] == SMART_ACTION_CAST) {
                $commentType = str_replace(
                    '_castSpellId_',
                    $factory->getFieldFromRecord($this->data['actions'][$actionIndex]['params'][0], 'SpellNameLang0', DBC::STRING),
                    $commentType);
            }
            elseif ($this->data['actions'][$actionIndex]['SAIAction'] == SMART_ACTION_REMOVEAURASFROMSPELL && $this->data['actions'][$actionIndex]['params'][0] != 0) {
                $commentType = str_replace(
                    '_removeAuraSpell_',
                    $factory->getFieldFromRecord($this->data['actions'][$actionIndex]['params'][0], 'SpellNameLang0', DBC::STRING),
                    $commentType);
            }
        }
        else
        {
            if ($this->data['actions'][$actionIndex]['SAIAction'] == SMART_ACTION_CAST)
                $commentType = str_replace('_castSpellId_', $this->data['actions'][$actionIndex]['params'][0] . " (Not found in DBCs!)", $commentType);

            elseif ($this->data['event_type'] == SMART_EVENT_SPELLHIT || $this->data['event_type'] == SMART_EVENT_SPELLHIT_TARGET)
                $commentType = str_replace('_spellHitSpellId_', $this->data['event_params'][1] . " (Not found in DBCs!)", $commentType);

            elseif ($this->data['actions'][$actionIndex]['SAIAction'] == SMART_ACTION_REMOVEAURASFROMSPELL && $this->data['actions'][$actionIndex]['params'][0] != 0)
                $commentType = str_replace('_removeAuraSpell_', $this->data['actions'][$actionIndex]['params'][0] . " (Not found in DBCs!)", $commentType);
        }
        // Some other parsing and fixing may be needed here
        return $commentType;
    }
}

class EAI
{
    public function __construct(&$pdoObj, &$parent) {
        $this->_eaiItem = $pdoObj;
        $this->_parent = $parent;
    }

    public function __destruct() {
        unset($this->_eaiItem);
    }

    public function toSAI() {
        $saiData = array();
        $saiData['entryorguid']  = intval($this->_eaiItem->npcId);
        $saiData['npcName']      = $this->_eaiItem->npcName;
        $saiData['source_type']  = 0;

        $saiData['event_type']   = Utils::convertEventToSAI($this->_eaiItem->event_type);
        $saiData['event_chance'] = intval($this->_eaiItem->event_chance);
        $saiData['event_flags']  = Utils::EAI2SAIFlags($this->_eaiItem->event_flags);

        $saiData['event_params'] = Utils::convertParamsToSAI($this->_eaiItem);

        $saiData['actions']      = Utils::buildSAIAction($this->_eaiItem);

        if (!is_array($saiData['actions'])) {
            echo PHP_EOL . 'FATAL ERROR! Utils::buildSAIAction() did NOT return an array... Investigate, please.' . PHP_EOL;
            exit(1);
        }

        # Build target data
        $saiData['targetData']   = array(
            'target_type' => SMART_TARGET_NONE,
            'position'    => array(),
            'spawnTimeSecs' => 0
        );

        $saiData['event_phase']  = Utils::generateSAIPhase($this->_eaiItem->event_inverse_phase_mask);

        $saiData['saiEntries'] = 0;
        for ($i = 1; $i < 4; $i++)
            if (isset($saiData['actions'][$i]))
                if (count($saiData['actions'][$i]) != 0)
                    $saiData['saiEntries']++;

        return new SAI($saiData, $this->_parent);
    }
}

class CreatureAiText
{
    public $groupId = -1;
    public $textId  = -1;

    public function __construct($item, &$parentNpc) {
        $this->_item     = $item;
        $this->_parent   = $parentNpc;
        $this->_eaiEntry = $item->entry;
    }

    public function __destruct() {
        unset($this->groupId, $this->_item, $this->_eaiEntry, $this->textId);
    }

    public function isGroupIdSet() { return $this->groupId != -1; }
    public function isTextIdSet()  { return $this->textId != -1; }

    public function setGroupId($groupId) { $this->groupId = $groupId; return $this; }
    public function setTextId($textId)   { $this->textId  = $textId;  return $this; }

    public function isFleeEmote() { return ($this->_item->entry == -47); }

    public function toCreatureText() {
        // Ignore flee emotes.
        if ($this->isFleeEmote()) {
            $this->_parent->setEmoteWhenFleeing(true);
            return '';
        }

        $output  = '(' . $this->_parent->npcId . ',';
        $output .= $this->groupId . ',';
        $output .= $this->textId . ',';

        $content = addslashes($this->_item->content_default);

        $output .= ' "' . str_replace("\'", "'", $content) . '",';
        $output .= $this->typeToSAI($this->_item) . ',';
        $output .= $this->_item->language . ',100,';
        $output .= $this->_item->emote . ',0,';
        $output .= $this->_item->sound . ', "' . addslashes($this->_parent->npcName) . '"),' . PHP_EOL;

        $this->_parent->updateTalkActions($this->_eaiEntry, $this->groupId);

        return $output;
    }

    private function typeToSAI($item) {
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
            default:
                return -1; // Should never happen
        }
    }
}
