-----------------------------------
-- Zone: Abyssea-LaTheine
--  NPC: qm_trudging_thomas (???)
-- Spawns Trudging Thomas
-- !pos 278 24 -82 132
-----------------------------------
local ID = zones[xi.zone.ABYSSEA_LA_THEINE]
require('scripts/globals/abyssea')
-----------------------------------
local entity = {}

entity.onTrade = function(player, npc, trade)
    xi.abyssea.qmOnTrade(player, npc, trade, ID.mob.TRUDGING_THOMAS, { xi.items.RAW_MUTTON_CHOP })
end

entity.onTrigger = function(player, npc)
    xi.abyssea.qmOnTrigger(player, npc, 0, 0, { xi.items.RAW_MUTTON_CHOP })
end

entity.onEventUpdate = function(player, csid, option, npc)
end

entity.onEventFinish = function(player, csid, option, npc)
end

return entity
