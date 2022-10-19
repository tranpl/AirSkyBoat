-----------------------------------
-- Area: Den of Rancor
--  Mob: Succubus Bats
-----------------------------------
require("scripts/globals/regimes")
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, optParams)
    xi.regime.checkRegime(player, mob, 799, 1, xi.regime.type.GROUNDS)
end

return entity
