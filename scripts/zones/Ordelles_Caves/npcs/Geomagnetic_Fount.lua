-----------------------------------
-- Area: Ordelles Caves (193)
--  NPC: Geomagnetic Fount
-- !pos -182.376 28.415 -139.829
-----------------------------------
local ID = zones[xi.zone.ORDELLES_CAVES]
require("scripts/globals/geomagnetic_fount")
-----------------------------------
local entity = {}

entity.onTrade = function(player, npc, trade)
end

entity.onTrigger = function(player, npc)
    xi.geomagneticFount.checkFount(player, npc)
end

entity.onEventUpdate = function(player, csid, option, npc)
end

entity.onEventFinish = function(player, csid, option, npc)
end

return entity
