-----------------------------------
-- Zone: Reisenjima_Henge (292)
-----------------------------------
local ID = require('scripts/zones/Reisenjima_Henge/IDs')
-----------------------------------
local zone_object = {}

zone_object.onInitialize = function(zone)
end

zone_object.onZoneIn = function(player, prevZone)
    local cs = -1

    --if (player:getXPos() == 0 and player:getYPos() == 0 and player:getZPos() == 0) then
        --player:setPos(?, ?, ?, ?)
    --end

    return cs
end

zone_object.onConquestUpdate = function(zone, updatetype)
end

zone_object.onRegionEnter = function(player, region)
end

zone_object.onEventUpdate = function(player, csid, option)
end

zone_object.onEventFinish = function(player, csid, option)
end

return zone_object
