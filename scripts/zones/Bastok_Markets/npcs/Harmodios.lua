-----------------------------------
-- Area: Bastok Markets
--  NPC: Harmodios
-- Standard Merchant NPC
-- !pos -79.928 -4.824 -135.114 235
-----------------------------------
local ID = require("scripts/zones/Bastok_Markets/IDs")
require("scripts/globals/shop")
-----------------------------------
local entity = {}

entity.onTrigger = function(player, npc)
    local stock =
    {
        xi.items.GEMSHORN,                      5366, 3,
        xi.items.CORNETTE,                       253, 2,
        xi.items.FLUTE,                           49, 3,
        xi.items.PICCOLO,                       1144, 1,
        xi.items.MAPLE_HARP,                      49, 2,
        xi.items.SCROLL_OF_VITAL_ETUDE,        79872, 2,
        xi.items.SCROLL_OF_SWIFT_ETUDE,        76544, 2,
        xi.items.SCROLL_OF_SAGE_ETUDE,         73216, 2,
        xi.items.SCROLL_OF_LOGICAL_ETUDE,      65520, 2,
        xi.items.SCROLL_OF_BEWITCHING_ETUDE,   62400, 3,
        xi.items.SCROLL_OF_HERCULEAN_ETUDE,    91936, 2,
        xi.items.SCROLL_OF_UNCANNY_ETUDE,      88400, 2,
        xi.items.SCROLL_OF_FOE_SIRVENTE,      103350, 3,
        xi.items.SCROLL_OF_ADVENTURERS_DIRGE, 103350, 3,
    }

    player:showText(npc, ID.text.HARMODIOS_SHOP_DIALOG)
    xi.shop.nation(player, stock, xi.nation.BASTOK)
end

entity.onEventUpdate = function(player, csid, option, npc)
end

entity.onEventFinish = function(player, csid, option, npc)
end

return entity
