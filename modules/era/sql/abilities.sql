-- --------------------------------------------------------
-- AirSkyBoat Database Conversion File
-- --------------------------------------------------------
-- Table Structure Definition
--
-- abilityId        :   Unique ID for each ability (Should match base SQL)
-- name             :   Name for each ability.  Used to find the associated lua file
-- job              :   Job ID that can use ability
-- level            :   Level at which ability granted
-- validTarget      :
-- recastTime       :   Time in milliseconds before able to reuse ability
-- recastId         :
-- message1         :   Message ID
-- message2         :   Message ID
-- animation        :   ID for animation to be used
-- animationTime    :   Time in milliseconds to sustain animation
-- castTime         :   Time in milliseconds to finish cast
-- actionType       :   <found in src/map/packets/action.h>
                        --  0   = NONE
                        --  1   = ATTACK
                        --  2   = RANGED_FINISH
                        --  3   = WEAPONSKILL_FINISH
                        --  4   = MAGIC_FINISH
                        --  5   = ITEM_FINISH
                        --  6   = JOBABILITY_FINISH
                        --  7   = WEAPONSKILL_START
                        --  8   = MAGIC_START
                        --  9   = ITEM_START
                        --  10  = JOBABILITY_START
                        --  11  = MOBABILITY_FINISH
                        --  12  = RANGED_START
                        --  13  = PET_MOBABILITY_FINISH
                        --  14  = DANCE
                        --  15  = RUN_WARD_EFFUSION
                        --  16  = QUARRY
                        --  17  = SPRINT
-- range            :   Range of effect in yalms
-- isAOE            :   0 = single target, 1 = AOE
-- CE               :   Amount of Cumulative Enmity (CE) generated (Diminishes as a player takes damage or is the target of certain offensive actions)
-- VE               :   Amount of Volatile Enmity (VE) generated (Diminishes as time passes)
-- meritModID       :   meritid in table `merits` that relates to this ability
-- addType          :   
-- contentTag       :   Expansion source for ability
-- ----------------------------------------------------------

