-----------------------------------
-- Area: Oldton_Movalpolos
--  NPC: _0b0
-- !pos 175.003 12.000 -60.009
-----------------------------------
local entity = {}

entity.onTrigger = function(player, npc)
    local gate = GetNPCByID(npc:getID() + 3)
    npc:openDoor(30)
    gate:closeDoor(30)
end

return entity
