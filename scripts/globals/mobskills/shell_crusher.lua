-----------------------------------
-- Shell Crusher
-- Description: Lowers target's defense. Damage varies with TP.
-- Type: Physical
-----------------------------------
require("scripts/globals/settings")
require("scripts/globals/status")
require("scripts/globals/mobskills")
-----------------------------------
local mobskillObject = {}

mobskillObject.onMobSkillCheck = function(target, mob, skill)
    return 0
end

mobskillObject.onMobWeaponSkill = function(target, mob, skill)
    local numhits = 1
    local accmod = 1
    local dmgmod = 1
    local info = xi.mobskills.mobPhysicalMove(mob, target, skill, numhits, accmod, dmgmod, xi.mobskills.physicalTpBonus.DMG_VARIES, 2.5, 2.75, 3)
    local dmg = xi.mobskills.mobFinalAdjustments(info.dmg, mob, skill, target, xi.attackType.PHYSICAL, xi.damageType.BLUNT, info.hitslanded)

    if not skill:hasMissMsg() then
        target:addStatusEffect(xi.effect.DEFENSE_DOWN, 15, 0, 120)
        target:takeDamage(dmg, mob, xi.attackType.PHYSICAL, xi.damageType.BLUNT)
    end

    return dmg
end

return mobskillObject
