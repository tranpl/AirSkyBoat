-----------------------------------
-- Area: Chateau d'Oraguille
--  NPC: Curilla
-- Starts and Finishes Quest: The General's Secret, Enveloped in Darkness, Peace for the Spirit,
--                            Lure of the Wildcat (San d'Oria), Old Wounds
-- !pos 27 0.1 0.1 233
-----------------------------------
local ID = require("scripts/zones/Chateau_dOraguille/IDs")
require("scripts/globals/magic")
require("scripts/globals/quests")
require("scripts/globals/utils")
-----------------------------------
local entity = {}

local sandyQuests = xi.quest.id.sandoria

local trustMemory = function(player)
    local memories = 0
    -- 2 - PEACE_FOR_THE_SPIRIT
    if player:hasCompletedQuest(xi.quest.log_id.SANDORIA, xi.quest.id.sandoria.PEACE_FOR_THE_SPIRIT) then
        memories = memories + 2
    end

    -- 4 - OLD_WOUNDS
    if player:hasCompletedQuest(xi.quest.log_id.SANDORIA, xi.quest.id.sandoria.OLD_WOUNDS) then
        memories = memories + 4
    end

    -- 8 - THE_HEIR_TO_THE_LIGHT
    if player:hasCompletedMission(xi.mission.log_id.SANDORIA, xi.mission.id.sandoria.THE_HEIR_TO_THE_LIGHT) then
        memories = memories + 8
    end

    -- 16 - Heroine's Combat BCNM
    -- if (playervar for Heroine's Combat) then
    --  memories = memories + 16
    -- end
    -- 32 - FIT_FOR_A_PRINCE
    if player:hasCompletedQuest(xi.quest.log_id.SANDORIA, xi.quest.id.sandoria.FIT_FOR_A_PRINCE) then
        memories = memories + 32
    end

    return memories
end

entity.onTrade = function(player, npc, trade)
end

entity.onTrigger = function(player, npc)
    local rank3 = player:getRank(player:getNation()) >= 3 and 1 or 0

    -- Trust: San d'Oria (Curilla)
    if
        player:hasKeyItem(xi.ki.SAN_DORIA_TRUST_PERMIT) and
        not player:hasSpell(xi.magic.spell.CURILLA) and
        player:getLocalVar("TrustDialogue") == 0
    then
        player:setLocalVar("TrustDialogue", 1)
        player:startEvent(573, 0, 0, 0, trustMemory(player), 0, 0, 0, rank3)

    -- "Lure of the Wildcat"
    elseif
        player:getQuestStatus(xi.quest.log_id.SANDORIA, sandyQuests.LURE_OF_THE_WILDCAT) == QUEST_ACCEPTED and
        not utils.mask.getBit(player:getCharVar("WildcatSandy"), 15)
    then
        player:startEvent(562)
    end
end

entity.onEventFinish = function(player, csid, option)
    if csid == 562 then
        player:setCharVar("WildcatSandy", utils.mask.setBit(player:getCharVar("WildcatSandy"), 15, true))
    elseif csid == 573 and option == 2 then
        player:addSpell(xi.magic.spell.CURILLA, true, true)
        player:messageSpecial(ID.text.YOU_LEARNED_TRUST, 0, xi.magic.spell.CURILLA)
    end
end

return entity
