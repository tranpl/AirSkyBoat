/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `magian`
--

DROP TABLE IF EXISTS `magian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `magian` (
  `trialId` smallint(4) unsigned NOT NULL,
  `reqItem` int(6) unsigned NOT NULL DEFAULT 0,
  `reqItemAug1` smallint(4) unsigned DEFAULT 0,
  `reqItemAug2` smallint(4) unsigned DEFAULT 0,
  `reqItemAug3` smallint(4) unsigned DEFAULT 0,
  `reqItemAug4` smallint(4) unsigned DEFAULT 0,
  `reqItemAugValue1` tinyint(2) unsigned DEFAULT 0,
  `reqItemAugValue2` tinyint(2) unsigned DEFAULT 0,
  `reqItemAugValue3` tinyint(2) unsigned DEFAULT 0,
  `reqItemAugValue4` tinyint(2) unsigned DEFAULT 0,
  `rewardItem` int(6) unsigned NOT NULL DEFAULT 0,
  `rewardItemAug1` smallint(4) unsigned DEFAULT 0,
  `rewardItemAug2` smallint(4) unsigned DEFAULT 0,
  `rewardItemAug3` smallint(4) unsigned DEFAULT 0,
  `rewardItemAug4` smallint(4) unsigned DEFAULT 0,
  `rewardItemAugValue1` tinyint(2) unsigned DEFAULT 0,
  `rewardItemAugValue2` tinyint(2) unsigned DEFAULT 0,
  `rewardItemAugValue3` tinyint(2) unsigned DEFAULT 0,
  `rewardItemAugValue4` tinyint(2) unsigned DEFAULT 0,
  `trialTarget` smallint(4) unsigned NOT NULL DEFAULT 0,
  `objectiveItem` int(6) unsigned DEFAULT 0,
  `objectiveTotal` smallint(4) unsigned NOT NULL DEFAULT 0,
  `element` smallint(4) unsigned NOT NULL DEFAULT 0,
  `previousTrial` smallint(5) unsigned DEFAULT 0,
  PRIMARY KEY (`trialId`),
  UNIQUE KEY `trialId` (`trialId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `magian`
--

LOCK TABLES `magian` WRITE;
/*!40000 ALTER TABLE `magian` DISABLE KEYS */;
-- Relic weapon
-- Spharai
INSERT INTO `magian` VALUES (1003,18264,0,0,0,0,0,0,0,0,18264,740,0,0,0,1,0,0,0,357,0,200,0,0);
INSERT INTO `magian` VALUES (1004,18264,740,0,0,0,1,0,0,0,18264,740,0,0,0,5,0,0,0,358,0,200,0,1003);
INSERT INTO `magian` VALUES (1826,18264,740,0,0,0,5,0,0,0,18264,740,0,0,0,7,0,0,0,660,0,300,0,1004);
INSERT INTO `magian` VALUES (1827,18264,740,0,0,0,7,0,0,0,18265,0,0,0,0,0,0,0,0,661,0,300,0,1826);
INSERT INTO `magian` VALUES (2253,18265,0,0,0,0,0,0,0,0,18637,0,0,0,0,0,0,0,0,953,0,400,0,1827);
INSERT INTO `magian` VALUES (2664,18637,0,0,0,0,0,0,0,0,18651,0,0,0,0,0,0,0,0,1083,0,5,0,2253);
INSERT INTO `magian` VALUES (3097,18651,0,0,0,0,0,0,0,0,18665,0,0,0,0,0,0,0,0,1177,0,10,0,2664);
INSERT INTO `magian` VALUES (3560,18665,0,0,0,0,0,0,0,0,19746,0,0,0,0,0,0,0,0,1329,0,5,0,3097);
INSERT INTO `magian` VALUES (3610,19746,0,0,0,0,0,0,0,0,19839,0,0,0,0,0,0,0,0,1258,0,250,0,3560);

