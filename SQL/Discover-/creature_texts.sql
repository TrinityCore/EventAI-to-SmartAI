-- Texts for Defias Blackguard
SET @ENTRY := 636;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s jumps out of the shadows!",16,0,100,0,0,0,"Defias Blackguard");

-- Texts for Edwin VanCleef
SET @ENTRY := 639;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"None may challenge the Brotherhood!",14,0,100,0,0,5780,"Edwin VanCleef"),
(@ENTRY,1,0,"Lap dogs, all of you!",14,0,100,0,0,5782,"Edwin VanCleef"),
(@ENTRY,2,0,"%s calls more of his allies out of the shadows.",16,0,100,0,0,0,"Edwin VanCleef"),
(@ENTRY,3,0,"Fools! our cause it righteous!",14,0,100,0,0,5783,"Edwin VanCleef"),
(@ENTRY,4,0,"%s calls more of his allies out of the shadows.",16,0,100,0,0,0,"Edwin VanCleef"),
(@ENTRY,5,0,"And stay down!",14,0,100,0,0,5781,"Edwin VanCleef"),
(@ENTRY,6,0,"The Brotherhood will prevail!",14,0,100,0,0,5784,"Edwin VanCleef");

-- Texts for Bloodscalp Axe Thrower
SET @ENTRY := 694;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s becomes enraged!",16,0,100,0,0,0,"Bloodscalp Axe Thrower");

-- Texts for Bloodscalp Shaman
SET @ENTRY := 697;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s becomes enraged!",16,0,100,0,0,0,"Bloodscalp Shaman");

-- Texts for Dark Iron Dwarf
SET @ENTRY := 1051;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Never cross a Dark Iron, $C.",12,0,100,0,0,0,"Dark Iron Dwarf"),
(@ENTRY,0,1,"Time to die, $C!",12,0,100,0,0,0,"Dark Iron Dwarf"),
(@ENTRY,0,2,"Feel the power of the Dark Iron Dwarves!",12,0,100,0,0,0,"Dark Iron Dwarf");

-- Texts for Dark Iron Saboteur
SET @ENTRY := 1052;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Wahehe! I'm taking you down with me!",12,0,100,0,0,0,"Dark Iron Saboteur"),
(@ENTRY,1,0,"%s's eyes glow red as he lights his dynamite and begins to cackle madly!",16,0,100,0,0,0,"Dark Iron Saboteur");

-- Texts for Dark Iron Tunneler
SET @ENTRY := 1053;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Never cross a Dark Iron, $C.",12,0,100,0,0,0,"Dark Iron Tunneler"),
(@ENTRY,0,1,"Time to die, $C!",12,0,100,0,0,0,"Dark Iron Tunneler"),
(@ENTRY,0,2,"Feel the power of the Dark Iron Dwarves!",12,0,100,0,0,0,"Dark Iron Tunneler");

-- Texts for Dark Iron Demolitionist
SET @ENTRY := 1054;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Never cross a Dark Iron, $C.",12,0,100,0,0,0,"Dark Iron Demolitionist"),
(@ENTRY,0,1,"Time to die, $C!",12,0,100,0,0,0,"Dark Iron Demolitionist"),
(@ENTRY,0,2,"Feel the power of the Dark Iron Dwarves!",12,0,100,0,0,0,"Dark Iron Demolitionist");

-- Texts for Dark Iron Sapper
SET @ENTRY := 1222;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Die in the name of Ragnaros!",12,0,100,0,0,0,"Dark Iron Sapper"),
(@ENTRY,0,1,"The Thandol Span fell to Ragnaros. So shall the Stonewrought Dam!",12,0,100,0,0,0,"Dark Iron Sapper"),
(@ENTRY,0,2,"King Magni Bronzebeard is a fool and a charlatan!",12,0,100,0,0,0,"Dark Iron Sapper"),
(@ENTRY,1,0,"Wahehe! I'm taking you down with me!",12,0,100,0,0,0,"Dark Iron Sapper"),
(@ENTRY,2,0,"%s's eyes glow red as he lights his dynamite and begins to cackle madly!",16,0,100,0,0,0,"Dark Iron Sapper");

-- Texts for Balgaras the Foul
SET @ENTRY := 1364;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"This land belongs to the Dark Iron Dwarves. Prepare to see the afterlife, $C!",12,6,100,0,0,0,"Balgaras the Foul");

-- Texts for Targorr the Dread
SET @ENTRY := 1696;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s goes into a frenzy!",16,0,100,0,0,0,"Targorr the Dread");

-- Texts for Bazil Thredd
SET @ENTRY := 1716;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Why haven't the Stormwind guards come?",12,0,100,0,0,0,"Bazil Thredd");

-- Texts for Gilnid
SET @ENTRY := 1763;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Get those parts moving down to the ship!",12,0,100,0,0,0,"Gilnid"),
(@ENTRY,0,1,"Anyone want to take a break?  Well too bad!  Get to work you oafs!",12,0,100,0,0,0,"Gilnid");

-- Texts for Bloodfeather Harpy
SET @ENTRY := 2015;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"You will be easy prey, $C.",14,0,100,0,0,0,"Bloodfeather Harpy");

-- Texts for Bloodfeather Rogue
SET @ENTRY := 2017;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"A fine trophy your head will make, $R.",12,0,100,0,0,0,"Bloodfeather Rogue");

-- Texts for Bloodfeather Sorceress
SET @ENTRY := 2018;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"A fine trophy your head will make, $R.",12,0,100,0,0,0,"Bloodfeather Sorceress"),
(@ENTRY,0,1,"My talons will shred your puny body, $R.",12,0,100,0,0,0,"Bloodfeather Sorceress"),
(@ENTRY,0,2,"You will be easy prey, $C.",14,0,100,0,0,0,"Bloodfeather Sorceress");

-- Texts for Chieftain Nek'rosh
SET @ENTRY := 2091;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Your bones will break under my boot, $R!",12,1,100,0,0,0,"Chieftain Nek\'rosh"),
(@ENTRY,0,1,"Long live the Dragonmaw! Die you worthless $R!",12,1,100,0,0,0,"Chieftain Nek\'rosh"),
(@ENTRY,0,2,"For the Dragonmaw!",12,1,100,0,0,0,"Chieftain Nek\'rosh");

-- Texts for Dragonmaw Grunt
SET @ENTRY := 2102;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Your bones will break under my boot, $R!",12,1,100,0,0,0,"Dragonmaw Grunt"),
(@ENTRY,0,1,"Long live the Dragonmaw! Die you worthless $R!",12,1,100,0,0,0,"Dragonmaw Grunt"),
(@ENTRY,0,2,"For the Dragonmaw!",12,1,100,0,0,0,"Dragonmaw Grunt");

-- Texts for Dragonmaw Scout
SET @ENTRY := 2103;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Your bones will break under my boot, $R!",12,1,100,0,0,0,"Dragonmaw Scout"),
(@ENTRY,0,1,"Long live the Dragonmaw! Die you worthless $R!",12,1,100,0,0,0,"Dragonmaw Scout"),
(@ENTRY,0,2,"For the Dragonmaw!",12,1,100,0,0,0,"Dragonmaw Scout");

-- Texts for Garneg Charskull
SET @ENTRY := 2108;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Your bones will break under my boot, $R!",12,1,100,0,0,0,"Garneg Charskull"),
(@ENTRY,0,1,"Long live the Dragonmaw! Die you worthless $R!",12,1,100,0,0,0,"Garneg Charskull"),
(@ENTRY,0,2,"For the Dragonmaw!",12,1,100,0,0,0,"Garneg Charskull");

-- Texts for Lord Falconcrest
SET @ENTRY := 2597;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"I presume you come with good news?",12,0,100,0,0,0,"Lord Falconcrest");

-- Texts for Otto
SET @ENTRY := 2599;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Things are going as planned, Lord Falconcrest. I assure you, it is only a matter of time.",12,0,100,0,0,0,"Otto");

-- Texts for Witchwing Roguefeather
SET @ENTRY := 3277;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"My talons will shred your puny body, $R.",12,0,100,0,0,0,"Witchwing Roguefeather");

-- Texts for Verog the Dervish
SET @ENTRY := 3395;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"I am summoned! Intruders, come to my tent and face your death!",14,0,100,0,0,0,"Verog the Dervish");

-- Texts for Pilot Wizzlecrank
SET @ENTRY := 3451;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Looks like you'll have to go ahead to Ratchet and tell Sputtervalve that I've wrecked the shredder.",12,0,100,0,0,0,"Pilot Wizzlecrank"),
(@ENTRY,1,0,"I'll stay behind and guard the wreck. Hurry! Hopefully no one will notice the smoke...",12,0,100,0,0,0,"Pilot Wizzlecrank");

-- Texts for Bogling
SET @ENTRY := 3569;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"KILL!!!",12,0,100,0,0,0,"Bogling");

-- Texts for Cerellean Whiteclaw
SET @ENTRY := 3644;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Anaya...? Do my eyes deceive me? Is it really you?",12,0,100,0,0,0,"Cerellean Whiteclaw"),
(@ENTRY,1,0,"That fates should be so cruel as to permit us only this after a thousand years apart...",12,0,100,0,0,0,"Cerellean Whiteclaw"),
(@ENTRY,2,0,"Do you hate me, my love? That I was forced to destroy your living form, that your spirit be released from unhappy bondage.",12,0,100,0,0,0,"Cerellean Whiteclaw"),
(@ENTRY,3,0,"No! Anaya... Anaya! Don't leave me! Please...",12,0,100,0,0,0,"Cerellean Whiteclaw"),
(@ENTRY,4,0,"How, my love? How will I find the strength to face the ages of the world without you by my side...",12,0,100,0,0,0,"Cerellean Whiteclaw");

-- Texts for Anaya Dawnrunner
SET @ENTRY := 3667;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Finally, my soul may rest... Oh, dearest Cerellean...",12,0,100,0,0,0,"Anaya Dawnrunner");

-- Texts for Anaya
SET @ENTRY := 3843;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"The ages have been cruel to you and I, my love, but be assured, it is, and at long last we are reunited.",12,0,100,0,0,0,"Anaya"),
(@ENTRY,1,0,"Let it not trouble your heart, beloved. You have freed me from slavery, and for that I love you all the more.",12,0,100,0,0,0,"Anaya"),
(@ENTRY,2,0,"Sadly, even this must be cut short... The ties that bind me to this world weaken, and pull me away...",12,0,100,0,0,0,"Anaya"),
(@ENTRY,3,0,"Farewell, Cerellean, until we are joined once again...",12,0,100,0,0,0,"Anaya"),
(@ENTRY,4,0,"%s's soft voice trails away into the mists, \"Know that I love you always...\"",16,0,100,0,0,0,"Anaya");

-- Texts for Thistlefur Avenger
SET @ENTRY := 3925;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s goes into a rage after seeing a friend fall in battle!",16,0,100,0,0,0,"Thistlefur Avenger");

-- Texts for Velinde Starsong
SET @ENTRY := 3946;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"The numbers of my companions dwindles, goddess, and my own power shall soon be insufficient to hold back the demons of Felwood.",12,0,100,0,0,0,"Velinde Starsong"),
(@ENTRY,1,0,"Goddess, grant me the power to overcome my enemies! Hear me, please, my need is desperate and my cause is just!",12,0,100,0,0,0,"Velinde Starsong"),
(@ENTRY,2,0,"What... what is this? Could this be the answer to my prayers? Elune has granted me a weapon--this scythe--to defeat the demons.",12,0,100,0,0,0,"Velinde Starsong");

-- Texts for Scarlet Abbot
SET @ENTRY := 4303;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s becomes enraged!",16,0,100,0,0,0,"Scarlet Abbot");

-- Texts for Scarlet Torturer
SET @ENTRY := 4306;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Confess and we shall set you free.",12,0,100,0,0,0,"Scarlet Torturer"),
(@ENTRY,0,1,"You will talk eventually. You might as well spill it now.",12,0,100,0,0,0,"Scarlet Torturer"),
(@ENTRY,0,2,"What? Oh no. I don't care what you have to say. I just enjoy inflicting pain.",14,0,100,0,0,0,"Scarlet Torturer");

-- Texts for Sargath
SET @ENTRY := 4509;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"In the throes of the Sundering, Ameth'Aran was at the whim of the terror that gripped the land. There was little hope for survival.",12,0,100,0,0,0,"Sargath"),
(@ENTRY,1,0,"Athrikus came to us. He told us that he could save us from harm. He cast a spell upon us to protect us from harm.",12,0,100,0,0,0,"Sargath"),
(@ENTRY,2,0,"When the shaking stopped, his true motives were revealed. We were trapped, and he was slowly draining our powers.",12,0,100,0,0,0,"Sargath"),
(@ENTRY,3,0,"There were hundreds imprisoned by his spell. Now only a few remain in their prisons. He would speak to us sometimes.",12,0,100,0,0,0,"Sargath"),
(@ENTRY,4,0,"He worried that his power weakened, that soon even we last of his precious soulgems would fade and die.",12,0,100,0,0,0,"Sargath"),
(@ENTRY,5,0,"His lieutenant, Ilkurd Magthrull possesses a tome which might indicate the location of the remaining soulgems.",12,0,100,0,0,0,"Sargath");

-- Texts for Hatefury Rogue
SET @ENTRY := 4670;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s becomes enraged!",16,0,100,0,0,0,"Hatefury Rogue");

-- Texts for Hatefury Trickster
SET @ENTRY := 4671;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s becomes enraged!",16,0,100,0,0,0,"Hatefury Trickster");

-- Texts for Hatefury Felsworn
SET @ENTRY := 4672;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s becomes enraged!",16,0,100,0,0,0,"Hatefury Felsworn");

-- Texts for Hatefury Betrayer
SET @ENTRY := 4673;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s becomes enraged!",16,0,100,0,0,0,"Hatefury Betrayer");

-- Texts for Hatefury Shadowstalker
SET @ENTRY := 4674;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s becomes enraged!",16,0,100,0,0,0,"Hatefury Shadowstalker");

