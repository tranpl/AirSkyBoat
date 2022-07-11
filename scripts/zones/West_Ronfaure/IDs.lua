-----------------------------------
-- Area: West_Ronfaure
-----------------------------------
require("scripts/globals/zone")
-----------------------------------

zones = zones or {}

zones[xi.zone.WEST_RONFAURE] =
{
    text =
    {
        ITEM_CANNOT_BE_OBTAINED  = 6406,  -- You cannot obtain the <item>. Come back after sorting your inventory.
        ITEM_OBTAINED            = 6412,  -- Obtained: <item>.
        GIL_OBTAINED             = 6413,  -- Obtained <number> gil.
        KEYITEM_OBTAINED         = 6415,  -- Obtained key item: <keyitem>.
        KEYITEM_LOST             = 6416,  -- Lost key item: <keyitem>.
        FELLOW_MESSAGE_OFFSET    = 6441,  -- I'm ready. I suppose.
        CARRIED_OVER_POINTS      = 7023,  -- You have carried over <number> login point[/s].
        LOGIN_CAMPAIGN_UNDERWAY  = 7024,  -- The [/January/February/March/April/May/June/July/August/September/October/November/December] <number> Login Campaign is currently underway!<space>
        LOGIN_NUMBER             = 7025,  -- In celebration of your most recent login (login no. <number>), we have provided you with <number> points! You currently have a total of <number> points.
        CONQUEST_BASE            = 7079,  -- Tallying conquest results...
        FISHING_MESSAGE_OFFSET   = 7238,  -- You can't fish here.
        DIG_THROW_AWAY           = 7251,  -- You dig up <item>, but your inventory is full. You regretfully throw the <item> away.
        FIND_NOTHING             = 7253,  -- You dig and you dig, but find nothing.
        GACHEMAGE_DIALOG         = 7339,  -- Orcish scouts lurk in the shadows. Consider yourself warned!
        ADALEFONT_DIALOG         = 7340,  -- If you sense danger, just flee into the city. I'll not endanger myself on your account!
        LAILLERA_DIALOG          = 7341,  -- I mustn't chat while on duty. Sorry.
        PICKPOCKET_GACHEMAGE     = 7342,  -- A pickpocket? Now that you mention it, I did see a woman flee the city. She ran west.
        PICKPOCKET_ADALEFONT     = 7343,  -- What, someone picked your pocket? And you call yourself an adventurer!
        PICKPOCKET_COLMAIE       = 7344,  -- A pickpocket? Hmm... Can't say I've seen anyone like that around here.
        PICKPOCKET_LAILLERA      = 7345,  -- A pickpocket, you say? I don't think anybody came through here.
        AAVELEON_HEALED          = 7347,  -- My wounds are healed, thanks to you!
        PICKPOCKET_AAVELEON      = 7373,  -- A pickpocket, out here? Phew, my wallet is safe.
        PALCOMONDAU_REPORT       = 7385,  -- Scout reporting! All is quiet on the road to Ghelsba!
        PALCOMONDAU_DIALOG       = 7386,  -- Let me be! I must patrol the road to Ghelsba.
        ZOVRIACE_REPORT          = 7388,  -- Scout reporting! All is quiet on the roads to La Theine!
        ZOVRIACE_DIALOG          = 7390,  -- Let me be! I return to Southgate with word on La Theine.
        PICKPOCKET_PALCOMONDAU   = 7391,  -- A pickpocket? No, I haven't seen anyone matching that description. I've only seen Aaveleon, and a rather brusque woman.
        PICKPOCKET_ZOVRIACE      = 7392,  -- A pickpocket, out here? Can't say I've seen anyone like that. I'll keep my eyes peeled.
        DISMAYED_CUSTOMER        = 7416,  -- You find some worthless scraps of paper.
        CONQUEST                 = 7538,  -- You've earned conquest points!
        SOMETHING_IS_AMISS       = 7901,  -- Something is amiss.
        GARRISON_BASE            = 7931,  -- Hm? What is this? %? How do I know this is not some [San d'Orian/Bastokan/Windurstian] trick?
        PLAYER_OBTAINS_ITEM      = 8067,  -- <name> obtains <item>!
        UNABLE_TO_OBTAIN_ITEM    = 8068,  -- You were unable to obtain the item.
        PLAYER_OBTAINS_TEMP_ITEM = 8069,  -- <name> obtains the temporary item: <item>!
        ALREADY_POSSESS_TEMP     = 8070,  -- You already possess that temporary item.
        NO_COMBINATION           = 8075,  -- You were unable to enter a combination.
        REGIME_REGISTERED        = 10440, -- New training regime registered!
        COMMON_SENSE_SURVIVAL    = 12441, -- It appears that you have arrived at a new survival guide provided by the Adventurers' Mutual Aid Network. Common sense dictates that you should now be able to teleport here from similar tomes throughout the world.
    },
    mob =
    {
        FUNGUS_BEETLE_PH      =
        {
            [17187046] = 17187047, -- -133.001 -20.636 -141.110
            [17187115] = 17187047, -- -287.202 -20.826 -199.075
            [17187114] = 17187047, -- -295.626 -21.389 -192.191
        },
        JAGGEDY_EARED_JACK_PH =
        {
            [17187110] = 17187111, -- -262.780 -22.384 -253.873
            [17187109] = 17187111, -- -267.389 -21.669 -252.720
            [17187108] = 17187111, -- -273.558 -19.943 -284.081
            [17187042] = 17187111, -- -248.681 -21.336 -163.987
            [17187154] = 17187111, -- -329.892 -9.702 -313.713
            [17187152] = 17187111, -- -278.421 -11.691 -351.425
            [17187132] = 17187111, -- -204.492 -20.754 -324.770
        },
        MARAUDER_DVOGZOG      = 17187273,
    },
    npc =
    {
        CASKET_BASE     = 17187467,
        SIGNPOST_OFFSET = 17187505,
        OVERSEER_BASE   = 17187525, -- Doladepaiton_RK in npc_list
    },
}

return zones[xi.zone.WEST_RONFAURE]
