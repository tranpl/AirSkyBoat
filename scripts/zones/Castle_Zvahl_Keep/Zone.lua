-----------------------------------
-- Zone: Castle_Zvahl_Keep (162)
-----------------------------------
local ID = require('scripts/zones/Castle_Zvahl_Keep/IDs')
require('scripts/globals/conquest')
require('scripts/globals/treasure')
-----------------------------------
local zone_object = {}

zone_object.onInitialize = function(zone)
    -- TODO: Change this regions to radials.
    zone:registerRegion(1, -301, -50, -22, -297, -49, -17) -- central porter on map 3
    zone:registerRegion(2, -275, -54,   3, -271, -53,   7) -- NE porter on map 3
    zone:registerRegion(3, -275, -54, -47, -271, -53, -42) -- SE porter on map 3
    zone:registerRegion(4, -330, -54,   3, -326, -53,   7) -- NW porter on map 3
    zone:registerRegion(5, -328, -54, -47, -324, -53, -42) -- SW porter on map 3
    zone:registerRegion(6, -528, -74,  84, -526, -73,  89) -- N porter on map 4
    zone:registerRegion(7, -528, -74,  30, -526, -73,  36) -- S porter on map 4

    xi.treasure.initZone(zone)
end

zone_object.onConquestUpdate = function(zone, updatetype)
    xi.conq.onConquestUpdate(zone, updatetype)
end

zone_object.onZoneIn = function(player, prevZone)
    local cs = -1

    if
        player:getXPos() == 0 and
        player:getYPos() == 0 and
        player:getZPos() == 0
    then
        player:setPos(-555.996, -71.691, 59.989, 254)
    end

    return cs
end

zone_object.onRegionEnter = function(player, region)
    switch (region:GetRegionID()): caseof
    {
        [1] = function (x)
            player:startCutscene(0) -- ports player to far NE corner
        end,

        [2] = function (x)
            player:startCutscene(2) -- ports player to
        end,

        [3] = function (x)
            player:startCutscene(1) -- ports player to far SE corner
        end,

        [4] = function (x)
            player:startCutscene(1) -- ports player to far SE corner
        end,

        [5] = function (x)
            player:startCutscene(5) -- ports player to H-7 on map 4 (south or north part, randomly)
        end,

        [6] = function (x)
            player:startCutscene(6) -- ports player to position "A" on map 2
        end,

        [7] = function (x)
            player:startCutscene(7) -- ports player to position G-8 on map 2
        end,
    }
end

zone_object.onRegionLeave = function(player, region)
end

zone_object.onEventUpdate = function(player, csid, option)
end

zone_object.onEventFinish = function(player, csid, option)
end

return zone_object
