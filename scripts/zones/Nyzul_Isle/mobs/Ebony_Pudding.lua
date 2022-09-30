-----------------------------------
--  MOB: Ebony Pudding
-- Area: Nyzul Isle
-- Info: Specified Mob Group
-----------------------------------
mixins = { require('scripts/mixins/families/flan') }
require('scripts/globals/nyzul')
-----------------------------------
local entity = {}

entity.onMobSpawn = function(mob)
    mob:setMobMod(xi.mobMod.CHECK_AS_NM, 1)
end

entity.onMobDeath = function(mob, player, optParams)
    if isKiller or noKiller then
        xi.nyzul.spawnChest(mob, player)
        xi.nyzul.specifiedGroupKill(mob)
        xi.nyzul.specifiedEnemyKill(mob)
    end
end

return entity
