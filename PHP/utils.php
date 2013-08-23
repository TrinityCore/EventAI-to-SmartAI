<?php
require_once('./sqlbuilder.class.php');
require_once('./eai.def.php');
require_once('./sai.def.php');
require_once('./gen.def.php');

define('__FIXME__',  -1);

class Utils
{
    static function EAI2SAIFlag($flag)
    {
        // Rather than making shitty stuff, lets do it plain.
        $output = 0;
        if (!($flag & EFLAG_REPEATABLE))
            $output |= SMART_EVENT_FLAG_NOT_REPEATABLE;

        if ($flag & EFLAG_DIFFICULTY_0)
            $output |= SMART_EVENT_FLAG_DIFFICULTY_0;

        if ($flag & EFLAG_DIFFICULTY_1)
            $output |= SMART_EVENT_FLAG_DIFFICULTY_1;

        if ($flag & EFLAG_DIFFICULTY_2)
            $output |= SMART_EVENT_FLAG_DIFFICULTY_2;

        if ($flag & EFLAG_DIFFICULTY_3)
            $output |= SMART_EVENT_FLAG_DIFFICULTY_3;

        if ($flag & EFLAG_DEBUG_ONLY)
            $output |= SMART_EVENT_FLAG_DEBUG_ONLY;
        
        return $output;
    }

    static function convertEventToSAI($eventId) {
        switch ($eventId)
        {
            case EVENT_T_TIMER:
                return SMART_EVENT_UPDATE_IC;
            case EVENT_T_TIMER_OOC:
                return SMART_EVENT_UPDATE_OOC;
            case EVENT_T_HP:
                return SMART_EVENT_HEALT_PCT;
            case EVENT_T_MANA:
                return SMART_EVENT_MANA_PCT;
            case EVENT_T_AGGRO:
                return SMART_EVENT_AGGRO;
            case EVENT_T_KILL:
                return SMART_EVENT_KILL;
            case EVENT_T_DEATH:
                return SMART_EVENT_DEATH;
            case EVENT_T_EVADE:
                return SMART_EVENT_EVADE;
            case EVENT_T_SPELLHIT:
                return SMART_EVENT_SPELLHIT;
            case EVENT_T_RANGE:
                return SMART_EVENT_RANGE;
            case EVENT_T_OOC_LOS:
                return SMART_EVENT_OOC_LOS;
            case EVENT_T_SPAWNED:
                return SMART_EVENT_RESPAWN;
            case EVENT_T_TARGET_CASTING:
                return SMART_EVENT_TARGET_CASTING;
            case EVENT_T_TARGET_HP:
                return SMART_EVENT_TARGET_HEALTH_PCT;
            case EVENT_T_FRIENDLY_HP:
                return SMART_EVENT_FRIENDLY_HEALTH;
            case EVENT_T_FRIENDLY_IS_CC:
                return SMART_EVENT_FRIENDLY_IS_CC;
            case EVENT_T_FRIENDLY_MISSING_BUFF:
                return SMART_EVENT_FRIENDLY_MISSING_BUFF;
            case EVENT_T_SUMMONED_UNIT:
                return SMART_EVENT_SUMMONED_UNIT;
            case EVENT_T_TARGET_MANA:
                return SMART_EVENT_TARGET_MANA_PCT;
            case EVENT_T_QUEST_ACCEPT:
                return SMART_EVENT_ACCEPTED_QUEST;
            case EVENT_T_QUEST_COMPLETE:
                return SMART_EVENT_REWARD_QUEST;
            case EVENT_T_REACHED_HOME:
                return SMART_EVENT_REACHED_HOME;
            case EVENT_T_RECEIVE_EMOTE:
                return SMART_EVENT_RECEIVE_EMOTE;
            case EVENT_T_BUFFED:
                return SMART_EVENT_HAS_AURA;
            case EVENT_T_TARGET_BUFFED:
                return SMART_EVENT_TARGET_BUFFED;
            case EVENT_T_RESET:
                return SMART_EVENT_RESET;
            default:
                return SMART_EVENT_END;
        }
    }

    static function GetEventString($eventType, $params)
    {
        $param1 = $params[1];
        $param2 = $params[2];
        $param3 = $params[3];
        $param4 = $params[4];

        switch ($eventType)
        {
            case SMART_EVENT_UPDATE_IC:
                return "In Combat";
            case SMART_EVENT_UPDATE_OOC:
                return "Out Of Combat";
            case SMART_EVENT_AGGRO:
                return "On Aggro";
            case SMART_EVENT_KILL:
                return "On Killed Unit";
            case SMART_EVENT_DEATH:
                return "On Death";
            case SMART_EVENT_EVADE:
                return "On Evade";
            case SMART_EVENT_OOC_LOS:
                return "On LOS Out Of Combat";
            case SMART_EVENT_IC_LOS:
                return "On LOS In Combat";
            case SMART_EVENT_RESPAWN:
                return "On Respawn";
            case SMART_EVENT_TARGET_CASTING:
                return "On Target Casting";
            case SMART_EVENT_FRIENDLY_IS_CC:
                return "On Friendly Unit CC'd";
            case SMART_EVENT_FRIENDLY_MISSING_BUFF:
                return "On Friendly Unit Missing Buff _spellNameFirstParam_";
            case SMART_EVENT_SUMMONED_UNIT:
                return "On Summoned Unit";
            case SMART_EVENT_ACCEPTED_QUEST:
                return "On Quest Accepted";
            case SMART_EVENT_REWARD_QUEST:
                return "On Quest Rewarded";
            case SMART_EVENT_REACHED_HOME:
                return "On Just Reached Home";
            case SMART_EVENT_RECEIVE_EMOTE:
                return "On Received Emote";
            case SMART_EVENT_TARGET_BUFFED:
                return "On Target Buffed";
            case SMART_EVENT_RESET:
                return "On Reset";
            case SMART_EVENT_PASSENGER_BOARDED:
                return "On Passenger Boarded";
            case SMART_EVENT_PASSENGER_REMOVED:
                return "On Passenger Removed";
            case SMART_EVENT_CHARMED:
                return "On Charmed";
            case SMART_EVENT_CHARMED_TARGET:
                return "On Target Charmed";
            case SMART_EVENT_MOVEMENTINFORM:
                return "On Movement Inform";
            case SMART_EVENT_SUMMON_DESPAWNED:
                return "On Summoned Unit Despawned";
            case SMART_EVENT_CORPSE_REMOVED:
                return "On Corpse Removed";
            case SMART_EVENT_SPELLHIT:
                return "On Spellhit By _spellNameFirstParam_";
            case SMART_EVENT_SPELLHIT_TARGET:
                return "On Target Spellhit By _spellNameFirstParam_";
            case SMART_EVENT_RANGE:
                return "Between ${param1}-${param2} Range";
            case SMART_EVENT_HEALT_PCT:
                return "Between ${param1}-${param2}% Health";
            case SMART_EVENT_MANA_PCT:
                return "Between ${param1}-${param2}% Mana";
            case SMART_EVENT_TARGET_HEALTH_PCT:
                return "On Target Between ${param1}-${param2}% Health";
            case SMART_EVENT_TARGET_MANA_PCT:
                return "On Target Between ${param1}-${param2}% Mana";
            case SMART_EVENT_FRIENDLY_HEALTH:
                return "On Friendly Unit At ${param1} Health Within ${param2} Range";
            case SMART_EVENT_HAS_AURA:
                if ($param1 < 0)
                    return "On Aura _hasAuraSpellId_ Not Present";
                    
                return "On Aura _hasAuraSpellId_ Present";
            default:
                return "Fixme: Add case";
        }
    }