-- Texts for Hatefury Hellcaller
SET @ENTRY := 4675;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s becomes enraged!",16,0,100,0,0,0,"Hatefury Hellcaller"),
(@ENTRY,1,0,"%s becomes enraged!",16,0,100,0,0,0,"Hatefury Hellcaller");

-- Texts for Lady Sarevess
SET @ENTRY := 4831;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"You should not be here! Slay them!",14,0,100,0,0,5799,"Lady Sarevess"),
(@ENTRY,1,0,"Hearty Kill!",14,0,100,0,0,5801,"Lady Sarevess");

-- Texts for Stonevault Rockchewer
SET @ENTRY := 4851;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s becomes enraged!",16,0,100,0,0,0,"Stonevault Rockchewer");

-- Texts for Grimlok
SET @ENTRY := 4854;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Me %s, King!",14,0,100,0,0,5853,"Grimlok"),
(@ENTRY,2,0,"Die! Die!",14,0,100,0,0,5854,"Grimlok");

-- Texts for Stonevault Brawler
SET @ENTRY := 4855;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s goes into a frenzy!",16,0,100,0,0,0,"Stonevault Brawler");

-- Texts for Balos Jacken
SET @ENTRY := 5089;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Alright! We Surrender... Just put your weapons down, I'll cooperate",12,0,100,0,0,0,"Balos Jacken");

-- Texts for Unliving Atal'ai
SET @ENTRY := 5267;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s goes into a frenzy!",16,0,100,0,0,0,"Unliving Atal\'ai");

-- Texts for Shade of Eranikus
SET @ENTRY := 5709;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"This evil cannot be allowed to enter this world!  Come my children!",14,0,100,0,0,0,"Shade of Eranikus");

-- Texts for Dreamscythe
SET @ENTRY := 5721;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Turn back! Do not wake the dreamer!",14,0,100,0,0,5866,"Dreamscythe"),
(@ENTRY,1,0,"You know not what you do! We must destroy you for your own good.",14,0,100,0,0,0,"Dreamscythe");

-- Texts for Un'Goro Stomper
SET @ENTRY := 6513;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s becomes enraged!",16,0,100,0,0,0,"Un\'Goro Stomper");

-- Texts for Dark Iron Rifleman
SET @ENTRY := 6523;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Never cross a Dark Iron, $C.",12,0,100,0,0,0,"Dark Iron Rifleman"),
(@ENTRY,0,1,"Time to die, $C!",12,0,100,0,0,0,"Dark Iron Rifleman"),
(@ENTRY,0,2,"Feel the power of the Dark Iron Dwarves!",12,0,100,0,0,0,"Dark Iron Rifleman");

-- Texts for Deadwood Avenger
SET @ENTRY := 7157;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s becomes enraged!",16,0,100,0,0,0,"Deadwood Avenger");

-- Texts for Stonevault Ambusher
SET @ENTRY := 7175;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s goes into a frenzy!",16,0,100,0,0,0,"Stonevault Ambusher");

-- Texts for Galgann Firehammer
SET @ENTRY := 7291;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"By Thorazan's Beard, Slay Them!",14,0,100,0,0,5852,"Galgann Firehammer");

-- Texts for Stonevault Mauler
SET @ENTRY := 7320;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s goes into a frenzy!",16,0,100,0,0,0,"Stonevault Mauler");

-- Texts for Withered Warrior
SET @ENTRY := 7327;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s becomes enraged!",16,0,100,0,0,0,"Withered Warrior");

-- Texts for Withered Reaver
SET @ENTRY := 7328;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s becomes enraged!",16,0,100,0,0,0,"Withered Reaver");

-- Texts for Withered Quilguard
SET @ENTRY := 7329;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s becomes enraged!",16,0,100,0,0,0,"Withered Quilguard");

-- Texts for Withered Spearhide
SET @ENTRY := 7332;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s becomes enraged!",16,0,100,0,0,0,"Withered Spearhide");

-- Texts for Mordresh Fire Eye
SET @ENTRY := 7357;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Slay them, my brethren! For the Scourge!",14,0,100,0,0,5822,"Mordresh Fire Eye"),
(@ENTRY,1,0,"Soon, the Scourge will rule the world!",14,0,100,0,0,5821,"Mordresh Fire Eye"),
(@ENTRY,1,1,"We will spread across this barren land!",14,0,100,0,0,5820,"Mordresh Fire Eye"),
(@ENTRY,1,2,"We will enslave the quilboar!",14,0,100,0,0,5819,"Mordresh Fire Eye");

-- Texts for Dark Iron Land Mine
SET @ENTRY := 8035;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s will be armed in 10 seconds!",16,0,100,0,0,0,"Dark Iron Land Mine"),
(@ENTRY,1,0,"%s will be armed in 5 seconds!",16,0,100,0,0,0,"Dark Iron Land Mine"),
(@ENTRY,2,0,"%s is now armed!",16,0,100,0,0,0,"Dark Iron Land Mine");

-- Texts for Omgorn the Lost
SET @ENTRY := 8201;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s becomes enraged!",16,0,100,0,0,0,"Omgorn the Lost");

-- Texts for Glutton
SET @ENTRY := 8567;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s is getting hungry!",16,0,100,0,0,0,"Glutton"),
(@ENTRY,1,0,"%s is getting VERY hungry!",16,0,100,0,0,0,"Glutton");

-- Texts for Atal'alarion
SET @ENTRY := 8580;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"So or'manley fi siame Dim fus siame yudo",14,14,100,0,0,5859,"Atal\'alarion"),
(@ENTRY,1,0,"IMan atuad fi ting caang",14,14,100,0,0,5860,"Atal\'alarion");

-- Texts for Mosshoof Courser
SET @ENTRY := 8761;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s becomes enraged!",16,0,100,0,0,0,"Mosshoof Courser");

-- Texts for Sandfury Zealot
SET @ENTRY := 8877;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s becomes enraged!",16,0,100,0,0,0,"Sandfury Zealot");

-- Texts for Angerclaw Bear
SET @ENTRY := 8956;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s becomes enraged!",16,0,100,0,0,0,"Angerclaw Bear");

-- Texts for Angerclaw Grizzly
SET @ENTRY := 8957;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s becomes enraged!",16,0,100,0,0,0,"Angerclaw Grizzly");

-- Texts for Angerclaw Mauler
SET @ENTRY := 8958;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s becomes enraged!",16,0,100,0,0,0,"Angerclaw Mauler");

-- Texts for Spirestone Warlord
SET @ENTRY := 9216;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s goes into a frenzy!",16,0,100,0,0,0,"Spirestone Warlord");

-- Texts for Firebrand Grunt
SET @ENTRY := 9259;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s goes into a frenzy!",16,0,100,0,0,0,"Firebrand Grunt");

-- Texts for Smolderthorn Berserker
SET @ENTRY := 9268;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s goes into a frenzy!",16,0,100,0,0,0,"Smolderthorn Berserker");

-- Texts for Bloodaxe Warmonger
SET @ENTRY := 9716;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s becomes enraged!",16,0,100,0,0,0,"Bloodaxe Warmonger");

-- Texts for Xabraxxis
SET @ENTRY := 10373;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s becomes enraged!",16,0,100,0,0,0,"Xabraxxis");

-- Texts for Plague Ghoul
SET @ENTRY := 10405;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s becomes enraged!",16,0,100,0,0,0,"Plague Ghoul");

-- Texts for Eye of Naxxramas
SET @ENTRY := 10411;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"The living are here!",14,0,100,0,0,0,"Eye of Naxxramas");

-- Texts for Marduk Blackpool
SET @ENTRY := 10433;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"We are betrayed!",12,0,100,0,0,0,"Marduk Blackpool");

-- Texts for Risen Construct
SET @ENTRY := 10488;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s becomes enraged!",16,0,100,0,0,0,"Risen Construct");

-- Texts for Summoned Blackhand Dreadweaver
SET @ENTRY := 10680;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s summons a Blackhand Dreadweaver to his aid!",16,0,100,0,0,0,"Summoned Blackhand Dreadweaver");

-- Texts for Summoned Blackhand Veteran
SET @ENTRY := 10681;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s summons a Blackhand Veteran to his aid!",16,0,100,0,0,0,"Summoned Blackhand Veteran");

-- Texts for Fras Siabi
SET @ENTRY := 11058;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"The stogies? You'll have to pry them from my cold dead... er... RAWR!",12,0,66,0,0,0,"Fras Siabi"),
(@ENTRY,0,1,"I'm going to wear your skin as a smoking jacket!",14,0,33,0,0,0,"Fras Siabi");

-- Texts for Manifestation of Water
SET @ENTRY := 11256;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Ma reth bromo zoln kilagrin dra ma zoern tu ko fraht ka tadrom Ma krin drinor zaln dirnor Ma krin kan aasrugel korsul",12,0,100,0,0,0,"Manifestation of Water");

-- Texts for Gordok Brute
SET @ENTRY := 11441;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Raaar!!! Me smash $R!",12,0,100,0,0,0,"Gordok Brute"),
(@ENTRY,0,1,"Me smash! You die!",12,0,100,0,0,0,"Gordok Brute"),
(@ENTRY,0,2,"I'll crush you!",12,0,100,0,0,0,"Gordok Brute"),
(@ENTRY,1,0,"%s becomes enraged!",16,0,100,0,0,0,"Gordok Brute");

-- Texts for Gordok Mauler
SET @ENTRY := 11442;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Raaar!!! Me smash $R!",12,0,100,0,0,0,"Gordok Mauler"),
(@ENTRY,0,1,"Me smash! You die!",12,0,100,0,0,0,"Gordok Mauler"),
(@ENTRY,0,2,"I'll crush you!",12,0,100,0,0,0,"Gordok Mauler"),
(@ENTRY,1,0,"%s becomes enraged!",16,0,100,0,0,0,"Gordok Mauler");

-- Texts for Gordok Ogre-Mage
SET @ENTRY := 11443;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Raaar!!! Me smash $R!",12,0,100,0,0,0,"Gordok Ogre-Mage"),
(@ENTRY,0,1,"Me smash! You die!",12,0,100,0,0,0,"Gordok Ogre-Mage"),
(@ENTRY,0,2,"I'll crush you!",12,0,100,0,0,0,"Gordok Ogre-Mage");

-- Texts for Gordok Mage-Lord
SET @ENTRY := 11444;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Raaar!!! Me smash $R!",12,0,100,0,0,0,"Gordok Mage-Lord"),
(@ENTRY,0,1,"Me smash! You die!",12,0,100,0,0,0,"Gordok Mage-Lord"),
(@ENTRY,0,2,"I'll crush you!",12,0,100,0,0,0,"Gordok Mage-Lord"),
(@ENTRY,1,0,"%s becomes enraged!",16,0,100,0,0,0,"Gordok Mage-Lord");

-- Texts for Gordok Warlock
SET @ENTRY := 11448;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Raaar!!! Me smash $R!",12,0,100,0,0,0,"Gordok Warlock"),
(@ENTRY,0,1,"Me smash! You die!",12,0,100,0,0,0,"Gordok Warlock"),
(@ENTRY,0,2,"I'll crush you!",12,0,100,0,0,0,"Gordok Warlock");

-- Texts for Eldreth Seether
SET @ENTRY := 11469;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s becomes enraged!",16,0,100,0,0,0,"Eldreth Seether");

-- Texts for Prince Tortheldrin
SET @ENTRY := 11486;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Who dares disrupt the sanctity of Eldre'Thalas? Face me, cowards!",14,0,100,0,0,0,"Prince Tortheldrin");

-- Texts for Immol'thar
SET @ENTRY := 11496;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s goes into a frenzy!",16,0,100,0,0,0,"Immol\'thar");

-- Texts for Scholomance Dark Summoner
SET @ENTRY := 11582;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Now this is an example of what not to summon. Look, it's frail and brittle. One good whack from a mace will send bone shards flying.",12,0,100,0,0,0,"Scholomance Dark Summoner"),
(@ENTRY,0,1,"Hmmm, this one looks like something that would be better off as a windchime. Take notes class... This is NOT what you want to summon in the heat of battle.",12,0,100,0,0,0,"Scholomance Dark Summoner"),
(@ENTRY,0,2,"This one is slightly better than the last. However, it still suffers from the same flimsy bone structure as the others. When you summon one of these, you are on the right path.",12,0,100,0,0,0,"Scholomance Dark Summoner");

-- Texts for Taskmaster Snivvle
SET @ENTRY := 11677;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Snivvle is here! Snivvle claims the Coldtooth Mine!",12,0,100,0,0,0,"Taskmaster Snivvle");

-- Texts for Horde Scout
SET @ENTRY := 11680;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Never cross a Dark Iron, $C.",12,0,100,0,0,0,"Horde Scout"),
(@ENTRY,0,1,"Time to die, $C!",12,0,100,0,0,0,"Horde Scout"),
(@ENTRY,0,2,"Feel the power of the Dark Iron Dwarves!",12,0,100,0,0,0,"Horde Scout");

-- Texts for Desert Rager
SET @ENTRY := 11747;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s becomes enraged!",16,0,100,0,0,0,"Desert Rager");

-- Texts for Wildpaw Alpha
SET @ENTRY := 11840;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s becomes enraged!",16,0,100,0,0,0,"Wildpaw Alpha");

-- Texts for Gor'marok the Ravager
SET @ENTRY := 12046;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s becomes enraged!",16,0,100,0,0,0,"Gor\'marok the Ravager");

-- Texts for Drakan
SET @ENTRY := 12121;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s becomes enraged!",16,0,100,0,0,0,"Drakan");

-- Texts for Duros
SET @ENTRY := 12122;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s becomes enraged!",16,0,100,0,0,0,"Duros");

-- Texts for Bloodfury Ripper
SET @ENTRY := 12579;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s becomes enraged!",16,0,100,0,0,0,"Bloodfury Ripper");

-- Texts for Chief Murgut
SET @ENTRY := 12918;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"You are a little gnat to the Foulweald!  Die!",12,0,100,0,0,0,"Chief Murgut"),
(@ENTRY,1,0,"No!  You cannot be stronger than the Foulweald!  No!!",12,0,100,0,0,0,"Chief Murgut");

-- Texts for Enraged Foulweald
SET @ENTRY := 12921;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s attacks Karang's Banner!",16,0,100,0,0,0,"Enraged Foulweald");

