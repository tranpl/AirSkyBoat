-----------------------------------
-- ID: 5257
-- Item: Fire Feather
-- Status Effect: Blaze Spikes
-----------------------------------
require("scripts/globals/status")
require("scripts/globals/msg")
-----------------------------------
local itemObject = {}

itemObject.onItemCheck = function(target)
    return 0
end

itemObject.onItemUse = function(target)
    target:addStatusEffect(xi.effect.BLAZE_SPIKES, 10, 0, 180) -- This is a guess, no potency or duration info is known
end

return itemObject