    static function convertParamsToSAI($eaiItem)
    {
        $data = array();

        switch ($eaiItem->event_type)
        {
            case EVENT_T_HP:
            case EVENT_T_MANA:
            case EVENT_T_TARGET_HP:
            case EVENT_T_TARGET_MANA:
                $data[1] = $eaiItem->event_param2;
                $data[2] = $eaiItem->event_param1;
                $data[3] = $eaiItem->event_param3;
                $data[4] = $eaiItem->event_param4;
                break;
            case EVENT_T_RECEIVE_EMOTE: // SAI'S SMART_EVENT_RECEIVE_EMOTE doesn't have the same structure at all. Fixme!
                $data[1] = $eaiItem->event_param1;
                $data[2] = $data[3] = 1000;
                $data[4] = 0;
                break;
            default:
                $data[1] = $eaiItem->event_param1;
                $data[2] = $eaiItem->event_param2;
                $data[3] = $eaiItem->event_param3;
                $data[4] = $eaiItem->event_param4;
                break;
        }

        return array_map('intval', $data);
    }
    
    static function buildSAIAction($eaiItem)
    {
        $result = array();

        for ($i = 1; $i <= 3; $i++)
        {
            $eaiAction = $eaiItem->{'action'.$i.'_type'};

            if ($eaiAction == 0)
                break;
            
            $param1 = $eaiItem->{'action'.$i.'_param1'};
            $param2 = $eaiItem->{'action'.$i.'_param2'};
            $param3 = $eaiItem->{'action'.$i.'_param3'};

            switch ($eaiAction)
            {
                case ACTION_T_TEXT:
                    $creatureAiTextEntry = Factory::createOrGetDBHandler()->query("SELECT * FROM `creature_ai_texts` WHERE `entry` IN (".$param1.",".$param2.",".$param3.")")->fetchAll(PDO::FETCH_OBJ);

                    $result[$i] = array(
                        'extraData'   => $creatureAiTextEntry,
                        'eaiActionParams' => array($param1, $param2, $param3),
                        'SAIAction'   => SMART_ACTION_TALK,
                        'params'      => array($param1, 0, 0, 0, 0, 0),
                        'target'      => SMART_TARGET_SELF,
                        'commentType' => "_npcName_ - _eventName_ - Say Line _lineEntry_"
                    );

                    for ($x = 0; $x < sizeof($creatureAiTextEntry); $x++)
                    {
                        $content_default = $creatureAiTextEntry[$x]->content_default;

                        if (strpos($content_default, '$C') !== false || strpos($content_default, '$c') !== false || strpos($content_default, '$R') !== false || strpos($content_default, '$r') !== false ||
                            strpos($content_default, '$N') !== false || strpos($content_default, '$n') !== false || strpos($content_default, '$T') !== false || strpos($content_default, '$t') !== false ||
                            strpos($content_default, '$G') !== false || strpos($content_default, '$g') !== false || strpos($content_default, '%T') !== false || strpos($content_default, '%t') !== false)
                        {
                            $result[$i]['target'] = SMART_TARGET_ACTION_INVOKER;
                            break;
                        }
                    }

                    break;
                case ACTION_T_SET_FACTION:
                    $result[$i] = array(
                        'SAIAction'   => SMART_ACTION_SET_FACTION,
                        'params'      => array($param1, 0, 0, 0, 0, 0),
                        'commentType' => "_npcName_ - _eventName_ - Set Faction ".$param1
                    );
                    break;
                case ACTION_T_MORPH_TO_ENTRY_OR_MODEL:
                    $result[$i] = array(
                        'SAIAction'   => SMART_ACTION_MORPH_TO_ENTRY_OR_MODEL,
                        'params'      => array($param1, $param2, 0, 0, 0, 0),
                        'commentType' => "_npcName_ - _eventName_ - Set Displayid ".$param1
                    );
                    break;
                case ACTION_T_SOUND:
                    //! Second parameter in SAI means we 'onlySelf' (0 = only self, 1 = everybody around). In EAI this is 0 by default.
                    $result[$i] = array(
                        'SAIAction'   => SMART_ACTION_SOUND,
                        'params'      => array($param1, 0, 0, 0, 0, 0),
                        'commentType' => "_npcName_ - _eventName_ - Play Sound ".$param1
                    );
                    break;
                case ACTION_T_EMOTE:
                    $result[$i] = array(
                        'SAIAction'  => SMART_ACTION_PLAY_EMOTE,
                        'params'     => array($param1, 0, 0, 0, 0, 0),
                        'commentType' => "_npcName_ - _eventName_ - Emote "
                    );

                    switch ($param1)
                    {
                        case EMOTE_ONESHOT_WAVE_NO_SHEATHE:
                        case EMOTE_ONESHOT_WAVE:            $result[$i]['commentType'] .= "Wave"; break;
                        case EMOTE_ONESHOT_CHEER_NO_SHEATHE:
                        case EMOTE_ONESHOT_CHEER:           $result[$i]['commentType'] .= "Cheer"; break;
                        case EMOTE_ONESHOT_LAUGH_NO_SHEATHE:
                        case EMOTE_ONESHOT_LAUGH:           $result[$i]['commentType'] .= "Laugh"; break;
                        case EMOTE_ONESHOT_EAT_NO_SHEATHE:
                        case EMOTE_ONESHOT_EAT:             $result[$i]['commentType'] .= "Eat"; break;
                        case EMOTE_STATE_STUN_NO_SHEATHE:
                        case EMOTE_STATE_STUN:              $result[$i]['commentType'] .= "Stunned"; break;
                        case EMOTE_ONESHOT_SALUTE_NO_SHEATH:
                        case EMOTE_ONESHOT_SALUTE:          $result[$i]['commentType'] .= "Salute"; break;
                        case EMOTE_STATE_USE_STANDING_NO_SHEATHE:
                        case EMOTE_STATE_USE_STANDING:      $result[$i]['commentType'] .= "State Standing"; break;
                        case EMOTE_ONESHOT_TALK_NO_SHEATHE:
                        case EMOTE_ONESHOT_TALK:            $result[$i]['commentType'] .= "Talk"; break;
                        case EMOTE_ONESHOT_POINT_NO_SHEATHE:
                        case EMOTE_ONESHOT_POINT:           $result[$i]['commentType'] .= "Point"; break;
                        case EMOTE_STATE_EAT_NO_SHEATHE:
                        case EMOTE_STATE_EAT:               $result[$i]['commentType'] .= "State Eating"; break;

                        case EMOTE_ONESHOT_BOW:             $result[$i]['commentType'] .= "Bow"; break;
                        case EMOTE_ONESHOT_EXCLAMATION:     $result[$i]['commentType'] .= "Exclamation"; break;
                        case EMOTE_ONESHOT_QUESTION:        $result[$i]['commentType'] .= "Question"; break;
                        case EMOTE_STATE_DANCE:             $result[$i]['commentType'] .= "State Dance"; break;
                        case EMOTE_STATE_SLEEP:             $result[$i]['commentType'] .= "State Sleep"; break;
                        case EMOTE_STATE_SIT:               $result[$i]['commentType'] .= "State Sit"; break;
                        case EMOTE_ONESHOT_RUDE:            $result[$i]['commentType'] .= "Rude"; break;
                        case EMOTE_ONESHOT_ROAR:            $result[$i]['commentType'] .= "Roar"; break;
                        case EMOTE_ONESHOT_KNEEL:           $result[$i]['commentType'] .= "Kneel"; break;
                        case EMOTE_ONESHOT_KISS:            $result[$i]['commentType'] .= "Kiss"; break;
                        case EMOTE_ONESHOT_CRY:             $result[$i]['commentType'] .= "Cry"; break;
                        case EMOTE_ONESHOT_CHICKEN:         $result[$i]['commentType'] .= "Chicken"; break;
                        case EMOTE_ONESHOT_BEG:             $result[$i]['commentType'] .= "Beg"; break;
                        case EMOTE_ONESHOT_APPLAUD:         $result[$i]['commentType'] .= "Applaud"; break;
                        case EMOTE_ONESHOT_SHOUT:           $result[$i]['commentType'] .= "Shout"; break;
                        case EMOTE_ONESHOT_FLEX:            $result[$i]['commentType'] .= "Flex"; break;
                        case EMOTE_ONESHOT_SHY:             $result[$i]['commentType'] .= "Shy"; break;
                        case EMOTE_STATE_STAND:             $result[$i]['commentType'] .= "State Stand"; break;
                        case EMOTE_STATE_READY_UNARMED:     $result[$i]['commentType'] .= "State Ready Unarmed"; break;
                        case EMOTE_STATE_WORK_SHEATHED:     $result[$i]['commentType'] .= "State Sheathed"; break;
                        case EMOTE_STATE_POINT:             $result[$i]['commentType'] .= "State Point"; break;
                        case EMOTE_ONESHOT_WOUND:           $result[$i]['commentType'] .= "Wounded"; break;
                        case EMOTE_ONESHOT_WOUND_CRITICAL:  $result[$i]['commentType'] .= "Wounded Critical"; break;
                        case EMOTE_ONESHOT_ATTACK_UNARMED:  $result[$i]['commentType'] .= "Attack Unarmed"; break;
                        case EMOTE_ONESHOT_ATTACK1H:        $result[$i]['commentType'] .= "Attack One-Handed"; break;
                        case EMOTE_ONESHOT_ATTACK2HTIGHT:   $result[$i]['commentType'] .= "Attack Two-Handed Tight"; break;
                        case EMOTE_ONESHOT_ATTACK2H_LOOSE:  $result[$i]['commentType'] .= "Attack Two-Handed Loose"; break;
                        case EMOTE_ONESHOT_PARRY_UNARMED:   $result[$i]['commentType'] .= "Parry Unarmed"; break;
                        case EMOTE_ONESHOT_PARRY_SHIELD:    $result[$i]['commentType'] .= "Parry Shield"; break;
                        case EMOTE_ONESHOT_READY_UNARMED:   $result[$i]['commentType'] .= "Ready Unarmed"; break;
                        case EMOTE_ONESHOT_READY1H:         $result[$i]['commentType'] .= "Ready One-Handed"; break;
                        case EMOTE_ONESHOT_READY_BOW:       $result[$i]['commentType'] .= "Ready Bow"; break;
                        case EMOTE_ONESHOT_KICK:            $result[$i]['commentType'] .= "Kick"; break;
                        case EMOTE_STATE_DEAD:              $result[$i]['commentType'] .= "Dead"; break;
                        case EMOTE_STATE_KNEEL:             $result[$i]['commentType'] .= "State Kneel"; break;
                        case EMOTE_ONESHOT_DANCE:           $result[$i]['commentType'] .= "Dance"; break;
                        case EMOTE_ONESHOT_READY_RIFLE:     $result[$i]['commentType'] .= "Ready Rifle"; break;
                        case EMOTE_STATE_READY_RIFLE:       $result[$i]['commentType'] .= "State Ready Rifle"; break;
                        case EMOTE_STATE_WORK_MINING:       $result[$i]['commentType'] .= "State Mining"; break;
                        case EMOTE_STATE_WORK_CHOPWOOD:     $result[$i]['commentType'] .= "State Chopping Wood"; break;
                        case EMOTE_STATE_APPLAUD:           $result[$i]['commentType'] .= "State Applauding"; break;
                        case EMOTE_ONESHOT_YES:             $result[$i]['commentType'] .= "Nod"; break;
                        case EMOTE_ONESHOT_NO:              $result[$i]['commentType'] .= "No"; break;
                        case EMOTE_ONESHOT_TRAIN:           $result[$i]['commentType'] .= "Train"; break;
                        case EMOTE_STATE_SUBMERGED:         $result[$i]['commentType'] .= "State Submerged"; break;
                        case EMOTE_ONESHOT_SUBMERGE:        $result[$i]['commentType'] .= "Submerge"; break;
                        case EMOTE_STATE_TALK:              $result[$i]['commentType'] .= "State Talking"; break;
                        case EMOTE_STATE_FISHING:           $result[$i]['commentType'] .= "State Fishing"; break;
                        case EMOTE_ONESHOT_FISHING:         $result[$i]['commentType'] .= "Fish"; break;
                        case EMOTE_ONESHOT_LOOT:            $result[$i]['commentType'] .= "Loot"; break;
                        case EMOTE_STATE_DROWNED:           $result[$i]['commentType'] .= "State Drown"; break;
                        case EMOTE_ONESHOT_DROWN:           $result[$i]['commentType'] .= "Drown"; break;
                        case EMOTE_STATE_ROAR:              $result[$i]['commentType'] .= "State Roar"; break;
                        case EMOTE_STATE_LAUGH:             $result[$i]['commentType'] .= "State Laughing"; break;
                        case EMOTE_ONESHOT_CREATURE_SPECIAL:$result[$i]['commentType'] .= "Creature Special"; break;
                        case EMOTE_STATE_CANNIBALIZE:       $result[$i]['commentType'] .= "State Cannibalize"; break;
                        case EMOTE_STATE_LOOT:              $result[$i]['commentType'] .= "State Looting"; break;
                        case EMOTE_ONESHOT_COWER:           $result[$i]['commentType'] .= "Cower"; break;
                        case EMOTE_STATE_COWER:             $result[$i]['commentType'] .= "State Cowering"; break;
                        default:                            $result[$i]['commentType'] .= $param1; break;
                    }

                    break;
                case ACTION_T_RANDOM_EMOTE:
                    $result[$i] = array(
                        'SAIAction'  => SMART_ACTION_RANDOM_EMOTE,
                        'params'     => array($param1, $param2, $param3, 0, 0, 0),
                        'commentType' => "_npcName_ - _eventName_ - Random Emote"
                    );
                    break;
                case ACTION_T_CAST:
                    $result[$i] = array(
                        'SAIAction'  => SMART_ACTION_CAST,
                        'params'     => array($param1, $param3, 0, 0, 0, 0),
                        'target'     => $param2 + 1,
                        'commentType' => "_npcName_ - _eventName_ - Cast _castSpellId_"
                    );
                    break;
                case ACTION_T_THREAT_SINGLE_PCT:
                    $target = $param2 + 1;
                case ACTION_T_THREAT_ALL_PCT:
                    //! Wiki is wrong here, we can have two arguments. First is added threat, second is removed threat.
                    //! Threat addition has priority over threat reduction!
                    //! Wiki updated.
                    $result[$i] = array(
                        'SAIAction'  => ($eaiAction == ACTION_T_THREAT_SINGLE_PCT ? SMART_ACTION_THREAT_SINGLE_PCT : SMART_ACTION_THREAT_ALL_PCT),
                        'params'     => array(max(0, $param1), max(0, -$param1), 0, 0, 0, 0),
                        'commentType' => "_npcName_ - _eventName_ - "
                    );

                    if (isset($target))
                        $result[$i]['target'] = $target;

                    if ($param1 < 0)
                        $result[$i]['commentType'] .= "Remove ".(-$param1).'% Threat';
                    else // if ($param1 > 0)
                        $result[$i]['commentType'] .= "Add ".(-$param1).'% Threat';

                    break;
                case ACTION_T_QUEST_EVENT_ALL:
                    $result[$i] = array(
                        'SAIAction'  => SMART_ACTION_CALL_GROUPEVENTHAPPENS,
                        'params'     => array($param1, 0, 0, 0, 0, 0),
                        'target'     => SMART_TARGET_ACTION_INVOKER,
                        'commentType' => "_npcName_ - _eventName_ - Quest Credit Group"
                    );
                    break;
                case ACTION_T_QUEST_EVENT:
                    $result[$i] = array(
                        'SAIAction'  => SMART_ACTION_CALL_AREAEXPLOREDOREVENTHAPPENS,
                        'params'     => array($param1, 0, 0, 0, 0, 0),
                        'target'     => $param2 + 1,
                        'commentType' => "_npcName_ - _eventName_ - Quest Credit"
                    );
                    break;
                case ACTION_T_CAST_EVENT_ALL:
                    $target = SMART_TARGET_THREAT_LIST; //! This is basically the only difference between the two action types...
                case ACTION_T_CAST_EVENT:
                    $result[$i] = array(
                        'SAIAction'  => SMART_ACTION_CALL_CASTEDCREATUREORGO,
                        'params'     => array($param1, $param2, 0, 0, 0, 0),
                        'commentType' => "_npcName_ - _eventName_ - Quest Credit"
                    );

                    if (isset($target))
                    {
                        $result[$i]['target'] = $target;
                        $result[$i]['commentType'] .= " Threathlist";
                    }
                    else
                        $result[$i]['target' ] = $param3 + 1;

                    $row = Factory::createOrGetDBHandler()->query("SELECT `Title` FROM `quest_template` WHERE `Id`=${param1}")->fetch(PDO::FETCH_OBJ);

                    if ($row)
                        $result[$i]['commentType'] .= " ".$row->Title;
                    else
                        $result[$i]['commentType'] .= " <Unknown Quest Id>";

                    break;
                case ACTION_T_SET_UNIT_FIELD:
                    //! Parameter 1 is index of field
                    //! Parameter 2 is new value of field
                    //! Parameter 3 is target of some kind
                    switch ($param1)
                    {
                        case 25: //! UNIT_FIELD_POWER1 (set mana to $param2)
                            $result[$i] = array(
                                'SAIAction'   => SMART_ACTION_SET_POWER,
                                'params'      => array(0, $param2, 0, 0, 0, 0),
                                'target'     => $param3 + 1,
                                'commentType' => "_npcName_ - _eventName_ - Set Mana To ".$param2
                            );
                            break;
                        case 55: //! UNIT_FIELD_FACTIONTEMPLATE (set faction to $param2)
                            $result[$i] = array(
                                'SAIAction'   => SMART_ACTION_SET_FACTION,
                                'params'      => array($param2, 0, 0, 0, 0, 0),
                                'target'     => $param3 + 1,
                                'commentType' => "_npcName_ - _eventName_ - Set Faction ".$param2
                            );
                            break;
                        case 67: //! UNIT_FIELD_DISPLAYID (set displayid to $param2)
                            $result[$i] = array(
                                'SAIAction'   => SMART_ACTION_MORPH_TO_ENTRY_OR_MODEL,
                                'params'      => array($param2, 0, 0, 0, 0, 0),
                                'target'     => $param3 + 1,
                                'commentType' => "_npcName_ - _eventName_ - Set Displayid ".$param2
                            );
                            break;
                        case 69:
                            //! UNIT_FIELD_MOUNTDISPLAYID (set mount display to $param2)
                            //! Becomes SMART_ACTION_MOUNT_TO_ENTRY_OR_MODEL (which sets UNIT_FIELD_MOUNTDISPLAYID)
                            $result[$i] = array(
                                'SAIAction'  => SMART_ACTION_MOUNT_TO_ENTRY_OR_MODEL,
                                'params'     => array(0, $param2, 0, 0, 0, 0),
                                'target'     => $param3 + 1,
                                'commentType' => "_npcName_ - _eventName_ - Mount Up Model ".$param2
                            );

                            if ($param2 == 0)
                                $result[$i]['commentType'] = "_npcName_ - _eventName_ - Dismount";

                            break;
                        case 74: //! UNIT_FIELD_BYTES_1 (set bytes1 to $param2)
                            $result[$i] = array(
                                'SAIAction'  => SMART_ACTION_SET_UNIT_FIELD_BYTES_1,
                                'params'     => array($param2, 0, 0, 0, 0, 0),
                                'target'     => $param3 + 1,
                                'commentType' => "_npcName_ - _eventName_ - ".Utils::getCommentForByte1Flag($param2)
                            );
                            break;
                        default: //! None...
                            $result[$i] = array(
                                'SAIAction'  => __FIXME__,
                                'params'     => array(__FIXME__, __FIXME__, __FIXME__, __FIXME__, __FIXME__, __FIXME__),
                                'commentType' => "_npcName_ - _eventName_ - Unsupported unit field id ".$param1
                            );
                            break;
                    }

                    break;
                case ACTION_T_SET_UNIT_FLAG:
                    $result[$i] = array(
                        'SAIAction'  => SMART_ACTION_SET_UNIT_FLAG,
                        'params'     => array($param1, 0, 0, 0, 0, 0),
                        'target'     => $param2 + 1,
                        'commentType' => "_npcName_ - _eventName_ - Set ".Utils::getCommentForUnitFlags($param1)." Flag"
                    );
                    break;
                case ACTION_T_REMOVE_UNIT_FLAG:
                    $result[$i] = array(
                        'SAIAction'  => SMART_ACTION_REMOVE_UNIT_FLAG,
                        'params'     => array($param1, 0, 0, 0, 0, 0),
                        'target'     => $param2 + 1,
                        'commentType' => "_npcName_ - _eventName_ - Remove ".Utils::getCommentForUnitFlags($param1)." Flag"
                    );
                    break;
                case ACTION_T_AUTO_ATTACK:
                    $result[$i] = array(
                        'SAIAction'  => SMART_ACTION_AUTO_ATTACK,
                        'params'     => array($param1, 0, 0, 0, 0, 0),
                        'commentType' => "_npcName_ - _eventName_ - ".($param1 == 0 ? "Stop" : "Start")." Auto Attack"
                    );
                    break;
                case ACTION_T_COMBAT_MOVEMENT:
                    $result[$i] = array(
                        'SAIAction'  => SMART_ACTION_ALLOW_COMBAT_MOVEMENT,
                        'params'     => array($param1, 0, 0, 0, 0, 0),
                        'commentType' => "_npcName_ - _eventName_ - ".($param1 == 0 ? "Disallow" : "Allow")." Combat Movement"
                    );
                    break;
                case ACTION_T_SET_PHASE:
                    $result[$i] = array(
                        'SAIAction'  => SMART_ACTION_SET_EVENT_PHASE,
                        'params'     => array($param1, 0, 0, 0, 0, 0),
                        'commentType' => "_npcName_ - _eventName_ - Set Event Phase ".$param1
                    );
                    break;
                case ACTION_T_INC_PHASE:
                    $result[$i] = array(
                        'SAIAction'  => SMART_ACTION_INC_EVENT_PHASE,
                        'params'     => array(0, 0, 0, 0, 0, 0),
                        'commentType' => "_npcName_ - _eventName_ - Increment Event Phase"
                    );

                    if ($param1 < 0)
                    {
                        //! -$param1 because it's negative in EAI and should be positive in SAI (double negative = positive).
                        $result[$i]['params'] = array(0, -$param1, 0, 0, 0, 0);
                        $result[$i]['commentType'] = "_npcName_ - _eventName_ - Decrement Event Phase";
                    }
                    else
                        $result[$i]['params'] = array($param1, 0, 0, 0, 0, 0);

                    break;
                case ACTION_T_EVADE:
                    $result[$i] = array(
                        'SAIAction'  => SMART_ACTION_EVADE,
                        'params'     => array(0, 0, 0, 0, 0, 0),
                        'commentType' => "_npcName_ - _eventName_ - Evade"
                    );
                    break;
                case ACTION_T_FLEE_FOR_ASSIST:
                    //! EAI has no parameter. I set the first one as 0 as default for the NPC not to emote when fleeing.
                    //! EAI needs another action for this. WE DONT. This action will be used to pick if we need to emote
                    //! on fleeing.
                    $result[$i] = array(
                        'SAIAction'  => SMART_ACTION_FLEE_FOR_ASSIST,
                        'params'     => array(0, 0, 0, 0, 0, 0),
                        'target'     => SMART_TARGET_NONE,
                        'commentType' => "_npcName_ - _eventName_ - Flee For Assist"
                    );
                    break;
                case ACTION_T_REMOVEAURASFROMSPELL:
                    $result[$i] = array(
                        'SAIAction'  => SMART_ACTION_REMOVEAURASFROMSPELL,
                        'params'     => array($param2, 0, 0, 0, 0, 0),
                        'target'     => $param1 + 1,
                        'commentType' => "_npcName_ - _eventName_ - Remove Aura _removeAuraSpell_" 
                    );

                    if ($param2 == 0)
                        $result[$i]['commentType'] = "_npcName_ - _eventName_ - Remova All Auras";
                    break;
                case ACTION_T_RANGED_MOVEMENT:
                    $result[$i] = array(
                        'SAIAction'  => SMART_ACTION_SET_RANGED_MOVEMENT,
                        'params'     => array($param1, $param2, 0, 0, 0, 0),
                        'target'     => SMART_TARGET_SELF,
                        'commentType' => "_npcName_ - _eventName_ - Set Ranged Movement Distance ".$param1." Angle ".$param2
                    );
                    break;
                case ACTION_T_RANDOM_PHASE:
                    $result[$i] = array(
                        'SAIAction'  => SMART_ACTION_RANDOM_PHASE,
                        'params'     => array($param1, $param2, $param3, 0, 0, 0),
                        'commentType' => "_npcName_ - _eventName_ - Set Random Phase"
                    );
                    break;
                case ACTION_T_RANDOM_PHASE_RANGE:
                    $result[$i] = array(
                        'SAIAction'  => SMART_ACTION_RANDOM_PHASE_RANGE,
                        'params'     => array($param1, $param2, 0, 0, 0, 0),
                        'commentType' => "_npcName_ - _eventName_ - Random Phase Range (${param1}-${param2})"
                    );
                    break;
                case ACTION_T_SUMMON:
                    //! Forcing SummonType to 1 as EAI doesnt handle it
                    $result[$i] = array(
                        'SAIAction'     => SMART_ACTION_SUMMON_CREATURE,
                        'params'        => array($param1, 1, $param3, 0, 0, 0),
                        'target'        => $param2 + 1,
                        'commentType'   => "_npcName_ - _eventName_ - Summon Creature ".Factory::createOrGetDBHandler()->query("SELECT `name` FROM `creature_template` WHERE `entry`=${param1}")->fetch(PDO::FETCH_OBJ)->name
                    );
                    break;
                case ACTION_T_SUMMON_ID:
                    //! Forcing SummonType to 1 as EAI doesnt handle it
                    $result[$i] = array(
                        'SAIAction'     => SMART_ACTION_SUMMON_CREATURE,
                        'params'        => array($param1, 1, 0, 0, 0, 0),
                        'commentType'   => "_npcName_ - _eventName_ - Summon Creature ".Factory::createOrGetDBHandler()->query("SELECT `name` FROM `creature_template` WHERE `entry`=${param1}")->fetch(PDO::FETCH_OBJ)->name,
                        'isSpecialHandler' => true
                    );
                    break;
                case ACTION_T_KILLED_MONSTER:
                    $result[$i] = array(
                        'SAIAction'  => SMART_ACTION_CALL_KILLEDMONSTER,
                        'params'     => array($param1, 0, 0, 0, 0, 0),
                        'target'     => $param2 + 1,
                        'commentType' => "_npcName_ - _eventName_ - Quest Credit"
                    );
                    break;
                case ACTION_T_SET_INST_DATA:
                    $result[$i] = array(
                        'SAIAction'  => SMART_ACTION_SET_INST_DATA,
                        'params'     => array($param1, $param2, 0, 0, 0, 0),
                        'commentType' => "_npcName_ - _eventName_ - Set Instance Data Field To ${param1} To Data ${param2}"
                    );
                    break;
                case ACTION_T_SET_INST_DATA64:
                    $result[$i] = array(
                        'SAIAction'  => SMART_ACTION_SET_INST_DATA64,
                        'params'     => array($param1, 0, 0, 0, 0, 0),
                        'target'     => $param2 + 1,
                        'commentType' => "_npcName_ - _eventName_ - Set Instance Data64 Field To ${param1}"
                    );
                    break;
                case ACTION_T_UPDATE_TEMPLATE:
                    $result[$i] = array(
                        'SAIAction'  => SMART_ACTION_UPDATE_TEMPLATE,
                        'params'     => array($param1, $param2, 0, 0, 0, 0),
                        'commentType' => "_npcName_ - _eventName_ - Update Template To ".Factory::createOrGetDBHandler()->query("SELECT `name` FROM `creature_template` WHERE `entry`=${param1}")->fetch(PDO::FETCH_OBJ)->name
                    );
                    break;
                case ACTION_T_DIE:
                    $result[$i] = array(
                        'SAIAction'  => SMART_ACTION_DIE,
                        'params'     => array(0, 0, 0, 0, 0, 0),
                        'commentType' => "_npcName_ - _eventName_ - Die"
                    );
                    break;
                case ACTION_T_ZONE_COMBAT_PULSE:
                    $result[$i] = array(
                        'SAIAction'  => SMART_ACTION_SET_IN_COMBAT_WITH_ZONE,
                        'params'     => array(0, 0, 0, 0, 0, 0),
                        'commentType' => "_npcName_ - _eventName_ - Set In Combat With Zone"
                    );
                    break;
                case ACTION_T_CALL_FOR_HELP:
                    $result[$i] = array(
                        'SAIAction'  => SMART_ACTION_CALL_FOR_HELP,
                        'params'     => array($param1, 0, 0, 0, 0, 0),
                        'commentType' => "_npcName_ - _eventName_ - Call For Help"
                    );
                    break;
                case ACTION_T_SET_SHEATH:
                    $result[$i] = array(
                        'SAIAction'  => SMART_ACTION_SET_SHEATH,
                        'params'     => array($param1, 0, 0, 0, 0, 0),
                        'commentType' => "_npcName_ - _eventName_ - Set Sheath "
                    );

                    switch ($param1) 
                    {
                        case 0: // No melee weapon
                            $result[$i]['commentType'] .= 'Unarmed';
                            break;
                        case 1: // Melee weapon
                            $result[$i]['commentType'] .= 'Melee';
                            break;
                        case 2: // Ranged
                            $result[$i]['commentType'] .= 'Ranged';
                            break;
                        default:
                            $result[$i]['commentType'] .= 'UNKNOWN';
                            break;
                    }
                    break;
                case ACTION_T_FORCE_DESPAWN:
                    $result[$i] = array(
                        'SAIAction'  => SMART_ACTION_FORCE_DESPAWN,
                        'params'     => array($param1, 0, 0, 0, 0, 0),
                        'commentType' => "_npcName_ - _eventName_ - Forced Despawn"
                    );

                    if ($param1 > 0)
                        $result[$i]['commentType'] .= " In ".$param1." Ms";

                    break;
                case ACTION_T_SET_INVINCIBILITY_HP_LEVEL:
                    $result[$i] = array(
                        'SAIAction'  => SMART_ACTION_SET_INVINCIBILITY_HP_LEVEL,
                        'params'     => array($param1, 0, 0, 0, 0, 0),
                        'commentType' => "_npcName_ - _eventName_ - Set Invincibility Health To ".$param1
                    );

                    //! In EAI, the action had two parameters: parameter 1 for the invincibility HP, param2 to decide
                    //! whether or not param1 would be pct or flat HP (1 = pct, 0 = flat).
                    //! In SAI, the action has two parameters as well: parameter 1 for the flat invincibility HP and
                    //! parameter 2 for the pct invincibility HP.
                    if ($param2 > 0) //! If EAI line uses a percentage
                    {
                        $result[$i]['commentType'] .= "%";
                        $result[$i]['params'] = array(0, $param1, 0, 0, 0, 0);
                    }

                    break;
                case ACTION_T_MOUNT_TO_ENTRY_OR_MODEL:
                    $result[$i] = array(
                        'SAIAction'  => SMART_ACTION_MOUNT_TO_ENTRY_OR_MODEL,
                        'params'     => array($param1, $param2, 0, 0, 0, 0),
                        'commentType' => "_npcName_ - _eventName_ - Mount Up ".($param1 ? "Entry" : "Model").$param1
                    );

                    if ($param1 == 0 && $param2 == 0)
                        $result[$i]['commentType'] = "_npcName_ - _eventName_ - Dismount";

                    break;
                case ACTION_T_SET_PHASE_MASK:
                    $result[$i] = array(
                        'SAIAction'  => SMART_ACTION_SET_INGAME_PHASE_MASK,
                        'params'     => array($param1, 0, 0, 0, 0, 0),
                        'commentType' => "_npcName_ - _eventName_ - Set Phasemask ".$param1
                    );
                    break;
                case ACTION_T_SET_STAND_STATE:
                    $result[$i] = array(
                        'SAIAction'  => SMART_ACTION_SET_UNIT_FIELD_BYTES_1,
                        'params'     => array(0, $param1, 0, 0, 0, 0),
                        'target'     => SMART_TARGET_SELF,
                        'commentType' => "_npcName_ - _eventName_ - ".Utils::getCommentForByte1Flag($param2)
                    );
                    break;
                case ACTION_T_MOVE_RANDOM_POINT:
                    $result[$i] = array(
                        'SAIAction'  => SMART_ACTION_RANDOM_MOVE,
                        'params'     => array($param1, 0, 0, 0, 0, 0),
                        'commentType' => "_npcName_ - _eventName_ - Move Random"
                    );
                    break;
                case ACTION_T_SET_VISIBILITY:
                    $result[$i] = array(
                        'SAIAction'  => SMART_ACTION_SET_VISIBILITY,
                        'params'     => array($param1, 0, 0, 0, 0, 0),
                        'commentType' => "_npcName_ - _eventName_ - Set Visiblity ".($param1 == 0 ? "Off" : "On")
                    );
                    break;
                case ACTION_T_SET_ACTIVE:
                    $result[$i] = array(
                        'SAIAction'  => SMART_ACTION_SET_ACTIVE,
                        'params'     => array($param1, 0, 0, 0, 0, 0),
                        'commentType' => "_npcName_ - _eventName_ - Set Active ".($param1 == 0 ? "Off" : "On")
                    );
                    break;
                case ACTION_T_SET_AGGRESSIVE:
                    //! The naming of the EAI action type is wrong. Core handling simply goes like this:
                    //! me->SetReactState(ReactStates(action.raw.param1));
                    //! Therefore making it work the same as SMART_ACTION_SET_REACT_STATE and not setting
                    //! the source to aggressive.
                    $result[$i] = array(
                        'SAIAction'  => SMART_ACTION_SET_REACT_STATE,
                        'params'     => array($param1, 0, 0, 0, 0, 0),
                        'commentType' => "_npcName_ - _eventName_ - Set Reactstate "
                    );

                    switch ($param1)
                    {
                        case 0:
                            $result[$i]['commentType'] .= "Passive";
                            break;
                        case 1:
                            $result[$i]['commentType'] .= "Defensive";
                            break;
                        case 2:
                            $result[$i]['commentType'] .= "Aggressive";
                            break;
                        default:
                            $result[$i]['commentType'] .= "UNKNOWN";
                            break;
                    }

                    break;
                case ACTION_T_ATTACK_START_PULSE:
                    //! ACTION_T_ATTACK_START_PULSE by default targets closest enemy within given range (param1), which we
                    //! therefore pass on as target_param1 for SMART_TARGET_CLOSEST_ENEMY.
                    $result[$i] = array(
                        'SAIAction'     => SMART_ACTION_ATTACK_START,
                        'params'        => array(0, 0, 0, 0, 0, 0),
                        'target'        => SMART_TARGET_CLOSEST_ENEMY,
                        'target_params' => array($param1, 0, 0),
                        'commentType'   => "_npcName_ - _eventName_ - Attack Start"
                    );
                    break;
                case ACTION_T_SUMMON_GO:
                    $result[$i] = array(
                        'SAIAction'  => SMART_ACTION_SUMMON_GO,
                        'params'     => array($param1, $param2, 0, 0, 0, 0),
                        'commentType' => "_npcName_ - _eventName_ - Summon Gameobject ".Factory::createOrGetDBHandler()->query("SELECT name FROM gameobject_template WHERE entry = ${param1}")->fetch(PDO::FETCH_OBJ)->name
                    );
                    break;
                case ACTION_T_NONE:
                    $result[$i] = array(
                        'SAIAction'  => SMART_ACTION_NONE,
                        'params'     => array(0, 0, 0, 0, 0, 0),
                        'commentType' => "_npcName_ - _eventName_ - UNUSED"
                    );
                    break;
                //! Need to be handled by random action scripts (thus scripted by hand).
                case ACTION_T_RANDOM_TEXTEMOTE:
                default:
                    $result[$i] = array(
                        'SAIAction'  => __FIXME__,
                        'params'     => array(__FIXME__, __FIXME__, __FIXME__, __FIXME__, __FIXME__, __FIXME__),
                        'commentType' => "_npcName_ - _eventName_ - Y me not working ??? :("
                    );
                    break;
            }

            if (!isset($result[$i]['extraData']))
                $result[$i]['extraData'] = 0;

            if (!isset($result[$i]['eaiActionParams']))
                $result[$i]['eaiActionParams'] = 0;

            if (!isset($result[$i]['isSpecialHandler']))
                $result[$i]['isSpecialHandler'] = false;

            if (!isset($result[$i]['target']))
                $result[$i]['target'] = SMART_TARGET_SELF;

            if (!isset($result[$i]['target_params']))
                $result[$i]['target_params'] = array(0, 0, 0);

            if (!isset($result[$i]['target_paramCoords']))
                $result[$i]['target_paramCoords'] = array(0, 0, 0, 0);
        }

        return $result;
    }

