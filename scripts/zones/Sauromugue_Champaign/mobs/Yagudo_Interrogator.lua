-----------------------------------
-- Area: Sauromugue Champaign
--  Mob: Yagudo Interrogator
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, optParams)
    xi.regime.checkRegime(player, mob, 99, 2, xi.regime.type.FIELDS)
end

return entity
