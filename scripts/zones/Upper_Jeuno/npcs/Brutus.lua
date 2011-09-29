-----------------------------------
-- Area: Upper Jeuno
-- NPC: Brutus
-- Starts Quest: Chocobo's Wounds, Save My Son, Path of the Beastmaster
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/titles");
require("scripts/globals/quests");
require("scripts/zones/Upper_Jeuno/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    ChocobosWounds = player:getQuestStatus(JEUNO,CHOCOBO_S_WOUNDS);
	SaveMySon = player:getQuestStatus(JEUNO, SAVE_MY_SON)
	
	if (player:getMainLvl() >= 20 and ChocobosWounds ~= 2) then
        chocoFeed = player:getVar("ChocobosWounds")
       	
       	if (ChocobosWounds == 0) then
            player:startEvent(0x0047);
        elseif (chocoFeed == 1) then
        	player:startEvent(0x0041);
        elseif (chocoFeed == 2) then
        	player:startEvent(0x0042);	
        else
            player:startEvent(0x0066);
        end
    elseif (ChocobosWounds == 2 and SaveMySon == 0) then
		player:startEvent(0x0016); 
    elseif (SaveMySon == 2 ) then
    	player:startEvent(0x0046);
    end
end;

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
--printf("CSID: %u",csid);
--printf("RESULT: %u",option);
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
--printf("CSID: %u",csid);
--printf("RESULT: %u",option);

    if (csid == 0x0047 and option == 1) then
        player:addQuest(JEUNO,CHOCOBO_S_WOUNDS);
    	player:setVar("ChocobosWounds_Event",1);
    elseif (csid == 0x0046) then
    	player:addQuest(JEUNO,PATH_OF_THE_BEASTMASTER);
    	player:completeQuest(JEUNO,PATH_OF_THE_BEASTMASTER);
		player:setTitle(ANIMAL_TRAINER);
		player:addFame(BASTOK,BAS_FAME*40);
        player:addFame(SAN_D_ORIA,SAN_FAME*40);
        player:addFame(WINDURST,WIN_FAME*40);
		player:unlockJob(9); --Beastmaster
		player:messageSpecial(7018); --You can now become a beastmaster
    end
end;