    static function EAIPhaseToSAI($eaiPhase)
    {
        //! EAI phase on 0 means the same as SAI phase on 0, be it reversed or not.
        if ($eaiPhase == 0)
            return 0;

        $invertedMask = 0;

        for ($i = 0; $i <= 32; $i++)
        {
            if (pow(2, $i) > $eaiPhase)
            {
                $invertedMask = (~$eaiPhase) + pow(2, $i);
                break;
            }
        }

        return $invertedMask;
    }
    
    // Not used, here as remnant to understand how targets are converted.
    static function EAITargetToSAI($eaiTarget)
    {
        //! Targets are the same, except SAI has then offsetted by +1.
        return $eaiTarget + 1;
    }

    static function getCommentForByte1Flag($newByte1Flag)
    {
        switch ($newByte1Flag)
        {
            case UNIT_STAND_STATE_STAND:
                return "Set Standstate Stand Up";
            case UNIT_STAND_STATE_SIT:
                return "Set Standstate Sit Down";
            case UNIT_STAND_STATE_SIT_CHAIR:
                return "Set Standstate Sit Down Chair";
            case UNIT_STAND_STATE_SLEEP:
                return "Set Standstate Sleep";
            case UNIT_STAND_STATE_SIT_LOW_CHAIR:
                return "Set Standstate Sit Low Chair";
            case UNIT_STAND_STATE_SIT_MEDIUM_CHAIR:
                return "Set Standstate Sit Medium Chair";
            case UNIT_STAND_STATE_SIT_HIGH_CHAIR:
                return "Set Standstate Sit High Chair";
            case UNIT_STAND_STATE_DEAD:
                return "Set Standstate Dead";
            case UNIT_STAND_STATE_KNEEL:
                return "Set Standstate Kneel";
            case UNIT_STAND_STATE_SUBMERGED:
                return "Set Standstate Submerged";
            default:
                return "Set Bytes1 ".$param2;
        }
    }