REPLACE INTO `abilities` (`abilityId`, `name`, `job`, `level`, `validTarget`, `recastTime`, `recastId`, `message1`, `message2`, `animation`, `animationTime`, `castTime`, `actionType`, `range`, `isAOE`, `CE`, `VE`, `meritModID`, `addType`, `content_tag`) VALUES
    (16, 'mighty_strikes', 1, 0, 1, 7200, 0, 0, 0, 33, 2000, 0, 6, 20.0, 0, 1, 300, 0, 0, NULL),
    (17, 'hundred_fists', 2, 0, 1, 7200, 0, 0, 0, 34, 2000, 0, 6, 20.0, 0, 1, 300, 0, 0, NULL),
    (18, 'benediction', 3, 0, 1, 7200, 0, 102, 0, 35, 2000, 0, 6, 20.0, 1, 0, 0, 0, 0, NULL),
    (19, 'manafont', 4, 0, 1, 7200, 0, 0, 0, 36, 2000, 0, 6, 20.0, 0, 1, 0, 0, 0, NULL),
    (20, 'chainspell', 5, 0, 1, 7200, 0, 0, 0, 37, 2000, 0, 6, 20.0, 0, 1, 0, 0, 0, NULL),
    (21, 'perfect_dodge', 6, 0, 1, 7200, 0, 0, 0, 38, 2000, 0, 6, 20.0, 0, 1, 0, 0, 0, NULL),
    (22, 'invincible', 7, 0, 1, 7200, 0, 0, 0, 18, 2000, 0, 6, 20.0, 0, 1, 7200, 0, 0, NULL),
    (23, 'blood_weapon', 8, 0, 1, 7200, 0, 0, 0, 19, 2000, 0, 6, 20.0, 0, 1, 80, 0, 0, NULL),
    (24, 'familiar', 9, 0, 1, 7200, 0, 0, 0, 39, 2000, 0, 6, 20.0, 0, 0, 0, 0, 0, NULL),
    (25, 'soul_voice', 10, 0, 1, 7200, 0, 0, 0, 40, 2000, 0, 6, 20.0, 0, 1, 0, 0, 0, NULL),
    (26, 'eagle_eye_shot', 11, 0, 4, 7200, 0, 110, 0, 186, 2000, 0, 3, 20.0, 0, 0, 0, 0, 0, NULL),
    (27, 'meikyo_shisui', 12, 0, 1, 7200, 0, 0, 0, 96, 2000, 0, 6, 20.0, 0, 1, 300, 0, 0, NULL),
    (28, 'mijin_gakure', 13, 0, 4, 7200, 0, 110, 0, 93, 2000, 0, 6, 20.0, 0, 0, 0, 0, 0, NULL),
    (29, 'spirit_surge', 14, 0, 1, 7200, 0, 0, 0, 97, 2000, 0, 6, 20.0, 0, 0, 0, 0, 0, 'COP'),
    (30, 'astral_flow', 15, 0, 1, 7200, 0, 0, 0, 95, 2000, 0, 6, 20.0, 0, 0, 0, 0, 0, NULL),
    (32, 'warcry', 1, 35, 1, 300, 2, 116, 0, 28, 2000, 0, 6, 20.0, 1, 1, 300, 388, 0, NULL),
    (45, 'mug', 6, 35, 4, 900, 65, 129, 0, 183, 2000, 0, 3, 4.4, 0, 1, 300, 0, 0, NULL),
    (46, 'shield_bash', 7, 15, 4, 300, 73, 0, 0, 185, 2000, 0, 3, 4.4, 0, 1, 900, 768, 0, NULL),
    (47, 'holy_circle', 7, 5, 1, 600, 74, 131, 0, 29, 2000, 0, 6, 20.0, 1, 1, 20, 770, 0, NULL),
    (48, 'sentinel', 7, 30, 1, 300, 75, 0, 0, 11, 2000, 0, 6, 20.0, 0, 1, 1800, 772, 0, NULL),
    (50, 'arcane_circle', 8, 5, 1, 600, 86, 134, 0, 30, 2000, 0, 6, 20.0, 1, 1, 20, 834, 0, NULL),
    (55, 'pet_commands', 9, 1, 1, 0, 0, 0, 0, 0, 2000, 0, 6, 18.0, 0, 0, 0, 0, 0, NULL),
    (56, 'scavenge', 11, 10, 1, 300, 121, 0, 0, 21, 2000, 0, 6, 20.0, 0, 1, 80, 1024, 0, NULL),
    (64, 'warding_circle', 12, 5, 1, 600, 135, 148, 0, 31, 2000, 0, 6, 20.0, 1, 1, 20, 1090, 0, NULL),
    (65, 'ancient_circle', 14, 5, 1, 600, 157, 150, 0, 32, 2000, 0, 6, 20.0, 1, 1, 20, 1216, 0, NULL),
    (66, 'jump', 14, 10, 4, 90, 158, 110, 0, 204, 2000, 0, 3, 9.5, 0, 0, 0, 1218, 0, NULL),
    (67, 'high_jump', 14, 35, 4, 180, 159, 110, 0, 209, 2000, 0, 3, 11.5, 0, 0, 0, 1220, 0, NULL),
    (74, 'divine_seal', 3, 15, 1, 600, 26, 0, 0, 81, 2000, 0, 6, 20.0, 0, 1, 80, 512, 0, NULL),
    (75, 'elemental_seal', 4, 15, 1, 600, 38, 0, 0, 80, 2000, 0, 6, 20.0, 0, 1, 80, 576, 0, NULL),
    (77, 'weapon_bash', 8, 20, 4, 300, 88, 110, 0, 201, 2000, 0, 3, 4.4, 0, 1, 900, 840, 0, NULL),
    (79, 'cover', 7, 35, 2, 180, 76, 0, 0, 86, 2000, 0, 6, 20.0, 0, 1, 0, 0, 0, NULL),
    (80, 'spirit_link', 14, 25, 1, 180, 162, 0, 0, 94, 2000, 0, 6, 20.0, 0, 0, 0, 1224, 4, NULL),
    (84, 'accomplice', 6, 65, 2, 300, 69, 526, 0, 185, 2000, 0, 6, 12.8, 0, 0, 0, 0, 0, 'WOTG'),
    (92, 'rampart', 7, 62, 1, 300, 77, 319, 0, 91, 2000, 0, 6, 20.0, 1, 1, 300, 776, 0, NULL),
    (93, 'azure_lore', 16, 0, 1, 7200, 0, 0, 0, 142, 2000, 0, 6, 20.0, 0, 1, 300, 0, 0, 'TOAU'),
    (96, 'wild_card', 17, 0, 1, 7200, 0, 0, 0, 132, 2000, 0, 6, 20.0, 1, 1, 300, 0, 0, 'TOAU'),
    (98, 'fighters_roll', 17, 49, 1, 60, 193, 420, 0, 98, 2000, 0, 6, 8.0, 1, 1, 80, 1408, 8, 'TOAU'),
    (99, 'monks_roll', 17, 31, 1, 60, 193, 420, 0, 99, 2000, 0, 6, 8.0, 1, 1, 80, 1408, 8, 'TOAU'),
    (100, 'healers_roll', 17, 20, 1, 60, 193, 420, 0, 100, 2000, 0, 6, 8.0, 1, 1, 80, 1408, 8, 'TOAU'),
    (101, 'wizards_roll', 17, 58, 1, 60, 193, 420, 0, 101, 2000, 0, 6, 8.0, 1, 1, 80, 1408, 8, 'TOAU'),
    (102, 'warlocks_roll', 17, 46, 1, 60, 193, 420, 0, 102, 2000, 0, 6, 8.0, 1, 1, 80, 1408, 8, 'TOAU'),
    (103, 'rogues_roll', 17, 43, 1, 60, 193, 420, 0, 103, 2000, 0, 6, 8.0, 1, 1, 80, 1408, 8, 'TOAU'),
    (104, 'gallants_roll', 17, 55, 1, 60, 193, 420, 0, 104, 2000, 0, 6, 8.0, 1, 1, 80, 1408, 8, 'TOAU'),
    (105, 'chaos_roll', 17, 14, 1, 60, 193, 420, 0, 105, 2000, 0, 6, 8.0, 1, 1, 80, 1408, 8, 'TOAU'),
    (106, 'beast_roll', 17, 34, 1, 60, 193, 420, 0, 106, 2000, 0, 6, 8.0, 1, 1, 80, 1408, 8, 'TOAU'),
    (107, 'choral_roll', 17, 26, 1, 60, 193, 420, 0, 107, 2000, 0, 6, 8.0, 1, 1, 80, 1408, 8, 'TOAU'),
    (108, 'hunters_roll', 17, 11, 1, 60, 193, 420, 0, 108, 2000, 0, 6, 8.0, 1, 1, 80, 1408, 8, 'TOAU'),
    (109, 'samurai_roll', 17, 34, 1, 60, 193, 420, 0, 109, 2000, 0, 6, 8.0, 1, 1, 80, 1408, 8, 'TOAU'),
    (110, 'ninja_roll', 17, 8, 1, 60, 193, 420, 0, 110, 2000, 0, 6, 8.0, 1, 1, 80, 1408, 8, 'TOAU'),
    (111, 'drachen_roll', 17, 52, 1, 60, 193, 420, 0, 111, 2000, 0, 6, 8.0, 1, 1, 80, 1408, 8, 'TOAU'),
    (112, 'evokers_roll', 17, 40, 1, 60, 193, 420, 0, 112, 2000, 0, 6, 8.0, 1, 1, 80, 1408, 8, 'TOAU'),
    (113, 'maguss_roll', 17, 17, 1, 60, 193, 420, 0, 113, 2000, 0, 6, 8.0, 1, 1, 80, 1408, 8, 'TOAU'),
    (114, 'corsairs_roll', 17, 5, 1, 60, 193, 420, 0, 114, 2000, 0, 6, 8.0, 1, 1, 80, 1408, 8, 'TOAU'),
    (115, 'puppet_roll', 17, 23, 1, 60, 193, 420, 0, 115, 2000, 0, 6, 8.0, 1, 1, 80, 1408, 8, 'TOAU'),
    (116, 'dancers_roll', 17, 61, 1, 60, 193, 420, 0, 116, 2000, 0, 6, 8.0, 1, 1, 80, 1408, 8, 'WOTG'),
    (117, 'scholars_roll', 17, 64, 1, 60, 193, 420, 0, 117, 2000, 0, 6, 8.0, 1, 1, 80, 1408, 8, 'WOTG'),
    (118, 'bolters_roll', 17, 76, 1, 60, 193, 420, 0, 118, 2000, 0, 6, 8.0, 1, 1, 80, 1408, 8, 'ABYSSEA'),
    (119, 'casters_roll', 17, 79, 1, 60, 193, 420, 0, 119, 2000, 0, 6, 8.0, 1, 1, 80, 1408, 8, 'ABYSSEA'),
    (120, 'coursers_roll', 17, 81, 1, 60, 193, 420, 0, 120, 2000, 0, 6, 8.0, 1, 1, 80, 1408, 8, 'ABYSSEA'),
    (121, 'blitzers_roll', 17, 83, 1, 60, 193, 420, 0, 121, 2000, 0, 6, 8.0, 1, 1, 80, 1408, 8, 'ABYSSEA'),
    (122, 'tacticians_roll', 17, 86, 1, 60, 193, 420, 0, 122, 2000, 0, 6, 8.0, 1, 1, 80, 1408, 8, 'ABYSSEA'),
    (123, 'double-up', 17, 5, 1, 8, 194, 424, 0, 116, 2000, 0, 6, 8.0, 1, 1, 80, 0, 0, 'TOAU'),
    (124, 'quick_draw', 17, 40, 1, 1, 0, 0, 0, 0, 2000, 0, 6, 18.0, 0, 0, 0, 1410, 0, 'TOAU'),
    (131, 'light_shot', 17, 40, 4, 1, 195, 0, 0, 123, 2000, 0, 6, 18.0, 0, 1, 0, 1410, 0, 'TOAU'),
    (132, 'dark_shot', 17, 40, 4, 1, 195, 0, 0, 124, 2000, 0, 6, 18.0, 0, 1, 0, 1410, 0, 'TOAU'),
    (135, 'overdrive', 18, 0, 1, 7200, 0, 0, 0, 143, 2000, 0, 6, 20.0, 0, 0, 0, 0, 0, 'TOAU'),
    (141, 'fire_maneuver', 18, 1, 1, 10, 210, 0, 0, 83, 2000, 0, 6, 18.0, 0, 1, 0, 0, 512, 'TOAU'),
    (142, 'ice_maneuver', 18, 1, 1, 10, 210, 0, 0, 83, 2000, 0, 6, 18.0, 0, 1, 0, 0, 512, 'TOAU'),
    (143, 'wind_maneuver', 18, 1, 1, 10, 210, 0, 0, 83, 2000, 0, 6, 18.0, 0, 1, 0, 0, 512, 'TOAU'),
    (144, 'earth_maneuver', 18, 1, 1, 10, 210, 0, 0, 83, 2000, 0, 6, 18.0, 0, 1, 0, 0, 512, 'TOAU'),
    (145, 'thunder_maneuver', 18, 1, 1, 10, 210, 0, 0, 83, 2000, 0, 6, 18.0, 0, 1, 0, 0, 512, 'TOAU'),
    (146, 'water_maneuver', 18, 1, 1, 10, 210, 0, 0, 83, 2000, 0, 6, 18.0, 0, 1, 0, 0, 512, 'TOAU'),
    (147, 'light_maneuver', 18, 1, 1, 10, 210, 0, 0, 83, 2000, 0, 6, 18.0, 0, 1, 0, 0, 512, 'TOAU'),
    (148, 'dark_maneuver', 18, 1, 1, 10, 210, 0, 0, 83, 2000, 0, 6, 18.0, 0, 1, 0, 0, 512, 'TOAU'),
    (149, 'warriors_charge', 1, 75, 1, 1050, 6, 0, 0, 154, 2000, 0, 6, 20.0, 0, 1, 300, 2048, 1, 'TOAU'),
    (153, 'martyr', 3, 75, 2, 1350, 27, 102, 0, 157, 2000, 0, 6, 20.0, 0, 1, 300, 2176, 1, 'TOAU'),
    (154, 'devotion', 3, 75, 2, 1350, 28, 451, 0, 158, 2000, 0, 6, 10.0, 0, 1, 300, 2178, 1, 'TOAU'),
    (155, 'assassins_charge', 6, 75, 1, 1050, 67, 0, 0, 160, 2000, 0, 6, 20.0, 0, 1, 300, 2368, 1, 'TOAU'),
    (156, 'feint', 6, 75, 1, 720, 68, 0, 0, 159, 2000, 0, 6, 20.0, 0, 1, 300, 2370, 1, 'TOAU'),
    (157, 'fealty', 7, 75, 1, 1350, 78, 0, 0, 148, 2000, 0, 6, 20.0, 0, 1, 300, 2432, 1, 'TOAU'),
    (158, 'chivalry', 7, 75, 1, 1350, 79, 451, 0, 149, 2000, 0, 6, 20.0, 0, 1, 300, 2434, 1, 'TOAU'),
    (159, 'dark_seal', 8, 75, 1, 1050, 89, 0, 0, 144, 2000, 0, 6, 20.0, 0, 1, 300, 2496, 1, 'TOAU'),
    (160, 'diabolic_eye', 8, 75, 1, 1050, 90, 0, 0, 145, 2000, 0, 6, 20.0, 0, 1, 300, 2498, 1, 'TOAU'),
    (161, 'feral_howl', 9, 75, 4, 1050, 105, 0, 0, 146, 2000, 0, 6, 20.0, 0, 1, 600, 2560, 1, 'TOAU'),
    (162, 'killer_instinct', 9, 75, 1, 1050, 106, 441, 0, 147, 2000, 0, 6, 20.0, 1, 1, 80, 2562, 1, 'TOAU'),
    (163, 'nightingale', 10, 75, 1, 1350, 109, 0, 0, 161, 2000, 0, 6, 20.0, 0, 1, 300, 2624, 1, 'TOAU'),
    (164, 'troubadour', 10, 75, 1, 1350, 110, 0, 0, 162, 2000, 0, 6, 20.0, 0, 1, 300, 2626, 1, 'TOAU'),
    (165, 'stealth_shot', 11, 75, 1, 310, 127, 0, 0, 150, 2000, 0, 6, 20.0, 0, 1, 300, 2688, 1, 'TOAU'),
    (166, 'flashy_shot', 11, 75, 1, 1350, 128, 0, 0, 151, 2000, 0, 6, 20.0, 0, 1, 300, 2690, 1, 'TOAU'),
    (167, 'shikikoyo', 12, 75, 2, 1050, 136, 452, 0, 152, 2000, 0, 6, 20.0, 0, 1, 300, 2752, 1, 'TOAU'),
    (168, 'blade_bash', 12, 75, 4, 1050, 137, 110, 0, 202, 2000, 0, 3, 4.4, 0, 1, 900, 2754, 1, 'TOAU'),
    (169, 'deep_breathing', 14, 75, 1, 1050, 164, 0, 0, 153, 2000, 0, 6, 20.0, 0, 0, 0, 2880, 1, 'TOAU'),
    (170, 'angon', 14, 75, 4, 195, 165, 127, 0, 245, 2000, 0, 3, 20.0, 0, 1, 600, 2882, 1, 'TOAU'),
    (171, 'sange', 13, 75, 1, 1050, 145, 0, 0, 200, 2000, 0, 6, 20.0, 0, 1, 0, 2816, 1, 'TOAU'),
    (176, 'diffusion', 16, 75, 1, 1350, 184, 0, 0, 166, 2000, 0, 6, 20.0, 1, 1, 300, 3010, 1, 'TOAU'),
    (177, 'snake_eye', 17, 75, 1, 1050, 197, 0, 0, 167, 2000, 0, 6, 20.0, 0, 1, 300, 3072, 1, 'TOAU'),
    (178, 'fold', 17, 75, 1, 1050, 198, 0, 0, 220, 2000, 0, 6, 20.0, 0, 1, 300, 3074, 1, 'TOAU'),
    (179, 'role_reversal', 18, 75, 1, 270, 211, 0, 0, 169, 2000, 0, 6, 20.0, 0, 0, 0, 3136, 1, 'TOAU'),
    (180, 'ventriloquy', 18, 75, 4, 135, 212, 0, 0, 170, 2000, 0, 6, 20.0, 0, 0, 0, 3138, 1, 'TOAU'),
    (181, 'trance', 19, 0, 1, 7200, 0, 0, 0, 184, 4000, 0, 6, 20.0, 0, 1, 300, 0, 0, 'WOTG'),
    (182, 'sambas', 19, 5, 1, 0, 216, 0, 0, 0, 4000, 0, 14, 20.0, 0, 0, 0, 0, 0, 'WOTG'),
    (183, 'waltzes', 19, 15, 1, 0, 217, 0, 0, 0, 4000, 0, 14, 20.0, 0, 0, 0, 0, 0, 'WOTG'),
    (184, 'drain_samba', 19, 5, 1, 60, 216, 0, 0, 0, 4000, 0, 14, 20.0, 0, 1, 300, 0, 0, 'WOTG'),
    (185, 'drain_samba_ii', 19, 35, 1, 60, 216, 0, 0, 1, 4000, 0, 14, 20.0, 0, 1, 300, 0, 0, 'WOTG'),
    (186, 'drain_samba_iii', 19, 65, 1, 60, 216, 0, 0, 2, 4000, 0, 14, 20.0, 0, 1, 300, 0, 0, 'WOTG'),
    (187, 'aspir_samba', 19, 25, 1, 60, 216, 0, 0, 3, 4000, 0, 14, 20.0, 0, 1, 300, 0, 0, 'WOTG'),
    (188, 'aspir_samba_ii', 19, 60, 1, 60, 216, 0, 0, 4, 4000, 0, 14, 20.0, 0, 1, 300, 0, 0, 'WOTG'),
    (189, 'haste_samba', 19, 45, 1, 60, 216, 0, 0, 5, 4000, 0, 14, 20.0, 0, 1, 300, 0, 0, 'WOTG'),
    (190, 'curing_waltz', 19, 15, 27, 6, 217, 306, 0, 6, 4000, 0, 14, 20.0, 0, 0, 0, 0, 0, 'WOTG'),
    (191, 'curing_waltz_ii', 19, 30, 27, 8, 217, 306, 0, 7, 4000, 0, 14, 20.0, 0, 0, 0, 0, 0, 'WOTG'),
    (192, 'curing_waltz_iii', 19, 50, 27, 10, 217, 306, 0, 8, 4000, 0, 14, 20.0, 0, 0, 0, 0, 0, 'WOTG'),
    (193, 'curing_waltz_iv', 19, 70, 27, 17, 217, 306, 0, 9, 4000, 0, 14, 20.0, 0, 0, 0, 0, 0, 'WOTG'),
    (194, 'healing_waltz', 19, 35, 27, 15, 215, 0, 0, 10, 4000, 0, 14, 20.0, 0, 1, 300, 0, 0, 'WOTG'),
    (195, 'divine_waltz', 19, 25, 27, 13, 225, 306, 0, 11, 4000, 0, 14, 20.0, 1, 0, 0, 0, 0, 'WOTG'),
    (196, 'spectral_jig', 19, 25, 1, 30, 218, 0, 0, 12, 4000, 0, 14, 20.0, 0, 1, 300, 0, 0, 'WOTG'),
    (197, 'chocobo_jig', 19, 55, 1, 60, 218, 126, 0, 13, 4000, 0, 14, 20.0, 0, 1, 300, 0, 0, 'WOTG'),
    (198, 'jigs', 19, 25, 1, 0, 0, 0, 0, 0, 4000, 0, 14, 20.0, 0, 0, 0, 0, 0, 'WOTG'),
    (199, 'steps', 19, 20, 1, 0, 0, 0, 0, 0, 2000, 0, 14, 20.0, 0, 0, 0, 0, 0, 'WOTG'),
    (200, 'flourishes_i', 19, 20, 1, 0, 0, 0, 0, 0, 2000, 0, 14, 20.0, 0, 0, 0, 0, 0, 'WOTG'),
    (201, 'quickstep', 19, 20, 4, 15, 220, 519, 0, 14, 2000, 0, 14, 4.5, 0, 1, 0, 0, 0, 'WOTG'),
    (202, 'box_step', 19, 30, 4, 15, 220, 520, 0, 14, 2000, 0, 14, 4.5, 0, 1, 0, 0, 0, 'WOTG'),
    (203, 'stutter_step', 19, 40, 4, 15, 220, 521, 0, 14, 2000, 0, 14, 4.5, 0, 1, 0, 0, 0, 'WOTG'),
    (205, 'desperate_flourish', 19, 30, 4, 20, 221, 127, 0, 24, 2000, 0, 14, 4.4, 0, 1, 0, 0, 0, 'WOTG'),
    (207, 'violent_flourish', 19, 45, 4, 20, 221, 522, 0, 24, 2000, 0, 14, 4.4, 0, 1, 0, 0, 0, 'WOTG'),
    (209, 'wild_flourish', 19, 60, 4, 30, 222, 529, 0, 24, 2000, 0, 14, 4.4, 0, 1, 0, 0, 0, 'WOTG'),
    (210, 'tabula_rasa', 20, 0, 1, 7200, 0, 0, 0, 190, 2000, 0, 6, 20.0, 0, 1, 300, 0, 0, 'WOTG'),
    (213, 'flourishes_ii', 19, 40, 1, 0, 0, 0, 0, 0, 2000, 0, 6, 20.0, 0, 0, 0, 0, 0, 'WOTG'),
    (214, 'modus_veritas', 20, 65, 4, 600, 230, 0, 0, 188, 2000, 0, 6, 20.0, 0, 1, 300, 0, 0, 'WOTG'),
    (224, 'velocity_shot', 11, 45, 1, 300, 129, 0, 0, 186, 2000, 0, 6, 20.0, 0, 1, 300, 0, 0, 'WOTG'),
    (229, 'pianissimo', 10, 45, 1, 15, 112, 0, 0, 194, 2000, 0, 6, 20.0, 0, 1, 80, 0, 0, 'WOTG'),
    (230, 'sekkanoki', 12, 60, 1, 300, 140, 0, 0, 199, 2000, 0, 6, 20.0, 0, 1, 80, 0, 0, 'WOTG'),
    (237, 'saber_dance', 19, 75, 1, 330, 219, 0, 0, 207, 2000, 0, 6, 20.0, 0, 1, 80, 3200, 1, 'WOTG'),
    (238, 'fan_dance', 19, 75, 1, 330, 224, 0, 0, 208, 2000, 0, 6, 20.0, 0, 1, 80, 3202, 1, 'WOTG'),
    (244, 'enlightenment', 20, 75, 1, 675, 235, 0, 0, 214, 2000, 0, 6, 20.0, 0, 1, 80, 3272, 1, 'WOTG'),
    (248, 'yonin', 13, 40, 1, 300, 146, 0, 0, 218, 2000, 0, 6, 20.0, 0, 1, 600, 0, 4, 'WOTG'),
    (249, 'innin', 13, 40, 1, 300, 147, 0, 0, 219, 2000, 0, 6, 20.0, 0, 1, 60, 0, 4, 'WOTG'),
    (250, 'avatars_favor', 15, 55, 1, 300, 176, 100, 0, 94, 2000, 0, 6, 10.0, 0, 1, 80, 0, 0, NULL),
    (302, 'allies_roll', 17, 89, 1, 60, 193, 420, 0, 138, 2000, 0, 6, 8.0, 1, 1, 80, 1408, 8, 'ABYSSEA'),
    (303, 'misers_roll', 17, 92, 1, 60, 193, 420, 0, 139, 2000, 0, 6, 8.0, 1, 1, 80, 1408, 8, 'ABYSSEA'),
    (304, 'companions_roll', 17, 95, 1, 60, 193, 420, 0, 265, 2000, 0, 6, 8.0, 1, 1, 80, 1408, 8, 'ABYSSEA'),
    (305, 'avengers_roll', 17, 97, 1, 60, 193, 420, 0, 266, 2000, 0, 6, 8.0, 1, 1, 80, 1408, 8, 'ABYSSEA'),
    (320, 'konzen-ittai', 12, 65, 4, 180, 132, 529, 0, 36, 2000, 0, 14, 4.4, 0, 1, 300, 0, 0, 'ABYSSEA'),
    (321, 'bully', 6, 93, 4, 180, 240, 127, 0, 248, 2000, 0, 6, 12.0, 0, 1, 300, 0, 4, 'ABYSSEA'),
    (322, 'maintenance', 18, 30, 257, 90, 214, 0, 0, 83, 2000, 0, 6, 18.0, 0, 0, 0, 1474, 0, 'ABYSSEA'),
    (327, 'stymie', 5, 96, 1, 7200, 254, 0, 0, 275, 2000, 0, 6, 20.0, 0, 1, 80, 0, 0, 'SOA'),
    (335, 'mikage', 13, 96, 1, 7200, 254, 0, 0, 283, 2000, 0, 6, 20.0, 0, 1, 80, 0, 0, 'SOA'),
    (343, 'bolster', 21, 0, 1, 7200, 0, 0, 0, 33, 2000, 0, 6, 20.0, 0, 1, 300, 0, 0, NULL),
    (356, 'elemental_sforzo', 22, 0, 1, 7200, 0, 0, 0, 302, 2000, 0, 6, 20.0, 0, 1800, 7200, 0, 0, 'SOA'),
    (357, 'Rune_enchantment', 22, 5, 1, 0, 92, 0, 0, 0, 2000, 0, 6, 20.0, 0, 0, 0, 0, 0, 'SOA'),
    (358, 'Ignis', 22, 5, 1, 5, 10, 0, 0, 291, 2000, 0, 6, 20.0, 0, 80, 320, 0, 0, 'SOA'),
    (359, 'Gelus', 22, 5, 1, 5, 10, 0, 0, 292, 2000, 0, 6, 20.0, 0, 80, 320, 0, 0, 'SOA'),
    (360, 'Flabra', 22, 5, 1, 5, 10, 0, 0, 293, 2000, 0, 6, 20.0, 0, 80, 320, 0, 0, 'SOA'),
    (361, 'Tellus', 22, 5, 1, 5, 10, 0, 0, 294, 2000, 0, 6, 20.0, 0, 80, 320, 0, 0, 'SOA'),
    (362, 'Sulpor', 22, 5, 1, 5, 10, 0, 0, 295, 2000, 0, 6, 20.0, 0, 80, 320, 0, 0, 'SOA'),
    (363, 'Unda', 22, 5, 1, 5, 10, 0, 0, 296, 2000, 0, 6, 20.0, 0, 80, 320, 0, 0, 'SOA'),
    (364, 'Lux', 22, 5, 1, 5, 10, 0, 0, 297, 2000, 0, 6, 20.0, 0, 80, 320, 0, 0, 'SOA'),
    (365, 'Tenebrae', 22, 5, 1, 5, 10, 0, 0, 298, 2000, 0, 6, 20.0, 0, 80, 320, 0, 0, 'SOA'),
    (367, 'Swordplay', 22, 20, 1, 300, 0, 0, 0, 299, 2000, 0, 6, 20.0, 0, 160, 320, 0, 0, 'SOA'),
    (374, 'One_for_all', 22, 95, 1, 300, 0, 0, 0, 301, 2000, 0, 6, 20.0, 1, 160, 320, 0, 0, 'SOA'),
    (379, 'Ward', 22, 1, 1, 0, 0, 0, 0, 0, 2000, 0, 6, 20.0, 0, 0, 0, 0, 0, NULL),
    (380, 'Effusion', 22, 1, 1, 0, 0, 0, 0, 0, 2000, 0, 6, 20.0, 0, 0, 0, 0, 0, NULL),
    (381, 'chocobo_jig_ii', 19, 70, 1, 60, 218, 126, 0, 13, 2000, 0, 14, 20.0, 1, 1, 300, 0, 0, 'SOA'),
    (383, 'Vivacious_pulse', 22, 1, 1, 300, 0, 0, 0, 327, 2000, 0, 6, 20.0, 0, 0, 0, 0, 0, NULL),
    (385, 'apogee', 15, 70, 1, 180, 108, 0, 0, 333, 2000, 0, 6, 20.0, 0, 1, 80, 0, 0, 'SOA'),
    (387, 'bestial_loyalty', 9, 23, 1, 1200, 94, 0, 0, 83, 2000, 0, 6, 18.0, 0, 1, 0, 900, 0, 'SOA'),
    (389, 'consume_mana', 8, 55, 1, 60, 373, 0, 0, 337, 2000, 0, 6, 20.0, 0, 1, 1300, 0, 0, 'SOA'),
    (390, 'naturalists_roll', 17, 67, 1, 60, 193, 420, 0, 328, 2000, 0, 6, 8.0, 1, 1, 80, 1408, 8, 'SOA'),
    (391, 'runeists_roll', 17, 70, 1, 60, 193, 420, 0, 329, 2000, 0, 6, 8.0, 1, 1, 80, 1408, 8, 'SOA'),
    (512, 'healing_ruby', 15, 1, 3, 60, 174, 0, 0, 6, 2000, 0, 6, 18.0, 0, 1, 60, 0, 0, NULL),
    (513, 'poison_nails', 15, 5, 4, 60, 173, 0, 0, 11, 2000, 0, 6, 18.0, 0, 1, 60, 0, 0, NULL),
    (514, 'shining_ruby', 15, 24, 1, 60, 174, 0, 0, 44, 2000, 0, 6, 18.0, 0, 1, 60, 0, 0, NULL),
    (515, 'glittering_ruby', 15, 44, 1, 60, 174, 0, 0, 62, 2000, 0, 6, 18.0, 0, 1, 60, 0, 0, NULL),
    (516, 'meteorite', 15, 55, 4, 60, 173, 0, 0, 108, 2000, 0, 6, 18.0, 0, 1, 60, 0, 0, NULL),
    (517, 'healing_ruby_ii', 15, 65, 1, 60, 174, 0, 0, 124, 2000, 0, 6, 18.0, 0, 1, 60, 0, 0, NULL),
    (518, 'searing_light', 15, 1, 4, 60, 173, 0, 0, 0, 2000, 0, 6, 18.0, 1, 1, 60, 0, 2, NULL),
    (528, 'moonlit_charge', 15, 5, 4, 60, 173, 0, 0, 17, 2000, 0, 6, 18.0, 0, 1, 60, 0, 0, NULL),
    (529, 'crescent_fang', 15, 10, 4, 60, 173, 0, 0, 19, 2000, 0, 6, 18.0, 0, 1, 60, 0, 0, NULL),
    (530, 'lunar_cry', 15, 21, 4, 60, 174, 0, 0, 41, 2000, 0, 6, 18.0, 0, 1, 60, 0, 0, NULL),
    (531, 'lunar_roar', 15, 32, 4, 60, 174, 0, 0, 27, 2000, 0, 6, 18.0, 0, 1, 60, 0, 0, NULL),
    (532, 'ecliptic_growl', 15, 43, 1, 60, 174, 0, 0, 46, 2000, 0, 6, 18.0, 0, 1, 60, 0, 0, NULL),
    (533, 'ecliptic_howl', 15, 54, 1, 60, 174, 0, 0, 57, 2000, 0, 6, 18.0, 0, 1, 60, 0, 0, NULL),
    (534, 'eclipse_bite', 15, 65, 4, 60, 173, 0, 0, 109, 2000, 0, 6, 18.0, 0, 1, 60, 0, 0, NULL),
    (536, 'howling_moon', 15, 1, 4, 60, 173, 0, 0, 0, 2000, 0, 6, 18.0, 1, 1, 60, 0, 2, NULL),
    (544, 'punch', 15, 1, 4, 60, 173, 0, 0, 9, 2000, 0, 6, 18.0, 0, 1, 60, 0, 0, NULL),
    (545, 'fire_ii', 15, 10, 4, 60, 173, 0, 0, 24, 2000, 0, 6, 18.0, 0, 1, 60, 0, 0, NULL),
    (546, 'burning_strike', 15, 23, 4, 60, 173, 0, 0, 48, 2000, 0, 6, 18.0, 0, 1, 60, 0, 0, NULL),
    (547, 'double_punch', 15, 30, 4, 60, 173, 0, 0, 56, 2000, 0, 6, 18.0, 0, 1, 60, 0, 0, NULL),
    (548, 'crimson_howl', 15, 38, 1, 60, 174, 0, 0, 84, 2000, 0, 6, 18.0, 0, 1, 60, 0, 0, NULL),
    (549, 'fire_iv', 15, 60, 4, 60, 173, 0, 0, 118, 2000, 0, 6, 18.0, 0, 1, 60, 0, 0, NULL),
    (550, 'flaming_crush', 15, 70, 4, 60, 173, 0, 0, 164, 2000, 0, 6, 18.0, 0, 1, 60, 0, 0, NULL),
    (551, 'meteor_strike', 15, 75, 4, 60, 173, 0, 0, 182, 2000, 0, 6, 18.0, 0, 1, 60, 2944, 1, 'TOAU'),
    (552, 'inferno', 15, 1, 4, 60, 173, 0, 0, 0, 2000, 0, 6, 18.0, 1, 1, 60, 0, 2, NULL),
    (560, 'rock_throw', 15, 1, 4, 60, 173, 0, 0, 10, 2000, 0, 6, 18.0, 0, 1, 60, 0, 0, NULL),
    (561, 'stone_ii', 15, 10, 4, 60, 173, 0, 0, 24, 2000, 0, 6, 18.0, 0, 1, 60, 0, 0, NULL),
    (562, 'rock_buster', 15, 21, 4, 60, 173, 0, 0, 39, 2000, 0, 6, 18.0, 0, 1, 60, 0, 0, NULL),
    (563, 'megalith_throw', 15, 35, 4, 60, 173, 0, 0, 62, 2000, 0, 6, 18.0, 0, 1, 60, 0, 0, NULL),
    (564, 'earthen_ward', 15, 46, 1, 60, 174, 0, 0, 92, 2000, 0, 6, 18.0, 0, 1, 60, 0, 0, NULL),
    (565, 'stone_iv', 15, 60, 4, 60, 173, 0, 0, 118, 2000, 0, 6, 18.0, 0, 1, 60, 0, 0, NULL),
    (566, 'mountain_buster', 15, 70, 4, 60, 173, 0, 0, 164, 2000, 0, 6, 18.0, 0, 1, 60, 0, 0, NULL),
    (567, 'geocrush', 15, 75, 4, 60, 173, 0, 0, 182, 2000, 0, 6, 18.0, 0, 1, 60, 2950, 1, 'TOAU'),
    (568, 'earthen_fury', 15, 1, 4, 60, 173, 0, 0, 0, 2000, 0, 6, 18.0, 1, 1, 60, 0, 2, NULL),
    (576, 'barracuda_dive', 15, 1, 4, 60, 173, 0, 0, 8, 2000, 0, 6, 18.0, 0, 1, 60, 0, 0, NULL),
    (577, 'water_ii', 15, 10, 4, 60, 173, 0, 0, 24, 2000, 0, 6, 18.0, 0, 1, 60, 0, 0, NULL),
    (578, 'tail_whip', 15, 26, 4, 60, 173, 0, 0, 49, 2000, 0, 6, 18.0, 0, 1, 60, 0, 0, NULL),
    (579, 'spring_water', 15, 47, 1, 60, 174, 0, 0, 99, 2000, 0, 6, 18.0, 0, 1, 60, 0, 0, NULL),
    (580, 'slowga', 15, 33, 4, 60, 174, 0, 0, 48, 2000, 0, 6, 18.0, 0, 1, 60, 0, 0, NULL),
    (581, 'water_iv', 15, 60, 4, 60, 173, 0, 0, 118, 2000, 0, 6, 18.0, 0, 1, 60, 0, 0, NULL),
    (582, 'spinning_dive', 15, 70, 4, 60, 173, 0, 0, 164, 2000, 0, 6, 18.0, 0, 1, 60, 0, 0, NULL),
    (583, 'grand_fall', 15, 75, 4, 60, 173, 0, 0, 182, 2000, 0, 6, 18.0, 0, 1, 60, 2954, 1, 'TOAU'),
    (584, 'tidal_wave', 15, 1, 4, 60, 173, 0, 0, 0, 2000, 0, 6, 18.0, 1, 1, 60, 0, 2, NULL),
    (592, 'claw', 15, 1, 4, 60, 173, 0, 0, 7, 2000, 0, 6, 18.0, 0, 1, 60, 0, 0, NULL),
    (593, 'aero_ii', 15, 10, 4, 60, 173, 0, 0, 24, 2000, 0, 6, 18.0, 0, 1, 60, 0, 0, NULL),
    (594, 'whispering_wind', 15, 36, 1, 60, 174, 0, 0, 119, 2000, 0, 6, 18.0, 0, 1, 60, 0, 0, NULL),
    (595, 'hastega', 15, 48, 1, 60, 174, 0, 0, 112, 2000, 0, 6, 18.0, 0, 1, 60, 0, 0, NULL),
    (596, 'aerial_armor', 15, 25, 1, 60, 174, 0, 0, 92, 2000, 0, 6, 18.0, 0, 1, 60, 0, 0, NULL),
    (597, 'aero_iv', 15, 60, 4, 60, 173, 0, 0, 118, 2000, 0, 6, 18.0, 0, 1, 60, 0, 0, NULL),
    (598, 'predator_claws', 15, 70, 4, 60, 173, 0, 0, 164, 2000, 0, 6, 18.0, 0, 1, 60, 0, 0, NULL),
    (599, 'wind_blade', 15, 75, 4, 60, 173, 0, 0, 182, 2000, 0, 6, 18.0, 0, 1, 60, 2948, 1, 'TOAU'),
    (600, 'aerial_blast', 15, 1, 4, 60, 173, 0, 0, 0, 2000, 0, 6, 18.0, 1, 1, 60, 0, 2, NULL),
    (608, 'axe_kick', 15, 1, 4, 60, 173, 0, 0, 10, 2000, 0, 6, 18.0, 0, 1, 60, 0, 0, NULL),
    (609, 'blizzard_ii', 15, 10, 4, 60, 173, 0, 0, 24, 2000, 0, 6, 18.0, 0, 1, 60, 0, 0, NULL),
    (610, 'frost_armor', 15, 28, 1, 60, 174, 0, 0, 63, 2000, 0, 6, 18.0, 0, 1, 60, 0, 0, NULL),
    (611, 'sleepga', 15, 39, 4, 60, 174, 0, 0, 56, 2000, 0, 6, 18.0, 0, 1, 60, 0, 0, NULL),
    (612, 'double_slap', 15, 50, 4, 60, 173, 0, 0, 96, 2000, 0, 6, 18.0, 0, 1, 60, 0, 0, NULL),
    (613, 'blizzard_iv', 15, 60, 4, 60, 173, 0, 0, 118, 2000, 0, 6, 18.0, 0, 1, 60, 0, 0, NULL),
    (614, 'rush', 15, 70, 4, 60, 173, 0, 0, 164, 2000, 0, 6, 18.0, 0, 1, 60, 0, 0, NULL),
    (615, 'heavenly_strike', 15, 75, 4, 60, 173, 0, 0, 182, 2000, 0, 6, 18.0, 0, 1, 60, 2946, 1, 'TOAU'),
    (616, 'diamond_dust', 15, 1, 4, 60, 173, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 0, 2, NULL),
    (624, 'shock_strike', 15, 1, 4, 60, 173, 0, 0, 6, 2000, 0, 6, 18.0, 0, 1, 60, 0, 0, NULL),
    (625, 'thunder_ii', 15, 10, 4, 60, 173, 0, 0, 24, 2000, 0, 6, 18.0, 0, 1, 60, 0, 0, NULL),
    (626, 'rolling_thunder', 15, 31, 1, 60, 174, 0, 0, 52, 2000, 0, 6, 18.0, 0, 1, 60, 0, 0, NULL),
    (627, 'thunderspark', 15, 19, 4, 60, 173, 0, 0, 38, 2000, 0, 6, 18.0, 0, 1, 60, 0, 0, NULL),
    (628, 'lightning_armor', 15, 42, 1, 60, 174, 0, 0, 91, 2000, 0, 6, 18.0, 0, 1, 60, 0, 0, NULL),
    (629, 'thunder_iv', 15, 60, 4, 60, 173, 0, 0, 118, 2000, 0, 6, 18.0, 0, 1, 60, 0, 0, NULL),
    (630, 'chaotic_strike', 15, 70, 4, 60, 173, 0, 0, 164, 2000, 0, 6, 18.0, 0, 1, 60, 0, 0, NULL),
    (631, 'thunderstorm', 15, 75, 4, 60, 173, 0, 0, 182, 2000, 0, 6, 18.0, 0, 1, 60, 2952, 1, 'TOAU'),
    (632, 'judgment_bolt', 15, 1, 4, 60, 173, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 0, 2, NULL),
    (639, 'healing_breath_iv', 0, 80, 2, 0, 0, 0, 0, 156, 2000, 1500, 13, 13.0, 0, 0, 0, 0, 0, NULL),
    (640, 'healing_breath', 0, 1, 2, 0, 0, 0, 0, 128, 2000, 1500, 13, 13.0, 0, 0, 0, 0, 0, NULL),
    (641, 'healing_breath_ii', 0, 20, 2, 0, 0, 0, 0, 129, 2000, 1500, 13, 13.0, 0, 0, 0, 0, 0, NULL),
    (642, 'healing_breath_iii', 0, 40, 2, 0, 0, 0, 0, 130, 2000, 1500, 13, 13.0, 0, 0, 0, 0, 0, NULL),
    (643, 'remove_poison', 0, 1, 2, 0, 0, 0, 0, 131, 2000, 1500, 13, 13.0, 0, 0, 0, 0, 0, NULL),
    (644, 'remove_blindness', 0, 20, 2, 0, 0, 0, 0, 132, 2000, 1500, 13, 13.0, 0, 0, 0, 0, 0, NULL),
    (645, 'remove_paralysis', 0, 40, 2, 0, 0, 0, 0, 133, 2000, 1500, 13, 13.0, 0, 0, 0, 0, 0, NULL),
    (646, 'flame_breath', 0, 1, 4, 0, 0, 0, 0, 134, 2000, 1500, 13, 13.0, 0, 0, 0, 0, 0, NULL),
    (647, 'frost_breath', 0, 1, 4, 0, 0, 0, 0, 135, 2000, 1500, 13, 13.0, 0, 0, 0, 0, 0, NULL),
    (648, 'gust_breath', 0, 1, 4, 0, 0, 0, 0, 136, 2000, 1500, 13, 13.0, 0, 0, 0, 0, 0, NULL),
    (649, 'sand_breath', 0, 1, 4, 0, 0, 0, 0, 137, 2000, 1500, 13, 13.0, 0, 0, 0, 0, 0, NULL),
    (650, 'lightning_breath', 0, 1, 4, 0, 0, 0, 0, 138, 2000, 1500, 13, 13.0, 0, 0, 0, 0, 0, NULL),
    (651, 'hydro_breath', 0, 1, 4, 0, 0, 0, 0, 139, 2000, 1500, 13, 13.0, 0, 0, 0, 0, 0, NULL),
    (652, 'super_climb', 0, 50, 1, 0, 0, 0, 0, 140, 2000, 0, 13, 18.0, 0, 0, 0, 0, 0, NULL),
    (653, 'remove_curse', 0, 60, 2, 0, 0, 0, 0, 157, 2000, 1500, 13, 13.0, 0, 0, 0, 0, 0, NULL),
    (654, 'remove_disease', 0, 80, 2, 0, 0, 0, 0, 158, 2000, 1500, 13, 13.0, 0, 0, 0, 0, 0, NULL),
    (656, 'camisado', 15, 1, 4, 60, 173, 0, 0, 20, 2000, 0, 6, 18.0, 0, 1, 60, 0, 0, NULL),
    (657, 'somnolence', 15, 20, 4, 60, 174, 0, 0, 30, 2000, 0, 6, 18.0, 0, 1, 60, 0, 0, NULL),
    (658, 'nightmare', 15, 29, 4, 60, 174, 0, 0, 42, 2000, 0, 6, 18.0, 0, 1, 60, 0, 0, NULL),
    (659, 'ultimate_terror', 15, 37, 4, 60, 174, 0, 0, 27, 2000, 0, 6, 18.0, 0, 1, 60, 0, 0, NULL),
    (660, 'noctoshield', 15, 49, 1, 60, 174, 0, 0, 92, 2000, 0, 6, 18.0, 0, 1, 60, 0, 0, NULL),
    (661, 'dream_shroud', 15, 56, 1, 60, 174, 0, 0, 121, 2000, 0, 6, 18.0, 0, 1, 60, 0, 0, NULL),
    (662, 'nether_blast', 15, 65, 4, 60, 173, 0, 0, 109, 2000, 0, 6, 18.0, 0, 1, 60, 0, 0, NULL),
    (672, 'foot_kick', 9, 25, 257, 1, 102, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (673, 'dust_cloud', 9, 25, 257, 1, 102, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (674, 'whirl_claws', 9, 25, 257, 1, 102, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (675, 'head_butt', 9, 25, 257, 1, 102, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (676, 'dream_flower', 9, 25, 257, 2, 102, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (677, 'wild_oats', 9, 25, 257, 1, 102, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (678, 'leaf_dagger', 9, 25, 257, 1, 102, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (679, 'scream', 9, 25, 257, 1, 102, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (680, 'roar', 9, 25, 257, 2, 102, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (681, 'razor_fang', 9, 25, 257, 1, 102, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (682, 'claw_cyclone', 9, 25, 257, 1, 102, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (683, 'tail_blow', 9, 25, 257, 1, 102, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (684, 'fireball', 9, 25, 257, 1, 102, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (685, 'blockhead', 9, 25, 257, 1, 102, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (686, 'brain_crush', 9, 25, 257, 1, 102, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (687, 'infrasonics', 9, 25, 257, 2, 102, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (688, 'secretion', 9, 25, 257, 1, 102, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (689, 'lamb_chop', 9, 25, 257, 1, 102, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (690, 'rage', 9, 25, 257, 2, 102, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (691, 'sheep_charge', 9, 25, 257, 1, 102, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (692, 'sheep_song', 9, 25, 257, 2, 102, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (693, 'bubble_shower', 9, 25, 257, 1, 102, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (694, 'bubble_curtain', 9, 25, 257, 3, 102, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (695, 'big_scissors', 9, 25, 257, 1, 102, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (696, 'scissor_guard', 9, 25, 257, 2, 102, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (697, 'metallic_body', 9, 25, 257, 1, 102, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (698, 'needleshot', 9, 25, 257, 1, 102, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (699, '1000_needles', 9, 25, 257, 3, 102, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (700, 'frogkick', 9, 25, 257, 1, 102, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (701, 'spore', 9, 25, 257, 1, 102, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (702, 'queasyshroom', 9, 25, 257, 1, 102, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (703, 'numbshroom', 9, 25, 257, 2, 102, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (704, 'shakeshroom', 9, 25, 257, 2, 102, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (705, 'silence_gas', 9, 25, 257, 3, 102, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (706, 'dark_spore', 9, 25, 257, 3, 102, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (707, 'power_attack', 9, 25, 257, 1, 102, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (708, 'hi-freq_field', 9, 25, 257, 2, 102, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (709, 'rhino_attack', 9, 25, 257, 1, 102, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (710, 'rhino_guard', 9, 25, 257, 1, 102, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (711, 'spoil', 9, 25, 257, 1, 102, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (712, 'cursed_sphere', 9, 25, 257, 1, 102, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (713, 'venom', 9, 25, 257, 1, 102, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (714, 'sandblast', 9, 25, 257, 1, 102, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (715, 'sandpit', 9, 25, 257, 2, 102, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (716, 'venom_spray', 9, 25, 257, 2, 102, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (717, 'mandibular_bite', 9, 25, 257, 1, 102, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (718, 'soporific', 9, 25, 257, 1, 102, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (719, 'gloeosuccus', 9, 25, 257, 2, 102, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (720, 'palsy_pollen', 9, 25, 257, 1, 102, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (721, 'geist_wall', 9, 25, 257, 1, 102, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (722, 'numbing_noise', 9, 25, 257, 1, 102, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (723, 'nimble_snap', 9, 25, 257, 1, 102, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (724, 'cyclotail', 9, 25, 257, 1, 102, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (725, 'toxic_spit', 9, 25, 257, 2, 102, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (726, 'double_claw', 9, 25, 257, 1, 102, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (727, 'grapple', 9, 25, 257, 1, 102, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (728, 'spinning_top', 9, 25, 257, 1, 102, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (729, 'filamented_hold', 9, 25, 257, 2, 102, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (730, 'chaotic_eye', 9, 25, 257, 1, 102, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (731, 'blaster', 9, 25, 257, 2, 102, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (732, 'suction', 9, 25, 257, 1, 102, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (733, 'drainkiss', 9, 25, 257, 1, 102, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (734, 'snow_cloud', 9, 25, 257, 1, 102, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (735, 'wild_carrot', 9, 25, 257, 2, 102, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (736, 'sudden_lunge', 9, 25, 257, 2, 102, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (737, 'spiral_spin', 9, 25, 257, 2, 102, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (738, 'noisome_powder', 9, 25, 257, 2, 102, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (739, 'acid_mist', 10, 25, 257, 2, 102, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (740, 'tp_drainkiss', 10, 25, 257, 3, 102, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (742, 'scythe_tail', 9, 26, 257, 1, 102, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (743, 'ripper_fang', 9, 26, 257, 1, 102, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (744, 'chomp_rush', 9, 25, 257, 3, 102, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (745, 'charged_whisker', 9, 26, 257, 2, 102, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (746, 'purulent_ooze', 9, 25, 257, 2, 102, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (747, 'corrosive_ooze', 9, 25, 257, 3, 102, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (748, 'back_heel', 9, 25, 257, 2, 102, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (749, 'jettatura', 9, 25, 257, 4, 102, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (750, 'choke_breath', 9, 25, 257, 2, 102, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (751, 'fantod', 9, 25, 257, 2, 103, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 0, 0, NULL),
    (752, 'tortoise_stomp', 9, 25, 257, 3, 102, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (753, 'harden_shell', 9, 25, 257, 2, 103, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 0, 0, NULL),
    (754, 'aqua_breath', 9, 25, 257, 3, 102, 1, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (755, 'wing_slap', 9, 25, 257, 2, 102, 0, 1, 0, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (756, 'beak_lunge', 9, 25, 257, 1, 102, 0, 1, 0, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (757, 'intimidate', 9, 25, 257, 2, 102, 0, 1, 0, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (758, 'recoil_dive', 9, 25, 257, 1, 102, 0, 1, 0, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (759, 'water_wall', 9, 25, 257, 3, 102, 0, 0, 1, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (760, 'sensilla_blades', 9, 25, 257, 2, 102, 0, 1, 0, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (761, 'tegmina_buffet', 9, 25, 257, 2, 102, 0, 0, 1, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (762, 'molting_plumage', 9, 25, 257, 1, 102, 0, 0, 1, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (763, 'swooping_frenzy', 9, 25, 257, 2, 102, 0, 0, 1, 2000, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (764, 'sweeping_gouge', 9, 25, 257, 1, 102, 0, 0, 0, 2001, 0, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (765, 'zealous_snort', 9, 25, 257, 3, 102, 0, 0, 0, 2000, 1, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (766, 'pentapeck', 9, 25, 257, 3, 102, 0, 0, 0, 2000, 0, 7, 18.0, 0, 1, 60, 902, 0, NULL),
    (767, 'tickling_tendrils', 9, 25, 257, 1, 102, 0, 0, 0, 2000, 1, 6, 18.0, 0, 1, 60, 902, 0, NULL),
    (768, 'stink_bomb', 9, 25, 257, 2, 102, 0, 0, 0, 2000, 0, 6, 19.0, 0, 1, 60, 902, 0, NULL),
    (769, 'nectarous_deluge', 9, 25, 257, 2, 102, 0, 0, 0, 2000, 0, 7, 18.0, 0, 1, 60, 902, 0, NULL),
    (770, 'nepenthic_plunge', 9, 25, 257, 3, 102, 0, 0, 0, 2000, 0, 7, 18.0, 0, 1, 60, 902, 0, NULL),
    (771, 'somersault', 9, 25, 257, 1, 102, 0, 0, 0, 2000, 0, 6, 19.0, 0, 1, 60, 902, 0, NULL),
    (773, 'foul_waters', 9, 25, 257, 255, 102, 0, 0, 0, 2000, 0, 6, 19.0, 0, 1, 60, 902, 0, NULL),
    (774, 'pestilent_plume', 9, 25, 257, 255, 102, 0, 0, 0, 2000, 0, 6, 19.0, 0, 1, 60, 902, 0, NULL),
    (775, 'pecking_flurry', 9, 25, 257, 255, 102, 0, 0, 0, 2000, 0, 6, 18.1, 0, 1, 60, 902, 0, NULL),
    (776, 'sickle_slash', 9, 25, 257, 255, 102, 0, 0, 0, 2000, 0, 6, 18.0, 1, 1, 60, 902, 0, NULL),
    (777, 'acid_spray', 9, 25, 257, 255, 102, 0, 0, 0, 2000, 0, 6, 18.0, 0, 2, 60, 902, 0, NULL),
    (778, 'spider_web', 9, 25, 257, 255, 102, 0, 0, 0, 2000, 0, 6, 18.0, 0, 2, 60, 902, 0, NULL),
    (519, '503', 15, 76, 4, 60, 173, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 0, 0, NULL),
    (520, '504', 15, 76, 4, 60, 173, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 0, 0, NULL),
    (521, 'regal_scratch', 15, 1, 4, 60, 173, 0, 0, 5, 2000, 0, 6, 18.0, 0, 1, 60, 0, 0, NULL),
    (522, 'mewing_lullaby', 15, 25, 4, 60, 174, 0, 0, 61, 2000, 0, 6, 18.0, 0, 1, 60, 0, 0, NULL),
    (523, 'eerie_eye', 15, 55, 4, 60, 174, 0, 0, 134, 2000, 0, 6, 18.0, 0, 1, 60, 0, 0, NULL),
    (524, 'level_?_holy', 15, 75, 4, 60, 173, 0, 0, 235, 2000, 0, 6, 18.0, 0, 1, 60, 0, 0, NULL),
    (525, 'raise_ii', 15, 15, 34, 60, 174, 0, 0, 160, 2000, 0, 6, 18.0, 0, 1, 60, 0, 0, NULL),
    (526, 'reraise_ii', 15, 30, 3, 60, 174, 0, 0, 80, 2000, 0, 6, 18.0, 0, 1, 60, 0, 0, NULL),
    (527, 'altanas_favor', 15, 1, 1, 60, 174, 0, 0, 0, 2000, 0, 6, 18.0, 0, 1, 60, 0, 2, NULL);
