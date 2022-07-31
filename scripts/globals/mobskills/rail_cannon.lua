-----------------------------------
-- Rail Cannon
-- Always single gear
-- single Gear: Rail Cannon is single target and ignores Utsusemi
-----------------------------------
require("scripts/globals/settings")
require("scripts/globals/status")
require("scripts/globals/mobskills")
-----------------------------------
local mobskill_object = {}

mobskill_object.onMobSkillCheck = function(target, mob, skill)
    return 0
end

mobskill_object.onMobWeaponSkill = function(target, mob, skill)
    local typeEffect = xi.effect.BIND

    local dmgmod = 1
    local info = xi.mobskills.mobMagicalMove(mob, target, skill, mob:getWeaponDmg()*3, xi.magic.ele.LIGHT, dmgmod, xi.mobskills.magicalTpBonus.NO_EFFECT)
    local dmg = xi.mobskills.mobFinalAdjustments(info.dmg, mob, skill, target, MOBSKILL_MAGICAL, xi.damageType.LIGHT, xi.mobskills.shadowBehavior.IGNORE_SHADOWS)

    target:delHP(dmg)

    xi.mobskills.mobStatusEffectMove(mob, target, typeEffect, 1, 0, 30)

    return dmg
end

return mobskill_object
