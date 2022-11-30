-----------------------------------
-- Area: Rabao
--  NPC: Generoit
-- Standard Merchant NPC
-----------------------------------
local ID = require("scripts/zones/Rabao/IDs")
require("scripts/globals/shop")
-----------------------------------
local entity = {}

entity.onTrade = function(player, npc, trade)
end

entity.onTrigger = function(player, npc)
    local stock =
    {
        4545,    61,    -- Gysahl Greens
        840,      7,    -- Chocobo Feather
        17016,   10,    -- Pet Food Alpha Biscuit
        17017,   81,    -- Pet Food Beta Biscuit
        17860,   81,    -- Carrot Broth
        17862,  687,    -- Bug Broth
        17864,  125,    -- Herbal Broth
        17866,  687,    -- Carrion Broth
        5073, 50784,    -- Scroll of Chocobo Mazurka
    }

    player:showText(npc, ID.text.GENEROIT_SHOP_DIALOG)
    xi.shop.general(player, stock, xi.quest.fame_area.SELBINA_RABAO)
end

entity.onEventUpdate = function(player, csid, option)
end

entity.onEventFinish = function(player, csid, option)
end

return entity
