-----------------------------------
-- Module helpers
-----------------------------------
require("scripts/globals/settings")
require("scripts/globals/utils")
-----------------------------------

xi.module.modifyInteractionEntry = function(filename, modifyFunc)
    package.loaded[filename] = nil -- Clear out the pre-required resource (it might not be there, but it doesn't matter)
    local res = utils.prequire(filename) -- Load the resource
    InteractionGlobal.lookup:removeContainer(res) -- Remove the resource from the container
    modifyFunc(res) -- Run function to modify resource
    InteractionGlobal.lookup:addContainer(res) -- Re-add resource to container
end

-- Override Object
Override = {}
Override.__index = Override

function Override:new(target_func_str, new_func)
    local obj = {}
    setmetatable(obj, self)

    obj.name = target_func_str
    obj.func = new_func

    return obj
end

-- Module Object
Module = {}
Module.__index = Module

function Module:new(name)
    if name == nil or string.len(name) < 5 then
        printf("Invalid module name: %s", name)
    end

    local obj = {}
    setmetatable(obj, self)

    obj.name = name
    obj.overrides = {}
    obj.enabled = false

    return obj
end

function Module:setEnabled(isEnabled)
    self.enabled = isEnabled
end

function Module:addOverride(target_func_str, func)
    local override = Override:new(target_func_str, func)
    table.insert(self.overrides, override)
end