-- Mandau
INSERT INTO `magian` VALUES (991,18270,0,0,0,0,0,0,0,0,18270,740,0,0,0,0,0,0,0,349,0,200,0,0);
INSERT INTO `magian` VALUES (992,18270,740,0,0,0,0,0,0,0,18270,740,0,0,0,1,0,0,0,350,0,200,0,991);
INSERT INTO `magian` VALUES (1818,18270,740,0,0,0,1,0,0,0,18270,740,0,0,0,2,0,0,0,652,0,300,0,992);
INSERT INTO `magian` VALUES (1819,18270,740,0,0,0,2,0,0,0,18271,0,0,0,0,0,0,0,0,653,0,300,0,1818);
INSERT INTO `magian` VALUES (2249,18271,0,0,0,0,0,0,0,0,18638,0,0,0,0,0,0,0,0,949,0,400,0,1819);
INSERT INTO `magian` VALUES (2660,18638,0,0,0,0,0,0,0,0,18652,0,0,0,0,0,0,0,0,1085,0,5,0,2249);
INSERT INTO `magian` VALUES (3093,18652,0,0,0,0,0,0,0,0,18666,0,0,0,0,0,0,0,0,1178,0,10,0,2660);
INSERT INTO `magian` VALUES (3556,18666,0,0,0,0,0,0,0,0,19747,0,0,0,0,0,0,0,0,1329,0,5,0,3093);
INSERT INTO `magian` VALUES (3606,19747,0,0,0,0,0,0,0,0,19840,0,0,0,0,0,0,0,0,1258,0,250,0,3556);

-- Excalibur
INSERT INTO `magian` VALUES (1012,18276,0,0,0,0,0,0,0,0,18276,740,0,0,0,0,0,0,0,363,0,200,0,0);
INSERT INTO `magian` VALUES (1013,18276,740,0,0,0,0,0,0,0,18276,740,0,0,0,1,0,0,0,364,0,200,0,1012);
INSERT INTO `magian` VALUES (1832,18276,740,0,0,0,1,0,0,0,18276,740,0,0,0,2,0,0,0,666,0,300,0,1013);
INSERT INTO `magian` VALUES (1833,18276,740,0,0,0,2,0,0,0,18277,0,0,0,0,0,0,0,0,667,0,300,0,1832);
INSERT INTO `magian` VALUES (2256,18277,0,0,0,0,0,0,0,0,18639,0,0,0,0,0,0,0,0,956,0,400,0,1833);
INSERT INTO `magian` VALUES (2667,18639,0,0,0,0,0,0,0,0,18653,0,0,0,0,0,0,0,0,1084,0,5,0,2256);
INSERT INTO `magian` VALUES (3100,18653,0,0,0,0,0,0,0,0,18667,0,0,0,0,0,0,0,0,1179,0,10,0,2667);
INSERT INTO `magian` VALUES (3563,18667,0,0,0,0,0,0,0,0,19748,0,0,0,0,0,0,0,0,1329,0,5,0,3100);
INSERT INTO `magian` VALUES (3613,19748,0,0,0,0,0,0,0,0,19841,0,0,0,0,0,0,0,0,1258,0,250,0,3563);

-- Ragnarok
INSERT INTO `magian` VALUES (1024,18282,0,0,0,0,0,0,0,0,18282,740,0,0,0,2,0,0,0,371,0,200,0,0);
INSERT INTO `magian` VALUES (1025,18282,740,0,0,0,2,0,0,0,18282,740,0,0,0,8,0,0,0,372,0,200,0,1024);
INSERT INTO `magian` VALUES (1840,18282,740,0,0,0,8,0,0,0,18282,740,0,0,0,9,0,0,0,674,0,300,0,1025);
INSERT INTO `magian` VALUES (1841,18282,740,0,0,0,9,0,0,0,18283,0,0,0,0,0,0,0,0,675,0,300,0,1840);
INSERT INTO `magian` VALUES (2260,18283,0,0,0,0,0,0,0,0,18640,0,0,0,0,0,0,0,0,960,0,400,0,1841);
INSERT INTO `magian` VALUES (2671,18640,0,0,0,0,0,0,0,0,18654,0,0,0,0,0,0,0,0,1084,0,5,0,2260);
INSERT INTO `magian` VALUES (3104,18654,0,0,0,0,0,0,0,0,18668,0,0,0,0,0,0,0,0,1180,0,10,0,2671);
INSERT INTO `magian` VALUES (3567,18668,0,0,0,0,0,0,0,0,19749,0,0,0,0,0,0,0,0,1329,0,5,0,3104);
INSERT INTO `magian` VALUES (3617,19749,0,0,0,0,0,0,0,0,19842,0,0,0,0,0,0,0,0,1258,0,250,0,3567);

