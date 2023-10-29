-----------------------------------
-- Area: Wajaom Woodlands
--  Mob: Dark Rider
-----------------------------------
local entity = {}

local pathNodes =
{
    [1] =
    {
        { x = -424.9057, y = -26,      z = 402.1342,  },
        { x = -403.6593, y = -26.675,  z = 420.17,    },
        { x = -340.7972, y = -25.3687, z = 418.9442,  },
        { x = -337.9268, y = -25.2,    z = 379.6009,  },
        { x = -100.5313, y = -25.2905, z = 380.6889,  },
        { x = -97.6254,  y = -25.5081, z = 422.2883,  },
        { x = -21.3175,  y = -25.5201, z = 417.9361,  },
        { x = -18.597,   y = -25.2,    z = 379.9245,  },
        { x = 18.9188,   y = -25.4514, z = 378.3926,  },
        { x = 22.1008,   y = -25.3901, z = 341.1984,  wait = 5000 },
        { x = 260.4213,  y = -25.5059, z = 298.3005,  },
        { x = 262.7604,  y = -25.2499, z = 260.2626,  },
        { x = 381.8934,  y = -26,      z = 258.186 ,  },
        { x = 377.5822,  y = -17.5058, z = 138.0416,  },
        { x = 284.5385,  y = -27.8213, z = 141.7974,  },
        { x = 240.66,    y = -16.9543, z = 89.0583,   },
        { x = 268.8228,  y = -18.6956, z = 61.6146,   },
        { x = 340.4471,  y = -17.5018, z = 57.9434,   },
        { x = 337.5026,  y = -19.4785, z = -48.4496,  },
        { x = 225.1382,  y = -18.1488, z = -63.1682,  },
        { x = 217.6892,  y = -17.5,    z = -139.123,  wait = 5000 },
        { x = 182.6348,  y = -17.5,    z = -140.1927, },
        { x = 183.0573,  y = -19.5,    z = -211.8792, },
        { x = 81.7582,   y = -18.675,  z = -258.8897, },
        { x = -4.2727,   y = -17.8746, z = -268.6297, },
        { x = -40.4687,  y = -16,      z = -323.4648, },
        { x = -61.3844,  y = -17.4203, z = -459.9857, },
        { x = -98.5469,  y = -17.4289, z = -461.1623, },
        { x = -95.5659,  y = -17.7655, z = -567.7824, },
        { x = -111.7744, y = -20.2552, z = -570.4197, },
        { x = -172.151,  y = -19.6609, z = -569.4544, },
        { x = -183.2211, y = -18,      z = -420.4932, },
        { x = -260.5822, y = -18.8131, z = -375.9417, wait = 20000 },
    },

    [2] =
    {
        { x = -744.3884, y = -11.4365, z = -527.5918, },
        { x = -739.9831, y = -11.5,    z = -508.038,  },
        { x = -723.7503, y = -12.25,   z = -495.4689, },
        { x = -687.808,  y = -12.4391, z = -492.8429, },
        { x = -647.959,  y = -8.5,     z = -494.4416, },
        { x = -637.7108, y = -16,      z = -440.58,   },
        { x = -620.9186, y = -18.675,  z = -403.8581, },
        { x = -620.9659, y = -19.6972, z = -356.9137, },
        { x = -655.5972, y = -17.9568, z = -310.5985, },
        { x = -657.6497, y = -19.2381, z = -287.2701, },
        { x = -658.6052, y = -17.5197, z = -257.676,  },
        { x = -621.2643, y = -17.4003, z = -259.9261, wait = 5000 },
        { x = -617.1229, y = -18.4864, z = -197.9892, },
        { x = -599.0749, y = -15.75,   z = -189.3291, },
        { x = -606.8202, y = -15.8121, z = -155.7524, },
        { x = -641.472,  y = -15.8392, z = -154.6552, },
        { x = -651.7667, y = -7.75,    z = -118.2649, },
        { x = -621.8384, y = -11.143,  z = -89.0718,  },
        { x = -617.2838, y = -9.5,     z = -58.643,   },
        { x = -558.2634, y = -11.8903, z = -61.9952,  },
        { x = -526.584,  y = -8.2499,  z = -70.2315,  },
        { x = -517.7485, y = -8,       z = -1.039,    },
        { x = -511.7733, y = -9.4478,  z = 51.3068,   },
        { x = -489.4786, y = -11.0566, z = 59.7418,   },
        { x = -423.3596, y = -9.5,     z = 59.5535,   },
        { x = -419.4212, y = -10.1191, z = 69.8776,   },
        { x = -418.3215, y = -9.4621,  z = 99.4387,   },
        { x = -328.2811, y = -18.4056, z = 99.52,     },
        { x = -284.8363, y = -15.9495, z = 79.5762,   wait = 5000 },
        { x = -239.4802, y = -16,      z = 76.8363,   },
        { x = -239.6331, y = -18.2083, z = 63.6166,   },
        { x = -224.8086, y = -20.25,   z = 42.3242,   },
        { x = -205.2289, y = -20.1027, z = 15.7289,   },
        { x = -142.6894, y = -18.7079, z = 15.6852,   },
        { x = -103.4942, y = -17.5,    z = 20.2536,   },
        { x = -98.578,   y = -17.77,   z = 54.3301,   },
        { x = -93.414,   y = -17.6634, z = 61.423,    },
        { x = 0.4982,    y = -15.8658, z = 46.176,    },
        { x = 6.6824,    y = -16.3038, z = 16.1089,   },
        { x = -2.8927,   y = -16,      z = -76.4888,  },
        { x = -36.5045,  y = -15.9558, z = -84.7354,  },
        { x = -47.5825,  y = -17.3861, z = -130.8843, },
        { x = -60.1935,  y = -18.675,  z = -161.1739, },
        { x = -59.9366,  y = -17.4183, z = -218.6161, },
        { x = -19.5094,  y = -17.3878, z = -220.8696, },
        { x = -23.6223,  y = -20.1953, z = -280.7656, },
        { x = -39.7989,  y = -18.0565, z = -307.9988, },
        { x = -48.0966,  y = -19.7458, z = -295.0767, },
        { x = -69.8018,  y = -19.5,    z = -256.3174, },
        { x = -110.5886, y = -19.9136, z = -254.2155, wait = 20000 },
    },

    [3] =
    {
        { x = 381.1424,  y = -13.3205, z = 427.8815, },
        { x = 382.8042,  y = -18.4857, z = 382.0339, },
        { x = 381.4709,  y = -25.9088, z = 302.6929, },
        { x = 372.0543,  y = -25.4908, z = 290.1633, },
        { x = 335.722,   y = -28.25,   z = 280.7716, },
        { x = 332.3183,  y = -26.7034, z = 259.0405, },
        { x = 261.2462,  y = -25.3062, z = 260.639,  },
        { x = 258.7083,  y = -25.2,    z = 301.178,  },
        { x = 178.1959,  y = -26,      z = 302.388,  },
        { x = 99.7607,   y = -26.8976, z = 327.9893, },
        { x = 46.3478,   y = -27.0835, z = 339.7426, },
        { x = 18.6251,   y = -25.455,  z = 340.7955, wait = 5000 },
        { x = 20.6863,   y = -25.432,  z = 378.9573, },
        { x = -19.9903,  y = -25.3661, z = 381.0204, },
        { x = -21.4398,  y = -25.2,    z = 420.463,  },
        { x = -99.4802,  y = -25.2887, z = 419.6399, },
        { x = -100.0742, y = -25.2215, z = 380.6426, },
        { x = -183.6933, y = -26.3874, z = 377.6209, },
        { x = -233.9264, y = -24.1547, z = 370.6852, },
        { x = -231.2102, y = -23.75,   z = 393.502,  },
        { x = -269.0372, y = -27.8614, z = 431.0944, wait = 5000 },
        { x = -259.2646, y = -26.4437, z = 467.4921, },
        { x = -262.8134, y = -25.312,  z = 499.3251, },
        { x = -300.4436, y = -25.3763, z = 500.8204, },
        { x = -303.0864, y = -26,      z = 585.9163, },
        { x = -320.9581, y = -30.9039, z = 630.4209, },
        { x = -319.8508, y = -32,      z = 679.7796, },
        { x = -362.1032, y = -34,      z = 692.2147, },
        { x = -367.1851, y = -32.3898, z = 647.605,  },
        { x = -374,      y = -34,      z = 628,      wait = 20000 },
    },
}

entity.onMobInitialize = function(mob)
    xi.dark_rider.onRiderInitialize(mob)
end

entity.onMobSpawn = function(mob)
    xi.dark_rider.onRiderSpawn(mob, pathNodes)
end

entity.onMobRoam = function(mob)
    xi.dark_rider.onRiderRoam(mob, pathNodes)
end

entity.onMobEngaged = function(mob, target)
    xi.dark_rider.onMobEngaged(mob, target)
end

entity.onMobDisengage = function(mob)
    xi.dark_rider.onRiderDisengage(mob, pathNodes)
end

entity.onMobDespawn = function(mob)
    xi.dark_rider.onRiderDespawn(mob, pathNodes)
end

return entity
