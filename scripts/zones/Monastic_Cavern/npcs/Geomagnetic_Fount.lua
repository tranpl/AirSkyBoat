-----------------------------------
-- Area: Monastic Cavern (150)
--  NPC: Geomagnetic Fount
-- !pos 0.000 0.000 -312.000
-----------------------------------
local ID = zones[xi.zone.MONASTIC_CAVERN]
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
