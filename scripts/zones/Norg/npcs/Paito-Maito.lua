-----------------------------------
-- Area: Norg
--  NPC: Paito-Maito
-----------------------------------
require("scripts/globals/pathfind")
-----------------------------------
local entity = {}

local pathNodes =
{
    { x = -71.189713, y = -9.413510, z = 74.024879 },
    { x = -71.674171, y = -9.317029, z = 73.054794 },
    { x = -72.516525, y = -9.298064, z = 72.363213 },
    { x = -73.432983, y = -9.220915, z = 71.773857 },
    { x = -74.358955, y = -9.142115, z = 71.163277 },
    { x = -75.199585, y = -9.069098, z = 70.583145 },
    { x = -76.184708, y = -9.006280, z = 70.261375 },
    { x = -77.093193, y = -9.000236, z = 70.852921 },
    { x = -77.987053, y = -9.037421, z = 71.464264 },
    { x = -79.008476, y = -9.123112, z = 71.825165 },
    { x = -80.083740, y = -9.169785, z = 72.087944 },
    { x = -79.577698, y = -9.295252, z = 73.087708 },
    { x = -78.816307, y = -9.365192, z = 73.861855 },
    { x = -77.949852, y = -9.323165, z = 74.500496 },
    { x = -76.868950, y = -9.301287, z = 74.783707 },
    { x = -75.754913, y = -9.294973, z = 74.927345 },
    { x = -74.637566, y = -9.341335, z = 74.902016 },
    { x = -73.521400, y = -9.382154, z = 74.747322 },
    { x = -72.420792, y = -9.415255, z = 74.426178 },
    { x = -71.401161, y = -9.413510, z = 74.035446 },
    { x = -70.392426, y = -9.413510, z = 73.627884 },
    { x = -69.237152, y = -9.413510, z = 73.155815 },
    { x = -70.317207, y = -9.413510, z = 73.034027 },
    { x = -71.371315, y = -9.279585, z = 72.798569 },
    { x = -72.378838, y = -9.306310, z = 72.392982 },
    { x = -73.315544, y = -9.230491, z = 71.843933 },
    { x = -74.225883, y = -9.153550, z = 71.253113 },
    { x = -75.120522, y = -9.076024, z = 70.638908 },
    { x = -76.054642, y = -9.019394, z = 70.204910 },
    { x = -76.981323, y = -8.999838, z = 70.762978 },
    { x = -77.856903, y = -9.024825, z = 71.403915 },
    { x = -78.876686, y = -9.115798, z = 71.789764 },
    { x = -79.930756, y = -9.171277, z = 72.053635 },
    { x = -79.572502, y = -9.295024, z = 73.087646 },
    { x = -78.807686, y = -9.364762, z = 73.869614 },
    { x = -77.916420, y = -9.321617, z = 74.516357 },
    { x = -76.824738, y = -9.300390, z = 74.790466 },
    { x = -75.738380, y = -9.295794, z = 74.930130 },
    { x = -74.620911, y = -9.341956, z = 74.899994 },
    { x = -73.493645, y = -9.382988, z = 74.739204 },
    { x = -72.413185, y = -9.415321, z = 74.420128 },
    { x = -71.452393, y = -9.413510, z = 74.054657 },
    { x = -70.487755, y = -9.413510, z = 73.666130 },
}

entity.onSpawn = function(npc)
    npc:initNpcAi()
    npc:setPos(xi.path.first(pathNodes))
    npc:pathThrough(pathNodes, xi.path.flag.PATROL)
end

entity.onTrade = function(player, npc, trade)
end

entity.onTrigger = function(player, npc)
    player:startEvent(90)
end

entity.onEventUpdate = function(player, csid, option)
end

entity.onEventFinish = function(player, csid, option, npc)
end

return entity