-- Texts for Echo of Archimonde
SET @ENTRY := 13083;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"All of your efforts have been in vain, for the draining of the World Tree has already begun! Soon, the heart of your world shall beat no more!",14,0,100,0,0,10986,"Echo of Archimonde");

-- Texts for Guard Fengus
SET @ENTRY := 14321;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s goes into a frenzy!",16,0,100,0,0,0,"Guard Fengus");

-- Texts for Stomper Kreeg
SET @ENTRY := 14322;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s goes into a frenzy!",16,0,100,0,0,0,"Stomper Kreeg");

-- Texts for Guard Slip'kik
SET @ENTRY := 14323;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s goes into a frenzy!",16,0,100,0,0,0,"Guard Slip\'kik");

-- Texts for Captain Kromcrush
SET @ENTRY := 14325;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"No one get past me and threaten da king!  Ungh, take it!!",12,0,100,0,0,0,"Captain Kromcrush"),
(@ENTRY,1,0,"Help me crush these punys!",14,0,100,0,0,0,"Captain Kromcrush"),
(@ENTRY,2,0,"%s begins to retaliate all attacks against him!",16,0,100,0,0,0,"Captain Kromcrush");

-- Texts for Guard Mol'dar
SET @ENTRY := 14326;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s goes into a frenzy!",16,0,100,0,0,0,"Guard Mol\'dar");

-- Texts for Vekniss Guardian
SET @ENTRY := 15233;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s becomes enraged!",16,0,100,0,0,0,"Vekniss Guardian");

-- Texts for Qiraji Champion
SET @ENTRY := 15252;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s becomes enraged!",16,0,100,0,0,0,"Qiraji Champion");

-- Texts for Anubisath Defender
SET @ENTRY := 15277;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s becomes enraged!",16,0,100,0,0,0,"Anubisath Defender");

-- Texts for Anubisath Warrior
SET @ENTRY := 15537;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s becomes enraged!",16,0,100,0,0,0,"Anubisath Warrior");

-- Texts for Crypt Reaver
SET @ENTRY := 15978;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s goes into a frenzy!",16,0,100,0,0,0,"Crypt Reaver");

-- Texts for Empyrean
SET @ENTRY := 16098;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s goes into a frenzy!",16,0,100,0,0,0,"Empyrean");

-- Texts for Infectious Ghoul
SET @ENTRY := 16244;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s goes into a frenzy!",16,0,100,0,0,0,"Infectious Ghoul");

-- Texts for Phantom Attendant
SET @ENTRY := 16406;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"What is happening?",12,0,100,0,0,0,"Phantom Attendant"),
(@ENTRY,0,1,"Where am I? What...",14,0,100,0,0,0,"Phantom Attendant");

-- Texts for Phantom Valet
SET @ENTRY := 16408;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"The fates have turned against me!",14,0,100,0,0,0,"Phantom Valet");

-- Texts for Phantom Guest
SET @ENTRY := 16409;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Not... Fair...",14,0,100,0,0,0,"Phantom Guest");

-- Texts for Ghostly Steward
SET @ENTRY := 16414;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"That was a 200 year old Pupellyverbos Port!",12,0,100,0,0,0,"Ghostly Steward"),
(@ENTRY,0,1,"That was wasted on the likes of you!",12,0,100,0,0,0,"Ghostly Steward"),
(@ENTRY,0,2,"How dare you disturb the master's dinner!",14,0,100,0,0,0,"Ghostly Steward"),
(@ENTRY,1,0,"Wait... No! No!",14,0,100,0,0,0,"Ghostly Steward");

-- Texts for Plagued Ghoul
SET @ENTRY := 16447;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s goes into a frenzy!",16,0,100,0,0,0,"Plagued Ghoul");

-- Texts for Night Mistress
SET @ENTRY := 16460;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"He asked if the imp could join in... can you believe it? Actually, it wasn't half bad...",12,0,100,0,0,0,"Night Mistress"),
(@ENTRY,0,1,"So I said, \"Yeah, but that'll cost you extra.\"",12,0,100,0,0,0,"Night Mistress"),
(@ENTRY,0,2,"Five seconds! I'm not kidding!",14,0,100,0,0,0,"Night Mistress");

-- Texts for Concubine
SET @ENTRY := 16461;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"We could have had so much fun!",14,0,100,0,0,0,"Concubine"),
(@ENTRY,1,0,"They fall asleep after. Me, I fall asleep during....",14,0,100,0,0,0,"Concubine");

-- Texts for Spectral Patron
SET @ENTRY := 16468;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Yes... I think I remember now...",12,0,100,0,0,0,"Spectral Patron"),
(@ENTRY,0,1,"I'll miss the show!",14,0,100,0,0,0,"Spectral Patron");

-- Texts for Ghostly Philanthropist
SET @ENTRY := 16470;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Is it really over?",12,0,100,0,0,0,"Ghostly Philanthropist"),
(@ENTRY,0,1,"It's all... coming back to me.",14,0,100,0,0,0,"Ghostly Philanthropist");

-- Texts for Ghastly Haunt
SET @ENTRY := 16481;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Time to move on...",12,0,100,0,0,0,"Ghastly Haunt"),
(@ENTRY,0,1,"Free... at last.",14,0,100,0,0,0,"Ghastly Haunt");

-- Texts for Trapped Soul
SET @ENTRY := 16482;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Time to move on...",12,0,100,0,0,0,"Trapped Soul"),
(@ENTRY,0,1,"Free... at last.",14,0,100,0,0,0,"Trapped Soul");

-- Texts for Arcane Watchman
SET @ENTRY := 16485;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"The same fate awaits all who would steal from the master.",12,0,100,0,0,0,"Arcane Watchman"),
(@ENTRY,0,1,"Death is far too merciful for your kind.",14,0,100,0,0,0,"Arcane Watchman"),
(@ENTRY,1,0,"This... changes nothing. Eternal damnation awaits you!",12,0,100,0,0,0,"Arcane Watchman"),
(@ENTRY,1,1,"Others will take my place!",14,0,100,0,0,0,"Arcane Watchman");

-- Texts for Blood Elf Scout
SET @ENTRY := 16521;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"I hope you've made your peace.",12,0,100,0,0,0,"Blood Elf Scout"),
(@ENTRY,0,1,"We won't allow you to leave this valley!",12,0,100,0,0,0,"Blood Elf Scout"),
(@ENTRY,0,2,"What a pity you survived the crash just to die here.",12,0,100,0,0,0,"Blood Elf Scout");

-- Texts for Surveyor Candress
SET @ENTRY := 16522;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"You'll not take me alive, scum!",12,0,100,0,0,0,"Surveyor Candress");

-- Texts for Shattered Hand Savage
SET @ENTRY := 16523;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s becomes enraged!",16,0,100,0,0,0,"Shattered Hand Savage");

-- Texts for Inoculated Nestlewood Owlkin
SET @ENTRY := 16534;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"The %s nods appreciatively.",16,0,100,2,0,0,"Inoculated Nestlewood Owlkin"),
(@ENTRY,0,1,"The %s looks confused.",16,0,100,6,0,0,"Inoculated Nestlewood Owlkin"),
(@ENTRY,0,2,"The %s didn't like what just happened.",16,0,100,18,0,0,"Inoculated Nestlewood Owlkin"),
(@ENTRY,1,0,"The %s seems overjoyed.",16,0,100,4,0,0,"Inoculated Nestlewood Owlkin"),
(@ENTRY,1,1,"The %s doen't look like it minds the crystal's effect.",16,0,100,22,0,0,"Inoculated Nestlewood Owlkin");

-- Texts for Ethereal Thief
SET @ENTRY := 16544;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Turn your back while you can!",14,0,100,0,0,0,"Ethereal Thief"),
(@ENTRY,1,0,"You will succeed only in damning yourselves!",14,0,100,0,0,0,"Ethereal Thief");

-- Texts for Watch Commander Krunk
SET @ENTRY := 16584;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"I've seen gnomes work harder than you, peon! Little girl gnomes - with pig tails! MOVE IT, MOVE IT, MOVE IT!",12,0,100,0,0,0,"Watch Commander Krunk");

-- Texts for Cookie One-Eye
SET @ENTRY := 16585;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Yer slop is ready. Come n' get it...",12,0,100,0,0,0,"Cookie One-Eye"),
(@ENTRY,1,0,"And if I hear that you palookas complained to Nazgrel again, it'll be one of ya's that I serve up next time...",12,0,100,0,0,0,"Cookie One-Eye");

-- Texts for Injured Thrallmar Grunt
SET @ENTRY := 16590;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"If my stomach wasn't threatening to dislodge itself from my body and leave me for the refuse that we give to the prisoners, I might be insulted by this... this food.",12,0,100,0,0,0,"Injured Thrallmar Grunt"),
(@ENTRY,0,1,"Do I detect a hint of cinnamon? Or is that nutmeg? Whatever it is, one thing is for sure - nobody cooks donkey like you, Cookie.",12,0,100,0,0,0,"Injured Thrallmar Grunt"),
(@ENTRY,1,0,"What kinda orcs, chief?",12,0,100,0,0,0,"Injured Thrallmar Grunt"),
(@ENTRY,2,0,"You mean...",12,0,100,0,0,0,"Injured Thrallmar Grunt"),
(@ENTRY,3,0,"But how, chief? I thought the curse was lifted...",12,0,100,0,0,0,"Injured Thrallmar Grunt");

-- Texts for Shattered Hand Reaver
SET @ENTRY := 16699;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s becomes enraged!",16,0,100,0,0,0,"Shattered Hand Reaver");

-- Texts for Mag'har Grunt
SET @ENTRY := 16846;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s becomes enraged!",16,0,100,0,0,0,"Mag\'har Grunt");

-- Texts for Bleeding Hollow Grunt
SET @ENTRY := 16871;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s becomes enraged!",16,0,100,0,0,0,"Bleeding Hollow Grunt");

-- Texts for Bonechewer Mutant
SET @ENTRY := 16876;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s becomes unstable and begins to disintegrate!",16,0,100,0,0,0,"Bonechewer Mutant");

-- Texts for Cyber-Rage Forgelord
SET @ENTRY := 16943;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s goes into a frenzy!",16,0,100,0,0,0,"Cyber-Rage Forgelord");

-- Texts for Warlord Morkh
SET @ENTRY := 16964;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s becomes enraged!",16,0,100,0,0,0,"Warlord Morkh");

-- Texts for Tortured Earth Spirit
SET @ENTRY := 17156;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s becomes enraged!",16,0,100,0,0,0,"Tortured Earth Spirit");

-- Texts for Raving Owlbeast
SET @ENTRY := 17188;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s becomes enraged!",16,0,100,0,0,0,"Raving Owlbeast");

-- Texts for Bonechewer Hungerer
SET @ENTRY := 17259;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"This world is OURS!",12,1,100,0,0,0,"Bonechewer Hungerer"),
(@ENTRY,0,1,"We are the true Horde!",12,1,100,0,0,0,"Bonechewer Hungerer"),
(@ENTRY,0,2,"The blood is our power!",12,1,100,0,0,0,"Bonechewer Hungerer");

-- Texts for Bonechewer Destroyer
SET @ENTRY := 17271;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"For Kargath!  For Victory!",12,0,100,0,0,0,"Bonechewer Destroyer"),
(@ENTRY,0,1,"We are the true Horde!",12,1,100,0,0,0,"Bonechewer Destroyer"),
(@ENTRY,0,2,"The blood is our power!",12,1,100,0,0,0,"Bonechewer Destroyer");

-- Texts for Bonechewer Ripper
SET @ENTRY := 17281;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s becomes enraged!",16,0,100,0,0,0,"Bonechewer Ripper");

-- Texts for Gorgannon
SET @ENTRY := 17300;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s calls for help!",16,0,100,0,0,0,"Gorgannon");

-- Texts for Laughing Skull Enforcer
SET @ENTRY := 17370;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Lok Narash!",12,0,100,0,0,0,"Laughing Skull Enforcer");

-- Texts for Shadowmoon Technician
SET @ENTRY := 17414;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s begins to arm the Proximity Bomb!",16,0,100,0,0,0,"Shadowmoon Technician"),
(@ENTRY,1,0,"%s begins to arm the Proximity Bomb!",16,0,100,0,0,0,"Shadowmoon Technician");

-- Texts for Shattered Hand Heathen
SET @ENTRY := 17420;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s becomes enraged!",16,0,100,0,0,0,"Shattered Hand Heathen");

-- Texts for Bonechewer Beastmaster
SET @ENTRY := 17455;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Hold them back while I release the warhounds!",14,0,100,0,0,10160,"Bonechewer Beastmaster"),
(@ENTRY,1,0,"My pets are hungry and they will dine on your flesh!",14,0,100,0,0,10161,"Bonechewer Beastmaster");

-- Texts for Blood Elf Bandit
SET @ENTRY := 17591;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Your money or your life! Actually, just your life will do...",12,0,100,0,0,0,"Blood Elf Bandit"),
(@ENTRY,0,1,"Your death will make a fitting tribute to the King!",12,0,100,0,0,0,"Blood Elf Bandit"),
(@ENTRY,0,2,"For Silvermoon! For Sunstrider!",12,0,100,0,0,0,"Blood Elf Bandit");

-- Texts for Heathen Guard
SET @ENTRY := 17621;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s becomes enraged!",16,0,100,0,0,0,"Heathen Guard");

-- Texts for Reaver Guard
SET @ENTRY := 17623;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s becomes enraged!",16,0,100,0,0,0,"Reaver Guard");

-- Texts for Laughing Skull Legionnaire
SET @ENTRY := 17626;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s goes into a frenzy!",16,0,100,0,0,0,"Laughing Skull Legionnaire");

-- Texts for Expedition Researcher
SET @ENTRY := 17681;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Woot! Thanks!",12,0,100,0,0,0,"Expedition Researcher");

-- Texts for Bog Giant
SET @ENTRY := 17723;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s becomes enraged!",16,0,100,0,0,0,"Bog Giant");

