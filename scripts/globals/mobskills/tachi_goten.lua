-----------------------------------
-- Tachi: Goten
-- Description: Deals lightning elemental damage.
-- Type: Magical
-----------------------------------
require("scripts/globals/mobskills")
require("scripts/globals/status")
require("scripts/globals/msg")
require("scripts/globals/settings")
-----------------------------------
local mobskill_object = {}

mobskill_object.onMobSkillCheck = function(target, mob, skill)
    return 0
end

mobskill_object.onMobWeaponSkill = function(target, mob, skill)
    local dmgmod = 1.8
    local info = xi.mobskills.mobMagicalMove(mob, target, skill, mob:getWeaponDmg()*3, xi.magic.ele.LIGHT, dmgmod, xi.mobskills.magicalTpBonus.DMG_BONUS, 1)
    local dmg = xi.mobskills.mobFinalAdjustments(info.dmg, mob, skill, target, xi.attackType.MAGICAL, xi.damageType.LIGHTNING, info.hitslanded)

    target:takeDamage(dmg, mob, xi.attackType.MAGICAL, xi.damageType.LIGHTNING)
    return dmg
end

return mobskill_object
