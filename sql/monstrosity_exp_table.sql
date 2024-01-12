DROP TABLE IF EXISTS `monstrosity_exp_table`;
CREATE TABLE IF NOT EXISTS `monstrosity_exp_table` (
  `level` tinyint(2) NOT NULL,
  `amount` smallint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`level`)
) ENGINE=Aria TRANSACTIONAL=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- https://www.bg-wiki.com/ffxi/Category:Monstrosity
INSERT INTO `monstrosity_exp_table` VALUES (1,300);
INSERT INTO `monstrosity_exp_table` VALUES (2,400);
INSERT INTO `monstrosity_exp_table` VALUES (3,500);
INSERT INTO `monstrosity_exp_table` VALUES (4,700);
INSERT INTO `monstrosity_exp_table` VALUES (5,800);
INSERT INTO `monstrosity_exp_table` VALUES (6,800);
INSERT INTO `monstrosity_exp_table` VALUES (7,900);
INSERT INTO `monstrosity_exp_table` VALUES (8,1000);
INSERT INTO `monstrosity_exp_table` VALUES (9,1100);
INSERT INTO `monstrosity_exp_table` VALUES (10,1200);
INSERT INTO `monstrosity_exp_table` VALUES (11,1350);
INSERT INTO `monstrosity_exp_table` VALUES (12,1500);
INSERT INTO `monstrosity_exp_table` VALUES (13,1650);
INSERT INTO `monstrosity_exp_table` VALUES (14,1800);
INSERT INTO `monstrosity_exp_table` VALUES (15,1950);
INSERT INTO `monstrosity_exp_table` VALUES (16,2100);
INSERT INTO `monstrosity_exp_table` VALUES (17,2250);
INSERT INTO `monstrosity_exp_table` VALUES (18,2400);
INSERT INTO `monstrosity_exp_table` VALUES (19,2550);
INSERT INTO `monstrosity_exp_table` VALUES (20,2700);
INSERT INTO `monstrosity_exp_table` VALUES (21,2850);
INSERT INTO `monstrosity_exp_table` VALUES (22,3000);
INSERT INTO `monstrosity_exp_table` VALUES (23,3100);
INSERT INTO `monstrosity_exp_table` VALUES (24,3200);
INSERT INTO `monstrosity_exp_table` VALUES (25,3300);
INSERT INTO `monstrosity_exp_table` VALUES (26,3400);
INSERT INTO `monstrosity_exp_table` VALUES (27,3500);
INSERT INTO `monstrosity_exp_table` VALUES (28,3600);
INSERT INTO `monstrosity_exp_table` VALUES (29,3700);
INSERT INTO `monstrosity_exp_table` VALUES (30,3800);
INSERT INTO `monstrosity_exp_table` VALUES (31,3900);
INSERT INTO `monstrosity_exp_table` VALUES (32,4000);
INSERT INTO `monstrosity_exp_table` VALUES (33,4100);
INSERT INTO `monstrosity_exp_table` VALUES (34,4200);
INSERT INTO `monstrosity_exp_table` VALUES (35,4300);
INSERT INTO `monstrosity_exp_table` VALUES (36,4400);
INSERT INTO `monstrosity_exp_table` VALUES (37,4500);
INSERT INTO `monstrosity_exp_table` VALUES (38,4600);
INSERT INTO `monstrosity_exp_table` VALUES (39,4700);
INSERT INTO `monstrosity_exp_table` VALUES (40,4800);
INSERT INTO `monstrosity_exp_table` VALUES (41,4900);
INSERT INTO `monstrosity_exp_table` VALUES (42,5000);
INSERT INTO `monstrosity_exp_table` VALUES (43,5100);
INSERT INTO `monstrosity_exp_table` VALUES (44,5200);
INSERT INTO `monstrosity_exp_table` VALUES (45,5300);
INSERT INTO `monstrosity_exp_table` VALUES (46,5400);
INSERT INTO `monstrosity_exp_table` VALUES (47,5500);
INSERT INTO `monstrosity_exp_table` VALUES (48,5600);
INSERT INTO `monstrosity_exp_table` VALUES (49,5700);
INSERT INTO `monstrosity_exp_table` VALUES (50,5800);
INSERT INTO `monstrosity_exp_table` VALUES (51,6000);
INSERT INTO `monstrosity_exp_table` VALUES (52,6400);
INSERT INTO `monstrosity_exp_table` VALUES (53,6800);
INSERT INTO `monstrosity_exp_table` VALUES (54,7200);
INSERT INTO `monstrosity_exp_table` VALUES (55,7600);
INSERT INTO `monstrosity_exp_table` VALUES (56,8000);
INSERT INTO `monstrosity_exp_table` VALUES (57,8400);
INSERT INTO `monstrosity_exp_table` VALUES (58,8800);
INSERT INTO `monstrosity_exp_table` VALUES (59,9200);
INSERT INTO `monstrosity_exp_table` VALUES (60,9600);
INSERT INTO `monstrosity_exp_table` VALUES (61,10000);
INSERT INTO `monstrosity_exp_table` VALUES (62,10500);
INSERT INTO `monstrosity_exp_table` VALUES (63,11000);
INSERT INTO `monstrosity_exp_table` VALUES (64,11500);
INSERT INTO `monstrosity_exp_table` VALUES (65,12000);
INSERT INTO `monstrosity_exp_table` VALUES (66,12500);
INSERT INTO `monstrosity_exp_table` VALUES (67,13000);
INSERT INTO `monstrosity_exp_table` VALUES (68,13500);
INSERT INTO `monstrosity_exp_table` VALUES (69,14000);
INSERT INTO `monstrosity_exp_table` VALUES (70,14500);
INSERT INTO `monstrosity_exp_table` VALUES (71,15000);
INSERT INTO `monstrosity_exp_table` VALUES (72,15500);
INSERT INTO `monstrosity_exp_table` VALUES (73,16000);
INSERT INTO `monstrosity_exp_table` VALUES (74,16500);
INSERT INTO `monstrosity_exp_table` VALUES (75,17000);
INSERT INTO `monstrosity_exp_table` VALUES (76,17500);
INSERT INTO `monstrosity_exp_table` VALUES (77,18000);
INSERT INTO `monstrosity_exp_table` VALUES (78,18500);
INSERT INTO `monstrosity_exp_table` VALUES (79,19000);
INSERT INTO `monstrosity_exp_table` VALUES (80,19500);
INSERT INTO `monstrosity_exp_table` VALUES (81,20000);
INSERT INTO `monstrosity_exp_table` VALUES (82,20500);
INSERT INTO `monstrosity_exp_table` VALUES (83,21000);
INSERT INTO `monstrosity_exp_table` VALUES (84,21500);
INSERT INTO `monstrosity_exp_table` VALUES (85,22000);
INSERT INTO `monstrosity_exp_table` VALUES (86,22500);
INSERT INTO `monstrosity_exp_table` VALUES (87,23000);
INSERT INTO `monstrosity_exp_table` VALUES (88,23500);
INSERT INTO `monstrosity_exp_table` VALUES (89,24000);

-- TODO: These are guessed, what are the exp requirements for these?
INSERT INTO `monstrosity_exp_table` VALUES (90,24500);
INSERT INTO `monstrosity_exp_table` VALUES (91,25000);
INSERT INTO `monstrosity_exp_table` VALUES (92,25500);
INSERT INTO `monstrosity_exp_table` VALUES (93,26000);
INSERT INTO `monstrosity_exp_table` VALUES (94,26500);
INSERT INTO `monstrosity_exp_table` VALUES (95,27000);
INSERT INTO `monstrosity_exp_table` VALUES (96,27500);
INSERT INTO `monstrosity_exp_table` VALUES (97,28000);
INSERT INTO `monstrosity_exp_table` VALUES (98,28500);
INSERT INTO `monstrosity_exp_table` VALUES (99,29000);
