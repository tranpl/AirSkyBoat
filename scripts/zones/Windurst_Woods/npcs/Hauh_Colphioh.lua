-----------------------------------
-- Area: Windurst Woods
--  NPC: Hauh Colphioh
-- Type: Guildworker's Union Representative
-- !pos -38.173 -1.25 -113.679 241
-----------------------------------
local ID = require("scripts/zones/Windurst_Woods/IDs")
require("scripts/globals/crafting")
-----------------------------------
local entity = {}

entity.onTrade = function(player, npc, trade)
    xi.crafting.guildPointNPConTrade(player, npc, trade, 10025, 4)
end

entity.onTrigger = function(player, npc)
    xi.crafting.guildPointNPConTrigger(player, 4, 10024)
end

entity.onEventUpdate = function(player, csid, option, npc)
    if csid == 10024 then
        xi.crafting.guildPointNPConEventFinish(player, option, npc, 4)
    end
end

entity.onEventFinish = function(player, csid, option, npc)
    if csid == 10024 then
        xi.crafting.guildPointNPConEventFinish(player, option, npc, 4)
    elseif csid == 10025 then
        player:messageSpecial(ID.text.GP_OBTAINED, option)
    end
end

return entity
