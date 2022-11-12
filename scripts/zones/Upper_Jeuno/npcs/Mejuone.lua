-----------------------------------
-- Area: Upper Jeuno
--  NPC: Mejuone
-- Standard Merchant NPC
-----------------------------------
local ID = require("scripts/zones/Upper_Jeuno/IDs")
require("scripts/globals/shop")
-----------------------------------
local entity = {}

entity.onTrade = function(player, npc, trade)
end

entity.onTrigger = function(player, npc)
    local stock =
    {
        4545, 62,    -- Gysahl Greens
        840,   7,    -- Chocobo Feather
        17307, 9,    -- Dart
    }

    player:showText(npc, ID.text.MEJUONE_SHOP_DIALOG)
    xi.shop.general(player, stock, xi.quest.fame_area.JEUNO)
end

entity.onEventUpdate = function(player, csid, option)
end

entity.onEventFinish = function(player, csid, option)
end

return entity
