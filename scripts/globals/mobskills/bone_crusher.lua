-----------------------------------
-- Bone Crusher
-- Description: Damage varies with TP.
-- Type: Physical
-----------------------------------
require("scripts/globals/settings")
require("scripts/globals/status")
require("scripts/globals/mobskills")
-----------------------------------
local mobskill_object = {}

mobskill_object.onMobSkillCheck = function(target,mob,skill)
    return 0
end

mobskill_object.onMobWeaponSkill = function(target, mob, skill)
    local numhits = 3
    local accmod = 1
    local dmgmod = 1.5
    local info = xi.mobskills.mobPhysicalMove(mob,target,skill,numhits,accmod,dmgmod,xi.mobskills.physicalTpBonus.DMG_VARIES,2.5,2.75,3)
    local dmg = xi.mobskills.mobFinalAdjustments(info.dmg,mob,skill,target, xi.attackType.MELEE, xi.damageType.SLASHING,info.hitslanded)

    target:addStatusEffect(xi.effect.STUN, 1, 0, 3)
    target:takeDamage(dmg, mob, xi.attackType.RANGED, xi.damageType.SLASHING)
    return dmg
end

return mobskill_object
