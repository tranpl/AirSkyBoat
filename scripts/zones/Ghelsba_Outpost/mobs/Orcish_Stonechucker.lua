-----------------------------------
-- Area: Ghelsba Outpost (140)
--  Mob: Orcish Stonechucker
-- Note: PH for Thousandarm Deshglesh
-----------------------------------
local ID = zones[xi.zone.GHELSBA_OUTPOST]
require("scripts/globals/mobs")
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, optParams)
end

entity.onMobDespawn = function(mob)
    xi.mob.phOnDespawn(mob, ID.mob.THOUSANDARM_DESHGLESH_PH, 5, 3600) -- 1 hour minimum
end

return entity
