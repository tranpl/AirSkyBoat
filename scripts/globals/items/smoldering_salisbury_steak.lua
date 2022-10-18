-----------------------------------
-- ID: 5924
-- Item: Smoldering Salisbury Steak
-- Food Effect: 180 Min, All Races
-----------------------------------
-- HP +30
-- Strength +7
-- Intelligence -5
-- Attack % 20 Cap 160
-- Ranged Attack %20 Cap 160
-- Dragon Killer +5
-----------------------------------
require("scripts/globals/status")
require("scripts/globals/msg")
-----------------------------------
local itemObject = {}

itemObject.onItemCheck = function(target)
    local result = 0
    if target:hasStatusEffect(xi.effect.FOOD) or target:hasStatusEffect(xi.effect.FIELD_SUPPORT_FOOD) then
        result = xi.msg.basic.IS_FULL
    end
    return result
end

itemObject.onItemUse = function(target)
    target:addStatusEffect(xi.effect.FOOD, 0, 0, 10800, 5924)
end

itemObject.onEffectGain = function(target, effect)
    target:addMod(xi.mod.HP, 30)
    target:addMod(xi.mod.STR, 7)
    target:addMod(xi.mod.INT, -5)
    target:addMod(xi.mod.FOOD_ATTP, 20)
    target:addMod(xi.mod.FOOD_ATT_CAP, 160)
    target:addMod(xi.mod.FOOD_RATTP, 20)
    target:addMod(xi.mod.FOOD_RATT_CAP, 160)
    target:addMod(xi.mod.DRAGON_KILLER, 5)
end

itemObject.onEffectLose = function(target, effect)
    target:delMod(xi.mod.HP, 30)
    target:delMod(xi.mod.STR, 7)
    target:delMod(xi.mod.INT, -5)
    target:delMod(xi.mod.FOOD_ATTP, 20)
    target:delMod(xi.mod.FOOD_ATT_CAP, 160)
    target:delMod(xi.mod.FOOD_RATTP, 20)
    target:delMod(xi.mod.FOOD_RATT_CAP, 160)
    target:delMod(xi.mod.DRAGON_KILLER, 5)
end

return itemObject
