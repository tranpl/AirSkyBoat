-----------------------------------
-- Area: Yughott Grotto (142)
--  Mob: Orcish Grunt
-- Note: PH for Ashmaker Gotblut
-----------------------------------
local ID = require("scripts/zones/Yughott_Grotto/IDs")
require("scripts/globals/mobs")
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, optParams)
end

entity.onMobDespawn = function(mob)
    xi.mob.phOnDespawn(mob, ID.mob.ASHMAKER_GOTBLUT_PH, 5, 3600) -- 1 hour minimum
end

return entity
