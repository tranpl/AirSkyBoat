-----------------------------------
-- Area: Mine Shaft 2716
-- Mob: Moblin Fantocciniman
-- ENM: Pulling the Strings
-----------------------------------
local ID = require("scripts/zones/Mine_Shaft_2716/IDs")
-----------------------------------
local entity = {}

entity.onMobSpawn = function(mob)
    mob:setBehaviour(bit.bor(mob:getBehaviour(), xi.behavior.STANDBACK))
end

entity.onMobEngaged = function(mob, target)
    mob:SetAutoAttackEnabled(false)
    mob:setMod(xi.mod.REGAIN, 150)
    mob:showText(mob, ID.text.TIME_FOR_GOODEBYONGO + math.random(0,1))
end

entity.onMobFight = function(mob, target)
    local fantocinni = GetMobByID(ID.mob.FANTOCCINI[mob:getBattlefield():getArea()])

    if mob:getHP() < mob:getMaxHP() and mob:getLocalVar("control") == 0 then
        mob:setLocalVar("control", 1)
        mob:showText(mob, ID.text.YOU_MAKE_ME_MAD)
        mob:SetAutoAttackEnabled(true)
        mob:setBehaviour(0)
    end

    while mob:checkDistance(fantocinni) > 8 do
        mob:pathTo(fantocinni:getPos())
    end
end

entity.onMobWeaponSkill = function(target, mob)
    mob:showText(mob, ID.text.ROLY_POLY)
end

entity.onMobDeath = function(mob)
    for i= 0, 4 do
        local npc = GetMobByID(ID.mob.FANTOCCINI[mob:getBattlefield():getArea()] + i)
        if npc:isSpawned() then
            npc:addStatusEffect(xi.effect.TERROR, 0, 0, 900)
        end
    end
end

entity.onMobDespawn = function(mob)
    mob:showText(mob, ID.text.NOT_HOW)
end

return entity
