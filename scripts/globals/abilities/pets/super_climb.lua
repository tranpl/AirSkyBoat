-----------------------------------
-- Ability: Super Climb
-- Used by the Wyvern when the Dragoon uses Super Jump.
-- Does not shed hate, but allows the wyvern to dodge any attack like the Dragoon.
-- Obtained: Dragoon Level 50
-- Duration: Instant
-----------------------------------
require("scripts/globals/settings")
require("scripts/globals/status")
-----------------------------------
local ability_object = {}

ability_object.onAbilityCheck = function(player, target, ability)
    return 0, 0
end

ability_object.onUseAbility = function(pet, target, ability)
    pet:queue(0, function(petArg)
        petArg:addStatusEffectEx(xi.effect.ALL_MISS, xi.effect.NONE, 2, 3, 5, 0, 0, 0, xi.effectFlag.NO_LOSS_MESSAGE)
        petArg:addStatusEffectEx(xi.effect.PHYSICAL_SHIELD, xi.effect.NONE, 1, 3, 5, 0, 0, 0, xi.effectFlag.NO_LOSS_MESSAGE)
        petArg:addStatusEffectEx(xi.effect.MAGIC_SHIELD, xi.effect.NONE, 1, 3, 5, 0, 0, 0, xi.effectFlag.NO_LOSS_MESSAGE)
        petArg:stun(5000)
    end)
end

return ability_object
