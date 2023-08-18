-----------------------------------
-- Area: Western Altepa Desert
--  Mob: Eastern Sphinx
-----------------------------------
local ID = zones[xi.zone.WESTERN_ALTEPA_DESERT]
require("scripts/globals/missions")
-----------------------------------
local entity = {}

entity.onMobInitialize = function(mob)
    mob:setMobMod(xi.mobMod.IDLE_DESPAWN, 180)
end

entity.onMobSpawn = function(mob)
    DespawnMob(mob:getID(), 180)
end

entity.onMobDeath = function(mob, player, optParams)
end

return entity