-- Texts for Underbog Lurker
SET @ENTRY := 17725;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s grows in size upon seeing $N!",16,0,100,0,0,0,"Underbog Lurker"),
(@ENTRY,1,0,"%s strength fades!",16,0,100,0,0,0,"Underbog Lurker");

-- Texts for Wrathfin Sentry
SET @ENTRY := 17727;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Illidan reigns!",12,0,100,0,0,0,"Wrathfin Sentry");

-- Texts for Murkblood Tribesman
SET @ENTRY := 17728;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s goes into a frenzy!",16,0,100,0,0,0,"Murkblood Tribesman");

-- Texts for Murkblood Spearman
SET @ENTRY := 17729;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s goes into a frenzy!",16,0,100,0,0,0,"Murkblood Spearman");

-- Texts for Murkblood Healer
SET @ENTRY := 17730;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s begins a massive heal!",16,0,100,0,0,0,"Murkblood Healer"),
(@ENTRY,1,0,"%s begins a massive heal!",16,0,100,0,0,0,"Murkblood Healer");

-- Texts for Lykul Wasp
SET @ENTRY := 17732;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s goes into a frenzy!",16,0,100,0,0,0,"Lykul Wasp");

-- Texts for Underbog Lord
SET @ENTRY := 17734;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s goes into a frenzy!",16,0,100,0,0,0,"Underbog Lord");

-- Texts for Wrathfin Warrior
SET @ENTRY := 17735;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s becomes enraged!",16,0,100,0,0,0,"Wrathfin Warrior");

-- Texts for Coilfang Slavemaster
SET @ENTRY := 17805;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s becomes enraged!",16,0,100,0,0,0,"Coilfang Slavemaster");

-- Texts for Infinite Assassin
SET @ENTRY := 17835;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"The wizard will fall!",12,0,100,0,0,0,"Infinite Assassin"),
(@ENTRY,0,1,"We will not be stopped!",12,0,100,0,0,0,"Infinite Assassin"),
(@ENTRY,0,2,"Your efforts... are in vain.",12,0,100,0,0,0,"Infinite Assassin");

-- Texts for Rift Lord
SET @ENTRY := 17839;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Victory or death!",12,0,100,0,0,0,"Rift Lord"),
(@ENTRY,0,1,"You are running out of time!",12,0,100,0,0,0,"Rift Lord"),
(@ENTRY,0,2,"The rift must be protected!",12,0,100,0,0,0,"Rift Lord");

-- Texts for Durnholde Tracking Hound
SET @ENTRY := 17840;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s goes into a frenzy!",16,0,100,0,0,0,"Durnholde Tracking Hound");

-- Texts for Infinite Chronomancer
SET @ENTRY := 17892;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"We are not finished!",12,0,100,0,0,0,"Infinite Chronomancer"),
(@ENTRY,0,1,"Death to the Last Guardian!",12,0,100,0,0,0,"Infinite Chronomancer"),
(@ENTRY,0,2,"We will not fail!",12,0,100,0,0,0,"Infinite Chronomancer");

-- Texts for Naturalist Bite
SET @ENTRY := 17893;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Hey!  Over here!  Yeah, over here... I'm in this cage!!!",14,0,100,0,0,0,"Naturalist Bite");

-- Texts for Mennu the Betrayer
SET @ENTRY := 17941;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"You brought this on yourselves.",14,0,100,0,0,10379,"Mennu the Betrayer"),
(@ENTRY,0,1,"Don't make me kill you!",14,0,100,0,0,10378,"Mennu the Betrayer"),
(@ENTRY,0,2,"The work must continue.",14,0,100,0,0,10376,"Mennu the Betrayer"),
(@ENTRY,1,0,"You should not have come.",14,0,66,0,0,10381,"Mennu the Betrayer"),
(@ENTRY,1,1,"It had to be done.",14,0,33,0,0,10380,"Mennu the Betrayer"),
(@ENTRY,2,0,"I... Deserve this.",14,0,100,0,0,10382,"Mennu the Betrayer");

-- Texts for Coilfang Slavehandler
SET @ENTRY := 17959;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Too soon! You are slacking off too soon!",14,0,100,0,0,0,"Coilfang Slavehandler"),
(@ENTRY,0,1,"Wake up! Now get up and back to work!",14,0,100,0,0,0,"Coilfang Slavehandler"),
(@ENTRY,0,2,"Hurry up with it already! The longer you take, the more of a hurtin' I'm putting on you!",14,0,100,0,0,0,"Coilfang Slavehandler"),
(@ENTRY,1,0,"What is this?! Didn't mommy and daddy teach you anything?",14,0,100,0,0,0,"Coilfang Slavehandler"),
(@ENTRY,1,1,"Get back to work you!",14,0,100,0,0,0,"Coilfang Slavehandler"),
(@ENTRY,1,2,"This is terrible..... my arms grow tired from beating on you lazy peons!",14,0,100,0,0,0,"Coilfang Slavehandler"),
(@ENTRY,2,0,"Assist me slaves!",14,0,100,0,0,0,"Coilfang Slavehandler");

-- Texts for Coilfang Collaborator
SET @ENTRY := 17962;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s goes into a frenzy!",16,0,100,0,0,0,"Coilfang Collaborator");

-- Texts for Rokmar the Crackler
SET @ENTRY := 17991;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s becomes enraged!",16,0,100,0,0,0,"Rokmar the Crackler");

-- Texts for Enraged Crusher
SET @ENTRY := 18062;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s becomes enraged!",16,0,100,0,0,0,"Enraged Crusher");

-- Texts for Mawg Grimshot
SET @ENTRY := 18705;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s faints.",16,0,100,0,0,0,"Mawg Grimshot");

-- Texts for Kialon Nightblade
SET @ENTRY := 18098;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s examines the information on the wanted poster.",16,0,100,0,0,0,"Kialon Nightblade");

-- Texts for Ghaz'an
SET @ENTRY := 18105;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s becomes enraged!",16,0,100,0,0,0,"Ghaz\'an");

-- Texts for Ango'rosh Ogre
SET @ENTRY := 18117;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s becomes enraged!",16,0,100,0,0,0,"Ango\'rosh Ogre");

-- Texts for Ango'rosh Brute
SET @ENTRY := 18119;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s becomes enraged!",16,0,100,0,0,0,"Ango\'rosh Brute");

-- Texts for Wastewalker Captive
SET @ENTRY := 18206;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Will the pain ever end?",12,0,100,0,0,0,"Wastewalker Captive"),
(@ENTRY,0,1,"Help me!  Please help me!",12,0,100,0,0,0,"Wastewalker Captive"),
(@ENTRY,0,2,"How can you just leave me here?",12,0,100,0,0,0,"Wastewalker Captive");

-- Texts for Bleeding Hollow Refugee
SET @ENTRY := 18292;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"I wanna be just like the pitfighter!",12,0,100,0,0,0,"Bleeding Hollow Refugee"),
(@ENTRY,0,1,"Will he win? Can he win?",12,0,100,0,0,0,"Bleeding Hollow Refugee");

-- Texts for Sunspring Post Refugee
SET @ENTRY := 18293;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"He's so well diciplined!",12,0,100,0,0,0,"Sunspring Post Refugee");

-- Texts for Sunspring Post Orphan
SET @ENTRY := 18296;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"How does he do it?",12,0,100,0,0,0,"Sunspring Post Orphan"),
(@ENTRY,0,1,"I wanna be just like the pitfighter!",12,0,100,0,0,0,"Sunspring Post Orphan"),
(@ENTRY,0,2,"Wow! Look at his muscles!",12,0,100,0,0,0,"Sunspring Post Orphan");

-- Texts for Ethereal Crypt Raider
SET @ENTRY := 18311;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s becomes enraged!",16,0,100,0,0,0,"Ethereal Crypt Raider");

-- Texts for Sethekk Ravenguard
SET @ENTRY := 18322;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s goes into a frenzy!",16,0,100,0,0,0,"Sethekk Ravenguard"),
(@ENTRY,1,0,"%s goes into a frenzy!",16,0,100,0,0,0,"Sethekk Ravenguard");

-- Texts for Rakoria
SET @ENTRY := 18385;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"I never thought it would turn out to be mana oil! There's going to be plenty of demand for that, minus Grek of course!",12,0,100,0,0,0,"Rakoria"),
(@ENTRY,1,0,"Ship it!",12,0,100,0,0,0,"Rakoria");

-- Texts for Warden Bullrok
SET @ENTRY := 18407;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Damm those ogres. Damn them to the Nether. Won't someone save us from these savages! This is the fifth kidnapping is as many days.",12,0,100,0,0,0,"Warden Bullrok"),
(@ENTRY,0,1,"That's the best reward we're going to be able to offer. Hopefully someone accepts the mission.",12,0,100,0,0,0,"Warden Bullrok");

-- Texts for Orc Prisoner
SET @ENTRY := 18598;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Don't feel.....so good.....",12,0,100,0,0,0,"Orc Prisoner"),
(@ENTRY,0,1,"When do we eat again?",12,0,100,0,0,0,"Orc Prisoner");

-- Texts for Ever-Core the Punisher
SET @ENTRY := 18698;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Intruder detected! Neutralizing threat immediately!",12,0,100,0,0,0,"Ever-Core the Punisher");

-- Texts for Sunfury Guardsman
SET @ENTRY := 18850;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s goes into a frenzy!",16,0,100,0,0,0,"Sunfury Guardsman");

-- Texts for Sunfury Bloodwarder
SET @ENTRY := 18853;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s goes into a frenzy!",16,0,100,0,0,0,"Sunfury Bloodwarder");

-- Texts for Bonechewer Scavenger
SET @ENTRY := 18952;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Death to the interlopers!",12,0,100,0,0,0,"Bonechewer Scavenger");

-- Texts for Anchorite Attendant
SET @ENTRY := 19138;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"May it be so.",12,0,100,0,0,0,"Anchorite Attendant");

-- Texts for Raging Colossus
SET @ENTRY := 19188;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s becomes enraged!",16,0,100,0,0,0,"Raging Colossus");

-- Texts for Cro Threadstrong
SET @ENTRY := 19196;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"I feel that war is fast approaching. The fruit vendor has enlisted to help an ogre. I shall have to enlist help as well.",12,0,100,0,0,0,"Cro Threadstrong"),
(@ENTRY,1,0,"FRUIT VENDOR!!! Your cart is still in our way! We will give you one more hour to move it from our area. Do not test our patience anymore!",14,0,100,0,0,0,"Cro Threadstrong");

-- Texts for Granny Smith
SET @ENTRY := 19223;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"I could have sworn I had more apples. Grok!",12,0,100,0,0,0,"Granny Smith"),
(@ENTRY,1,0,"What is that poor orc yelling about? Someone should see what is going on.",12,0,100,0,0,0,"Granny Smith");

-- Texts for Griftah
SET @ENTRY := 19227;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Hey! Hey, $r! I be havin' just the thing for ya. Ya ever see a Tikbalang? Frightenin' creatures. Prone to stealin' ya away. What ya need is my tikbaland wards. Guaranteed to ward away all tikbalangs!",12,0,100,0,0,0,"Griftah"),
(@ENTRY,0,1,"Look over here, $c! I got somethin' for ya. Just what ya need. It's soap, right... and it's on a rope! No offense, man, but yer a little ripe, you know what I'm sayin'? ",12,0,100,0,0,0,"Griftah"),
(@ENTRY,0,2,"C'mere, $r. Ya don't want to be riskin' yerself in a dungeon, do ya? Filthy work, and for what? Some worthless trinket? Nah, what ya need be one of my amulets. Guarenteed to work! ",12,0,100,0,0,0,"Griftah"),
(@ENTRY,1,0,"Ya look tired, $c. I be havin' somethin' for ya. These amulets, they can help ya leap obstacles and swim through the rivers like ya be born to it. They energize the food ya be eatin'. Makin' yer wounds close before yer eyes!",12,0,100,0,0,0,"Griftah"),
(@ENTRY,1,1,"Hey! Hey, $r! I be havin' just the thing for ya. Ya ever see a Tikbalang? Frightenin' creatures. Prone to stealin' ya away. What ya need is my tikbaland wards. Guaranteed to ward away all tikbalangs!",12,0,100,0,0,0,"Griftah"),
(@ENTRY,1,2,"Look over here, $c! I got somethin' for ya. Just what ya need. It's soap, right... and it's on a rope! No offense, man, but yer a little ripe, you know what I'm sayin'? ",12,0,100,0,0,0,"Griftah"),
(@ENTRY,2,0,"Ya look lovesick. Special someone be gettin' ya down, eh? No worries, no worries. Ya get this medallion from me, ya wear it when ya see 'em and they be all over ya, sweetheart!",12,0,100,0,0,0,"Griftah"),
(@ENTRY,2,1,"Amazing Amulets! Incredible curios! The newfangled jewlcrafters be havin' nothin' on the tried and true mystical methods of ol' %s! Improve yerself through these magical talismans for a bargain price!",12,0,100,0,0,0,"Griftah"),
(@ENTRY,2,2,"Dangerous out there, innit? Know what ya need? Protection. I can help ya defy death itself! Ya wear this madstone 'round yer neck, see, and then ya be able to come back if ya find yerself in the spirit world! Just a quick jaunt to yer corpse and up ya com",12,0,100,0,0,0,"Griftah");

-- Texts for Vagrant
SET @ENTRY := 19283;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Please don't ignore us...",12,0,100,1,0,0,"Vagrant"),
(@ENTRY,0,1,"Spare a copper, madame?",12,0,100,1,0,0,"Vagrant"),
(@ENTRY,0,2,"Hey man, got some money? I've got five kids to feed!",12,0,100,1,0,0,"Vagrant");

-- Texts for Marshal Isildor
SET @ENTRY := 19308;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"This war - and don't mistake this for anything but war - is not going to win itself. If we do not fight, scratch, claw, and kick for every speck of land on this shattered world, all will be lost.",12,0,100,0,0,0,"Marshal Isildor"),
(@ENTRY,0,1,"How many more soldiers need to die before we start paying attention out there?",12,0,100,0,0,0,"Marshal Isildor"),
(@ENTRY,0,2,"Do you think that demons will play fair? These beasts are more savage than the orcs, more cunning than the undead. Do not attempt to engage Legion by normal standards of war.",12,0,100,0,0,0,"Marshal Isildor");

