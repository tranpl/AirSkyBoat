-----------------------------------
-- Area: Korroloka Tunnel
--  Mob: Spool Leech
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, optParams)
    xi.regime.checkRegime(player, mob, 734, 2, xi.regime.type.GROUNDS)
end

return entity