-- Guttler
INSERT INTO `magian` VALUES (1027,18288,0,0,0,0,0,0,0,0,18288,740,0,0,0,1,0,0,0,373,0,200,0,0);
INSERT INTO `magian` VALUES (1028,18288,740,0,0,0,1,0,0,0,18288,740,0,0,0,5,0,0,0,374,0,200,0,1027);
INSERT INTO `magian` VALUES (1842,18288,740,0,0,0,5,0,0,0,18288,740,0,0,0,6,0,0,0,676,0,300,0,1028);
INSERT INTO `magian` VALUES (1843,18288,740,0,0,0,6,0,0,0,18289,0,0,0,0,0,0,0,0,677,0,300,0,1842);
INSERT INTO `magian` VALUES (2261,18289,0,0,0,0,0,0,0,0,18641,0,0,0,0,0,0,0,0,961,0,400,0,1843);
INSERT INTO `magian` VALUES (2672,18641,0,0,0,0,0,0,0,0,18655,0,0,0,0,0,0,0,0,1082,0,5,0,2261);
INSERT INTO `magian` VALUES (3105,18655,0,0,0,0,0,0,0,0,18669,0,0,0,0,0,0,0,0,1181,0,10,0,2672);
INSERT INTO `magian` VALUES (3568,18669,0,0,0,0,0,0,0,0,19750,0,0,0,0,0,0,0,0,1329,0,5,0,3105);
INSERT INTO `magian` VALUES (3618,19750,0,0,0,0,0,0,0,0,19843,0,0,0,0,0,0,0,0,1258,0,250,0,3568);

-- Bravura
INSERT INTO `magian` VALUES (1033,18294,0,0,0,0,0,0,0,0,18294,740,0,0,0,2,0,0,0,377,0,200,0,0);
INSERT INTO `magian` VALUES (1034,18294,740,0,0,0,2,0,0,0,18294,740,0,0,0,6,0,0,0,378,0,200,0,1033);
INSERT INTO `magian` VALUES (1846,18294,740,0,0,0,6,0,0,0,18294,740,0,0,0,8,0,0,0,680,0,300,0,1034);
INSERT INTO `magian` VALUES (1847,18294,740,0,0,0,8,0,0,0,18295,0,0,0,0,0,0,0,0,681,0,300,0,1846);
INSERT INTO `magian` VALUES (2263,18295,0,0,0,0,0,0,0,0,18642,0,0,0,0,0,0,0,0,963,0,400,0,1847);
INSERT INTO `magian` VALUES (2674,18642,0,0,0,0,0,0,0,0,18656,0,0,0,0,0,0,0,0,1084,0,5,0,2263);
INSERT INTO `magian` VALUES (3107,18656,0,0,0,0,0,0,0,0,18670,0,0,0,0,0,0,0,0,1182,0,10,0,2674);
INSERT INTO `magian` VALUES (3570,18670,0,0,0,0,0,0,0,0,19751,0,0,0,0,0,0,0,0,1329,0,5,0,3107);
INSERT INTO `magian` VALUES (3620,19751,0,0,0,0,0,0,0,0,19844,0,0,0,0,0,0,0,0,1258,0,250,0,3570);

-- Gungnir
INSERT INTO `magian` VALUES (1039,18300,0,0,0,0,0,0,0,0,18300,740,0,0,0,2,0,0,0,381,0,200,0,0);
INSERT INTO `magian` VALUES (1040,18300,740,0,0,0,2,0,0,0,18300,740,0,0,0,6,0,0,0,382,0,200,0,1039);
INSERT INTO `magian` VALUES (1850,18300,740,0,0,0,6,0,0,0,18300,740,0,0,0,8,0,0,0,684,0,300,0,1040);
INSERT INTO `magian` VALUES (1851,18300,740,0,0,0,8,0,0,0,18301,0,0,0,0,0,0,0,0,685,0,300,0,1850);
INSERT INTO `magian` VALUES (2267,18301,0,0,0,0,0,0,0,0,18643,0,0,0,0,0,0,0,0,965,0,400,0,1851);
INSERT INTO `magian` VALUES (2678,18643,0,0,0,0,0,0,0,0,18657,0,0,0,0,0,0,0,0,1082,0,5,0,2267);
INSERT INTO `magian` VALUES (3111,18657,0,0,0,0,0,0,0,0,18671,0,0,0,0,0,0,0,0,1183,0,10,0,2678);
INSERT INTO `magian` VALUES (3574,18671,0,0,0,0,0,0,0,0,19752,0,0,0,0,0,0,0,0,1329,0,5,0,3111);
INSERT INTO `magian` VALUES (3624,19752,0,0,0,0,0,0,0,0,19845,0,0,0,0,0,0,0,0,1258,0,250,0,3574);

