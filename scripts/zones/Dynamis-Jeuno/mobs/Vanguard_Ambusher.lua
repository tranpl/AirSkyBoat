-----------------------------------
-- Area: Dynamis - Jeuno
--  Mob: Vanguard Ambusher
-----------------------------------
mixins =
{
    require("scripts/mixins/dynamis_beastmen"),
    require("scripts/mixins/job_special")
}
local ID = require("scripts/zones/Dynamis-Jeuno/IDs")
require("scripts/globals/mobs")
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, optParams)
end

entity.onMobDespawn = function(mob)
    xi.mob.phOnDespawn(mob, ID.mob.PROWLOX_BARRELBELLY_PH, 10, 1200) -- 10% lottery chance and 20 minute cooldown values ASSUMED same as Dynamis-Beaucedine/Xarcabard, needs final verification
end

return entity
