-----------------------------------
-- Area: Ship_bound_for_Mhaura
-----------------------------------
require("scripts/globals/zone")
-----------------------------------

zones = zones or {}

zones[xi.zone.SHIP_BOUND_FOR_MHAURA] =
{
    text =
    {
        ITEM_CANNOT_BE_OBTAINED = 6384, -- You cannot obtain the <item>. Come back after sorting your inventory.
        ITEM_OBTAINED           = 6390, -- Obtained: <item>.
        GIL_OBTAINED            = 6391, -- Obtained <number> gil.
        KEYITEM_OBTAINED        = 6393, -- Obtained key item: <keyitem>.
        CARRIED_OVER_POINTS     = 7001, -- You have carried over <number> login point[/s].
        LOGIN_CAMPAIGN_UNDERWAY = 7002, -- The [/January/February/March/April/May/June/July/August/September/October/November/December] <number> Login Campaign is currently underway!<space>
        LOGIN_NUMBER            = 7003, -- In celebration of your most recent login (login no. <number>), we have provided you with <number> points! You currently have a total of <number> points.
        FISHING_MESSAGE_OFFSET  = 7238, -- You can't fish here.
        ON_WAY_TO_MHAURA        = 7339, -- We're on our way to Mhaura. We should be there in [less than an hour/about 1 hour/about 2 hours/about 3 hours/about 4 hours/about 5 hours/about 6 hours/about 7 hours] (# [minute/minutes] in Earth time).
        LOKHONG_SHOP_DIALOG     = 7344, -- There's nothing like fishing to pass the time!
        CHHAYA_SHOP_DIALOG      = 7345, -- May I offer you items to help you on your journey?
        ARRIVING_SOON_MHAURA    = 7346, -- We are on our way to Mhaura. We will be arriving soon.
    },
    mob =
    {
        SEA_CREATURES =
        {
            17682438,   -- Sea Crab 1
            17682439,   -- Sea Crab 2
            17682440,   -- Sea Pugil 1
            17682441,   -- Sea Pugil 2
            17682442,   -- Sea Monk 1
        },
        SEA_HORROR = 17682446,
        PHANTOM = 17682443,
    },
    npc =
    {
    },
}

return zones[xi.zone.SHIP_BOUND_FOR_MHAURA]