-- Apocalypse
INSERT INTO `magian` VALUES (1045,18306,0,0,0,0,0,0,0,0,18306,740,0,0,0,2,0,0,0,385,0,200,0,0);
INSERT INTO `magian` VALUES (1046,18306,740,0,0,0,2,0,0,0,18306,740,0,0,0,6,0,0,0,386,0,200,0,1045);
INSERT INTO `magian` VALUES (1854,18306,740,0,0,0,6,0,0,0,18306,740,0,0,0,8,0,0,0,688,0,300,0,1046);
INSERT INTO `magian` VALUES (1855,18306,740,0,0,0,8,0,0,0,18307,0,0,0,0,0,0,0,0,689,0,300,0,1854);
INSERT INTO `magian` VALUES (2265,18307,0,0,0,0,0,0,0,0,18644,0,0,0,0,0,0,0,0,967,0,400,0,1855);
INSERT INTO `magian` VALUES (2676,18644,0,0,0,0,0,0,0,0,18658,0,0,0,0,0,0,0,0,1081,0,5,0,2265);
INSERT INTO `magian` VALUES (3109,18658,0,0,0,0,0,0,0,0,18672,0,0,0,0,0,0,0,0,1184,0,10,0,2676);
INSERT INTO `magian` VALUES (3572,18672,0,0,0,0,0,0,0,0,19753,0,0,0,0,0,0,0,0,1329,0,5,0,3109);
INSERT INTO `magian` VALUES (3622,19753,0,0,0,0,0,0,0,0,19846,0,0,0,0,0,0,0,0,1258,0,250,0,3572);

-- Kikoku
INSERT INTO `magian` VALUES (1051,18312,0,0,0,0,0,0,0,0,18312,740,0,0,0,0,0,0,0,389,0,200,0,0);
INSERT INTO `magian` VALUES (1052,18312,740,0,0,0,0,0,0,0,18312,740,0,0,0,2,0,0,0,390,0,200,0,1051);
INSERT INTO `magian` VALUES (1858,18312,740,0,0,0,2,0,0,0,18312,740,0,0,0,3,0,0,0,692,0,300,0,1052);
INSERT INTO `magian` VALUES (1859,18312,740,0,0,0,3,0,0,0,18313,0,0,0,0,0,0,0,0,693,0,300,0,1858);
INSERT INTO `magian` VALUES (2269,18313,0,0,0,0,0,0,0,0,18645,0,0,0,0,0,0,0,0,969,0,400,0,1859);
INSERT INTO `magian` VALUES (2680,18645,0,0,0,0,0,0,0,0,18659,0,0,0,0,0,0,0,0,1083,0,5,0,2269);
INSERT INTO `magian` VALUES (3113,18659,0,0,0,0,0,0,0,0,18673,0,0,0,0,0,0,0,0,1185,0,10,0,2680);
INSERT INTO `magian` VALUES (3576,18673,0,0,0,0,0,0,0,0,19754,0,0,0,0,0,0,0,0,1329,0,5,0,3113);
INSERT INTO `magian` VALUES (3626,19754,0,0,0,0,0,0,0,0,19847,0,0,0,0,0,0,0,0,1258,0,250,0,3576);

-- Amanomurakumo
INSERT INTO `magian` VALUES (1057,18318,0,0,0,0,0,0,0,0,18318,740,0,0,0,1,0,0,0,393,0,200,0,0);
INSERT INTO `magian` VALUES (1058,18318,740,0,0,0,1,0,0,0,18318,740,0,0,0,4,0,0,0,394,0,200,0,1057);
INSERT INTO `magian` VALUES (1862,18318,740,0,0,0,4,0,0,0,18318,740,0,0,0,5,0,0,0,696,0,300,0,1058);
INSERT INTO `magian` VALUES (1863,18318,740,0,0,0,5,0,0,0,18319,0,0,0,0,0,0,0,0,697,0,300,0,1862);
INSERT INTO `magian` VALUES (2271,18319,0,0,0,0,0,0,0,0,18646,0,0,0,0,0,0,0,0,971,0,400,0,1863);
INSERT INTO `magian` VALUES (2682,18646,0,0,0,0,0,0,0,0,18660,0,0,0,0,0,0,0,0,1081,0,5,0,2271);
INSERT INTO `magian` VALUES (3115,18660,0,0,0,0,0,0,0,0,18674,0,0,0,0,0,0,0,0,1186,0,10,0,2682);
INSERT INTO `magian` VALUES (3578,18674,0,0,0,0,0,0,0,0,19755,0,0,0,0,0,0,0,0,1329,0,5,0,3115);
INSERT INTO `magian` VALUES (3628,19755,0,0,0,0,0,0,0,0,19848,0,0,0,0,0,0,0,0,1258,0,250,0,3578);