-- Texts for Harbinger Erothem
SET @ENTRY := 19346;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Anchorite Nindumen, I have a request to make of you.",12,0,100,0,0,0,"Harbinger Erothem"),
(@ENTRY,1,0,"We've just sent another inexperienced squad into Nagrand. Might you offer a prayer for them?",12,0,100,0,0,0,"Harbinger Erothem"),
(@ENTRY,2,0,"May it be so.",12,0,100,0,0,0,"Harbinger Erothem");

-- Texts for Kor'kron Defender
SET @ENTRY := 19362;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"If I see any lazy peons here, I'll load them into a catapult and launch them off to the Black Temple!",14,0,100,0,0,0,"Kor\'kron Defender"),
(@ENTRY,0,1,"Any time any of you peons want to take a break, the graveyard is right over there.",12,0,100,0,0,0,"Kor\'kron Defender");

-- Texts for Anchorite Nindumen
SET @ENTRY := 19378;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Of course, my friend. How can I be of service to you?",12,0,100,0,0,0,"Anchorite Nindumen"),
(@ENTRY,1,0,"A noble request. It would be an honor, Erothem.",12,0,100,0,0,0,"Anchorite Nindumen"),
(@ENTRY,2,0,"My friends, please join me in humble supplication the the Light.",12,0,100,0,0,0,"Anchorite Nindumen"),
(@ENTRY,3,0,"Light that we embrace, we beseech thee...",12,0,100,0,0,0,"Anchorite Nindumen"),
(@ENTRY,4,0,"Into our struggle against the darkness we have sent our children.",12,0,100,0,0,0,"Anchorite Nindumen"),
(@ENTRY,5,0,"Please bless and protect them, and grant them success over those who seek to do us harm...",12,0,100,0,0,0,"Anchorite Nindumen"),
(@ENTRY,6,0,"Continue to bless this, our ancient home, we beg.",12,0,100,0,0,0,"Anchorite Nindumen"),
(@ENTRY,7,0,"Bless us with tolerance for our elven visitors.",12,0,100,0,0,0,"Anchorite Nindumen"),
(@ENTRY,8,0,"By tha Naaru, may it be so.",12,0,100,0,0,0,"Anchorite Nindumen");

-- Texts for D'ore
SET @ENTRY := 19412;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"A cool breeze caresses your face. Gentle, melodic humming resonates throughout the chamber.",16,0,100,0,0,0,"D\'ore");

-- Texts for Raging Shardling
SET @ENTRY := 19419;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s becomes enraged!",16,0,100,0,0,0,"Raging Shardling");

-- Texts for Eye of Grillok
SET @ENTRY := 19440;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"You are spotted by the eye of Grillok!",16,0,100,0,0,0,"Eye of Grillok");

-- Texts for Worg Master Kruush
SET @ENTRY := 19442;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s calls for his worgs!",16,0,100,0,0,0,"Worg Master Kruush"),
(@ENTRY,1,0,"%s becomes enraged!",16,0,100,0,0,0,"Worg Master Kruush");

-- Texts for Sunfury Captain
SET @ENTRY := 19453;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s goes into a frenzy!",16,0,100,0,0,0,"Sunfury Captain");

-- Texts for Harbinger Haronem
SET @ENTRY := 19475;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"It's coming along, Wafflefry. Haven't you got a product demonstration to do or something?",12,0,100,1,0,0,"Harbinger Haronem");

-- Texts for Dealer Zijaad
SET @ENTRY := 19535;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Ahh, another powerful traveler. The nether can be dangerous; you'll want the most potent spells at your disposal. I carry the finest reagents, common and exotic. Come and buy - you won't be sorry!",12,0,100,0,0,0,"Dealer Zijaad");

-- Texts for Netherstorm Agent
SET @ENTRY := 19541;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Maybe I should gather up some other agents and head out there after this shift?",12,0,100,0,0,0,"Netherstorm Agent"),
(@ENTRY,0,1,"Last time someone went out to try and collect the bounty on Netherlock, all we got back was a compressed layer of foolhardy adventurer!",12,0,100,0,0,0,"Netherstorm Agent");

-- Texts for Lykul Stinger
SET @ENTRY := 19632;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s becomes enraged!",16,0,100,0,0,0,"Lykul Stinger");

-- Texts for Captain Arathyn
SET @ENTRY := 19635;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"I love the smell of nether in the morning.",12,0,100,1,0,0,"Captain Arathyn"),
(@ENTRY,1,0,"It smells like...",12,0,100,1,0,0,"Captain Arathyn"),
(@ENTRY,2,0,"...victory.",12,0,100,15,0,0,"Captain Arathyn");

-- Texts for Muffin Man Moser
SET @ENTRY := 19664;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Nothing like a tankard full to wash down one of my magnificent muffins.",12,0,100,0,0,0,"Muffin Man Moser"),
(@ENTRY,1,0,"Yea, that hit the spot. Muffins for sale! Get your fresh muffins right here!",12,0,100,0,0,0,"Muffin Man Moser"),
(@ENTRY,2,0,"I've got muffins right over here. Come on over!",12,0,100,0,0,0,"Muffin Man Moser"),
(@ENTRY,2,1,"Yea, yea, I'm the muffin man. You know why? Because I sell muffins, that's why!",12,0,100,0,0,0,"Muffin Man Moser");

-- Texts for Shadow Lord Xiraxis
SET @ENTRY := 19666;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Never underestimate the other ethereal's greed.",12,0,100,0,0,0,"Shadow Lord Xiraxis");

-- Texts for Dark Conclave Ravenguard
SET @ENTRY := 19827;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s becomes enraged!",16,0,100,0,0,0,"Dark Conclave Ravenguard");

-- Texts for Spellreaver Marathelle
SET @ENTRY := 19926;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"You are being misled! The Onslaught is all lies! The Scourge and the Forsaken are not our enemies! Wake up!",14,0,100,0,0,0,"Spellreaver Marathelle");

-- Texts for Bloodmaul Skirmisher
SET @ENTRY := 19948;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s becomes enraged!",16,0,100,0,0,0,"Bloodmaul Skirmisher");

-- Texts for Sunfury Centurion
SET @ENTRY := 20140;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s goes into a frenzy!",16,0,100,0,0,0,"Sunfury Centurion");

-- Texts for Sunfury Flamekeeper
SET @ENTRY := 20221;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s goes into a frenzy!",16,0,100,0,0,0,"Sunfury Flamekeeper");

-- Texts for Ragestone Threshalisk
SET @ENTRY := 20279;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s becomes enraged!",16,0,100,0,0,0,"Ragestone Threshalisk");

-- Texts for Ragestone Trampler
SET @ENTRY := 20280;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s becomes enraged!",16,0,100,0,0,0,"Ragestone Trampler");

-- Texts for Hal McAllister
SET @ENTRY := 20342;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Yea, Nat?",12,0,100,0,0,0,"Hal McAllister"),
(@ENTRY,1,0,"Which one?",12,0,100,0,0,0,"Hal McAllister"),
(@ENTRY,2,0,"What do you put in that pipe of yours Nat?",12,0,100,0,0,0,"Hal McAllister"),
(@ENTRY,2,1,"Nat, I've heard a whopper or two in my day but that one takes the cake.",12,0,100,0,0,0,"Hal McAllister"),
(@ENTRY,2,2,"Impossible!",12,0,100,0,0,0,"Hal McAllister"),
(@ENTRY,3,0,"Yea, Nat?",12,0,100,0,0,0,"Hal McAllister"),
(@ENTRY,4,0,"Which one?",12,0,100,0,0,0,"Hal McAllister"),
(@ENTRY,5,0,"It'll never happen, Nat.",12,0,100,0,0,0,"Hal McAllister"),
(@ENTRY,5,1,"No way!",12,0,100,0,0,0,"Hal McAllister"),
(@ENTRY,5,2,"Impossible!",12,0,100,0,0,0,"Hal McAllister"),
(@ENTRY,6,0,"Yea, Nat?",12,0,100,0,0,0,"Hal McAllister"),
(@ENTRY,7,0,"Which one?",12,0,100,0,0,0,"Hal McAllister"),
(@ENTRY,8,0,"No way!",12,0,100,0,0,0,"Hal McAllister"),
(@ENTRY,8,1,"Nat, I've heard a whopper or two in my day but that one takes the cake.",12,0,100,0,0,0,"Hal McAllister"),
(@ENTRY,8,2,"Impossible!",12,0,100,0,0,0,"Hal McAllister"),
(@ENTRY,9,0,"Yea, Nat?",12,0,100,0,0,0,"Hal McAllister"),
(@ENTRY,10,0,"Which one?",12,0,100,0,0,0,"Hal McAllister"),
(@ENTRY,11,0,"Yea, Nat?",12,0,100,0,0,0,"Hal McAllister"),
(@ENTRY,12,0,"Which one?",12,0,100,0,0,0,"Hal McAllister"),
(@ENTRY,13,0,"What do you put in that pipe of yours Nat?",12,0,100,0,0,0,"Hal McAllister"),
(@ENTRY,13,1,"It'll never happen, Nat.",12,0,100,0,0,0,"Hal McAllister"),
(@ENTRY,13,2,"Impossible!",12,0,100,0,0,0,"Hal McAllister"),
(@ENTRY,14,0,"Yea, Nat?",12,0,100,0,0,0,"Hal McAllister"),
(@ENTRY,15,0,"Which one?",12,0,100,0,0,0,"Hal McAllister"),
(@ENTRY,16,0,"It'll never happen, Nat.",12,0,100,0,0,0,"Hal McAllister"),
(@ENTRY,16,1,"Nat, I've heard a whopper or two in my day but that one takes the cake.",12,0,100,0,0,0,"Hal McAllister"),
(@ENTRY,16,2,"Impossible!",12,0,100,0,0,0,"Hal McAllister"),
(@ENTRY,17,0,"Yea, Nat?",12,0,100,0,0,0,"Hal McAllister"),
(@ENTRY,18,0,"Which one?",12,0,100,0,0,0,"Hal McAllister"),
(@ENTRY,19,0,"It'll never happen, Nat.",12,0,100,0,0,0,"Hal McAllister"),
(@ENTRY,19,1,"No way!",12,0,100,0,0,0,"Hal McAllister"),
(@ENTRY,19,2,"Impossible!",12,0,100,0,0,0,"Hal McAllister");

-- Texts for Nat Pagle
SET @ENTRY := 20344;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Hal...",12,0,100,0,0,0,"Nat Pagle"),
(@ENTRY,1,0,"Had that dream again last night...",12,0,100,0,0,0,"Nat Pagle"),
(@ENTRY,2,0,"That one dream... The crazy one. Remember?",12,0,100,0,0,0,"Nat Pagle"),
(@ENTRY,3,0,"Tarren Mill is destroyed by some crazy force of undead and forever more becomes an enemy to Southshore.",12,0,100,0,0,0,"Nat Pagle"),
(@ENTRY,4,0,"Could ya imagine such a thing, Hal? Could ya?",12,0,100,0,0,0,"Nat Pagle"),
(@ENTRY,5,0,"Hal...",12,0,100,0,0,0,"Nat Pagle"),
(@ENTRY,6,0,"Had that dream again last night...",12,0,100,0,0,0,"Nat Pagle"),
(@ENTRY,7,0,"That one where thousands of people are all watching us up from the sky...",12,0,100,0,0,0,"Nat Pagle"),
(@ENTRY,8,0,"We're like their puppets - we dance and cry and fight and say silly things for their amusement.",12,0,100,0,0,0,"Nat Pagle"),
(@ENTRY,9,0,"Sometimes, even when I'm awake, I think they're watching us. Maybe they're watching us right now...",12,0,100,0,0,0,"Nat Pagle"),
(@ENTRY,10,0,"Hal...",12,0,100,0,0,0,"Nat Pagle"),
(@ENTRY,11,0,"Had that dream again last night...",12,0,100,0,0,0,"Nat Pagle"),
(@ENTRY,12,0,"So I'm on some mountain with some big ol' tree. Bunch of elves runnin' around all over...",12,0,100,0,0,0,"Nat Pagle"),
(@ENTRY,13,0,"Out of nowhere, some 300 foot tall demon or somethin' walks up and starts climbin' the tree...",12,0,100,0,0,0,"Nat Pagle"),
(@ENTRY,14,0,"And if that weren't crazy enough, that big demon gets killed by a bunch of floating light things... Oh, I was also a female elf in that one... Yep...",12,0,100,0,0,0,"Nat Pagle"),
(@ENTRY,15,0,"Hal...",12,0,100,0,0,0,"Nat Pagle"),
(@ENTRY,16,0,"Had that dream again last night...",12,0,100,0,0,0,"Nat Pagle"),
(@ENTRY,17,0,"In this dream, I was fishin' master of the world. I moved to some place called Kalimdor...",12,0,100,0,0,0,"Nat Pagle"),
(@ENTRY,18,0,"And people from all over the world come to me to pay homage... and learn to fish.",12,0,100,0,0,0,"Nat Pagle"),
(@ENTRY,19,0,"I'm like some kind of fishing god...",12,0,100,0,0,0,"Nat Pagle"),
(@ENTRY,20,0,"Hal...",12,0,100,0,0,0,"Nat Pagle"),
(@ENTRY,21,0,"Had that dream again last night...",12,0,100,0,0,0,"Nat Pagle"),
(@ENTRY,22,0,"This one's real grim... So the king's kid Arthas...Well he goes out to battle evil, along with Uther *Nat pats his brow dry*",12,0,100,0,0,0,"Nat Pagle"),
(@ENTRY,23,0,"But tragically, Arthas is consumed by the evil and becomes evil himself...",12,0,100,0,0,0,"Nat Pagle"),
(@ENTRY,24,0,"Well, he comes back to the king all pretendin' to be nice, draws his sword, and runs the king through, elbow to... well you know... kills him on the spot...",12,0,100,0,0,0,"Nat Pagle"),
(@ENTRY,25,0,"Hal...",12,0,100,0,0,0,"Nat Pagle"),
(@ENTRY,26,0,"Had that dream again last night...",12,0,100,0,0,0,"Nat Pagle"),
(@ENTRY,27,0,"I can't even believe this one... You know two loudmouthed ruffians, Foror and Tigule?",12,0,100,0,0,0,"Nat Pagle"),
(@ENTRY,28,0,"Well in this dream, they somehow end up inventing something called ice-cream and flavoring it with strawberries... Well, long story short, they end up striking it rich!",12,0,100,0,0,0,"Nat Pagle"),
(@ENTRY,29,0,"If that weren't crazy enough, they decided to quit the ice-cream business and become adventurers... They travel all over the place and finally disappears into some portal. I woke up in a cold sweat after that one...",12,0,100,0,0,0,"Nat Pagle"),
(@ENTRY,30,0,"Hal...",12,0,100,0,0,0,"Nat Pagle"),
(@ENTRY,31,0,"Had that dream again last night...",12,0,100,0,0,0,"Nat Pagle"),
(@ENTRY,32,0,"That one where i'm in Durnholde and that one orc that Blackmoore keeps as his personal slave breaks out...",12,0,100,0,0,0,"Nat Pagle"),
(@ENTRY,33,0,"He ends up destroying the whole keep, freeing all the orcs we're keeping in the camps and rising to power as the king of orcs... Warchief or somethin'.",12,0,100,0,0,0,"Nat Pagle"),
(@ENTRY,34,0,"Crazy isn't it?",12,0,100,0,0,0,"Nat Pagle");

