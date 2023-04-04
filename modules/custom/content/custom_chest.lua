-----------------------------------
-- Custom Treasure Chest System
-----------------------------------
require("modules/module_utils")
require("scripts/globals/items")
require("scripts/globals/npc_util")
local customUtil = require("modules/custom/content/custom_util")
-----------------------------------
local m = Module:new("custom_chest")

m.zone = {}

m.rate    = customUtil.rate
m.rateTH  = customUtil.rateTH
m.respawn =
{
    SHORT      = {  720000,  900000 }, -- 12-15 minutes
    MODERATE   = { 1500000, 1800000 }, -- 25-30 minutes
    LONG       = { 2100000, 2700000 }, -- 35-45 minutes
    VERY_LONG  = { 3000000, 3600000 }, -- 50-60 minutes
}
m.look   =
{
    TREASURE_CHEST = 960,
}

local moveChest = function(npc)
    local zoneId  = npc:getZoneID()
    local respawn = m.zone[zoneId].respawn
    local nextPos = m.zone[zoneId].points[math.random(1, #m.zone[zoneId].points)]

    -- Fixed respawn or random range
    if type(respawn) == "table" then
        respawn = math.random(respawn[1], respawn[2])
    end

    npc:timer(respawn, function(npcArg)
        npcArg:setPos(nextPos[1], nextPos[2], nextPos[3], nextPos[4])
        npcUtil.showCrate(npcArg)
    end)
end

local onTrigger = function(player, npc)
    local zoneId = player:getZoneID()
    local keyName = m.zone[zoneId].key

    if m.zone[zoneId].dialog then
        customUtil.dialogTable(player, m.zone[zoneId].dialog, "", { keyName })
    else
        customUtil.dialogTable(player, {
            "The chest appears to be locked.",
            " If only you had %s, perhaps you could open it...",
        }, "", { keyName })
    end
end

local onTrade = function(player, npc, trade)
    local zoneId = npc:getZoneID()
    local keyId  = m.zone[zoneId].id
    local items  = m.zone[zoneId].items

    player:delStatusEffect(xi.effect.INVISIBLE)
    player:delStatusEffect(xi.effect.SNEAK)

    if npcUtil.tradeHasExactly(trade, keyId) then
        npcUtil.openCrate(npc, function()
            local result = customUtil.pickItem(player, items)
            player:addTreasure(result[2])
            player:tradeComplete()

            npc:timer(7000, function(npcArg)
                -- For whatever reason xi.status.DISAPPEAR doesn't work with dynamicEntities
                npcArg:setStatus(xi.status.INVISIBLE)
                moveChest(npcArg)
            end)
        end)
    else
        player:PrintToPlayer("Nothing happens.", xi.msg.channel.NS_SAY)
    end
end

m.initZone = function(zone)
    local zoneId   = zone:getID()
    local zoneName = zone:getName()

    for _, v in ipairs(m.zone[zoneId].mobs) do
        local mobName = v[1]
        local rate    = v[2]

        customUtil.duplicateOverride(xi.zones[zoneName].mobs[mobName], "onMobDeath", function(mob, player, optParams)
            super(mob, player, optParams)

            if math.random(0, 10000) < customUtil.getRateTH(mob, rate) then
                player:addTreasure(m.zone[zoneId].id, mob)
            end
        end)
    end

    local pos = m.zone[zoneId].points[math.random(1, #m.zone[zoneId].points)]

    local dynamicChest = zone:insertDynamicEntity({
        objtype   = xi.objType.NPC,
        name      = m.zone[zoneId].name,
        look      = m.zone[zoneId].look,
        x         = pos[1],
        y         = pos[2],
        z         = pos[3],
        rotation  = pos[4],
        widescan  = 0,
        onTrigger = onTrigger,
        onTrade   = onTrade,
    })

    utils.unused(dynamicChest)
end

return m