-- Mjollnir
INSERT INTO `magian` VALUES (1063,18324,0,0,0,0,0,0,0,0,18324,740,0,0,0,1,0,0,0,397,0,200,0,0);
INSERT INTO `magian` VALUES (1064,18324,740,0,0,0,1,0,0,0,18324,740,0,0,0,7,0,0,0,398,0,200,0,1063);
INSERT INTO `magian` VALUES (1866,18324,740,0,0,0,7,0,0,0,18324,740,0,0,0,8,0,0,0,700,0,300,0,1064);
INSERT INTO `magian` VALUES (1867,18324,740,0,0,0,8,0,0,0,18325,0,0,0,0,0,0,0,0,701,0,300,0,1866);
INSERT INTO `magian` VALUES (2273,18325,0,0,0,0,0,0,0,0,18647,0,0,0,0,0,0,0,0,973,0,400,0,1867);
INSERT INTO `magian` VALUES (2684,18647,0,0,0,0,0,0,0,0,18661,0,0,0,0,0,0,0,0,1085,0,5,0,2273);
INSERT INTO `magian` VALUES (3117,18661,0,0,0,0,0,0,0,0,18675,0,0,0,0,0,0,0,0,1187,0,10,0,2684);
INSERT INTO `magian` VALUES (3581,18675,0,0,0,0,0,0,0,0,19756,0,0,0,0,0,0,0,0,1329,0,5,0,3117);
INSERT INTO `magian` VALUES (3630,19756,0,0,0,0,0,0,0,0,19849,0,0,0,0,0,0,0,0,1258,0,250,0,3581);

-- Claustrum
INSERT INTO `magian` VALUES (1069,18330,0,0,0,0,0,0,0,0,18330,740,0,0,0,3,0,0,0,401,0,200,0,0);
INSERT INTO `magian` VALUES (1070,18330,740,0,0,0,3,0,0,0,18330,740,0,0,0,9,0,0,0,402,0,200,0,1069);
INSERT INTO `magian` VALUES (1870,18330,740,0,0,0,9,0,0,0,18330,740,0,0,0,11,0,0,0,704,0,300,0,1070);
INSERT INTO `magian` VALUES (1871,18330,740,0,0,0,11,0,0,0,18331,0,0,0,0,0,0,0,0,705,0,300,0,1870);
INSERT INTO `magian` VALUES (2275,18331,0,0,0,0,0,0,0,0,18648,0,0,0,0,0,0,0,0,975,0,400,0,1871);
INSERT INTO `magian` VALUES (2686,18648,0,0,0,0,0,0,0,0,18662,0,0,0,0,0,0,0,0,1082,0,5,0,2275);
INSERT INTO `magian` VALUES (3119,18662,0,0,0,0,0,0,0,0,18676,0,0,0,0,0,0,0,0,1188,0,10,0,2686);
INSERT INTO `magian` VALUES (3582,18676,0,0,0,0,0,0,0,0,19757,0,0,0,0,0,0,0,0,1329,0,5,0,3119);
INSERT INTO `magian` VALUES (3632,19757,0,0,0,0,0,0,0,0,19850,0,0,0,0,0,0,0,0,1258,0,250,0,3582);

-- Annihilator
INSERT INTO `magian` VALUES (1081,18336,0,0,0,0,0,0,0,0,18336,740,0,0,0,1,0,0,0,409,0,200,0,0);
INSERT INTO `magian` VALUES (1082,18336,740,0,0,0,1,0,0,0,18336,740,0,0,0,5,0,0,0,410,0,200,0,1081);
INSERT INTO `magian` VALUES (1878,18336,740,0,0,0,5,0,0,0,18336,740,0,0,0,7,0,0,0,712,0,300,0,1082);
INSERT INTO `magian` VALUES (1879,18336,740,0,0,0,7,0,0,0,18337,0,0,0,0,0,0,0,0,713,0,300,0,1878);
INSERT INTO `magian` VALUES (2280,18337,0,0,0,0,0,0,0,0,18649,0,0,0,0,0,0,0,0,979,0,400,0,1879);
INSERT INTO `magian` VALUES (2691,18649,0,0,0,0,0,0,0,0,18663,0,0,0,0,0,0,0,0,1083,0,5,0,2280);
INSERT INTO `magian` VALUES (3124,18663,0,0,0,0,0,0,0,0,18677,0,0,0,0,0,0,0,0,1190,0,10,0,2691);
INSERT INTO `magian` VALUES (3587,18677,0,0,0,0,0,0,0,0,19758,0,0,0,0,0,0,0,0,1329,0,5,0,3124);
INSERT INTO `magian` VALUES (3637,19758,0,0,0,0,0,0,0,0,19851,0,0,0,0,0,0,0,0,1258,0,250,0,3587);