    static function getCommentForUnitFlags($unitFlags)
    {
        $commentToReturn = "";

        if ($unitFlags & UNIT_FLAG_SERVER_CONTROLLED)  $commentToReturn .= "Server Controlled & ";
        if ($unitFlags & UNIT_FLAG_NON_ATTACKABLE)     $commentToReturn .= "Not Attackable & ";
        if ($unitFlags & UNIT_FLAG_DISABLE_MOVE)       $commentToReturn .= "Disable Movement & ";
        if ($unitFlags & UNIT_FLAG_PVP_ATTACKABLE)     $commentToReturn .= "Pvp Attackable & ";
        if ($unitFlags & UNIT_FLAG_RENAME)             $commentToReturn .= "Rename & ";
        if ($unitFlags & UNIT_FLAG_PREPARATION)        $commentToReturn .= "Preparation & ";
        if ($unitFlags & UNIT_FLAG_NOT_ATTACKABLE_1)   $commentToReturn .= "Not Attackable & ";
        if ($unitFlags & UNIT_FLAG_IMMUNE_TO_PC)       $commentToReturn .= "Immune To Players & ";
        if ($unitFlags & UNIT_FLAG_IMMUNE_TO_NPC)      $commentToReturn .= "Immune To NPC's & ";
        if ($unitFlags & UNIT_FLAG_LOOTING)            $commentToReturn .= "Looting & ";
        if ($unitFlags & UNIT_FLAG_PET_IN_COMBAT)      $commentToReturn .= "Pet In Combat & ";
        if ($unitFlags & UNIT_FLAG_PVP)                $commentToReturn .= "PvP & ";
        if ($unitFlags & UNIT_FLAG_SILENCED)           $commentToReturn .= "Silenced & ";
        if ($unitFlags & UNIT_FLAG_PACIFIED)           $commentToReturn .= "Pacified & ";
        if ($unitFlags & UNIT_FLAG_STUNNED)            $commentToReturn .= "Stunned & ";
        if ($unitFlags & UNIT_FLAG_IN_COMBAT)          $commentToReturn .= "In Combat & ";
        if ($unitFlags & UNIT_FLAG_DISARMED)           $commentToReturn .= "Disarmed & ";
        if ($unitFlags & UNIT_FLAG_CONFUSED)           $commentToReturn .= "Confused & ";
        if ($unitFlags & UNIT_FLAG_FLEEING)            $commentToReturn .= "Fleeing & ";
        if ($unitFlags & UNIT_FLAG_PLAYER_CONTROLLED)  $commentToReturn .= "Player Controlled & ";
        if ($unitFlags & UNIT_FLAG_NOT_SELECTABLE)     $commentToReturn .= "Not Selectable & ";
        if ($unitFlags & UNIT_FLAG_SKINNABLE)          $commentToReturn .= "Skinnable & ";
        if ($unitFlags & UNIT_FLAG_MOUNT)              $commentToReturn .= "Mounted & ";
        if ($unitFlags & UNIT_FLAG_SHEATHE)            $commentToReturn .= "Sheathed & ";

        $commentToReturn = rtrim($commentToReturn, ' & '); //! Trim last ' & ' from the comment..
        return $commentToReturn;
    }

    static function getInversedPhasesInArray($decimal)
    {
        $arrayOfSplitPhases = array();
        $decimal2 = $decimal;
        $log2 = 0;

        while ($decimal2 >= 2)
        {
            $decimal2 /= 2;
            $log2++;
        }

        for ($l2 = $log2; $l2 >= 0; $l2--)
        {
            $power = pow(2, $l2);

            if ($decimal >= $power)
            {
                $decimal -= $power;
                array_push($arrayOfSplitPhases, $power);
            }
        }

        return $arrayOfSplitPhases;
    }
}


class sLog
{
    private function __construct() { }

    static function outString($msg) {
        if ($handle = fopen('dbErrors.log', 'a')) {
            fwrite($handle, date('d/m/Y H:i:s :: ').$msg.PHP_EOL);
            fclose($handle);
        }
    }

    static function outInfo($msg) {
        if ($handle = fopen('workProgress.log', 'a')) {
            fwrite($handle, date('d/m/Y H:i:s :: ').$msg.PHP_EOL);
            fclose($handle);
        }
    }

    static function outSpecificFile($file, $msg) {
        if ($handle = fopen($file, 'a')) {
            fwrite($handle, $msg);
            fclose($handle);
        }
    }
}
