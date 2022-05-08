-----------------------------------
-- Area: Halvung
-----------------------------------
require("scripts/globals/zone")
-----------------------------------

zones = zones or {}

zones[xi.zone.HALVUNG] =
{
    text =
    {
        NOTHING_HAPPENS           = 119,  -- Nothing happens...
        ITEM_CANNOT_BE_OBTAINED   = 6384, -- You cannot obtain the <item>. Come back after sorting your inventory.
        ITEM_OBTAINED             = 6390, -- Obtained: <item>.
        GIL_OBTAINED              = 6391, -- Obtained <number> gil.
        KEYITEM_OBTAINED          = 6393, -- Obtained key item: <keyitem>.
        CARRIED_OVER_POINTS       = 7001, -- You have carried over <number> login point[/s].
        LOGIN_CAMPAIGN_UNDERWAY   = 7002, -- The [/January/February/March/April/May/June/July/August/September/October/November/December] <number> Login Campaign is currently underway!<space>
        LOGIN_NUMBER              = 7003, -- In celebration of your most recent login (login no. <number>), we have provided you with <number> points! You currently have a total of <number> points.
        KEY_BREAKS                = 7365, -- The <item> breaks!
        PARTY_MEMBERS_HAVE_FALLEN = 7785, -- All party members have fallen in battle. Now leaving the battlefield.
        THE_PARTY_WILL_BE_REMOVED = 7792, -- If all party members' HP are still zero after # minute[/s], the party will be removed from the battlefield.
        WIDE_TRENCH               = 7906, -- There is a wide trench around the gate here. There are three keyholes of differing sizes inside the trench.
        MINING_IS_POSSIBLE_HERE   = 7929, -- Mining is possible here if you have <item>.
        BLUE_FLAMES               = 7968, -- You can see blue flames flickering from a hole in the ground here...
        DULL_PIECE                = 8043, -- A dull piece of metal lies on the ground. It appears to be a bracelet of sorts, but the layers of grime covering its surface render it wholly unwearable.
        LIFT_LEVER                = 8046, -- You lift the lever with all your might!
        COMMON_SENSE_SURVIVAL     = 8107, -- It appears that you have arrived at a new survival guide provided by the Adventurers' Mutual Aid Network. Common sense dictates that you should now be able to teleport here from similar tomes throughout the world.
    },
    mob =
    {
        BIG_BOMB               = 17031401,
        GURFURLUR_THE_MENACING = 17031592,
        DEXTROSE               = 17031598,
        REACTON                = 17031599,
        ACHAMOTH               = 17031600,
    },
    npc =
    {
        LEVER_AB_DOOR          = 17031668,
        LEVER_CD_DOOR          = 17031672,
        LEVER_EF_DOOR          = 17031676,
        LEVER_GH_DOOR          = 17031680,
        LEVER_IJ_DOOR          = 17031684,
        MINING =
        {
            17031715,
            17031716,
            17031717,
            17031718,
            17031719,
            17031720,
        },
    },
}

return zones[xi.zone.HALVUNG]