-- Yoichinoyumi
INSERT INTO `magian` VALUES (1090,18348,0,0,0,0,0,0,0,0,18348,740,0,0,0,1,0,0,0,415,0,200,0,0);
INSERT INTO `magian` VALUES (1091,18348,740,0,0,0,1,0,0,0,18348,740,0,0,0,4,0,0,0,416,0,200,0,1090);
INSERT INTO `magian` VALUES (1884,18348,740,0,0,0,4,0,0,0,18348,740,0,0,0,7,0,0,0,718,0,300,0,1091);
INSERT INTO `magian` VALUES (1885,18348,740,0,0,0,7,0,0,0,18349,0,0,0,0,0,0,0,0,719,0,300,0,1884);
INSERT INTO `magian` VALUES (2279,18349,0,0,0,0,0,0,0,0,18650,0,0,0,0,0,0,0,0,982,0,400,0,1885);
INSERT INTO `magian` VALUES (2690,18650,0,0,0,0,0,0,0,0,18664,0,0,0,0,0,0,0,0,1081,0,5,0,2279);
INSERT INTO `magian` VALUES (3123,18664,0,0,0,0,0,0,0,0,18678,0,0,0,0,0,0,0,0,1189,0,10,0,2690);
INSERT INTO `magian` VALUES (3586,18678,0,0,0,0,0,0,0,0,19759,0,0,0,0,0,0,0,0,1329,0,5,0,3123);
INSERT INTO `magian` VALUES (3636,19759,0,0,0,0,0,0,0,0,19852,0,0,0,0,0,0,0,0,1258,0,250,0,3586);

-- Gjallarhorn
INSERT INTO `magian` VALUES (2713,18342,0,0,0,0,0,0,0,0,18577,0,0,0,0,0,0,0,0,1131,0,3,0,0);
INSERT INTO `magian` VALUES (2714,18577,0,0,0,0,0,0,0,0,18578,0,0,0,0,0,0,0,0,1133,0,3,0,2713);
INSERT INTO `magian` VALUES (2715,18578,0,0,0,0,0,0,0,0,18579,0,0,0,0,0,0,0,0,1085,0,5,0,2714);
INSERT INTO `magian` VALUES (3128,18579,0,0,0,0,0,0,0,0,18580,0,0,0,0,0,0,0,0,1191,0,10,0,2715);
INSERT INTO `magian` VALUES (3591,18580,0,0,0,0,0,0,0,0,18572,0,0,0,0,0,0,0,0,1329,0,5,0,3128);
INSERT INTO `magian` VALUES (3641,18572,0,0,0,0,0,0,0,0,18840,0,0,0,0,0,0,0,0,1258,0,250,0,3591);

-- Aegis
INSERT INTO `magian` VALUES (4401,15070,0,0,0,0,0,0,0,0,16195,0,0,0,0,0,0,0,0,1132,0,3,0,0);
INSERT INTO `magian` VALUES (4402,16195,0,0,0,0,0,0,0,0,16196,0,0,0,0,0,0,0,0,1134,0,3,0,4401);
INSERT INTO `magian` VALUES (4403,16196,0,0,0,0,0,0,0,0,16197,0,0,0,0,0,0,0,0,1084,0,5,0,4402);
INSERT INTO `magian` VALUES (4448,16197,0,0,0,0,0,0,0,0,16198,0,0,0,0,0,0,0,0,1192,0,10,0,4403);
INSERT INTO `magian` VALUES (4453,16198,0,0,0,0,0,0,0,0,11927,0,0,0,0,0,0,0,0,1329,0,5,0,4448);
INSERT INTO `magian` VALUES (5056,11927,0,0,0,0,0,0,0,0,16200,0,0,0,0,0,0,0,0,1258,0,250,0,4453);

/*!40000 ALTER TABLE `magian` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
