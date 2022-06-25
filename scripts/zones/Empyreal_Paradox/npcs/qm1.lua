-----------------------------------
-- Area: Empyreal_Paradox
--  NPC: ??? (qm1)
-----------------------------------
local ID = require("scripts/zones/Empyreal_Paradox/IDs")
require("scripts/globals/missions")
require("scripts/globals/quests")
-----------------------------------
local entity = {}

entity.onTrade = function(player, npc, trade)
end

entity.onTrigger = function(player,npc)
    if
        player:hasCompletedQuest(xi.quest.log_id.JEUNO, xi.quest.id.jeuno.APOCALYPSE_NIGH) and not
        (
            player:hasItem(15962) or
            player:hasItem(15963) or
            player:hasItem(15964) or
            player:hasItem(15965)
        )
    then
        player:startEvent(5)
    else
        player:messageSpecial(ID.text.QM_TEXT)
    end
end

entity.onEventUpdate = function(player,csid,option,extras)
end

entity.onEventFinish = function(player,csid,option)
    if csid == 5 and option == 1 then
        player:delMission(xi.mission.log_id.COP, xi.mission.id.cop.THE_LAST_VERSE)
        player:delMission(xi.mission.log_id.ZILART, xi.mission.id.zilart.THE_LAST_VERSE)
        player:addMission(xi.mission.log_id.COP, xi.mission.id.cop.DAWN)
        player:setCharVar(string.format("Mission[%s][%s]Status", xi.mission.log_id.COP, xi.mission.id.cop.DAWN), 0)
        player:addMission(xi.mission.log_id.ZILART, xi.mission.id.zilart.AWAKENING)
        player:setCharVar(string.format("Mission[%s][%s]Status", xi.mission.log_id.ZILART, xi.mission.id.zilart.AWAKENING), 0)
        player:setMissionStatus(xi.mission.log_id.ZILART, 3)
        player:delQuest(xi.quest.log_id.JEUNO, xi.quest.id.jeuno.SHADOWS_OF_THE_DEPARTED)
        player:delQuest(xi.quest.log_id.JEUNO, xi.quest.id.jeuno.APOCALYPSE_NIGH)
    end
end

return entity
