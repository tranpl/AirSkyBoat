-----------------------------------
-- Zone: South_Gustaberg (107)
-----------------------------------
local ID = require('scripts/zones/South_Gustaberg/IDs')
require('scripts/quests/i_can_hear_a_rainbow')
require('scripts/globals/chocobo_digging')
require('scripts/globals/conquest')
require('scripts/globals/events/starlight_celebrations')
require('scripts/globals/events/sunbreeze_festival')
-----------------------------------
local zoneObject = {}

zoneObject.onChocoboDig = function(player, precheck)
    return xi.chocoboDig.start(player, precheck)
end

zoneObject.onInitialize = function(zone)
    xi.events.starlightCelebration.applyStarlightDecorations(zone:getID())
    xi.events.sunbreeze_festival.showNPCs(zone:getID())

    -- NM Persistence
    if xi.settings.main.ENABLE_WOTG == 1 then
        xi.mob.nmTODPersistCache(zone, ID.mob.TOCOCO)
    end
end

zoneObject.onZoneIn = function(player, prevZone)
    local cs = -1

    if
        player:getXPos() == 0 and
        player:getYPos() == 0 and
        player:getZPos() == 0
    then
        player:setPos(579, 0, -305, 62)
    end

    if quests.rainbow.onZoneIn(player) then
        cs = 901
    end

    return cs
end

zoneObject.onConquestUpdate = function(zone, updatetype, influence, owner, ranking, isConquestAlliance)
    xi.conq.onConquestUpdate(zone, updatetype, influence, owner, ranking, isConquestAlliance)
end

zoneObject.onZoneTick = function(zone)
    xi.events.sunbreeze_festival.onZoneTick(zone)
end

zoneObject.onGameHour = function(zone)
    xi.events.sunbreeze_festival.spawnFireworks(zone)
end

zoneObject.onGameDay = function()
    SetServerVariable("[DIG]ZONE107_ITEMS", 0)
    if xi.events.starlightCelebration.isStarlightEnabled ~= 0 then
        xi.events.starlightCelebration.resetSmileHelpers(xi.zone.SOUTH_GUSTABERG)
    end
end

zoneObject.onTriggerAreaEnter = function(player, triggerArea)
end

zoneObject.onEventUpdate = function(player, csid, option)
    if csid == 901 then
        quests.rainbow.onEventUpdate(player)
    end
end

zoneObject.onEventFinish = function(player, csid, option)
end

return zoneObject
