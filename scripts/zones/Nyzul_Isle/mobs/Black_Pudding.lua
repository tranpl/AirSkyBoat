-----------------------------------
--  MOB: Black Pudding
-- Area: Nyzul Isle
-----------------------------------
mixins = { require('scripts/mixins/families/flan') }
require('scripts/globals/nyzul')
-----------------------------------
local entity = {}

entity.onMobSpawn = function(mob)
    xi.nyzul.specifiedEnemySet(mob)
end

entity.onMobDeath = function(mob, player, optParams)
    if isKiller or noKiller then
        xi.nyzul.spawnChest(mob, player)
        xi.nyzul.specifiedEnemyKill(mob)
    end
end

return entity
