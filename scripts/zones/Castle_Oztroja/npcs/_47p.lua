-----------------------------------
-- Area: Castle Oztroja
--  NPC: _47p (Handle)
-- Notes: Opens door _471 from behind
-- !pos -190.294 -15.750 -18.491 151
-----------------------------------
local entity = {}

entity.onTrigger = function(player, npc)
    local brassDoor = GetNPCByID(npc:getID() - 1)

    if
        player:getXPos() < -186 and
        npc:getAnimation() == xi.anim.CLOSE_DOOR and
        brassDoor:getAnimation() == xi.anim.CLOSE_DOOR
    then
        npc:openDoor(6.5)
        -- Should be a ~1 second delay here before the door opens
        brassDoor:openDoor(4.5)
    end
end

entity.onEventUpdate = function(player, csid, option)
end

entity.onEventFinish = function(player, csid, option)
end

return entity
