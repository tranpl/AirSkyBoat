-----------------------------------
-- Area: Kuftal Tunnel
--  Mob: Sand Lizard
-- Note: Place Holder for Amemet
-----------------------------------
local ID = require("scripts/zones/Kuftal_Tunnel/IDs")
require("scripts/globals/regimes")
require("scripts/globals/mobs")
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, isKiller)
    tpz.regime.checkRegime(player, mob, 735, 2, tpz.regime.type.GROUNDS)
end

entity.onMobDespawn = function(mob)
    tpz.mob.phOnDespawn(mob, ID.mob.AMEMET_PH, 5, math.random(7200, 43200)) -- 2 to 12 hours
end

return entity
