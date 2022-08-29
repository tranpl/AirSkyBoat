-----------------------------------
-- Area: Chateau_dOraguille
-----------------------------------
require("scripts/globals/zone")
-----------------------------------

zones = zones or {}

zones[xi.zone.CHATEAU_DORAGUILLE] =
{
    text =
    {
        ITEM_CANNOT_BE_OBTAINED = 6592, -- You cannot obtain the <item>. Come back after sorting your inventory.
        ITEM_OBTAINED           = 6598, -- Obtained: <item>.
        GIL_OBTAINED            = 6599, -- Obtained <number> gil.
        KEYITEM_OBTAINED        = 6601, -- Obtained key item: <keyitem>.
        KEYITEM_LOST            = 6602, -- Lost key item: <keyitem>.
        NOT_HAVE_ENOUGH_GIL     = 6603, -- You do not have enough gil.
        CARRIED_OVER_POINTS     = 6637, -- You have carried over <number> login point[/s].
        LOGIN_CAMPAIGN_UNDERWAY = 6638, -- The [/January/February/March/April/May/June/July/August/September/October/November/December] <number> Login Campaign is currently underway!
        LOGIN_NUMBER            = 6639, -- In celebration of your most recent login (login no. <number>), we have provided you with <number> points! You currently have a total of <number> points.
        YOU_LEARNED_TRUST       = 6661, -- You learned Trust: <name>!
        HALVER_OFFSET           = 6801, -- The princess is always speaking of your deeds for the Kingdom. Everyone here is counting on you, <name>.
        LIGHTBRINGER_EXTRA      = 6844, -- Lightbringer has been found! This is the happiest day in my tenure as monarlais!
        CONQUEST_BASE           = 6887, -- Tallying conquest results...
        SHALL_BEGIN_DISCUSSION  = 7123, -- We shall begin immediate discussion on a policy for action. <name>, you must work on improving your skills and equipment.
        TIME_TO_REACH_DECISION  = 7156, -- I believe it will take some time for us to reach a decision. Your time will come in due course, my friend. Until then, be well.
        TOMBSTONE               = 7180, -- Here lies the beloved Queen Leaute. May Her Majesty's soul find Paradise.
        ITS_LOCKED              = 7227, -- It's locked.
        ITS_LOCKED_TIGHT        = 7228, -- It's locked tight.
        FEI_YIN_NORTHEAST       = 7262, -- Fei'Yin is to the northeast of Beaucedine Glacier. Be wary on the road, there are many beastmen, and worse, about.
        PRINCE_TRION_CHAMBERS   = 7264, -- Prince Trion went to his chambers a short while ago and has yet to return. You should go speak with him there.
        WHAT_TRION_WILL_SAY     = 7265, -- I do not know what Prince Trion will say...but I leave your actions to your judgment. You are free to do as you will.
        KNEW_YOU_WERE_THE_ONE   = 7268, -- <name>! I knew you were the one for the job. But don't rest on your laurels!
        HIS_MAJESTY_AWAITS      = 7272, -- Go, <name>. His Majesty awaits!
        HEIR_TO_LIGHT_EXTRA     = 7798, -- <name>! I never doubted your ability on the front line. We are truly in your debt. Proceed to the Audience Chamber. His Highness awaits!
        SAVAGE_BLADE_LEARNED    = 7948, -- You have learned the weapon skill Savage Blade!
        CELEBRATORY_GOODS       = 8460, -- An assortment of celebratory goods is available for purchase.
    },
    mob =
    {
    },
    npc =
    {
    },
}

return zones[xi.zone.CHATEAU_DORAGUILLE]