-- Texts for Kel'Thuzad
SET @ENTRY := 20350;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Keep your voice down, Helcular. Strangers abound...",12,0,100,0,0,0,"Kel\'Thuzad"),
(@ENTRY,1,0,"Necromancy. It is called necromancy. And yes, I have it within my power to bless you with this gift.",12,0,100,0,0,0,"Kel\'Thuzad"),
(@ENTRY,2,0,"That is none of your concern, Helcular, as you are neither Kirin Tor nor a necromancer.",12,0,100,0,0,0,"Kel\'Thuzad"),
(@ENTRY,3,0,"But to be perfectly frank, I do not give a damn what the Kirin Tor think! They are fools, set in their archaic ways.",12,0,100,0,0,0,"Kel\'Thuzad"),
(@ENTRY,4,0,"In due time, Helcular... All in due time...",12,0,100,0,0,0,"Kel\'Thuzad");

-- Texts for Helcular
SET @ENTRY := 20353;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"So can you teach me this... this...",12,0,100,0,0,0,"Helcular"),
(@ENTRY,1,0,"And the Kirin Tor? What have they to say of this necromancy?",12,0,100,0,0,0,"Helcular"),
(@ENTRY,2,0,"Then teach me, Kel'Thuzad. Teach me everything you know...",12,0,100,0,0,0,"Helcular");

-- Texts for Maggoc
SET @ENTRY := 20600;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s goes into a frenzy!",16,0,100,0,0,0,"Maggoc");

-- Texts for Wrath-Scryer Soccothrates
SET @ENTRY := 20886;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Defend yourself, for all the good it will do...",14,0,66,0,0,11242,"Wrath-Scryer Soccothrates"),
(@ENTRY,0,1,"On guard!",14,0,33,0,0,11241,"Wrath-Scryer Soccothrates"),
(@ENTRY,1,0,"Knew this was... the only way out",14,0,100,0,0,11243,"Wrath-Scryer Soccothrates"),
(@ENTRY,2,0,"Yes, that was quite satisfying",14,0,100,0,0,11239,"Wrath-Scryer Soccothrates"),
(@ENTRY,3,0,"At last, a target for my frustrations!",14,0,100,0,0,11238,"Wrath-Scryer Soccothrates"),
(@ENTRY,4,0,"Have you come to kill Dalliah? Can I watch?",14,0,100,0,0,11237,"Wrath-Scryer Soccothrates");

-- Texts for Rina Moonspring
SET @ENTRY := 21066;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s whispers softle in reverent tones under her breath.",16,0,100,0,0,0,"Rina Moonspring");

-- Texts for Rift Keeper
SET @ENTRY := 21104;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Victory or death!",12,0,100,0,0,0,"Rift Keeper"),
(@ENTRY,0,1,"You are running out of time!",12,0,100,0,0,0,"Rift Keeper"),
(@ENTRY,0,2,"The rift must be protected!",12,0,100,0,0,0,"Rift Keeper");

-- Texts for Gralga
SET @ENTRY := 21193;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Learning to read is a thirsty business. A toast, eh?",12,0,100,0,0,0,"Gralga");

-- Texts for Vashj'ir Honor Guard
SET @ENTRY := 21218;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s becomes enraged!",16,0,100,0,0,0,"Vashj\'ir Honor Guard");

-- Texts for Skettis Wing Guard
SET @ENTRY := 21644;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s goes into a frenzy!",16,0,100,0,0,0,"Skettis Wing Guard");

-- Texts for Cabal Skirmisher
SET @ENTRY := 21661;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s goes into a frenzy!",16,0,100,0,0,0,"Cabal Skirmisher");

-- Texts for Bog Overlord
SET @ENTRY := 21694;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s becomes enraged!",16,0,100,0,0,0,"Bog Overlord");

-- Texts for Dragonmaw Wrangler
SET @ENTRY := 21717;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s becomes enraged!",16,0,100,0,0,0,"Dragonmaw Wrangler");

-- Texts for Overlord Or'barokh
SET @ENTRY := 21769;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"What is it that you want from me, shaman?",12,0,100,0,0,0,"Overlord Or\'barokh"),
(@ENTRY,1,0,"Do you not have eyes? Did you not see the demons on our very doorstep? I do not have the soldiers to spare!",12,0,100,0,0,0,"Overlord Or\'barokh"),
(@ENTRY,2,0,"Pray to your gods, shaman. Perhaps they will come to your aid. The Horde however, cannot...",12,0,100,0,0,0,"Overlord Or\'barokh");

-- Texts for Warcaller Sardon Truslice
SET @ENTRY := 21771;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Wit a reward like dis, how could they refuse, mon?",12,0,100,0,0,0,"Warcaller Sardon Truslice");

-- Texts for Thane Yoregar
SET @ENTRY := 21773;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"I don't get it! Are ya blind? Can ya not see the demons bangin' on our door? Who am I gonna send out to talk to your shaman friends? Point 'em out!",12,0,100,0,0,0,"Thane Yoregar");

-- Texts for Terokk
SET @ENTRY := 21838;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s goes into a frenzy!",16,0,100,0,0,0,"Terokk"),
(@ENTRY,1,0,"%s goes into a frenzy!",16,0,100,0,0,0,"Terokk");

-- Texts for Cabal Initiate
SET @ENTRY := 21907;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s goes into a frenzy!",16,0,100,0,0,0,"Cabal Initiate");

-- Texts for Decrepit Clefthoof
SET @ENTRY := 22105;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s goes into a frenzy!",16,0,100,0,0,0,"Decrepit Clefthoof");

-- Texts for Gordunni Back-Breaker
SET @ENTRY := 22143;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s goes into a frenzy!",16,0,100,0,0,0,"Gordunni Back-Breaker");

-- Texts for Slaag
SET @ENTRY := 22199;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s goes into a frenzy!",16,0,100,0,0,0,"Slaag");

-- Texts for Deathshadow Archon
SET @ENTRY := 22343;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s becomes enraged!",16,0,100,0,0,0,"Deathshadow Archon");

-- Texts for Hand of Kargath
SET @ENTRY := 22374;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Who dares slay one of my Kargath's commanders?  You will pay for this... in flesh!",14,0,100,0,0,0,"Hand of Kargath");

-- Texts for Hathyss the Wicked
SET @ENTRY := 22381;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Incompetent fools! Auchindoun should've been ours... look at yourselves scrambling like rats!",12,0,100,0,0,0,"Hathyss the Wicked");

-- Texts for Ashtongue Battlelord
SET @ENTRY := 22844;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s becomes enraged!",16,0,100,0,0,0,"Ashtongue Battlelord");

-- Texts for Grok
SET @ENTRY := 22940;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s need help! Why no one help?",12,0,100,0,0,0,"Grok"),
(@ENTRY,0,1,"If no one help. %s smash!",12,0,100,0,0,0,"Grok"),
(@ENTRY,1,0,"%s get angry if puny ones not go to Blade's Edge and talk to Mog'dorg!",12,0,100,0,0,0,"Grok"),
(@ENTRY,1,1,"Bladespire clan not fight fair. Have Gronn to help dem. You go to Blade's Edge Mountains. Talk to Mog'dorg the Wizened. Kill Gromm.",12,0,100,0,0,0,"Grok"),
(@ENTRY,1,2,"Mog'dorg the Wizened tell %s go to city, get help for Bloodmaul. %s go.",12,0,100,0,0,0,"Grok"),
(@ENTRY,2,0,"Me hungry. Fruit look tasty.",12,0,100,0,0,0,"Grok");

-- Texts for Guardian of the Hawk
SET @ENTRY := 22992;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Fool! The essence of the hawk will never be yours!",12,0,100,0,0,0,"Guardian of the Hawk"),
(@ENTRY,0,1,"I see those fools at the Abbey sent some fresh meat for us.",12,0,100,0,0,0,"Guardian of the Hawk"),
(@ENTRY,1,0,"The time of the Raven is night, but yours will end here!",12,0,100,0,0,0,"Guardian of the Hawk"),
(@ENTRY,1,1,"I see those fools at the Abbey sent some fresh meat for us.",12,0,100,0,0,0,"Guardian of the Hawk");

-- Texts for Guardian of the Eagle
SET @ENTRY := 22993;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"You dare to disturb the loyal followers of the Raven?",12,0,100,0,0,0,"Guardian of the Eagle"),
(@ENTRY,0,1,"I see those fools at the Abbey sent some fresh meat for us.",12,0,100,0,0,0,"Guardian of the Eagle"),
(@ENTRY,1,0,"You will die for your hubris, druid!",12,0,100,0,0,0,"Guardian of the Eagle"),
(@ENTRY,1,1,"I see those fools at the Abbey sent some fresh meat for us.",12,0,100,0,0,0,"Guardian of the Eagle");

-- Texts for Guardian of the Falcon
SET @ENTRY := 22994;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"You dare to disturb the loyal followers of the Raven?",12,0,100,0,0,0,"Guardian of the Falcon"),
(@ENTRY,0,1,"I see those fools at the Abbey sent some fresh meat for us.",12,0,100,0,0,0,"Guardian of the Falcon"),
(@ENTRY,1,0,"You will die for your hubris, druid!",12,0,100,0,0,0,"Guardian of the Falcon"),
(@ENTRY,1,1,"I see those fools at the Abbey sent some fresh meat for us.",12,0,100,0,0,0,"Guardian of the Falcon");

-- Texts for Shadowmoon Weapon Master
SET @ENTRY := 23049;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Berserker stance! Attack them recklessly!",12,0,100,0,0,0,"Shadowmoon Weapon Master");

-- Texts for Shadowmoon Riding Hound
SET @ENTRY := 23083;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s becomes enraged!",16,0,100,0,0,0,"Shadowmoon Riding Hound");

-- Texts for Gezzarak the Huntress
SET @ENTRY := 23163;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s bares her fangs and hisses menacingly at those around her.",16,0,100,0,0,0,"Gezzarak the Huntress"),
(@ENTRY,0,1,"I see those fools at the Abbey sent some fresh meat for us.",12,0,100,0,0,0,"Gezzarak the Huntress"),
(@ENTRY,1,0,"%s focuses on $N.",16,0,100,0,0,0,"Gezzarak the Huntress");

-- Texts for Hand of Gorefiend
SET @ENTRY := 23172;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s becomes enraged!",16,0,100,0,0,0,"Hand of Gorefiend");

-- Texts for Bonechewer Behemoth
SET @ENTRY := 23196;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s becomes enraged!",16,0,100,0,0,0,"Bonechewer Behemoth");

-- Texts for Bonechewer Brawler
SET @ENTRY := 23222;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s becomes enraged!",16,0,100,0,0,0,"Bonechewer Brawler");

-- Texts for Bonechewer Blood Prophet
SET @ENTRY := 23237;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s becomes enraged!",16,0,100,0,0,0,"Bonechewer Blood Prophet");

-- Texts for Bonechewer Combatant
SET @ENTRY := 23239;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s becomes enraged!",16,0,100,0,0,0,"Bonechewer Combatant");

-- Texts for Amani'shi Scout
SET @ENTRY := 23586;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Invaders! Sound the Alarm!",14,0,100,0,0,0,"Amani\'shi Scout");

-- Texts for Ahab Wheathoof
SET @ENTRY := 23618;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Where is that dog?",12,0,100,0,0,11796,"Ahab Wheathoof"),
(@ENTRY,0,1,"I miss my dog so much...",12,0,100,0,0,11798,"Ahab Wheathoof"),
(@ENTRY,0,2,"Will you help me find my dog...?",12,0,100,0,0,11797,"Ahab Wheathoof");

-- Texts for Dragonflayer Metalworker
SET @ENTRY := 24078;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s becomes enraged!",16,0,100,0,0,0,"Dragonflayer Metalworker");

-- Texts for North Fleet Reservist
SET @ENTRY := 24120;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Someone shoot that bat down!",14,0,100,0,0,0,"North Fleet Reservist"),
(@ENTRY,0,1,"That liquid... it reeks!",14,0,100,0,0,0,"North Fleet Reservist"),
(@ENTRY,0,2,"I don't feel so good...",14,0,100,0,0,0,"North Fleet Reservist"),
(@ENTRY,1,0,"It was awful.. I dreamt I was fighting against my friends",12,0,66,0,0,0,"North Fleet Reservist"),
(@ENTRY,1,1,"Help! My eyes!",14,0,33,0,0,0,"North Fleet Reservist");

-- Texts for Amani Elder Lynx
SET @ENTRY := 24530;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s becomes enraged!",16,0,100,0,0,0,"Amani Elder Lynx");

-- Texts for Stonevault Pillager
SET @ENTRY := 24830;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s goes into a frenzy!",16,0,100,0,0,0,"Stonevault Pillager");

