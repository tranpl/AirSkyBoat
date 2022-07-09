-- --------------------------------------------------------
-- AirSkyBoat Database Conversion File
-- --------------------------------------------------------
-- Table Structure Definition
-- --------------------------------------------------------

-- Note:  The addition of "category" is to differentiate bow types.  The current C++ code does not use this.

ALTER TABLE `item_weapon`
    ADD COLUMN IF NOT EXISTS `category` tinyint(1) NOT NULL DEFAULT 0 AFTER `unlock_points`;

REPLACE INTO `item_weapon` (`itemId`, `name`, `skill`, `subskill`, `ilvl_skill`, `ilvl_parry`, `ilvl_macc`, `dmgType`, `hit`, `delay`, `dmg`, `unlock_points`, `category`) VALUES
    (17160, 'longbow', 25, 9, 0, 0, 0, 1, 1, 540, 17, 0, 1),
    (17161, 'power_bow', 25, 9, 0, 0, 0, 1, 1, 540, 30, 0, 1),
    (17162, 'great_bow', 25, 9, 0, 0, 0, 1, 1, 540, 43, 0, 1),
    (17163, 'battle_bow', 25, 9, 0, 0, 0, 1, 1, 540, 54, 0, 1),
    (17164, 'war_bow', 25, 9, 0, 0, 0, 1, 1, 540, 65, 0, 1),
    (17166, 'lamian_kaman', 25, 9, 0, 0, 0, 1, 1, 270, 19, 0, 1),
    (17167, 'ryl.arc._longbow', 25, 9, 0, 0, 0, 1, 1, 540, 24, 0, 1),
    (17173, 'war_bow_+1', 25, 9, 0, 0, 0, 1, 1, 524, 66, 0, 1),
    (17177, 'longbow_+1', 25, 9, 0, 0, 0, 1, 1, 524, 18, 0, 1),
    (17178, 'power_bow_+1', 25, 9, 0, 0, 0, 1, 1, 524, 31, 0, 1),
    (17180, 'great_bow_+1', 25, 9, 0, 0, 0, 1, 1, 524, 44, 0, 1),
    (17181, 'battle_bow_+1', 25, 9, 0, 0, 0, 1, 1, 524, 55, 0, 1),
    (17182, 'kaman_+1', 25, 9, 0, 0, 0, 1, 1, 350, 33, 0, 1),
    (17183, 'hunters_longbow', 25, 9, 0, 0, 0, 1, 1, 490, 27, 0, 1),
    (17185, 'siege_bow', 25, 9, 0, 0, 0, 1, 1, 540, 83, 0, 1),
    (17187, 'eurytos_bow', 25, 9, 0, 0, 0, 1, 1, 490, 71, 0, 1),
    (17190, 'sarnga', 25, 9, 0, 0, 0, 1, 1, 720, 72, 0, 1),
    (17197, 'san_dorian_bow', 25, 9, 0, 0, 0, 1, 1, 524, 25, 0, 1),
    (17198, 'kingdom_bow', 25, 9, 0, 0, 0, 1, 1, 508, 26, 0, 1),
    (17203, 'shikar_bow', 25, 9, 0, 0, 0, 1, 1, 540, 54, 0, 1),
    (17208, 'hamayumi', 25, 9, 0, 0, 0, 1, 1, 524, 43, 0, 1),
    (17209, 'martial_bow', 25, 9, 0, 0, 0, 1, 1, 540, 67, 0, 1),
    (17212, 'selenes_bow', 25, 9, 0, 0, 0, 1, 1, 540, 72, 0, 1),
    (18142, 'shigeto_bow', 25, 9, 0, 0, 0, 1, 1, 600, 75, 0, 1),
    (18143, 'shigeto_bow_+1', 25, 9, 0, 0, 0, 1, 1, 582, 76, 0, 1),
    (18344, 'relic_bow', 25, 9, 0, 0, 0, 1, 1, 999, 1, 0, 1),
    (18345, 'wolver_bow', 25, 9, 0, 0, 0, 1, 1, 540, 1, 0, 1),
    (18346, 'dynamis_bow', 25, 9, 0, 0, 0, 1, 1, 540, 68, 0, 1),
    (18347, 'futatokoroto', 25, 9, 0, 0, 0, 1, 1, 540, 81, 0, 1),
    (18348, 'yoichinoyumi', 25, 9, 0, 0, 0, 1, 1, 524, 81, 0, 1),
    (18349, 'yoichinoyumi', 25, 9, 0, 0, 0, 1, 1, 524, 96, 0, 1),
    (18650, 'yoichinoyumi', 25, 9, 0, 0, 0, 1, 1, 524, 102, 0, 1),
    (18664, 'yoichinoyumi', 25, 9, 0, 0, 0, 1, 1, 524, 111, 0, 1),
    (18678, 'yoichinoyumi', 25, 9, 0, 0, 0, 1, 1, 524, 118, 0, 1),
    (18682, 'lamian_kaman_+1', 25, 9, 0, 0, 0, 1, 1, 261, 20, 0, 1),
    (18683, 'imperial_bow', 25, 9, 0, 0, 0, 1, 1, 540, 75, 0, 1),
    (18685, 'imperial_kaman', 25, 9, 0, 0, 0, 1, 1, 360, 38, 0, 1),
    (18688, 'lamian_kaman_-1', 25, 9, 0, 0, 0, 1, 1, 540, 10, 0, 1),
    (18695, 'cerberus_bow', 25, 9, 0, 0, 0, 1, 1, 600, 72, 0, 1),
    (18701, 'cerberus_bow_+1', 25, 9, 0, 0, 0, 1, 1, 582, 73, 0, 1),
    (18714, 'valis_bow', 25, 9, 0, 0, 0, 1, 1, 490, 71, 0, 1),
    (18728, 'cobra_bow', 25, 9, 0, 0, 0, 1, 1, 524, 77, 0, 1),
    (18933, 'harrier', 25, 9, 0, 0, 0, 1, 1, 524, 84, 0, 1),
    (18934, 'condor', 25, 9, 0, 0, 0, 1, 1, 540, 37, 0, 0),
    (18935, 'bateleur', 25, 9, 0, 0, 0, 1, 1, 524, 80, 0, 1),
    (18936, 'sparrowhawk', 25, 9, 0, 0, 0, 1, 1, 524, 60, 0, 1),
    (19187, 'murti_bow', 25, 9, 0, 0, 0, 1, 1, 524, 91, 0, 1),
    (19216, 'failnaught', 25, 9, 0, 0, 0, 1, 1, 582, 72, 0, 1),
    (19222, 'wurger', 25, 9, 0, 0, 0, 1, 1, 540, 35, 0, 1),
    (19263, 'amazon_bow', 25, 9, 0, 0, 0, 1, 1, 600, 79, 0, 1),
    (19264, 'amazon_bow_+1', 25, 9, 0, 0, 0, 1, 1, 582, 80, 0, 1),
    (19387, 'sparrow', 25, 9, 0, 0, 0, 1, 1, 524, 50, 0, 1),
    (19388, 'kestrel', 25, 9, 0, 0, 0, 1, 1, 524, 57, 0, 1),
    (19389, 'astrild', 25, 9, 0, 0, 0, 1, 1, 524, 70, 0, 1),
    (19391, 'gyrfalcon', 25, 9, 0, 0, 0, 1, 1, 540, 55, 0, 1),
    (19409, 'gandiva', 25, 9, 0, 0, 0, 1, 1, 490, 89, 0, 1),
    (19468, 'gandiva', 25, 9, 0, 0, 0, 1, 1, 490, 95, 0, 1),
    (19526, 'harrier_+1', 25, 9, 0, 0, 0, 1, 1, 524, 91, 0, 1),
    (19527, 'condor_+1', 25, 9, 0, 0, 0, 1, 1, 540, 39, 0, 0),
    (19528, 'bateleur_+1', 25, 9, 0, 0, 0, 1, 1, 524, 85, 0, 1),
    (19529, 'sparrowhawk_+1', 25, 9, 0, 0, 0, 1, 1, 524, 82, 0, 1),
    (19546, 'gandiva', 25, 9, 0, 0, 0, 1, 1, 490, 103, 0, 1),
    (19604, 'harrier_+2', 25, 9, 0, 0, 0, 1, 1, 524, 100, 0, 1),
    (19605, 'condor_+2', 25, 9, 0, 0, 0, 1, 1, 540, 39, 0, 0),
    (19606, 'bateleur_+2', 25, 9, 0, 0, 0, 1, 1, 524, 96, 0, 1),
    (19607, 'sparrowhawk_+2', 25, 9, 0, 0, 0, 1, 1, 524, 82, 0, 1),
    (19644, 'gandiva', 25, 9, 0, 0, 0, 1, 1, 490, 110, 0, 1),
    (19702, 'harrier_+3', 25, 9, 0, 0, 0, 1, 1, 524, 108, 0, 1),
    (19704, 'bateleur_+3', 25, 9, 0, 0, 0, 1, 1, 524, 104, 0, 1),
    (19705, 'sparrowhawk_+3', 25, 9, 0, 0, 0, 1, 1, 524, 88, 0, 1),
    (19730, 'vision_bow', 25, 9, 0, 0, 0, 1, 1, 524, 97, 0, 1),
    (19733, 'beursault_bow', 25, 9, 0, 0, 0, 1, 1, 600, 89, 0, 1),
    (19734, 'beursault_bow_+1', 25, 9, 0, 0, 0, 1, 1, 582, 90, 0, 1),
    (19737, 'percept_bow', 25, 9, 0, 0, 0, 1, 1, 540, 93, 0, 1),
    (19738, 'aifes_bow', 25, 9, 0, 0, 0, 1, 1, 540, 106, 0, 1),
    (19759, 'yoichinoyumi', 25, 9, 0, 0, 0, 1, 1, 524, 126, 0, 1),
    (19786, 'nurigomeyumi', 25, 9, 0, 0, 0, 1, 1, 600, 95, 0, 1),
    (19787, 'nurigomeyumi_+1', 25, 9, 0, 0, 0, 1, 1, 582, 96, 0, 1),
    (19817, 'gandiva', 25, 9, 0, 0, 0, 1, 1, 490, 117, 0, 1),
    (19852, 'yoichinoyumi', 25, 9, 0, 0, 0, 1, 1, 524, 126, 0, 1),
    (19865, 'gandiva', 25, 9, 0, 0, 0, 1, 1, 490, 117, 0, 1),
    (19940, 'circinae', 25, 9, 0, 0, 0, 1, 1, 524, 116, 0, 1),
    (19942, 'terathopus', 25, 9, 0, 0, 0, 1, 1, 524, 111, 0, 1),
    (19943, 'accipiter', 25, 9, 0, 0, 0, 1, 1, 524, 94, 0, 1),
    (21210, 'yoichinoyumi', 25, 9, 242, 0, 0, 1, 1, 524, 223, 0, 1),
    (21211, 'yoichinoyumi', 25, 9, 242, 0, 0, 1, 1, 524, 223, 0, 1),
    (21212, 'gandiva', 25, 9, 242, 0, 0, 1, 1, 490, 206, 0, 1),
    (21213, 'gandiva', 25, 9, 242, 0, 0, 1, 1, 490, 206, 0, 1),
    (21215, 'vijaya_bow', 25, 9, 242, 0, 0, 1, 1, 540, 258, 0, 1),
    (21216, 'nibiru_bow', 25, 9, 242, 0, 0, 1, 1, 600, 274, 0, 1),
    (21217, 'blurred_bow', 25, 9, 242, 0, 0, 1, 1, 540, 265, 0, 1),
    (21218, 'blurred_bow_+1', 25, 9, 242, 0, 0, 1, 1, 524, 266, 0, 1),
    (21219, 'paloma_bow', 25, 9, 242, 0, 0, 1, 1, 490, 219, 0, 1),
    (21220, 'paloma_bow_+1', 25, 9, 242, 0, 0, 1, 1, 480, 220, 0, 1),
    (21224, 'phaosphaelia', 25, 9, 242, 0, 0, 1, 1, 735, 279, 0, 1),
    (21226, 'homestead_bow', 25, 9, 242, 0, 0, 1, 1, 540, 238, 0, 1),
    (21227, 'hangaku-no-yumi', 25, 9, 242, 0, 0, 1, 1, 600, 251, 0, 1),
    (21228, 'falubeza', 25, 9, 242, 0, 0, 1, 1, 540, 243, 0, 1),
    (21229, 'cibitshavore', 25, 9, 242, 0, 0, 1, 1, 600, 261, 0, 1),
    (21230, 'bocluamni_+2', 25, 9, 242, 0, 0, 1, 1, 540, 216, 0, 1),
    (21231, 'eminent_bow', 25, 9, 215, 0, 0, 1, 1, 720, 263, 0, 1),
    (21233, 'ajjub_bow', 25, 9, 188, 0, 0, 1, 1, 540, 214, 0, 1),
    (21234, 'circinae_-1', 25, 9, 0, 0, 0, 1, 1, 524, 110, 0, 1),
    (21235, 'cama._bow', 25, 9, 108, 0, 0, 1, 1, 540, 159, 0, 1),
    (21236, 'bocluamni_+1', 25, 9, 162, 0, 0, 1, 1, 540, 181, 0, 1),
    (21237, 'forefront_bow', 25, 9, 67, 0, 0, 1, 1, 540, 126, 0, 1),
    (21238, 'speleogen_bow', 25, 9, 162, 0, 0, 1, 1, 600, 221, 0, 1),
    (21239, 'echidnas_bow', 25, 9, 215, 0, 0, 1, 1, 600, 248, 0, 1),
    (21240, 'echidnas_bow_+1', 25, 9, 228, 0, 0, 1, 1, 582, 249, 0, 1),
    (21241, 'coalition_bow', 25, 9, 0, 0, 0, 1, 1, 540, 102, 0, 1),
    (21242, 'bocluamni', 25, 9, 54, 0, 0, 1, 1, 540, 121, 0, 1),
    (21243, 'ahkormaar_bow', 25, 9, 0, 0, 0, 1, 1, 540, 103, 0, 1),
    (21244, 'ahkormaar_bow_+1', 25, 9, 0, 0, 0, 1, 1, 524, 104, 0, 1),
    (22112, 'mizukage-no-yumi', 25, 9, 0, 0, 0, 1, 1, 524, 1, 0, 1),
    (22113, 'teller', 25, 9, 242, 0, 0, 1, 1, 600, 270, 0, 1),
    (22115, 'yoichinoyumi', 25, 9, 269, 0, 0, 1, 1, 524, 303, 0, 1),
    (22116, 'gandiva', 25, 9, 269, 0, 0, 1, 1, 490, 286, 0, 1),
    (22117, 'fail-not', 25, 9, 269, 0, 0, 1, 1, 600, 330, 0, 1),
    (22118, 'venery_bow', 25, 9, 242, 0, 0, 1, 1, 600, 243, 0, 1),
    (22122, 'arasy_bow', 25, 9, 242, 0, 0, 1, 1, 540, 226, 0, 1),
    (22123, 'arasy_bow_+1', 25, 9, 242, 0, 0, 1, 1, 524, 227, 0, 1),
    (22124, 'artemiss_bow', 25, 9, 0, 0, 0, 1, 1, 360, 1, 0, 1),
    (22129, 'yoichinoyumi', 25, 9, 269, 0, 0, 1, 1, 524, 303, 0, 1),
    (22130, 'gandiva', 25, 9, 269, 0, 0, 1, 1, 490, 286, 0, 1),
    (22131, 'fail-not', 25, 9, 269, 0, 0, 1, 1, 600, 330, 0, 1),
    (22132, 'artemiss_bow_+1', 25, 9, 0, 0, 0, 1, 1, 351, 2, 0, 1),
    (22133, 'voluspa_bow', 25, 9, 215, 0, 0, 1, 1, 540, 204, 0, 1);
