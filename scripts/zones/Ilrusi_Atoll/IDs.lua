-----------------------------------
-- Area: Ilrusi_Atoll
-----------------------------------
require("scripts/globals/zone")
-----------------------------------

zones = zones or {}

zones[xi.zone.ILRUSI_ATOLL] =
{
    text =
    {
        ITEM_CANNOT_BE_OBTAINED       = 6384, -- You cannot obtain the <item>. Come back after sorting your inventory.
        ITEM_OBTAINED                 = 6390, -- Obtained: <item>.
        GIL_OBTAINED                  = 6391, -- Obtained <number> gil.
        KEYITEM_OBTAINED              = 6393, -- Obtained key item: <keyitem>.
        CARRIED_OVER_POINTS           = 7001, -- You have carried over <number> login point[/s].
        LOGIN_CAMPAIGN_UNDERWAY       = 7002, -- The [/January/February/March/April/May/June/July/August/September/October/November/December] <number> Login Campaign is currently underway!
        LOGIN_NUMBER                  = 7003, -- In celebration of your most recent login (login no. <number>), we have provided you with <number> points! You currently have a total of <number> points.
        MEMBERS_LEVELS_ARE_RESTRICTED = 7023, -- Your party is unable to participate because certain members' levels are restricted.
        ASSAULT_START_OFFSET          = 7354, -- Max MP Down removed for <name>.
        ASSAULT_41_START              = 7465, -- Commencing <assault>! Objective: Rescue the agent
        ASSAULT_42_START              = 7466, -- Commencing <assault>! Objective: Destroy the assassins
        ASSAULT_43_START              = 7467, -- Commencing <assault>! Objective: Defeat Sagelord Molaal Ja
        ASSAULT_44_START              = 7468, -- Commencing <assault>! Objective: Steal the supplies
        ASSAULT_45_START              = 7469, -- Commencing <assault>! Objective: Apprehend the spy
        ASSAULT_46_START              = 7470, -- Commencing <assault>! Objective: Recover the treasure
        ASSAULT_47_START              = 7471, -- Commencing <assault>! Objective: Annihilate the enemy
        ASSAULT_48_START              = 7472, -- Commencing <assault>! Objective: Neutralize the marids
        ASSAULT_49_START              = 7473, -- Commencing <assault>! Objective: Gather pathological data
        ASSAULT_50_START              = 7474, -- Commencing <assault>! Objective: Defeat Orochi
        TIME_TO_COMPLETE              = 7515, -- You have <number> [minute/minutes] (Earth time) to complete this mission.
        MISSION_FAILED                = 7516, -- The mission has failed. Leaving area.
        RUNE_UNLOCKED_POS             = 7517, -- ission objective completed. Unlocking Rune of Release ([A/B/C/D/E/F/G/H/I/J/K/L/M/N/O/P/Q/R/S/T/U/V/W/X/Y/Z]-#).
        RUNE_UNLOCKED                 = 7518, -- ission objective completed. Unlocking Rune of Release.
        ASSAULT_POINTS_OBTAINED       = 7519, -- You gain <number> [Assault point/Assault points]!
        TIME_REMAINING_MINUTES        = 7520, -- ime remaining: <number> [minute/minutes] (Earth time).
        TIME_REMAINING_SECONDS        = 7521, -- ime remaining: <number> [second/seconds] (Earth time).
        PARTY_FALLEN                  = 7523, -- ll party members have fallen in battle. Mission failure in <number> [minute/minutes].
        CHEST                         = 7533, -- The chest contains...
        GOLDEN                        = 7534, -- ...a golden figurehead!
    },
    mob =
    {
        [1] =
        {
            PERCIPIENT_FISH1 = 17002497,
            PERCIPIENT_FISH2 = 17002498,
            PERCIPIENT_FISH3 = 17002499,
            PERCIPIENT_FISH4 = 17002500,
            PERCIPIENT_FISH5 = 17002501,
            PERCIPIENT_FISH6 = 17002502,
            PERCIPIENT_FISH7 = 17002503,
            PERCIPIENT_FISH8 = 17002504,
        },
        [2] =
        {
            CURSED_CHEST1  = 17002505,
            CURSED_CHEST2  = 17002506,
            CURSED_CHEST3  = 17002507,
            CURSED_CHEST4  = 17002508,
            CURSED_CHEST5  = 17002509,
            CURSED_CHEST6  = 17002510,
            CURSED_CHEST7  = 17002511,
            CURSED_CHEST8  = 17002512,
            CURSED_CHEST9  = 17002513,
            CURSED_CHEST10 = 17002514,
            CURSED_CHEST11 = 17002515,
            CURSED_CHEST12 = 17002516,
        },
        [xi.assault.mission.EXTERMINATION] =
        {
            MOBS_START =
            {
                17002521, 17002522, 17002523, 17002524, 17002525, 17002526, 17002527, 17002528, 17002529, 17002530,
                17002531, 17002532, 17002533, 17002534, 17002535, 17002536, 17002537, 17002538, 17002539, 17002540,
            },
            UNDEAD_CRAB  = 17002541,
            UNDEAD_LEECH = 17002542,
            UNDEAD_SLIME = 17002543,
            UNDEAD_TOAD  = 17002544,
        },
    },
    npc =
    {
        ILRUSI_CURSED_CHEST_OFFSET = 17002505,
        ANCIENT_LOCKBOX            = 17002654,
        RUNE_OF_RELEASE            = 17002655,
        CURSED_CHEST1              = 17002505,
        CURSED_CHEST2              = 17002506,
        CURSED_CHEST3              = 17002507,
        CURSED_CHEST4              = 17002508,
        CURSED_CHEST5              = 17002509,
        CURSED_CHEST6              = 17002510,
        CURSED_CHEST7              = 17002511,
        CURSED_CHEST8              = 17002512,
        CURSED_CHEST9              = 17002513,
        CURSED_CHEST10             = 17002514,
        CURSED_CHEST11             = 17002515,
        CURSED_CHEST12             = 17002516,
        _1jo                       = 17002730,
        _1jp                       = 17002731,
        _jj3                       = 17002745,
        _jj5                       = 17002747,
        _jja                       = 17002752,
        _jjb                       = 17002753,
        _jjc                       = 17002754,
    },
}

return zones[xi.zone.ILRUSI_ATOLL]