-- Texts for Fengir the Disgraced
SET @ENTRY := 24874;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Your offering has come too late, little one. Can you feel the mist closing in upon you? The Kvaldir return...",12,0,100,0,0,0,"Fengir the Disgraced");

-- Texts for Windan of the Kvaldir
SET @ENTRY := 24875;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"My brothers have awoken. Your efforts are wasted...",12,0,100,0,0,0,"Windan of the Kvaldir");

-- Texts for Rodin the Reckless
SET @ENTRY := 24876;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"From the mist and fog the Kvaldir approach. Flee while you still breathe the air of the living...",12,0,100,0,0,0,"Rodin the Reckless");

-- Texts for Isuldof Iceheart
SET @ENTRY := 24877;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Look to the seas, as your doom comes with the swell of tides",12,0,100,0,0,0,"Isuldof Iceheart");

-- Texts for Keymaster Urmgrgl
SET @ENTRY := 25210;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"I am the Keymaster. Are you the Gatekeeper?",12,0,100,0,0,0,"Keymaster Urmgrgl");

-- Texts for Naxxanar Skeletal Mage
SET @ENTRY := 25396;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"You cannot stop us all!",12,0,100,0,0,0,"Naxxanar Skeletal Mage"),
(@ENTRY,0,1,"Your death will soon follow....",12,0,100,0,0,0,"Naxxanar Skeletal Mage");

-- Texts for Simmer
SET @ENTRY := 25416;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Who dares?",12,0,100,0,0,0,"Simmer"),
(@ENTRY,1,0,"STOP!",12,0,100,0,0,0,"Simmer"),
(@ENTRY,2,0,"Tell Imperean that I will consider a cessation of hostilities. But first, Churn must stop his watery intrusions upon my rise!",12,0,100,0,0,0,"Simmer"),
(@ENTRY,3,0,"I grow bored with you. Begone!",12,0,100,0,0,0,"Simmer");

-- Texts for Churn
SET @ENTRY := 25418;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"WAIT... NO MORE!",12,0,100,0,0,0,"Churn"),
(@ENTRY,1,0,"I... submit. As long as Simmer agrees to stop boiling my pool, I agree to an armistice.",12,0,100,0,0,0,"Churn"),
(@ENTRY,2,0,"Now, remove yourself from my presence. You would be wise not to come within sight of me again.",12,0,100,0,0,0,"Churn");

-- Texts for Magmoth Shaman
SET @ENTRY := 25428;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Kada nu batteka, oht!",12,0,100,0,0,0,"Magmoth Shaman"),
(@ENTRY,0,1,"Etu Magmothregar, cha!",12,0,100,0,0,0,"Magmoth Shaman"),
(@ENTRY,0,2,"Kaganishu!",12,0,100,0,0,0,"Magmoth Shaman");

-- Texts for Magmoth Forager
SET @ENTRY := 25429;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Kada nu batteka, oht!",12,0,100,0,0,0,"Magmoth Forager"),
(@ENTRY,0,1,"Etu Magmothregar, cha!",12,0,100,0,0,0,"Magmoth Forager"),
(@ENTRY,0,2,"Kaganishu!",12,0,100,0,0,0,"Magmoth Forager");

-- Texts for Mate of Magmothregar
SET @ENTRY := 25432;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s goes into a frenzy!",16,0,100,0,0,0,"Mate of Magmothregar");

-- Texts for Lich-Lord Chillwinter
SET @ENTRY := 25682;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"You cannot stop us!",12,0,100,0,0,0,"Lich-Lord Chillwinter");

-- Texts for Harold Lane
SET @ENTRY := 25804;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"You seek to deafen me? Pathetic... Wait... What's that sound?",12,0,100,0,0,0,"Harold Lane");

-- Texts for Loot Crazed Poacher
SET @ENTRY := 25806;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Now THIS is a sport!",12,0,100,0,0,0,"Loot Crazed Poacher"),
(@ENTRY,0,1,"KILL KILL KILL!!!!!!!",12,0,100,0,0,0,"Loot Crazed Poacher"),
(@ENTRY,0,2,"I'm sure ol' Hemet can do something with your bones!",12,0,100,0,0,0,"Loot Crazed Poacher"),
(@ENTRY,1,0,"Give it up, little beast!",12,0,100,0,0,0,"Loot Crazed Poacher"),
(@ENTRY,1,1,"Just fifty more hooves and I'll have the new gun!",12,0,100,0,0,0,"Loot Crazed Poacher"),
(@ENTRY,1,2,"No way! Rhino head helmet for the low, low price of thirty rhino heads? I'll take two at those prices!",12,0,100,0,0,0,"Loot Crazed Poacher"),
(@ENTRY,2,0,"I wonder what nesingwary will give me for your hide!",12,0,100,0,0,0,"Loot Crazed Poacher"),
(@ENTRY,2,1,"It's gonna be veal tonight!",12,0,100,0,0,0,"Loot Crazed Poacher"),
(@ENTRY,2,2,"Nesingwary is going to go broke if he keeps this up! Lane probably has no idea what he's doing!",12,0,100,0,0,0,"Loot Crazed Poacher");

-- Texts for Whirligig Wafflefry
SET @ENTRY := 25885;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Hey, harbringer, how's that research coming along? There might be an Ultra-Kinetic Waffle Iron in it for you if you're prompt with the results!",12,0,100,1,0,0,"Whirligig Wafflefry"),
(@ENTRY,1,0,"Be the first on your block to own the incredible Electrostatic Maculation Blaster!",12,0,100,1,0,0,"Whirligig Wafflefry"),
(@ENTRY,2,0,"Derived from cutting edge Shattered Sun Offensive military technology, it blasts away stubborn stains with ease!",12,0,100,1,0,0,"Whirligig Wafflefry"),
(@ENTRY,3,0,"Wine stains, grass stains, even pet stains are no match for the Electrostatic Maculation Blaster!",12,0,100,1,0,0,"Whirligig Wafflefry"),
(@ENTRY,4,0,"Don't wait! Order now and receive my Ultra-Kinetic Waffle Iron at no additional charge!",12,0,100,1,0,0,"Whirligig Wafflefry");

-- Texts for Loot Crazed Hunter
SET @ENTRY := 25979;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Now THIS is a sport!",12,0,100,0,0,0,"Loot Crazed Hunter"),
(@ENTRY,0,1,"KILL KILL KILL!!!!!!!",12,0,100,0,0,0,"Loot Crazed Hunter"),
(@ENTRY,0,2,"I'm sure ol' Hemet can do something with your bones!",12,0,100,0,0,0,"Loot Crazed Hunter"),
(@ENTRY,1,0,"Give it up, little beast!",12,0,100,0,0,0,"Loot Crazed Hunter"),
(@ENTRY,1,1,"Just fifty more hooves and I'll have the new gun!",12,0,100,0,0,0,"Loot Crazed Hunter"),
(@ENTRY,1,2,"No way! Rhino head helmet for the low, low price of thirty rhino heads? I'll take two at those prices!",12,0,100,0,0,0,"Loot Crazed Hunter"),
(@ENTRY,2,0,"I wonder what nesingwary will give me for your hide!",12,0,100,0,0,0,"Loot Crazed Hunter"),
(@ENTRY,2,1,"It's gonna be veal tonight!",12,0,100,0,0,0,"Loot Crazed Hunter"),
(@ENTRY,2,2,"Nesingwary is going to go broke if he keeps this up! Lane probably has no idea what he's doing!",12,0,100,0,0,0,"Loot Crazed Hunter");

-- Texts for Damned Taunka Spirit
SET @ENTRY := 26165;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Death will be only the beginning of your torture.",12,0,100,0,0,0,"Damned Taunka Spirit");

-- Texts for Loguhn
SET @ENTRY := 26196;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s goes into a frenzy!",16,0,100,0,0,0,"Loguhn");

-- Texts for Snowfall Glade Den Mother
SET @ENTRY := 26199;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s goes into a frenzy!",16,0,100,0,0,0,"Snowfall Glade Den Mother");

-- Texts for Forgemaster Damrath
SET @ENTRY := 26334;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Constructs, defend the capital at all costs!",12,0,100,0,0,0,"Forgemaster Damrath"),
(@ENTRY,0,1,"To battle, my children! Show the enemy no mercy!",12,0,100,0,0,0,"Forgemaster Damrath"),
(@ENTRY,0,2,"For the thane! For Loken!",12,0,100,0,0,0,"Forgemaster Damrath");

-- Texts for Meathook
SET @ENTRY := 26529;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Play time!",14,0,100,0,0,13428,"Meathook"),
(@ENTRY,1,0,"New toys!",14,0,100,0,0,13429,"Meathook"),
(@ENTRY,2,0,"Get up! Me not done!",14,0,100,0,0,13432,"Meathook"),
(@ENTRY,2,1,"Why you stop moving?",14,0,100,0,0,13431,"Meathook"),
(@ENTRY,2,2,"Boring...",14,0,100,0,0,13430,"Meathook"),
(@ENTRY,3,0,"This not fun...",14,0,100,0,0,13433,"Meathook");

-- Texts for Salramm the Fleshcrafter
SET @ENTRY := 26530;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"You are too late, champion of Lordaeron. The dead shall have their day.",14,0,100,0,0,13471,"Salramm the Fleshcrafter"),
(@ENTRY,1,0,"Ah, the entertainment has arrived!",14,0,100,0,0,13472,"Salramm the Fleshcrafter"),
(@ENTRY,2,0,"Your flesh betrays you.",14,0,100,0,0,13482,"Salramm the Fleshcrafter"),
(@ENTRY,2,1,"Such strength... it must be mine!",14,0,100,0,0,13481,"Salramm the Fleshcrafter"),
(@ENTRY,2,2,"I want a sample...",14,0,100,0,0,13480,"Salramm the Fleshcrafter"),
(@ENTRY,3,0,"Come, citizen of Stratholme! Meet your saviors.",14,0,100,0,0,13477,"Salramm the Fleshcrafter"),
(@ENTRY,3,1,"Say hello to some friends of mine.",14,0,100,0,0,13476,"Salramm the Fleshcrafter"),
(@ENTRY,4,0,"Blood... destruction... EXHILARATING!",14,0,100,0,0,13479,"Salramm the Fleshcrafter"),
(@ENTRY,4,1,"BOOM! Hahahahah...",14,0,100,0,0,13478,"Salramm the Fleshcrafter"),
(@ENTRY,5,0,"Blood... destruction... EXHILARATING!",14,0,100,0,0,13479,"Salramm the Fleshcrafter"),
(@ENTRY,5,1,"BOOM! Hahahahah...",14,0,100,0,0,13478,"Salramm the Fleshcrafter"),
(@ENTRY,6,0,"Don't worry, I'll make good use of you.",14,0,100,0,0,13475,"Salramm the Fleshcrafter"),
(@ENTRY,6,1,"Aah, quality materials!",14,0,100,0,0,13474,"Salramm the Fleshcrafter"),
(@ENTRY,6,2,"The fun is just beginning!",14,0,100,0,0,13473,"Salramm the Fleshcrafter"),
(@ENTRY,7,0,"You only advance... the master's plan...",14,0,100,0,0,13483,"Salramm the Fleshcrafter");

-- Texts for Chrono-Lord Epoch
SET @ENTRY := 26532;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Prince Arthas Menethil, on this day, a powerful darkness has taken hold of your soul. The death you are destined to visit upon others will this day be your own.",12,0,100,0,0,13408,"Chrono-Lord Epoch"),
(@ENTRY,1,0,"We'll see about that, young prince.",14,0,100,0,0,13409,"Chrono-Lord Epoch"),
(@ENTRY,2,0,"Let's get this over with.",14,0,100,0,0,13412,"Chrono-Lord Epoch"),
(@ENTRY,2,1,"Not quick enough!",14,0,100,0,0,13411,"Chrono-Lord Epoch"),
(@ENTRY,2,2,"Tick tock, tick tock...",14,0,100,0,0,13410,"Chrono-Lord Epoch"),
(@ENTRY,3,0,"You would destined to fail.",14,0,100,0,0,13415,"Chrono-Lord Epoch"),
(@ENTRY,3,1,"This is the hour of our greatest triumph!",14,0,100,0,0,13414,"Chrono-Lord Epoch"),
(@ENTRY,3,2,"There is no future for you.",14,0,100,0,0,13413,"Chrono-Lord Epoch");

-- Texts for Mal'Ganis
SET @ENTRY := 26533;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Yes, this is the beginning. I've been waiting for you, young prince. I am Mal'Ganis.",14,0,100,0,0,14410,"Mal\'Ganis"),
(@ENTRY,1,0,"As you can see, your people are now mine. I will now turn this city, household by household, until the flame of life has been snuffed out forever.",14,0,100,0,0,14411,"Mal\'Ganis"),
(@ENTRY,2,0,"This will be a fine test, Prince Arthas.",14,0,100,0,0,14413,"Mal\'Ganis"),
(@ENTRY,3,0,"You seem tired.",14,0,100,0,0,14415,"Mal\'Ganis"),
(@ENTRY,3,1,"Time out.",14,0,100,0,0,14414,"Mal\'Ganis"),
(@ENTRY,4,0,"You seem tired.",14,0,100,0,0,14415,"Mal\'Ganis"),
(@ENTRY,4,1,"Time out.",14,0,100,0,0,14414,"Mal\'Ganis"),
(@ENTRY,5,0,"It is Prince Arthas I want, not you.",14,0,100,0,0,14418,"Mal\'Ganis"),
(@ENTRY,5,1,"The dark lord is displeased with your interference.",14,0,100,0,0,14417,"Mal\'Ganis"),
(@ENTRY,5,2,"All too easy.",14,0,100,0,0,14416,"Mal\'Ganis"),
(@ENTRY,6,0,"Your journey has just begun, young prince. Gather your forces, and meet me in the arctic land of Northrend. It is there we shall settle the score between us. It is there that your true destiny will unfold.",14,0,100,0,0,14412,"Mal\'Ganis");

-- Texts for Roanauk Icemist
SET @ENTRY := 26654;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Rise, and fight once more!",14,0,100,0,0,0,"Roanauk Icemist");

