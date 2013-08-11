<?php
    define('UNIT_STAND_STATE_STAND',               0);
    define('UNIT_STAND_STATE_SIT',                 1);
    define('UNIT_STAND_STATE_SIT_CHAIR',           2);
    define('UNIT_STAND_STATE_SLEEP',               3);
    define('UNIT_STAND_STATE_SIT_LOW_CHAIR',       4);
    define('UNIT_STAND_STATE_SIT_MEDIUM_CHAIR',    5);
    define('UNIT_STAND_STATE_SIT_HIGH_CHAIR',      6);
    define('UNIT_STAND_STATE_DEAD',                7);
    define('UNIT_STAND_STATE_KNEEL',               8);
    define('UNIT_STAND_STATE_SUBMERGED',           9);

    define('EMOTE_ONESHOT_NONE',                   0);
    define('EMOTE_ONESHOT_TALK',                   1);
    define('EMOTE_ONESHOT_BOW',                    2);
    define('EMOTE_ONESHOT_WAVE',                   3);
    define('EMOTE_ONESHOT_CHEER',                  4);
    define('EMOTE_ONESHOT_EXCLAMATION',            5);
    define('EMOTE_ONESHOT_QUESTION',               6);
    define('EMOTE_ONESHOT_EAT',                    7);
    define('EMOTE_STATE_DANCE',                    10);
    define('EMOTE_ONESHOT_LAUGH',                  11);
    define('EMOTE_STATE_SLEEP',                    12);
    define('EMOTE_STATE_SIT',                      13);
    define('EMOTE_ONESHOT_RUDE',                   14);
    define('EMOTE_ONESHOT_ROAR',                   15);
    define('EMOTE_ONESHOT_KNEEL',                  16);
    define('EMOTE_ONESHOT_KISS',                   17);
    define('EMOTE_ONESHOT_CRY',                    18);
    define('EMOTE_ONESHOT_CHICKEN',                19);
    define('EMOTE_ONESHOT_BEG',                    20);
    define('EMOTE_ONESHOT_APPLAUD',                21);
    define('EMOTE_ONESHOT_SHOUT',                  22);
    define('EMOTE_ONESHOT_FLEX',                   23);
    define('EMOTE_ONESHOT_SHY',                    24);
    define('EMOTE_ONESHOT_POINT',                  25);
    define('EMOTE_STATE_STAND',                    26);
    define('EMOTE_STATE_READY_UNARMED',            27);
    define('EMOTE_STATE_WORK_SHEATHED',            28);
    define('EMOTE_STATE_POINT',                    29);
    define('EMOTE_STATE_NONE',                     30);
    define('EMOTE_ONESHOT_WOUND',                  33);
    define('EMOTE_ONESHOT_WOUND_CRITICAL',         34);
    define('EMOTE_ONESHOT_ATTACK_UNARMED',         35);
    define('EMOTE_ONESHOT_ATTACK1H',               36);
    define('EMOTE_ONESHOT_ATTACK2HTIGHT',          37);
    define('EMOTE_ONESHOT_ATTACK2H_LOOSE',         38);
    define('EMOTE_ONESHOT_PARRY_UNARMED',          39);
    define('EMOTE_ONESHOT_PARRY_SHIELD',           43);
    define('EMOTE_ONESHOT_READY_UNARMED',          44);
    define('EMOTE_ONESHOT_READY1H',                45);
    define('EMOTE_ONESHOT_READY_BOW',              48);
    define('EMOTE_ONESHOT_SPELL_PRECAST',          50);
    define('EMOTE_ONESHOT_SPELL_CAST',             51);
    define('EMOTE_ONESHOT_BATTLE_ROAR',            53);
    define('EMOTE_ONESHOT_SPECIALATTACK1H',        54);
    define('EMOTE_ONESHOT_KICK',                   60);
    define('EMOTE_ONESHOT_ATTACK_THROWN',          61);
    define('EMOTE_STATE_STUN',                     64);
    define('EMOTE_STATE_DEAD',                     65);
    define('EMOTE_ONESHOT_SALUTE',                 66);
    define('EMOTE_STATE_KNEEL',                    68);
    define('EMOTE_STATE_USE_STANDING',             69);
    define('EMOTE_ONESHOT_WAVE_NO_SHEATHE',        70);
    define('EMOTE_ONESHOT_CHEER_NO_SHEATHE',       71);
    define('EMOTE_ONESHOT_EAT_NO_SHEATHE',         92);
    define('EMOTE_STATE_STUN_NO_SHEATHE',          93);
    define('EMOTE_ONESHOT_DANCE',                  94);
    define('EMOTE_ONESHOT_SALUTE_NO_SHEATH',       113);
    define('EMOTE_STATE_USE_STANDING_NO_SHEATHE',  133);
    define('EMOTE_ONESHOT_LAUGH_NO_SHEATHE',       153);
    define('EMOTE_STATE_WORK',                     173);
    define('EMOTE_STATE_SPELL_PRECAST',            193);
    define('EMOTE_ONESHOT_READY_RIFLE',            213);
    define('EMOTE_STATE_READY_RIFLE',              214);
    define('EMOTE_STATE_WORK_MINING',              233);
    define('EMOTE_STATE_WORK_CHOPWOOD',            234);
    define('EMOTE_STATE_APPLAUD',                  253);
    define('EMOTE_ONESHOT_LIFTOFF',                254);
    define('EMOTE_ONESHOT_YES',                    273);
    define('EMOTE_ONESHOT_NO',                     274);
    define('EMOTE_ONESHOT_TRAIN',                  275);
    define('EMOTE_ONESHOT_LAND',                   293);
    define('EMOTE_STATE_AT_EASE',                  313);
    define('EMOTE_STATE_READY1H',                  333);
    define('EMOTE_STATE_SPELL_KNEEL_START',        353);
    define('EMOTE_STATE_SUBMERGED',                373);
    define('EMOTE_ONESHOT_SUBMERGE',               374);
    define('EMOTE_STATE_READY2H',                  375);
    define('EMOTE_STATE_READY_BOW',                376);
    define('EMOTE_ONESHOT_MOUNT_SPECIAL',          377);
    define('EMOTE_STATE_TALK',                     378);
    define('EMOTE_STATE_FISHING',                  379);
    define('EMOTE_ONESHOT_FISHING',                380);
    define('EMOTE_ONESHOT_LOOT',                   381);
    define('EMOTE_STATE_WHIRLWIND',                382);
    define('EMOTE_STATE_DROWNED',                  383);
    define('EMOTE_STATE_HOLD_BOW',                 384);
    define('EMOTE_STATE_HOLD_RIFLE',               385);
    define('EMOTE_STATE_HOLD_THROWN',              386);
    define('EMOTE_ONESHOT_DROWN',                  387);
    define('EMOTE_ONESHOT_STOMP',                  388);
    define('EMOTE_ONESHOT_ATTACK_OFF',             389);
    define('EMOTE_ONESHOT_ATTACK_OFF_PIERCE',      390);
    define('EMOTE_STATE_ROAR',                     391);
    define('EMOTE_STATE_LAUGH',                    392);
    define('EMOTE_ONESHOT_CREATURE_SPECIAL',       393);
    define('EMOTE_ONESHOT_JUMPLANDRUN',            394);
    define('EMOTE_ONESHOT_JUMPEND',                395);
    define('EMOTE_ONESHOT_TALK_NO_SHEATHE',        396);
    define('EMOTE_ONESHOT_POINT_NO_SHEATHE',       397);
    define('EMOTE_STATE_CANNIBALIZE',              398);
    define('EMOTE_ONESHOT_JUMPSTART',              399);
    define('EMOTE_STATE_DANCESPECIAL',             400);
    define('EMOTE_ONESHOT_DANCESPECIAL',           401);
    define('EMOTE_ONESHOT_CUSTOM_SPELL_01',        402);
    define('EMOTE_ONESHOT_CUSTOM_SPELL_02',        403);
    define('EMOTE_ONESHOT_CUSTOM_SPELL_03',        404);
    define('EMOTE_ONESHOT_CUSTOM_SPELL_04',        405);
    define('EMOTE_ONESHOT_CUSTOM_SPELL_05',        406);
    define('EMOTE_ONESHOT_CUSTOM_SPELL_06',        407);
    define('EMOTE_ONESHOT_CUSTOM_SPELL_07',        408);
    define('EMOTE_ONESHOT_CUSTOM_SPELL_08',        409);
    define('EMOTE_ONESHOT_CUSTOM_SPELL_09',        410);
    define('EMOTE_ONESHOT_CUSTOM_SPELL_10',        411);
    define('EMOTE_STATE_EXCLAIM',                  412);
    define('EMOTE_STATE_DANCE_CUSTOM',             413);
    define('EMOTE_STATE_SIT_CHAIR_MED',            415);
    define('EMOTE_STATE_CUSTOM_SPELL_01',          416);
    define('EMOTE_STATE_CUSTOM_SPELL_02',          417);
    define('EMOTE_STATE_EAT',                      418);
    define('EMOTE_STATE_CUSTOM_SPELL_04',          419);
    define('EMOTE_STATE_CUSTOM_SPELL_03',          420);
    define('EMOTE_STATE_CUSTOM_SPELL_05',          421);
    define('EMOTE_STATE_SPELLEFFECT_HOLD',         422);
    define('EMOTE_STATE_EAT_NO_SHEATHE',           423);
    define('EMOTE_STATE_MOUNT',                    424);
    define('EMOTE_STATE_READY2HL',                 425);
    define('EMOTE_STATE_SIT_CHAIR_HIGH',           426);
    define('EMOTE_STATE_FALL',                     427);
    define('EMOTE_STATE_LOOT',                     428);
    define('EMOTE_STATE_SUBMERGED_NEW',            429);
    define('EMOTE_ONESHOT_COWER',                  430);
    define('EMOTE_STATE_COWER',                    431);
    define('EMOTE_ONESHOT_USE_STANDING',           432);
    define('EMOTE_STATE_STEALTH_STAND',            433);
    define('EMOTE_ONESHOT_OMNICAST_GHOUL',         434);
    define('EMOTE_ONESHOT_ATTACK_BOW',             435);
    define('EMOTE_ONESHOT_ATTACK_RIFLE',           436);
    define('EMOTE_STATE_SWIM_IDLE',                437);
    define('EMOTE_STATE_ATTACK_UNARMED',           438);
    define('EMOTE_ONESHOT_SPELL_CAST_W_SOUND',     439);
    define('EMOTE_ONESHOT_DODGE',                  440);
    define('EMOTE_ONESHOT_PARRY1H',                441);
    define('EMOTE_ONESHOT_PARRY2H',                442);
    define('EMOTE_ONESHOT_PARRY2HL',               443);
    define('EMOTE_STATE_FLYFALL',                  444);
    define('EMOTE_ONESHOT_FLYDEATH',               445);
    define('EMOTE_STATE_FLY_FALL',                 446);
    define('EMOTE_ONESHOT_FLY_SIT_GROUND_DOWN',    447);
    define('EMOTE_ONESHOT_FLY_SIT_GROUND_UP',      448);
    define('EMOTE_ONESHOT_EMERGE',                 449);
    define('EMOTE_ONESHOT_DRAGON_SPIT',            450);
    define('EMOTE_STATE_SPECIAL_UNARMED',          451);
    define('EMOTE_ONESHOT_FLYGRAB',                452);
    define('EMOTE_STATE_FLYGRABCLOSED',            453);
    define('EMOTE_ONESHOT_FLYGRABTHROWN',          454);
    define('EMOTE_STATE_FLY_SIT_GROUND',           455);
    define('EMOTE_STATE_WALK_BACKWARDS',           456);
    define('EMOTE_ONESHOT_FLYTALK',                457);
    define('EMOTE_ONESHOT_FLYATTACK1H',            458);
    define('EMOTE_STATE_CUSTOM_SPELL_08',          459);
    define('EMOTE_ONESHOT_FLY_DRAGON_SPIT',        460);
    define('EMOTE_STATE_SIT_CHAIR_LOW',            461);
    define('EMOTE_ONESHOT_STUN',                   462);
    define('EMOTE_ONESHOT_SPELL_CAST_OMNI',        463);
    define('EMOTE_STATE_READY_THROWN',             465);
    define('EMOTE_ONESHOT_WORK_CHOPWOOD',          466);
    define('EMOTE_ONESHOT_WORK_MINING',            467);
    define('EMOTE_STATE_SPELL_CHANNEL_OMNI',       468);
    define('EMOTE_STATE_SPELL_CHANNEL_DIRECTED',   469);
    define('EMOTE_STAND_STATE_NONE',               470);
    define('EMOTE_STATE_READYJOUST',               471);
    define('EMOTE_STATE_STRANGULATE',              473);
    define('EMOTE_STATE_READY_SPELL_OMNI',         474);
    define('EMOTE_STATE_HOLD_JOUST',               475);
    define('EMOTE_ONESHOT_CRY_JAINA',              476);

    define('UNIT_FLAG_SERVER_CONTROLLED',      1);           // set only when unit movement is controlled by server - by SPLINE/MONSTER_MOVE packets); together with UNIT_FLAG_STUNNED; only set to units controlled by client; client function CGUnit_C::IsClientControlled returns false when set for owner
    define('UNIT_FLAG_NON_ATTACKABLE',         2);           // not attackable
    define('UNIT_FLAG_DISABLE_MOVE',           4);
    define('UNIT_FLAG_PVP_ATTACKABLE',         8);           // allow apply pvp rules to attackable state in addition to faction dependent state
    define('UNIT_FLAG_RENAME',                 16);
    define('UNIT_FLAG_PREPARATION',            32);           // don't take reagents for spells with SPELL_ATTR5_NO_REAGENT_WHILE_PREP
    define('UNIT_FLAG_UNK_6',                  64);
    define('UNIT_FLAG_NOT_ATTACKABLE_1',       128);           // ?? (UNIT_FLAG_PVP_ATTACKABLE | UNIT_FLAG_NOT_ATTACKABLE_1) is NON_PVP_ATTACKABLE
    define('UNIT_FLAG_IMMUNE_TO_PC',           256);           // disables combat/assistance with PlayerCharacters (PC) - see Unit::_IsValidAttackTarget); Unit::_IsValidAssistTarget
    define('UNIT_FLAG_IMMUNE_TO_NPC',          512);           // disables combat/assistance with NonPlayerCharacters (NPC) - see Unit::_IsValidAttackTarget); Unit::_IsValidAssistTarget
    define('UNIT_FLAG_LOOTING',                1024);           // loot animation
    define('UNIT_FLAG_PET_IN_COMBAT',          2048);           // in combat?); 2.0.8
    define('UNIT_FLAG_PVP',                    4096);           // changed in 3.0.3
    define('UNIT_FLAG_SILENCED',               8192);           // silenced); 2.1.1
    define('UNIT_FLAG_UNK_14',                 16384);           // 2.0.8
    define('UNIT_FLAG_UNK_15',                 32768);
    define('UNIT_FLAG_UNK_16',                 65536);
    define('UNIT_FLAG_PACIFIED',               131072);           // 3.0.3 ok
    define('UNIT_FLAG_STUNNED',                262144);           // 3.0.3 ok
    define('UNIT_FLAG_IN_COMBAT',              524288);
    define('UNIT_FLAG_TAXI_FLIGHT',            1048576);           // disable casting at client side spell not allowed by taxi flight (mounted?)); probably used with 0x4 flag
    define('UNIT_FLAG_DISARMED',               2097152);           // 3.0.3); disable melee spells casting...); "Required melee weapon" added to melee spells tooltip.
    define('UNIT_FLAG_CONFUSED',               4194304);
    define('UNIT_FLAG_FLEEING',                8388608);
    define('UNIT_FLAG_PLAYER_CONTROLLED',      16777216);           // used in spell Eyes of the Beast for pet... let attack by controlled creature
    define('UNIT_FLAG_NOT_SELECTABLE',         33554432);
    define('UNIT_FLAG_SKINNABLE',              67108864);
    define('UNIT_FLAG_MOUNT',                  134217728);
    define('UNIT_FLAG_UNK_28',                 268435456);
    define('UNIT_FLAG_UNK_29',                 536870912);           // used in Feing Death spell
    define('UNIT_FLAG_SHEATHE',                1073741824);
?>
