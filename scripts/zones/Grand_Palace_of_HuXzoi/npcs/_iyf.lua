-----------------------------------
-- Area: Grand Palace of Hu'Xzoi
--  NPC: Cermet Portal (Security Gate)
--   ID: 16916885
--  !pos -500 -2.05 520
-----------------------------------
local ID = require("scripts/zones/Grand_Palace_of_HuXzoi/IDs")
-----------------------------------
local entity = {}

entity.onTrigger = function(player, npc)
    if player:getZPos() < 520 then
        player:messageSpecial(ID.text.PORTAL_DOES_NOT_RESPOND)
        return 1
    end

    return -1
end

return entity