-- Texts for Commander Stoutbeard
SET @ENTRY := 26796;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"What? Where in a..? Don't just stand around lads KILL SOMEBODY!",14,0,100,0,0,13193,"Commander Stoutbeard"),
(@ENTRY,1,0,"Now wee getting someplace!",14,0,100,0,0,13195,"Commander Stoutbeard"),
(@ENTRY,2,0,"Is that all you've... got?",14,0,100,0,0,13194,"Commander Stoutbeard");

-- Texts for Commander Kolurg
SET @ENTRY := 26798;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"What is this? Mag thorin Kar! Kill them!",14,0,100,0,0,13458,"Commander Kolurg"),
(@ENTRY,1,0,"Our task is not yet done!",14,0,100,0,0,13459,"Commander Kolurg"),
(@ENTRY,2,0,"GOOO!",14,0,100,0,0,13460,"Commander Kolurg");

-- Texts for Torturer LeCraft
SET @ENTRY := 27209;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Come to play?",12,0,100,0,0,0,"Torturer LeCraft"),
(@ENTRY,1,0,"Ow! I'll tell you NOTHING, filthy $R!",15,0,100,0,0,0,"Torturer LeCraft"),
(@ENTRY,2,0,"Wait... WAIT! What is it that you want to know? I know you're the $C named $N.",15,0,100,0,0,0,"Torturer LeCraft"),
(@ENTRY,3,0,"OW...NO! We know that you've been stealing our armor and weapons and horses!",15,0,100,0,0,0,"Torturer LeCraft"),
(@ENTRY,4,0,"We know... that you don't... know why we're immune... to your so-called blight. Grand Admiral Westwind somehow gave the high abbot that prayer. I beg you... no more... please?",15,0,100,0,0,0,"Torturer LeCraft"),
(@ENTRY,5,0,"AHHHHHHHHH! Please... we know... that you... have a spy... disguised as... one of us! There... that's all that I know. Please... mercy... STOP!",15,0,100,0,0,0,"Torturer LeCraft"),
(@ENTRY,6,0,"AHHHHHHHHH! Please... we know... that you... have a spy... disguised as... one of us! There... that's all that I know. Please... mercy... STOP!",15,0,100,0,0,0,"Torturer LeCraft");

-- Texts for Enraged Apparition
SET @ENTRY := 27551;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s goes into a frenzy!",16,0,100,0,0,0,"Enraged Apparition");

-- Texts for Flesheating Ghoul
SET @ENTRY := 27871;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s goes into a frenzy!",16,0,100,0,0,0,"Flesheating Ghoul");

-- Texts for Prophet of Sseratus
SET @ENTRY := 28068;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Mmm, more mojo.",14,0,100,0,0,0,"Prophet of Sseratus"),
(@ENTRY,1,0,"NOOOOOOOOooooooo.........!",14,0,100,0,0,0,"Prophet of Sseratus"),
(@ENTRY,2,0,"They dare attack us? The fools! Do they not know we are now all-powerful?!",14,0,100,0,0,0,"Prophet of Sseratus"),
(@ENTRY,2,1,"With the power of the wild gods burning in our veins, none, not even the Lich King, can stand in our way!",14,0,100,0,0,0,"Prophet of Sseratus"),
(@ENTRY,2,2,"I see you, insect! Come closer",14,0,100,0,0,0,"Prophet of Sseratus"),
(@ENTRY,3,0,"Kill these invaders who dare to defile our altar!",14,0,100,0,0,0,"Prophet of Sseratus"),
(@ENTRY,3,1,"I will destroy the Argent Crusade! I will crush the Scourge!",14,0,100,0,0,0,"Prophet of Sseratus"),
(@ENTRY,3,2,"Finish them and then we will move south to kill their brethren!",14,0,100,0,0,0,"Prophet of Sseratus"),
(@ENTRY,4,0,"The mojo of Sseratus is ours. Now all will be crushed under the might of the Drakkari!!",14,0,100,0,0,0,"Prophet of Sseratus"),
(@ENTRY,4,1,"Drink deep my brothers!",14,0,100,0,0,0,"Prophet of Sseratus");

-- Texts for Frenzyheart Berserker
SET @ENTRY := 28076;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s goes into a frenzy!",16,0,100,0,0,0,"Frenzyheart Berserker");

-- Texts for Frenzyheart Ravager
SET @ENTRY := 28078;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s goes into a frenzy!",16,0,100,0,0,0,"Frenzyheart Ravager");

-- Texts for Urgreth of the Thousand Tombs
SET @ENTRY := 28103;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s begins to emanate a power dark energy!",16,0,100,0,0,0,"Urgreth of the Thousand Tombs");

-- Texts for Warlord Tartek
SET @ENTRY := 28105;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"My treasure! You no steal from Tartek, dumb big-tongue traitor thing. Tartek and nasty dragon going to kill you! You so dumb.",12,0,100,0,0,0,"Warlord Tartek");

-- Texts for Captive Footman
SET @ENTRY := 28415;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Ugh...",12,0,100,0,0,0,"Captive Footman"),
(@ENTRY,0,1,"I am in your debt, friend.",12,0,100,0,0,0,"Captive Footman"),
(@ENTRY,0,2,"I thought I was done for!",12,0,100,0,0,0,"Captive Footman");

-- Texts for Squire Edwards
SET @ENTRY := 28486;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"M-mistress... Might I brush your mighty steed?",12,0,100,0,0,0,"Squire Edwards"),
(@ENTRY,0,1,"M-mistress... may I p-polish your armor ...?",12,0,100,0,0,0,"Squire Edwards"),
(@ENTRY,0,2,"M-mistress... did you n-need more corpse dust, p-perhaps... ?",12,0,100,0,0,0,"Squire Edwards"),
(@ENTRY,1,0,"Yes, M-mistress...",12,0,100,0,0,0,"Squire Edwards");

-- Texts for Hardened Steel Berserker
SET @ENTRY := 28579;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s becomes enraged!",16,0,100,0,0,0,"Hardened Steel Berserker");

-- Texts for Scarlet Medic
SET @ENTRY := 28608;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"The Crusade will be victorious!",12,0,100,0,0,0,"Scarlet Medic"),
(@ENTRY,0,1,"Let the purging begin!",12,0,100,0,0,0,"Scarlet Medic"),
(@ENTRY,0,2,"You're not welcome in these lands, monster!",12,0,100,0,0,0,"Scarlet Medic");

-- Texts for Prince Valanar
SET @ENTRY := 28907;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Open your eyes, brothers and sisters! GAZE UPON APOCALYPSE!",14,0,100,1,0,0,"Prince Valanar"),
(@ENTRY,0,1,"The sky itself feeds upon the suffering of the conquered!",14,0,100,1,0,0,"Prince Valanar"),
(@ENTRY,0,2,"The Scarlet Crusade is powerless to stop us!",14,0,100,1,0,0,"Prince Valanar"),
(@ENTRY,1,0,"The corpses of those that try only serve to feed our expanding host!",14,0,100,1,0,0,"Prince Valanar"),
(@ENTRY,1,1,"The Scarlet fleet lies in ruin upon the sundered coast!",14,0,100,1,0,0,"Prince Valanar"),
(@ENTRY,1,2,"With each enemy slain, our strength grows! We mustn't relent!",14,0,100,1,0,0,"Prince Valanar"),
(@ENTRY,2,0,"The Lich King has spoken to each of you! Let his words resonate among you once more!",14,0,100,1,0,0,"Prince Valanar"),
(@ENTRY,2,1,"ALL. MUST. DIE.",14,0,100,1,0,0,"Prince Valanar"),
(@ENTRY,2,2,"Leave no survivors in your wake, brothers and sisters!",14,0,100,1,0,0,"Prince Valanar"),
(@ENTRY,3,0,"No mercy for the weak!",14,0,100,1,0,0,"Prince Valanar"),
(@ENTRY,3,1,"TERROR!",14,0,100,1,0,0,"Prince Valanar"),
(@ENTRY,3,2,"CHAOS!",14,0,100,1,0,0,"Prince Valanar"),
(@ENTRY,4,0,"DESTRUCTION!",14,0,100,1,0,0,"Prince Valanar"),
(@ENTRY,4,1,"With the approaching darkness comes the end of the Scarlet Crusade. You will battle once more! For the Scourge! For the Lich King!",14,0,100,1,0,0,"Prince Valanar"),
(@ENTRY,4,2,"SUFFER WELL, DEATH KNIGHTS!",14,0,100,1,0,0,"Prince Valanar");

-- Texts for Yara
SET @ENTRY := 28917;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Daddy!",12,0,100,0,0,0,"Yara");

-- Texts for Lord Thorval
SET @ENTRY := 29196;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"As disciples of blood, you strive to master the very lifeforce of your enemies.",12,0,100,0,0,0,"Lord Thorval"),
(@ENTRY,1,0,"Be it by blade or incantation, blood feeds our attacks and weakens our foes.",12,0,100,0,0,0,"Lord Thorval"),
(@ENTRY,2,0,"True masters learn to make blood serve more than just their strength in battle.",12,0,100,0,0,0,"Lord Thorval"),
(@ENTRY,3,0,"Stripping energy from our foes, both fighting and fallen, allows us to persevere where lesser beigns falls exhausted.",12,0,100,0,0,0,"Lord Thorval"),
(@ENTRY,4,0,"And every foe that falls, energy sapped and stolen, only further fuels our assault.",12,0,100,0,0,0,"Lord Thorval"),
(@ENTRY,5,0,"As masters of blood, we know battle without end...",12,0,100,0,0,0,"Lord Thorval"),
(@ENTRY,6,0,"We know hunger never to be quenched...",12,0,100,0,0,0,"Lord Thorval"),
(@ENTRY,7,0,"We know power never to be overcome...",12,0,100,0,0,0,"Lord Thorval"),
(@ENTRY,8,0,"As masters of blood, we are masters of life and death itself. Agains us, even hope falls drained and lifeless.",12,0,100,0,0,0,"Lord Thorval");

-- Texts for Stormforged Taskmaster
SET @ENTRY := 29369;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Your mother was a wench and your father smelt of seaforium!",12,0,100,0,0,0,"Stormforged Taskmaster");

-- Texts for Sapph
SET @ENTRY := 30956;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"I knew that you would come.",12,0,100,0,0,0,"Sapph"),
(@ENTRY,1,0,"You have some fight in you. I'm impressed.",12,0,100,0,0,0,"Sapph"),
(@ENTRY,2,0,"Welcome to the world of the unliving!",12,0,100,0,0,0,"Sapph"),
(@ENTRY,3,0,"Well fought...",12,0,100,0,0,0,"Sapph");

-- Texts for Magistrate Barthilas
SET @ENTRY := 30994;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"No remedy seems to work - the entire city has sickened...",12,0,100,0,0,0,"Magistrate Barthilas"),
(@ENTRY,0,1,"The soldiers are spreading panic with rumors of bad food. Neighbors are accusing one another of poison. The city will fall into bedlam!",12,0,100,0,0,0,"Magistrate Barthilas"),
(@ENTRY,0,2,"Everyone is falling ill - this is an epidemic!",12,0,100,0,0,0,"Magistrate Barthilas"),
(@ENTRY,1,0,"I pray the illness I'm feeling is due to stress ulcers...",12,0,100,0,0,0,"Magistrate Barthilas"),
(@ENTRY,1,1,"How can I possibly help the city in such a widespread crisis?",12,0,100,0,0,0,"Magistrate Barthilas"),
(@ENTRY,1,2,"I'm at a loss. What can one simple man do in the face of disaster?",12,0,100,0,0,0,"Magistrate Barthilas");

-- Texts for Mechanical Greeter RY7R
SET @ENTRY := 31057;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Hello. Master Fras Siabi is not in at this time. Please come back tomorrow to Fras Siabi's Premium Tobacco! Beep!",12,0,100,0,0,0,"Mechanical Greeter RY7R");

-- Texts for Sapph
SET @ENTRY := 31161;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"I knew that you would come.",12,0,100,0,0,0,"Sapph"),
(@ENTRY,1,0,"You have some fight in you. I'm impressed.",12,0,100,0,0,0,"Sapph"),
(@ENTRY,2,0,"Welcome to the world of the unliving!",12,0,100,0,0,0,"Sapph"),
(@ENTRY,3,0,"Well fought...",12,0,100,0,0,0,"Sapph");

-- Texts for Orabus the Helmsman
SET @ENTRY := 32576;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"The Helmsman comes for you!",14,0,100,0,0,0,"Orabus the Helmsman"),
(@ENTRY,1,0,"Now you face Orabus, fool!",14,0,100,0,0,0,"Orabus the Helmsman");

-- Texts for Drottinn Hrothgar
SET @ENTRY := 34980;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"You dare to challenge Drottin Hrothgar, king of the seas?",14,0,100,0,0,0,"Drottinn Hrothgar");

-- Texts for Wilfred Fizzlebang
SET @ENTRY := 35476;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Of course I was the one Chosen to summon a demon for the competitors. I am %s, master summoner! Demons quail before the mere thought of being under my will!",12,0,100,1,0,0,"Wilfred Fizzlebang"),
(@ENTRY,0,1,"Soon all the world will know the name of Wilfred!",12,0,100,1,0,0,"Wilfred Fizzlebang");

-- Texts for Voice of Nozronn
SET @ENTRY := 28256;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"So the oracIe has decided to aid you, outlander. Very well, I will offer you what i know.",12,0,100,0,0,0,"Voice of Nozronn"),
(@ENTRY,1,0,"Your companion seeks the shardhorn patriarch Farunn, who holds himself aloof from his brothers.",12,0,100,0,0,0,"Voice of Nozronn"),
(@ENTRY,2,0,"Farunn walks the lands north of what your people call the Bittertide Falls. You will find him alone, but you will see her requires no defenders.",12,0,100,0,0,0,"Voice of Nozronn"),
(@ENTRY,3,0,"Return to your companion. Tell him to go forth and claim his prize in Farunn.",12,0,100,0,0,0,"Voice of Nozronn"),
(@ENTRY,4,0,"Once he has done so, tell him to leave this land in peace. He does not belong here.",12,0,100,0,0,0,"Voice of Nozronn");

