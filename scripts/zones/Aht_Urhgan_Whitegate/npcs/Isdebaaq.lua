-----------------------------------
-- Area: Aht Urhgan Whitegate
--  NPC: Isdebaaq
-- Type: Assault Mission Giver
-- !pos 127.565 0.161 -43.846 50
-----------------------------------
local ID = require("scripts/zones/Aht_Urhgan_Whitegate/IDs")
require("scripts/globals/assault")
require("scripts/globals/besieged")
require("scripts/globals/keyitems")
require("scripts/globals/npc_util")
-----------------------------------
local entity = {}

entity.onTrade = function(player, npc, trade)
end

entity.onTrigger = function(player, npc)
    local rank = xi.besieged.getMercenaryRank(player)
    local haveimperialIDtag = player:hasKeyItem(xi.ki.IMPERIAL_ARMY_ID_TAG) and 1 or 0
    local assaultPoints = player:getAssaultPoint(xi.assaultUtil.assaultArea.MAMOOL_JA_TRAINING_GROUNDS)

    if rank > 0 then
        player:startEvent(274, rank, haveimperialIDtag, assaultPoints, player:getCurrentAssault())
    else
        player:startEvent(280)
    end
end

entity.onEventUpdate = function(player, csid, option)
end

entity.onEventFinish = function(player, csid, option)
    if (csid == 274) then
        local selectiontype = bit.band(option, 0xF)
        if selectiontype == 1 and npcUtil.giveKeyItem(player, xi.ki.MAMOOL_JA_ASSAULT_ORDERS) then
            -- taken assault mission
            player:addAssault(bit.rshift(option, 4))
            player:delKeyItem(xi.ki.IMPERIAL_ARMY_ID_TAG)
        elseif selectiontype == 2 then
            -- purchased an item
            local item = bit.rshift(option, 14)
            local items =
            {
                [1]  = {itemid = xi.items.ANTIVENOM_EARRING,  price = 3000},
                [2]  = {itemid = xi.items.EBULLIENT_RING,     price = 5000},
                [3]  = {itemid = xi.items.ENLIGHTENED_CHAIN,  price = 8000},
                [4]  = {itemid = xi.items.SPECTRAL_BELT,      price = 10000},
                [5]  = {itemid = xi.items.BULLSEYE_CAPE,      price = 10000},
                [6]  = {itemid = xi.items.STORM_TULWAR,       price = 15000},
                [7]  = {itemid = xi.items.IMPERIAL_NEZA,      price = 15000},
                [8]  = {itemid = xi.items.STORM_TABAR,        price = 15000},
                [9]  = {itemid = xi.items.YIGIT_GAGES,        price = 20000},
                [10] = {itemid = xi.items.AMIR_BOOTS,         price = 20000},
                [11] = {itemid = xi.items.PAHLUWAN_SERAWEELS, price = 20000},
            }

            local choice = items[item]
            if choice and npcUtil.giveItem(player, choice.itemid) then
                player:delAssaultPoint(xi.assaultUtil.assaultArea.MAMOOL_JA_TRAINING_GROUNDS, choice.price)
            end
        end
    end
end

return entity
