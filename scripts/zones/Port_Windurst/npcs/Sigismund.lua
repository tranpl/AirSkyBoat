-----------------------------------
-- Area: Port Windurst
--  NPC: Sigismund
-- Starts and Finishes Quest: To Catch a Falling Star
-- !pos -110 -10 82 240
-----------------------------------
local ID = zones[xi.zone.PORT_WINDURST]
require("scripts/globals/quests")
require("scripts/globals/titles")
-----------------------------------
local entity = {}

entity.onTrade = function(player, npc, trade)
    local starstatus = player:getQuestStatus(xi.quest.log_id.WINDURST, xi.quest.id.windurst.TO_CATCH_A_FALLING_STAR)
    if
        starstatus == 1 and
        trade:hasItemQty(xi.items.STARFALL_TEAR, 1) and
        trade:getItemCount() == 1 and
        trade:getGil() == 0
    then
        player:startEvent(199) -- Quest Finish
    end
end

entity.onTrigger = function(player, npc)
    local starstatus = player:getQuestStatus(xi.quest.log_id.WINDURST, xi.quest.id.windurst.TO_CATCH_A_FALLING_STAR)
    if starstatus == QUEST_AVAILABLE then
        player:startEvent(196, 0, xi.items.STARFALL_TEAR) -- Quest Start
    elseif starstatus == QUEST_ACCEPTED then
        player:startEvent(197, 0, xi.items.STARFALL_TEAR) -- Quest Reminder
    elseif
        starstatus == QUEST_COMPLETED and
        player:getCharVar("QuestCatchAFallingStar_prog") > 0
    then
        player:startEvent(200) -- After Quest
        player:setCharVar("QuestCatchAFallingStar_prog", 0)
    else
        player:startEvent(357)
    end
end

entity.onEventUpdate = function(player, csid, option, npc)
end

entity.onEventFinish = function(player, csid, option, npc)
    if csid == 196 then
        player:addQuest(xi.quest.log_id.WINDURST, xi.quest.id.windurst.TO_CATCH_A_FALLING_STAR)
    elseif csid == 199 then
        player:tradeComplete()
        player:completeQuest(xi.quest.log_id.WINDURST, xi.quest.id.windurst.TO_CATCH_A_FALLING_STAR)
        player:addFame(xi.quest.fame_area.WINDURST, 75)
        player:addItem(xi.items.FISH_SCALE_SHIELD)
        player:messageSpecial(ID.text.ITEM_OBTAINED, xi.items.FISH_SCALE_SHIELD)
        player:setCharVar("QuestCatchAFallingStar_prog", 2)
    end
end

return entity
