-----------------------------------
-- Area: Upper Jeuno
--  NPC: Sibila-Mobla
-- Standard Info NPC
-----------------------------------
require("scripts/globals/quests")
require("scripts/globals/utils")
-----------------------------------
local entity = {}

local pathNodes =
{
    { x = -53.229, y = 0.000, z = 123.029 },
    { x = -53.801, z = 123.204 },
    { x = -54.386, z = 123.118 },
    { x = -54.762, z = 122.991 },
    { x = -55.098, z = 122.685 },
    { x = -55.285, z = 122.347 },
    { x = -55.579, z = 121.500 },
    { x = -55.470, z = 120.768 },
    { x = -55.073, z = 119.928 },
    { x = -54.497, z = 119.663 },
    { x = -53.861, z = 119.481 },
    { x = -53.027, z = 119.519 },
    { x = -52.351, z = 120.075 },
    { x = -52.146, z = 120.675 },
    { x = -52.048, z = 121.196 },
    { x = -52.135, z = 121.740 },
    { x = -52.441, z = 122.405 },
    { x = -53.149, z = 122.905 },
}

entity.onSpawn = function(npc)
    npc:initNpcAi()
    npc:setPos(xi.path.first(pathNodes))
    npc:pathThrough(pathNodes, xi.path.flag.PATROL)
end

entity.onTrade = function(player, npc, trade)
end

entity.onTrigger = function(player, npc)
    local wildcatJeuno = player:getCharVar("WildcatJeuno")

    if
        player:getQuestStatus(xi.quest.log_id.JEUNO, xi.quest.id.jeuno.LURE_OF_THE_WILDCAT) == QUEST_ACCEPTED and
        not utils.mask.getBit(wildcatJeuno, 5)
    then
        player:startEvent(10083)
    else
        player:startEvent(98)
    end
end

entity.onEventUpdate = function(player, csid, option)
end

entity.onEventFinish = function(player, csid, option)
    if csid == 10083 then
        player:setCharVar("WildcatJeuno", utils.mask.setBit(player:getCharVar("WildcatJeuno"), 5, true))
    end
end

return entity
