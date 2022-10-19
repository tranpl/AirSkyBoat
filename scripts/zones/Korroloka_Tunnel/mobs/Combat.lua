-----------------------------------
-- Area: Korroloka Tunnel
--  Mob: Combat
-----------------------------------
require("scripts/globals/regimes")
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, optParams)
    xi.regime.checkRegime(player, mob, 728, 2, xi.regime.type.GROUNDS)
end

return entity
