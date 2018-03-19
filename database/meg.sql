-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 19, 2018 at 08:30 PM
-- Server version: 5.6.35
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `meg`
--

-- --------------------------------------------------------

--
-- Table structure for table `acos`
--

CREATE TABLE `acos` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) DEFAULT '',
  `foreign_key` int(10) UNSIGNED DEFAULT NULL,
  `alias` varchar(255) DEFAULT '',
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `acos`
--

INSERT INTO `acos` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`) VALUES
(180, NULL, NULL, NULL, 'controllers', 1, 1148),
(181, 180, NULL, NULL, 'Pages', 2, 67),
(183, 181, NULL, NULL, 'index', 3, 4),
(184, 181, NULL, NULL, 'getRole', 5, 6),
(185, 181, NULL, NULL, 'countRows', 7, 8),
(186, 180, NULL, NULL, 'Roles', 68, 117),
(187, 186, NULL, NULL, 'admin_index', 69, 70),
(188, 186, NULL, NULL, 'admin_view', 71, 72),
(189, 186, NULL, NULL, 'admin_add', 73, 74),
(190, 186, NULL, NULL, 'admin_edit', 75, 76),
(191, 186, NULL, NULL, 'admin_delete', 77, 78),
(192, 186, NULL, NULL, 'getRole', 79, 80),
(193, 186, NULL, NULL, 'countRows', 81, 82),
(194, 180, NULL, NULL, 'Users', 118, 177),
(195, 194, NULL, NULL, 'isAuthorized', 119, 120),
(196, 194, NULL, NULL, 'admin_index', 121, 122),
(197, 194, NULL, NULL, 'admin_login', 123, 124),
(198, 194, NULL, NULL, 'admin_logout', 125, 126),
(199, 194, NULL, NULL, 'admin_view', 127, 128),
(200, 194, NULL, NULL, 'admin_add', 129, 130),
(201, 194, NULL, NULL, 'admin_edit', 131, 132),
(202, 194, NULL, NULL, 'admin_delete', 133, 134),
(203, 194, NULL, NULL, 'getRole', 135, 136),
(204, 194, NULL, NULL, 'countRows', 137, 138),
(205, 180, NULL, NULL, 'Acl', 178, 347),
(206, 205, NULL, NULL, 'Acl', 179, 222),
(207, 206, NULL, NULL, 'index', 180, 181),
(208, 206, NULL, NULL, 'admin_index', 182, 183),
(209, 206, NULL, NULL, 'getRole', 184, 185),
(210, 206, NULL, NULL, 'countRows', 186, 187),
(211, 205, NULL, NULL, 'Acos', 223, 272),
(212, 211, NULL, NULL, 'admin_index', 224, 225),
(213, 211, NULL, NULL, 'admin_empty_acos', 226, 227),
(214, 211, NULL, NULL, 'admin_build_acl', 228, 229),
(215, 211, NULL, NULL, 'admin_prune_acos', 230, 231),
(216, 211, NULL, NULL, 'admin_synchronize', 232, 233),
(217, 211, NULL, NULL, 'getRole', 234, 235),
(218, 211, NULL, NULL, 'countRows', 236, 237),
(219, 205, NULL, NULL, 'Aros', 273, 346),
(220, 219, NULL, NULL, 'admin_index', 274, 275),
(221, 219, NULL, NULL, 'admin_check', 276, 277),
(222, 219, NULL, NULL, 'admin_users', 278, 279),
(223, 219, NULL, NULL, 'admin_update_user_role', 280, 281),
(224, 219, NULL, NULL, 'admin_ajax_role_permissions', 282, 283),
(225, 219, NULL, NULL, 'admin_role_permissions', 284, 285),
(226, 219, NULL, NULL, 'admin_user_permissions', 286, 287),
(227, 219, NULL, NULL, 'admin_empty_permissions', 288, 289),
(228, 219, NULL, NULL, 'admin_clear_user_specific_permissions', 290, 291),
(229, 219, NULL, NULL, 'admin_grant_all_controllers', 292, 293),
(230, 219, NULL, NULL, 'admin_deny_all_controllers', 294, 295),
(231, 219, NULL, NULL, 'admin_get_role_controller_permission', 296, 297),
(232, 219, NULL, NULL, 'admin_grant_role_permission', 298, 299),
(233, 219, NULL, NULL, 'admin_deny_role_permission', 300, 301),
(234, 219, NULL, NULL, 'admin_get_user_controller_permission', 302, 303),
(235, 219, NULL, NULL, 'admin_grant_user_permission', 304, 305),
(236, 219, NULL, NULL, 'admin_deny_user_permission', 306, 307),
(237, 219, NULL, NULL, 'getRole', 308, 309),
(238, 219, NULL, NULL, 'countRows', 310, 311),
(239, 180, NULL, NULL, 'Galleries', 348, 407),
(240, 239, NULL, NULL, 'admin_index', 349, 350),
(241, 239, NULL, NULL, 'admin_view', 351, 352),
(242, 239, NULL, NULL, 'admin_add', 353, 354),
(243, 239, NULL, NULL, 'admin_edit', 355, 356),
(244, 239, NULL, NULL, 'admin_delete', 357, 358),
(245, 239, NULL, NULL, 'getRole', 359, 360),
(246, 239, NULL, NULL, 'countRows', 361, 362),
(247, 180, NULL, NULL, 'Images', 408, 469),
(248, 247, NULL, NULL, 'getRole', 409, 410),
(249, 247, NULL, NULL, 'countRows', 411, 412),
(250, 247, NULL, NULL, 'admin_add', 413, 414),
(258, 247, NULL, NULL, 'admin_edit', 415, 416),
(259, 247, NULL, NULL, 'admin_ajax_edit', 417, 418),
(260, 247, NULL, NULL, 'admin_delete', 419, 420),
(261, 247, NULL, NULL, 'admin_view', 421, 422),
(262, 180, NULL, NULL, 'PageContents', 470, 525),
(263, 262, NULL, NULL, 'admin_index', 471, 472),
(264, 262, NULL, NULL, 'admin_view', 473, 474),
(265, 262, NULL, NULL, 'admin_add', 475, 476),
(266, 262, NULL, NULL, 'admin_edit', 477, 478),
(267, 262, NULL, NULL, 'admin_delete', 479, 480),
(268, 262, NULL, NULL, 'getRole', 481, 482),
(269, 262, NULL, NULL, 'countRows', 483, 484),
(270, 180, NULL, NULL, 'Banners', 526, 575),
(271, 270, NULL, NULL, 'admin_index', 527, 528),
(272, 270, NULL, NULL, 'admin_view', 529, 530),
(273, 270, NULL, NULL, 'admin_add', 531, 532),
(274, 270, NULL, NULL, 'admin_edit', 533, 534),
(275, 270, NULL, NULL, 'admin_delete', 535, 536),
(276, 270, NULL, NULL, 'getRole', 537, 538),
(277, 270, NULL, NULL, 'countRows', 539, 540),
(278, 270, NULL, NULL, 'getChildren', 541, 542),
(279, 239, NULL, NULL, 'getChildren', 363, 364),
(280, 247, NULL, NULL, 'getChildren', 423, 424),
(281, 262, NULL, NULL, 'getChildren', 485, 486),
(282, 181, NULL, NULL, 'getChildren', 9, 10),
(283, 186, NULL, NULL, 'getChildren', 83, 84),
(284, 194, NULL, NULL, 'getChildren', 139, 140),
(285, 206, NULL, NULL, 'getChildren', 188, 189),
(286, 211, NULL, NULL, 'getChildren', 238, 239),
(287, 219, NULL, NULL, 'getChildren', 312, 313),
(299, 180, NULL, NULL, 'Events', 576, 625),
(300, 299, NULL, NULL, 'admin_index', 577, 578),
(301, 299, NULL, NULL, 'admin_view', 579, 580),
(302, 299, NULL, NULL, 'admin_add', 581, 582),
(303, 299, NULL, NULL, 'admin_edit', 583, 584),
(304, 299, NULL, NULL, 'admin_delete', 585, 586),
(305, 299, NULL, NULL, 'getRole', 587, 588),
(306, 299, NULL, NULL, 'countRows', 589, 590),
(307, 299, NULL, NULL, 'getChildren', 591, 592),
(311, 270, NULL, NULL, 'checkGallery', 543, 544),
(312, 299, NULL, NULL, 'checkGallery', 593, 594),
(313, 239, NULL, NULL, 'checkGallery', 365, 366),
(314, 247, NULL, NULL, 'checkGallery', 425, 426),
(330, 262, NULL, NULL, 'checkGallery', 487, 488),
(337, 181, NULL, NULL, 'checkGallery', 11, 12),
(338, 186, NULL, NULL, 'checkGallery', 85, 86),
(339, 194, NULL, NULL, 'checkGallery', 141, 142),
(340, 206, NULL, NULL, 'checkGallery', 190, 191),
(341, 211, NULL, NULL, 'checkGallery', 240, 241),
(342, 219, NULL, NULL, 'checkGallery', 314, 315),
(343, 270, NULL, NULL, 'getChildrenId', 545, 546),
(344, 180, NULL, NULL, 'Dashboard', 626, 667),
(345, 344, NULL, NULL, 'admin_index', 627, 628),
(346, 344, NULL, NULL, 'getRole', 629, 630),
(347, 344, NULL, NULL, 'countRows', 631, 632),
(348, 344, NULL, NULL, 'getChildren', 633, 634),
(349, 344, NULL, NULL, 'getChildrenId', 635, 636),
(350, 344, NULL, NULL, 'checkGallery', 637, 638),
(351, 299, NULL, NULL, 'getChildrenId', 595, 596),
(352, 239, NULL, NULL, 'getChildrenId', 367, 368),
(353, 247, NULL, NULL, 'getChildrenId', 427, 428),
(355, 262, NULL, NULL, 'getChildrenId', 489, 490),
(356, 181, NULL, NULL, 'getChildrenId', 13, 14),
(357, 186, NULL, NULL, 'getChildrenId', 87, 88),
(358, 194, NULL, NULL, 'getChildrenId', 143, 144),
(359, 206, NULL, NULL, 'getChildrenId', 192, 193),
(360, 211, NULL, NULL, 'getChildrenId', 242, 243),
(361, 219, NULL, NULL, 'getChildrenId', 316, 317),
(399, 270, NULL, NULL, 'getFirstChild', 547, 548),
(400, 270, NULL, NULL, 'checkForGrandChildren', 549, 550),
(401, 344, NULL, NULL, 'getFirstChild', 639, 640),
(402, 344, NULL, NULL, 'checkForGrandChildren', 641, 642),
(403, 299, NULL, NULL, 'getFirstChild', 597, 598),
(404, 299, NULL, NULL, 'checkForGrandChildren', 599, 600),
(405, 239, NULL, NULL, 'getFirstChild', 369, 370),
(406, 239, NULL, NULL, 'checkForGrandChildren', 371, 372),
(407, 247, NULL, NULL, 'getFirstChild', 429, 430),
(408, 247, NULL, NULL, 'checkForGrandChildren', 431, 432),
(413, 262, NULL, NULL, 'getFirstChild', 491, 492),
(414, 262, NULL, NULL, 'checkForGrandChildren', 493, 494),
(427, 181, NULL, NULL, 'getFirstChild', 15, 16),
(428, 181, NULL, NULL, 'checkForGrandChildren', 17, 18),
(429, 186, NULL, NULL, 'getFirstChild', 89, 90),
(430, 186, NULL, NULL, 'checkForGrandChildren', 91, 92),
(444, 194, NULL, NULL, 'getFirstChild', 145, 146),
(445, 194, NULL, NULL, 'checkForGrandChildren', 147, 148),
(446, 206, NULL, NULL, 'getFirstChild', 194, 195),
(447, 206, NULL, NULL, 'checkForGrandChildren', 196, 197),
(448, 211, NULL, NULL, 'getFirstChild', 244, 245),
(449, 211, NULL, NULL, 'checkForGrandChildren', 246, 247),
(450, 219, NULL, NULL, 'getFirstChild', 318, 319),
(451, 219, NULL, NULL, 'checkForGrandChildren', 320, 321),
(470, 247, NULL, NULL, 'admin_set_default', 433, 434),
(474, 270, NULL, NULL, 'getFirstChildImage', 551, 552),
(476, 344, NULL, NULL, 'getFirstChildImage', 643, 644),
(477, 299, NULL, NULL, 'getFirstChildImage', 601, 602),
(492, 239, NULL, NULL, 'getFirstChildImage', 373, 374),
(493, 247, NULL, NULL, 'getFirstChildImage', 435, 436),
(495, 262, NULL, NULL, 'getFirstChildImage', 495, 496),
(505, 181, NULL, NULL, 'getFirstChildImage', 19, 20),
(506, 186, NULL, NULL, 'getFirstChildImage', 93, 94),
(507, 194, NULL, NULL, 'getFirstChildImage', 149, 150),
(508, 206, NULL, NULL, 'getFirstChildImage', 198, 199),
(509, 211, NULL, NULL, 'getFirstChildImage', 248, 249),
(510, 219, NULL, NULL, 'getFirstChildImage', 322, 323),
(511, 270, NULL, NULL, 'getCurrentChild', 553, 554),
(512, 270, NULL, NULL, 'getParent', 555, 556),
(513, 270, NULL, NULL, 'getData', 557, 558),
(517, 344, NULL, NULL, 'getCurrentChild', 645, 646),
(518, 344, NULL, NULL, 'getParent', 647, 648),
(519, 344, NULL, NULL, 'getData', 649, 650),
(520, 299, NULL, NULL, 'getCurrentChild', 603, 604),
(521, 299, NULL, NULL, 'getParent', 605, 606),
(522, 299, NULL, NULL, 'getData', 607, 608),
(526, 239, NULL, NULL, 'getCurrentChild', 375, 376),
(527, 239, NULL, NULL, 'getParent', 377, 378),
(528, 239, NULL, NULL, 'getData', 379, 380),
(529, 247, NULL, NULL, 'getCurrentChild', 437, 438),
(530, 247, NULL, NULL, 'getParent', 439, 440),
(531, 247, NULL, NULL, 'getData', 441, 442),
(535, 262, NULL, NULL, 'getCurrentChild', 497, 498),
(536, 262, NULL, NULL, 'getParent', 499, 500),
(537, 262, NULL, NULL, 'getData', 501, 502),
(540, 181, NULL, NULL, 'getCurrentChild', 21, 22),
(541, 181, NULL, NULL, 'getParent', 23, 24),
(542, 181, NULL, NULL, 'getData', 25, 26),
(543, 186, NULL, NULL, 'getCurrentChild', 95, 96),
(544, 186, NULL, NULL, 'getParent', 97, 98),
(545, 186, NULL, NULL, 'getData', 99, 100),
(546, 194, NULL, NULL, 'getCurrentChild', 151, 152),
(547, 194, NULL, NULL, 'getParent', 153, 154),
(548, 194, NULL, NULL, 'getData', 155, 156),
(549, 206, NULL, NULL, 'getCurrentChild', 200, 201),
(550, 206, NULL, NULL, 'getParent', 202, 203),
(551, 206, NULL, NULL, 'getData', 204, 205),
(552, 211, NULL, NULL, 'getCurrentChild', 250, 251),
(553, 211, NULL, NULL, 'getParent', 252, 253),
(554, 211, NULL, NULL, 'getData', 254, 255),
(555, 219, NULL, NULL, 'getCurrentChild', 324, 325),
(556, 219, NULL, NULL, 'getParent', 326, 327),
(557, 219, NULL, NULL, 'getData', 328, 329),
(569, 270, NULL, NULL, 'getSymbols', 559, 560),
(571, 344, NULL, NULL, 'getSymbols', 651, 652),
(572, 299, NULL, NULL, 'getSymbols', 609, 610),
(574, 239, NULL, NULL, 'getSymbols', 381, 382),
(575, 247, NULL, NULL, 'getSymbols', 443, 444),
(577, 262, NULL, NULL, 'getSymbols', 503, 504),
(579, 181, NULL, NULL, 'getSymbols', 27, 28),
(580, 186, NULL, NULL, 'getSymbols', 101, 102),
(581, 194, NULL, NULL, 'getSymbols', 157, 158),
(582, 206, NULL, NULL, 'getSymbols', 206, 207),
(583, 211, NULL, NULL, 'getSymbols', 256, 257),
(584, 219, NULL, NULL, 'getSymbols', 330, 331),
(719, 180, NULL, NULL, 'Videos', 668, 719),
(720, 719, NULL, NULL, 'admin_index', 669, 670),
(721, 719, NULL, NULL, 'admin_view', 671, 672),
(722, 719, NULL, NULL, 'admin_add', 673, 674),
(723, 719, NULL, NULL, 'admin_edit', 675, 676),
(724, 719, NULL, NULL, 'admin_delete', 677, 678),
(725, 719, NULL, NULL, 'getRole', 679, 680),
(726, 719, NULL, NULL, 'countRows', 681, 682),
(727, 719, NULL, NULL, 'getChildren', 683, 684),
(728, 719, NULL, NULL, 'getSymbols', 685, 686),
(729, 719, NULL, NULL, 'getFirstChild', 687, 688),
(730, 719, NULL, NULL, 'getCurrentChild', 689, 690),
(731, 719, NULL, NULL, 'getParent', 691, 692),
(732, 719, NULL, NULL, 'getFirstChildImage', 693, 694),
(733, 719, NULL, NULL, 'checkForGrandChildren', 695, 696),
(734, 719, NULL, NULL, 'getChildrenId', 697, 698),
(735, 719, NULL, NULL, 'checkGallery', 699, 700),
(736, 719, NULL, NULL, 'getData', 701, 702),
(741, 180, NULL, NULL, 'Sitemap', 720, 763),
(742, 741, NULL, NULL, 'Sitemaps', 721, 762),
(743, 742, NULL, NULL, 'display', 722, 723),
(744, 742, NULL, NULL, 'getRole', 724, 725),
(745, 742, NULL, NULL, 'countRows', 726, 727),
(746, 742, NULL, NULL, 'getChildren', 728, 729),
(747, 742, NULL, NULL, 'getSymbols', 730, 731),
(748, 742, NULL, NULL, 'getFirstChild', 732, 733),
(749, 742, NULL, NULL, 'getCurrentChild', 734, 735),
(750, 742, NULL, NULL, 'getParent', 736, 737),
(751, 742, NULL, NULL, 'getFirstChildImage', 738, 739),
(752, 742, NULL, NULL, 'checkForGrandChildren', 740, 741),
(753, 742, NULL, NULL, 'getChildrenId', 742, 743),
(754, 742, NULL, NULL, 'checkGallery', 744, 745),
(755, 742, NULL, NULL, 'getData', 746, 747),
(874, 262, NULL, NULL, 'admin_set_default', 505, 506),
(889, 194, NULL, NULL, 'client_login', 159, 160),
(890, 194, NULL, NULL, 'client_logout', 161, 162),
(893, 180, NULL, NULL, 'News', 764, 825),
(894, 893, NULL, NULL, 'admin_index', 765, 766),
(895, 893, NULL, NULL, 'admin_view', 767, 768),
(896, 893, NULL, NULL, 'admin_add', 769, 770),
(897, 893, NULL, NULL, 'admin_edit', 771, 772),
(898, 893, NULL, NULL, 'admin_delete', 773, 774),
(899, 893, NULL, NULL, 'admin_archive_news', 775, 776),
(900, 893, NULL, NULL, 'admin_unarchive_news', 777, 778),
(901, 893, NULL, NULL, 'admin_publish_news', 779, 780),
(902, 893, NULL, NULL, 'admin_unpublish_news', 781, 782),
(903, 893, NULL, NULL, 'admin_enable_comments', 783, 784),
(904, 893, NULL, NULL, 'admin_disable_comments', 785, 786),
(905, 893, NULL, NULL, 'getRole', 787, 788),
(906, 893, NULL, NULL, 'countRows', 789, 790),
(907, 893, NULL, NULL, 'getChildren', 791, 792),
(908, 893, NULL, NULL, 'getSymbols', 793, 794),
(909, 893, NULL, NULL, 'getFirstChild', 795, 796),
(910, 893, NULL, NULL, 'getCurrentChild', 797, 798),
(911, 893, NULL, NULL, 'getParent', 799, 800),
(912, 893, NULL, NULL, 'getFirstChildImage', 801, 802),
(913, 893, NULL, NULL, 'checkForGrandChildren', 803, 804),
(914, 893, NULL, NULL, 'getChildrenId', 805, 806),
(915, 893, NULL, NULL, 'checkGallery', 807, 808),
(916, 893, NULL, NULL, 'getData', 809, 810),
(923, 181, NULL, NULL, 'download', 29, 30),
(931, 181, NULL, NULL, 'newsletter', 31, 32),
(932, 719, NULL, NULL, 'admin_featured', 703, 704),
(933, 270, NULL, NULL, 'getChildrenAsc', 561, 562),
(934, 344, NULL, NULL, 'getChildrenAsc', 653, 654),
(935, 299, NULL, NULL, 'getChildrenAsc', 611, 612),
(936, 239, NULL, NULL, 'getChildrenAsc', 383, 384),
(937, 247, NULL, NULL, 'admin_feature', 445, 446),
(938, 247, NULL, NULL, 'admin_remove_feature', 447, 448),
(939, 247, NULL, NULL, 'getChildrenAsc', 449, 450),
(940, 893, NULL, NULL, 'getChildrenAsc', 811, 812),
(941, 262, NULL, NULL, 'admin_featured', 507, 508),
(942, 262, NULL, NULL, 'admin_featured_clear', 509, 510),
(943, 262, NULL, NULL, 'getChildrenAsc', 511, 512),
(944, 181, NULL, NULL, 'getChildrenAsc', 33, 34),
(945, 186, NULL, NULL, 'getChildrenAsc', 103, 104),
(946, 194, NULL, NULL, 'getChildrenAsc', 163, 164),
(947, 719, NULL, NULL, 'getChildrenAsc', 705, 706),
(948, 206, NULL, NULL, 'getChildrenAsc', 208, 209),
(949, 211, NULL, NULL, 'getChildrenAsc', 258, 259),
(950, 219, NULL, NULL, 'getChildrenAsc', 332, 333),
(951, 742, NULL, NULL, 'getChildrenAsc', 748, 749),
(952, 180, NULL, NULL, 'OrderItems', 826, 865),
(953, 952, NULL, NULL, 'getRole', 827, 828),
(954, 952, NULL, NULL, 'countRows', 829, 830),
(955, 952, NULL, NULL, 'getChildren', 831, 832),
(956, 952, NULL, NULL, 'getChildrenAsc', 833, 834),
(957, 952, NULL, NULL, 'getSymbols', 835, 836),
(958, 952, NULL, NULL, 'getFirstChild', 837, 838),
(959, 952, NULL, NULL, 'getCurrentChild', 839, 840),
(960, 952, NULL, NULL, 'getParent', 841, 842),
(961, 952, NULL, NULL, 'getFirstChildImage', 843, 844),
(962, 952, NULL, NULL, 'checkForGrandChildren', 845, 846),
(963, 952, NULL, NULL, 'getChildrenId', 847, 848),
(964, 952, NULL, NULL, 'checkGallery', 849, 850),
(965, 952, NULL, NULL, 'getData', 851, 852),
(966, 180, NULL, NULL, 'Orders', 866, 913),
(967, 966, NULL, NULL, 'admin_index', 867, 868),
(968, 966, NULL, NULL, 'admin_view', 869, 870),
(969, 966, NULL, NULL, 'admin_edit', 871, 872),
(970, 966, NULL, NULL, 'admin_delete', 873, 874),
(971, 966, NULL, NULL, 'getRole', 875, 876),
(972, 966, NULL, NULL, 'countRows', 877, 878),
(973, 966, NULL, NULL, 'getChildren', 879, 880),
(974, 966, NULL, NULL, 'getChildrenAsc', 881, 882),
(975, 966, NULL, NULL, 'getSymbols', 883, 884),
(976, 966, NULL, NULL, 'getFirstChild', 885, 886),
(977, 966, NULL, NULL, 'getCurrentChild', 887, 888),
(978, 966, NULL, NULL, 'getParent', 889, 890),
(979, 966, NULL, NULL, 'getFirstChildImage', 891, 892),
(980, 966, NULL, NULL, 'checkForGrandChildren', 893, 894),
(981, 966, NULL, NULL, 'getChildrenId', 895, 896),
(982, 966, NULL, NULL, 'checkGallery', 897, 898),
(983, 966, NULL, NULL, 'getData', 899, 900),
(987, 181, NULL, NULL, 'merchandise', 35, 36),
(988, 181, NULL, NULL, 'gallery', 37, 38),
(989, 180, NULL, NULL, 'Productmods', 914, 963),
(990, 989, NULL, NULL, 'admin_index', 915, 916),
(991, 989, NULL, NULL, 'admin_view', 917, 918),
(992, 989, NULL, NULL, 'admin_add', 919, 920),
(993, 989, NULL, NULL, 'admin_edit', 921, 922),
(994, 989, NULL, NULL, 'admin_delete', 923, 924),
(995, 989, NULL, NULL, 'getRole', 925, 926),
(996, 989, NULL, NULL, 'countRows', 927, 928),
(997, 989, NULL, NULL, 'getChildren', 929, 930),
(998, 989, NULL, NULL, 'getChildrenAsc', 931, 932),
(999, 989, NULL, NULL, 'getSymbols', 933, 934),
(1000, 989, NULL, NULL, 'getFirstChild', 935, 936),
(1001, 989, NULL, NULL, 'getCurrentChild', 937, 938),
(1002, 989, NULL, NULL, 'getParent', 939, 940),
(1003, 989, NULL, NULL, 'getFirstChildImage', 941, 942),
(1004, 989, NULL, NULL, 'checkForGrandChildren', 943, 944),
(1005, 989, NULL, NULL, 'getChildrenId', 945, 946),
(1006, 989, NULL, NULL, 'checkGallery', 947, 948),
(1007, 989, NULL, NULL, 'getData', 949, 950),
(1008, 180, NULL, NULL, 'Products', 964, 1029),
(1016, 1008, NULL, NULL, 'admin_index', 965, 966),
(1017, 1008, NULL, NULL, 'admin_view', 967, 968),
(1018, 1008, NULL, NULL, 'admin_add', 969, 970),
(1019, 1008, NULL, NULL, 'admin_edit', 971, 972),
(1022, 1008, NULL, NULL, 'admin_delete', 973, 974),
(1023, 1008, NULL, NULL, 'getRole', 975, 976),
(1024, 1008, NULL, NULL, 'countRows', 977, 978),
(1025, 1008, NULL, NULL, 'getChildren', 979, 980),
(1026, 1008, NULL, NULL, 'getChildrenAsc', 981, 982),
(1027, 1008, NULL, NULL, 'getSymbols', 983, 984),
(1028, 1008, NULL, NULL, 'getFirstChild', 985, 986),
(1029, 1008, NULL, NULL, 'getCurrentChild', 987, 988),
(1030, 1008, NULL, NULL, 'getParent', 989, 990),
(1031, 1008, NULL, NULL, 'getFirstChildImage', 991, 992),
(1032, 1008, NULL, NULL, 'checkForGrandChildren', 993, 994),
(1033, 1008, NULL, NULL, 'getChildrenId', 995, 996),
(1034, 1008, NULL, NULL, 'checkGallery', 997, 998),
(1035, 1008, NULL, NULL, 'getData', 999, 1000),
(1036, 180, NULL, NULL, 'Shop', 1030, 1093),
(1037, 1036, NULL, NULL, 'clear', 1031, 1032),
(1038, 1036, NULL, NULL, 'add', 1033, 1034),
(1039, 1036, NULL, NULL, 'itemupdate', 1035, 1036),
(1040, 1036, NULL, NULL, 'update', 1037, 1038),
(1041, 1036, NULL, NULL, 'remove', 1039, 1040),
(1042, 1036, NULL, NULL, 'cartupdate', 1041, 1042),
(1043, 1036, NULL, NULL, 'cart', 1043, 1044),
(1044, 1036, NULL, NULL, 'address', 1045, 1046),
(1045, 1036, NULL, NULL, 'step1', 1047, 1048),
(1046, 1036, NULL, NULL, 'step2', 1049, 1050),
(1047, 1036, NULL, NULL, 'review', 1051, 1052),
(1048, 1036, NULL, NULL, 'success', 1053, 1054),
(1049, 1036, NULL, NULL, 'getRole', 1055, 1056),
(1050, 1036, NULL, NULL, 'countRows', 1057, 1058),
(1051, 1036, NULL, NULL, 'getChildren', 1059, 1060),
(1052, 1036, NULL, NULL, 'getChildrenAsc', 1061, 1062),
(1053, 1036, NULL, NULL, 'getSymbols', 1063, 1064),
(1054, 1036, NULL, NULL, 'getFirstChild', 1065, 1066),
(1055, 1036, NULL, NULL, 'getCurrentChild', 1067, 1068),
(1056, 1036, NULL, NULL, 'getParent', 1069, 1070),
(1057, 1036, NULL, NULL, 'getFirstChildImage', 1071, 1072),
(1058, 1036, NULL, NULL, 'checkForGrandChildren', 1073, 1074),
(1059, 1036, NULL, NULL, 'getChildrenId', 1075, 1076),
(1060, 1036, NULL, NULL, 'checkGallery', 1077, 1078),
(1061, 1036, NULL, NULL, 'getData', 1079, 1080),
(1062, 180, NULL, NULL, 'Categories', 1094, 1147),
(1063, 1062, NULL, NULL, 'index', 1095, 1096),
(1064, 1062, NULL, NULL, 'view', 1097, 1098),
(1065, 1062, NULL, NULL, 'admin_index', 1099, 1100),
(1066, 1062, NULL, NULL, 'admin_view', 1101, 1102),
(1067, 1062, NULL, NULL, 'admin_add', 1103, 1104),
(1068, 1062, NULL, NULL, 'admin_edit', 1105, 1106),
(1069, 1062, NULL, NULL, 'admin_delete', 1107, 1108),
(1070, 1062, NULL, NULL, 'getRole', 1109, 1110),
(1071, 1062, NULL, NULL, 'countRows', 1111, 1112),
(1072, 1062, NULL, NULL, 'getChildren', 1113, 1114),
(1073, 1062, NULL, NULL, 'getChildrenAsc', 1115, 1116),
(1074, 1062, NULL, NULL, 'getSymbols', 1117, 1118),
(1075, 1062, NULL, NULL, 'getFirstChild', 1119, 1120),
(1076, 1062, NULL, NULL, 'getCurrentChild', 1121, 1122),
(1077, 1062, NULL, NULL, 'getParent', 1123, 1124),
(1078, 1062, NULL, NULL, 'getFirstChildImage', 1125, 1126),
(1079, 1062, NULL, NULL, 'checkForGrandChildren', 1127, 1128),
(1080, 1062, NULL, NULL, 'getChildrenId', 1129, 1130),
(1081, 1062, NULL, NULL, 'checkGallery', 1131, 1132),
(1082, 1062, NULL, NULL, 'getData', 1133, 1134),
(1083, 1008, NULL, NULL, 'admin_activate', 1001, 1002),
(1084, 1008, NULL, NULL, 'admin_deactivate', 1003, 1004),
(1085, 270, NULL, NULL, 'admin_editable', 563, 564),
(1086, 1062, NULL, NULL, 'admin_editable', 1135, 1136),
(1087, 344, NULL, NULL, 'admin_editable', 655, 656),
(1088, 299, NULL, NULL, 'admin_editable', 613, 614),
(1089, 239, NULL, NULL, 'admin_editable', 385, 386),
(1090, 247, NULL, NULL, 'admin_editable', 451, 452),
(1091, 893, NULL, NULL, 'admin_editable', 813, 814),
(1092, 952, NULL, NULL, 'admin_editable', 853, 854),
(1093, 966, NULL, NULL, 'admin_editable', 901, 902),
(1094, 262, NULL, NULL, 'admin_editable', 513, 514),
(1095, 181, NULL, NULL, 'admin_editable', 39, 40),
(1096, 989, NULL, NULL, 'admin_editable', 951, 952),
(1097, 1008, NULL, NULL, 'admin_add_image', 1005, 1006),
(1098, 1008, NULL, NULL, 'admin_edit_image', 1007, 1008),
(1099, 1008, NULL, NULL, 'admin_editable', 1009, 1010),
(1100, 186, NULL, NULL, 'admin_editable', 105, 106),
(1101, 1036, NULL, NULL, 'admin_editable', 1081, 1082),
(1102, 194, NULL, NULL, 'admin_editable', 165, 166),
(1103, 719, NULL, NULL, 'admin_editable', 707, 708),
(1104, 206, NULL, NULL, 'admin_editable', 210, 211),
(1105, 211, NULL, NULL, 'admin_editable', 260, 261),
(1106, 219, NULL, NULL, 'admin_editable', 334, 335),
(1107, 742, NULL, NULL, 'admin_editable', 750, 751),
(1108, 181, NULL, NULL, 'collection', 41, 42),
(1109, 270, NULL, NULL, 'createList', 565, 566),
(1110, 1062, NULL, NULL, 'createList', 1137, 1138),
(1111, 344, NULL, NULL, 'createList', 657, 658),
(1112, 299, NULL, NULL, 'createList', 615, 616),
(1113, 239, NULL, NULL, 'createList', 387, 388),
(1114, 247, NULL, NULL, 'createList', 453, 454),
(1115, 893, NULL, NULL, 'createList', 815, 816),
(1116, 952, NULL, NULL, 'createList', 855, 856),
(1117, 966, NULL, NULL, 'createList', 903, 904),
(1118, 262, NULL, NULL, 'createList', 515, 516),
(1119, 181, NULL, NULL, 'collections', 43, 44),
(1120, 181, NULL, NULL, 'order', 45, 46),
(1121, 181, NULL, NULL, 'sales', 47, 48),
(1122, 181, NULL, NULL, 'brand', 49, 50),
(1123, 181, NULL, NULL, 'contact', 51, 52),
(1124, 181, NULL, NULL, 'process_order', 53, 54),
(1125, 181, NULL, NULL, 'process_sales', 55, 56),
(1126, 181, NULL, NULL, 'createList', 57, 58),
(1127, 989, NULL, NULL, 'createList', 953, 954),
(1128, 1008, NULL, NULL, 'admin_view_options', 1011, 1012),
(1129, 1008, NULL, NULL, 'admin_add_options', 1013, 1014),
(1130, 1008, NULL, NULL, 'admin_edit_options', 1015, 1016),
(1131, 1008, NULL, NULL, 'admin_delete_option', 1017, 1018),
(1132, 1008, NULL, NULL, 'createList', 1019, 1020),
(1133, 186, NULL, NULL, 'createList', 107, 108),
(1134, 1036, NULL, NULL, 'createList', 1083, 1084),
(1135, 194, NULL, NULL, 'createList', 167, 168),
(1136, 719, NULL, NULL, 'createList', 709, 710),
(1137, 206, NULL, NULL, 'createList', 212, 213),
(1138, 211, NULL, NULL, 'createList', 262, 263),
(1139, 219, NULL, NULL, 'createList', 336, 337),
(1140, 742, NULL, NULL, 'createList', 752, 753),
(1141, 270, NULL, NULL, 'countRowsN', 567, 568),
(1142, 270, NULL, NULL, 'createListP', 569, 570),
(1143, 270, NULL, NULL, 'getMinMax', 571, 572),
(1144, 1062, NULL, NULL, 'countRowsN', 1139, 1140),
(1145, 1062, NULL, NULL, 'createListP', 1141, 1142),
(1146, 1062, NULL, NULL, 'getMinMax', 1143, 1144),
(1147, 344, NULL, NULL, 'countRowsN', 659, 660),
(1148, 344, NULL, NULL, 'createListP', 661, 662),
(1149, 344, NULL, NULL, 'getMinMax', 663, 664),
(1150, 299, NULL, NULL, 'countRowsN', 617, 618),
(1151, 299, NULL, NULL, 'createListP', 619, 620),
(1152, 299, NULL, NULL, 'getMinMax', 621, 622),
(1153, 239, NULL, NULL, 'admin_index_galleries', 389, 390),
(1154, 239, NULL, NULL, 'admin_view_gallery', 391, 392),
(1155, 239, NULL, NULL, 'admin_add_gallery', 393, 394),
(1156, 239, NULL, NULL, 'admin_edit_gallery', 395, 396),
(1157, 239, NULL, NULL, 'admin_delete_gallery', 397, 398),
(1158, 239, NULL, NULL, 'countRowsN', 399, 400),
(1159, 239, NULL, NULL, 'createListP', 401, 402),
(1160, 239, NULL, NULL, 'getMinMax', 403, 404),
(1161, 247, NULL, NULL, 'admin_delete_selected', 455, 456),
(1162, 247, NULL, NULL, 'admin_add_image', 457, 458),
(1163, 247, NULL, NULL, 'admin_edit_image', 459, 460),
(1164, 247, NULL, NULL, 'countRowsN', 461, 462),
(1165, 247, NULL, NULL, 'createListP', 463, 464),
(1166, 247, NULL, NULL, 'getMinMax', 465, 466),
(1167, 893, NULL, NULL, 'countRowsN', 817, 818),
(1168, 893, NULL, NULL, 'createListP', 819, 820),
(1169, 893, NULL, NULL, 'getMinMax', 821, 822),
(1170, 952, NULL, NULL, 'countRowsN', 857, 858),
(1171, 952, NULL, NULL, 'createListP', 859, 860),
(1172, 952, NULL, NULL, 'getMinMax', 861, 862),
(1173, 966, NULL, NULL, 'countRowsN', 905, 906),
(1174, 966, NULL, NULL, 'createListP', 907, 908),
(1175, 966, NULL, NULL, 'getMinMax', 909, 910),
(1176, 262, NULL, NULL, 'countRowsN', 517, 518),
(1177, 262, NULL, NULL, 'createListP', 519, 520),
(1178, 262, NULL, NULL, 'getMinMax', 521, 522),
(1179, 181, NULL, NULL, 'countRowsN', 59, 60),
(1180, 181, NULL, NULL, 'createListP', 61, 62),
(1181, 181, NULL, NULL, 'getMinMax', 63, 64),
(1182, 989, NULL, NULL, 'countRowsN', 955, 956),
(1183, 989, NULL, NULL, 'createListP', 957, 958),
(1184, 989, NULL, NULL, 'getMinMax', 959, 960),
(1185, 1008, NULL, NULL, 'countRowsN', 1021, 1022),
(1186, 1008, NULL, NULL, 'createListP', 1023, 1024),
(1187, 1008, NULL, NULL, 'getMinMax', 1025, 1026),
(1188, 186, NULL, NULL, 'countRowsN', 109, 110),
(1189, 186, NULL, NULL, 'createListP', 111, 112),
(1190, 186, NULL, NULL, 'getMinMax', 113, 114),
(1191, 1036, NULL, NULL, 'countRowsN', 1085, 1086),
(1192, 1036, NULL, NULL, 'createListP', 1087, 1088),
(1193, 1036, NULL, NULL, 'getMinMax', 1089, 1090),
(1194, 194, NULL, NULL, 'countRowsN', 169, 170),
(1195, 194, NULL, NULL, 'createListP', 171, 172),
(1196, 194, NULL, NULL, 'getMinMax', 173, 174),
(1197, 719, NULL, NULL, 'countRowsN', 711, 712),
(1198, 719, NULL, NULL, 'createListP', 713, 714),
(1199, 719, NULL, NULL, 'getMinMax', 715, 716),
(1200, 206, NULL, NULL, 'countRowsN', 214, 215),
(1201, 206, NULL, NULL, 'createListP', 216, 217),
(1202, 206, NULL, NULL, 'getMinMax', 218, 219),
(1203, 211, NULL, NULL, 'countRowsN', 264, 265),
(1204, 211, NULL, NULL, 'createListP', 266, 267),
(1205, 211, NULL, NULL, 'getMinMax', 268, 269),
(1206, 219, NULL, NULL, 'countRowsN', 338, 339),
(1207, 219, NULL, NULL, 'createListP', 340, 341),
(1208, 219, NULL, NULL, 'getMinMax', 342, 343),
(1209, 742, NULL, NULL, 'countRowsN', 754, 755),
(1210, 742, NULL, NULL, 'createListP', 756, 757),
(1211, 742, NULL, NULL, 'getMinMax', 758, 759),
(1212, 270, NULL, NULL, 'countRowsP', 573, 574),
(1213, 1062, NULL, NULL, 'countRowsP', 1145, 1146),
(1214, 344, NULL, NULL, 'countRowsP', 665, 666),
(1215, 299, NULL, NULL, 'countRowsP', 623, 624),
(1216, 239, NULL, NULL, 'countRowsP', 405, 406),
(1217, 247, NULL, NULL, 'countRowsP', 467, 468),
(1218, 893, NULL, NULL, 'countRowsP', 823, 824),
(1219, 952, NULL, NULL, 'countRowsP', 863, 864),
(1220, 966, NULL, NULL, 'countRowsP', 911, 912),
(1221, 262, NULL, NULL, 'countRowsP', 523, 524),
(1222, 181, NULL, NULL, 'countRowsP', 65, 66),
(1223, 989, NULL, NULL, 'countRowsP', 961, 962),
(1224, 1008, NULL, NULL, 'countRowsP', 1027, 1028),
(1225, 186, NULL, NULL, 'countRowsP', 115, 116),
(1226, 1036, NULL, NULL, 'countRowsP', 1091, 1092),
(1227, 194, NULL, NULL, 'countRowsP', 175, 176),
(1228, 719, NULL, NULL, 'countRowsP', 717, 718),
(1229, 206, NULL, NULL, 'countRowsP', 220, 221),
(1230, 211, NULL, NULL, 'countRowsP', 270, 271),
(1231, 219, NULL, NULL, 'countRowsP', 344, 345),
(1232, 742, NULL, NULL, 'countRowsP', 760, 761);

-- --------------------------------------------------------

--
-- Table structure for table `aros`
--

CREATE TABLE `aros` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) DEFAULT '',
  `foreign_key` int(10) UNSIGNED DEFAULT NULL,
  `alias` varchar(255) DEFAULT '',
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aros`
--

INSERT INTO `aros` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`) VALUES
(1, NULL, 'Role', 1, '', 1, 10),
(2, 1, 'User', 1, '', 2, 3),
(4, NULL, 'Role', 2, '', 11, 14),
(5, 4, 'User', 3, '', 12, 13),
(6, 1, 'User', 2, '', 4, 5),
(7, 1, 'User', 2, '', 6, 7),
(8, NULL, 'Role', 3, '', 15, 18),
(9, 8, 'User', 2, '', 16, 17),
(10, 1, 'User', 3, '', 8, 9);

-- --------------------------------------------------------

--
-- Table structure for table `aros_acos`
--

CREATE TABLE `aros_acos` (
  `id` int(10) UNSIGNED NOT NULL,
  `aro_id` int(10) UNSIGNED NOT NULL,
  `aco_id` int(10) UNSIGNED NOT NULL,
  `_create` char(2) NOT NULL DEFAULT '0',
  `_read` char(2) NOT NULL DEFAULT '0',
  `_update` char(2) NOT NULL DEFAULT '0',
  `_delete` char(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aros_acos`
--

INSERT INTO `aros_acos` (`id`, `aro_id`, `aco_id`, `_create`, `_read`, `_update`, `_delete`) VALUES
(13, 1, 180, '1', '1', '1', '1'),
(15, 4, 197, '1', '1', '1', '1'),
(16, 4, 198, '1', '1', '1', '1'),
(17, 4, 274, '1', '1', '1', '1'),
(18, 4, 272, '1', '1', '1', '1'),
(19, 4, 271, '1', '1', '1', '1'),
(20, 4, 278, '1', '1', '1', '1'),
(21, 4, 277, '1', '1', '1', '1'),
(22, 4, 276, '1', '1', '1', '1'),
(23, 4, 242, '1', '1', '1', '1'),
(24, 4, 244, '1', '1', '1', '1'),
(25, 4, 243, '1', '1', '1', '1'),
(26, 4, 240, '1', '1', '1', '1'),
(27, 4, 241, '1', '1', '1', '1'),
(28, 4, 246, '1', '1', '1', '1'),
(29, 4, 279, '1', '1', '1', '1'),
(30, 4, 245, '1', '1', '1', '1'),
(31, 4, 250, '1', '1', '1', '1'),
(32, 4, 259, '1', '1', '1', '1'),
(33, 4, 260, '1', '1', '1', '1'),
(34, 4, 258, '1', '1', '1', '1'),
(35, 4, 261, '1', '1', '1', '1'),
(36, 4, 249, '1', '1', '1', '1'),
(37, 4, 280, '1', '1', '1', '1'),
(38, 4, 248, '1', '1', '1', '1'),
(40, 4, 266, '1', '1', '1', '1'),
(41, 4, 263, '1', '1', '1', '1'),
(42, 4, 264, '1', '1', '1', '1'),
(43, 4, 269, '1', '1', '1', '1'),
(44, 4, 281, '1', '1', '1', '1'),
(45, 4, 268, '1', '1', '1', '1'),
(46, 4, 185, '1', '1', '1', '1'),
(48, 4, 282, '1', '1', '1', '1'),
(49, 4, 184, '1', '1', '1', '1'),
(50, 4, 183, '1', '1', '1', '1'),
(51, 4, 187, '1', '1', '1', '1'),
(52, 4, 188, '1', '1', '1', '1'),
(53, 4, 193, '1', '1', '1', '1'),
(54, 4, 283, '1', '1', '1', '1'),
(55, 4, 192, '1', '1', '1', '1'),
(56, 4, 201, '1', '1', '1', '1'),
(57, 4, 196, '1', '1', '1', '1'),
(58, 4, 199, '1', '1', '1', '1'),
(59, 4, 204, '1', '1', '1', '1'),
(60, 4, 284, '1', '1', '1', '1'),
(61, 4, 203, '1', '1', '1', '1'),
(62, 4, 195, '1', '1', '1', '1'),
(63, 4, 209, '1', '1', '1', '1'),
(64, 4, 217, '1', '1', '1', '1'),
(65, 4, 237, '1', '1', '1', '1'),
(66, 4, 222, '1', '1', '1', '1'),
(70, 8, 185, '1', '1', '1', '1'),
(72, 8, 183, '1', '1', '1', '1'),
(80, 8, 889, '1', '1', '1', '1'),
(81, 8, 890, '1', '1', '1', '1'),
(82, 8, 579, '1', '1', '1', '1'),
(83, 8, 184, '1', '1', '1', '1'),
(84, 8, 541, '1', '1', '1', '1'),
(85, 8, 505, '1', '1', '1', '1'),
(86, 8, 427, '1', '1', '1', '1'),
(87, 8, 542, '1', '1', '1', '1'),
(88, 8, 540, '1', '1', '1', '1'),
(89, 8, 356, '1', '1', '1', '1'),
(90, 8, 282, '1', '1', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(11) NOT NULL,
  `category` varchar(11) DEFAULT NULL,
  `banner_image` varchar(160) NOT NULL,
  `title` varchar(140) NOT NULL,
  `description` text NOT NULL,
  `page_meta_description` varchar(150) NOT NULL,
  `page_meta_keywords` mediumtext NOT NULL,
  `url_content` text NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `add_banner` varchar(1) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `category`, `banner_image`, `title`, `description`, `page_meta_description`, `page_meta_keywords`, `url_content`, `url`, `add_banner`, `created`, `modified`) VALUES
(1, NULL, 'meg_banner.jpeg', 'Home', 'AkuaBa Dolls<br  /> 2016/2017', '', '', '', NULL, '0', '2016-12-05 09:13:05', '2017-06-01 10:58:18');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` int(1) DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `lft` int(10) UNSIGNED DEFAULT NULL,
  `rght` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `cat_image` varchar(160) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `lft`, `rght`, `name`, `slug`, `description`, `content`, `cat_image`, `status`, `created`, `modified`) VALUES
(1, NULL, 1, 14, 'AkuaBa Dolls', 'akuaba-dolls', '', '', 'meg_banner.jpeg', '0', '2016-09-08 20:01:11', '2017-06-01 10:47:07'),
(2, 1, 2, 3, 'Bridal', 'bridal', '<p>Beautiful but functional wedding gowns which can be transformed to suit the needs of any bride. So whether you love it simple or complicated, whether to be worn once or several times you&rsquo;ll find what you are looking for in our convertible gowns.</p>\r\n', 'All strapless gowns can have any variety of top section:  Straps, off-shoulder, one strap, Round Neckline, \'V\'-Neckline etc', 'meg_banner-0.jpeg', '0', '2016-09-08 20:07:48', '2017-06-01 10:49:14'),
(3, 1, 4, 5, 'Traditional Bridal', 'traditional-bridal', '<p>Traditional weddings tell of our culture, and kente is one culture that transcends almost all tribes in Ghana. <strong>Find our creative ways of making this tradition modern with style to suit the figures of our dolls</strong></p>', '', '', '0', '2016-09-08 20:13:57', '2016-09-08 20:13:57'),
(4, 1, 6, 7, 'Little Bride', 'little-bride', '<p>Our Little Bride Akuaba Dolls will look stunning on little brides or flower girls making them feel and look beautiful, like the Dolls they are</p>\r\n', '', '', '0', '2016-09-08 20:14:55', '2016-09-08 20:34:17'),
(5, 1, 8, 9, 'Casual', 'casual', '<p>Simple and fashionable every day and everywhere wears. Feel free in our playful African print designs and be chic.</p>', '', '', '0', '2016-09-08 20:15:34', '2016-09-08 20:15:34'),
(6, 1, 10, 11, 'Bridesmaids & Special Occasion', 'bridesmaids-special-occasion', '<p>Find a variety of flowy, fitting, short or long dresses suitable for following that special bride or for special occasions made with a touch of class to flatter any figure</p>\r\n', '', '', '0', '2016-09-08 20:16:30', '2016-09-08 20:35:41'),
(7, 1, 12, 13, 'Christmas ', 'christmas-collections', '<p>Hurray! Its December and Meg&#39; Signature wants you to celebrate this wonderful month with us &quot;celebrity style&quot; as we outdoor our Christmas AkuaBa Dolls collection made in sizes and colours just for you.</p>\r\n\r\n<p>Our limited edition of our Christmas Akuaba Dolls will make you and your loved ones look and feel like the dolls you are. SALES START FROM THE 10TH OF DECEMBER</p>\r\n', 'Orders will begin from 10th December. For more Information, kindly call 0555554207', '', '1', '2016-12-05 09:09:07', '2016-12-06 17:33:27');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `event_image` varchar(140) DEFAULT NULL,
  `file` varchar(160) NOT NULL,
  `title` varchar(140) NOT NULL,
  `content` longtext NOT NULL,
  `event_date` date DEFAULT NULL,
  `time` time NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(150) NOT NULL,
  `name` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `link_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `img_thumb` varchar(100) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `slug`, `link_id`, `name`, `description`, `img_thumb`, `created`, `modified`) VALUES
(6, 'cad001', 3, '#CAD001', '', '', '2016-09-13 08:03:29', '2016-09-13 08:03:29'),
(7, 'cad002', 4, '#CAD002', '', '', '2016-09-13 08:03:45', '2016-09-13 08:03:45'),
(8, 'cad003', 5, '#CAD003', '', '', '2016-09-13 08:08:27', '2016-09-13 08:08:27'),
(9, 'cad004', 6, '#CAD004', '', '', '2016-09-13 08:19:14', '2016-09-13 08:19:14'),
(10, 'bad001-2', 11, '#BAD001', '', '', '2016-09-13 08:19:20', '2016-09-13 13:33:09'),
(11, 'bad002-2', 12, '#BAD002', '', '', '2016-09-13 08:19:29', '2016-09-13 13:37:10'),
(12, 'bad003-2', 13, '#BAD003', '', '', '2016-09-13 08:19:35', '2016-09-13 13:37:47'),
(13, 'bad004-2', 14, '#BAD004', '', '', '2016-09-13 08:19:42', '2016-09-13 13:38:22'),
(14, 'bad005-2', 15, '#BAD005', '', '', '2016-09-13 08:19:48', '2016-09-13 13:40:20'),
(15, 'bad006-2', 16, '#BAD006', '', '', '2016-09-13 08:19:57', '2016-09-13 13:40:42'),
(16, 'bad007-2', 17, '#BAD007', '', '', '2016-09-13 08:20:36', '2016-09-13 13:41:30'),
(17, 'bad008-2', 18, '#BAD008', '', '', '2016-09-13 08:20:45', '2016-09-13 13:41:55'),
(18, 'bad009-2', 19, '#BAD009', '', '', '2016-09-13 08:20:51', '2016-09-13 13:42:19'),
(19, 'bad010-2', 20, '#BAD010', '', '', '2016-09-13 08:20:58', '2016-09-13 13:42:41'),
(20, 'bad011-2', 21, '#BAD011', '', '', '2016-09-13 08:21:05', '2016-09-13 13:43:35'),
(21, 'bad012', 22, '#BAD012', '', '', '2016-09-13 08:21:26', '2016-09-13 13:43:57'),
(22, 'bad013-2', 23, '#BAD013', '', '', '2016-09-13 08:22:22', '2016-09-13 13:44:25'),
(23, 'bad014-2', 24, '#BAD014', '', '', '2016-09-13 08:22:30', '2016-09-13 13:44:54'),
(24, 'bad015', 25, '#BAD015', '', '', '2016-09-13 08:22:37', '2016-09-13 13:45:28'),
(25, 'bad016-2', 26, '#BAD016', '', '', '2016-09-13 08:22:45', '2016-09-13 13:45:49'),
(26, 'bad017-2', 27, '#BAD017', '', '', '2016-09-13 08:22:53', '2016-09-13 13:46:25'),
(27, 'bad018-2', 28, '#BAD018', '', '', '2016-09-13 08:23:00', '2016-09-13 13:47:21'),
(28, 'bad019-2', 29, '#BAD019', '', '', '2016-09-13 08:23:10', '2016-09-13 13:47:46'),
(29, 'cad005', 31, '#CAD005', '', '', '2016-09-13 08:23:16', '2016-09-13 08:23:16'),
(30, 'cad008', 32, '#CAD008', '', '', '2016-09-13 08:23:24', '2016-09-13 08:23:24'),
(31, 'cad006', 33, '#CAD006', '', '', '2016-09-13 08:23:37', '2016-09-13 08:23:37'),
(32, 'cad007', 34, '#CAD007', '', '', '2016-09-13 08:23:56', '2016-09-13 08:23:56'),
(33, 'cad009', 35, '#CAD009', '', '', '2016-09-13 08:24:06', '2016-09-13 08:24:06'),
(34, 'cad010', 36, '#CAD010', '', '', '2016-09-13 08:24:16', '2016-09-13 08:24:16'),
(35, 'cad011', 37, '#CAD011', '', '', '2016-09-13 08:24:29', '2016-09-13 08:24:29'),
(36, 'bsad002', 51, '#BSAD002', '', '', '2016-09-13 08:26:45', '2016-09-13 08:26:45'),
(37, 'bsad003', 52, '#BSAD003', '', '', '2016-09-13 08:26:55', '2016-09-13 08:26:55'),
(38, 'bsad004', 53, '#BSAD004', '', '', '2016-09-13 08:27:05', '2016-09-13 08:27:05'),
(39, 'bsad005', 54, '#BSAD005', '', '', '2016-09-13 08:27:15', '2016-09-13 08:27:15'),
(40, 'bsad008', 56, '#BSAD008', '', '', '2016-09-13 08:27:26', '2016-09-13 08:27:26'),
(41, 'bsad009', 57, '#BSAD009', '', '', '2016-09-13 08:27:35', '2016-09-13 08:27:35'),
(42, 'bsad010', 58, '#BSAD010', '', '', '2016-09-13 08:27:44', '2016-09-13 08:27:44'),
(43, 'bsad011', 59, '#BSAD011', '', '', '2016-09-13 08:27:55', '2016-09-13 08:27:55'),
(44, 'bsad012', 60, '#BSAD012', '', '', '2016-09-13 08:28:05', '2016-09-13 08:28:05'),
(45, 'bsad013', 61, '#BSAD013', '', '', '2016-09-13 08:28:16', '2016-09-13 08:28:16'),
(46, 'bsad014', 62, '#BSAD014', '', '', '2016-09-13 08:28:26', '2016-09-13 08:28:26'),
(47, 'bsad015', 63, '#BSAD015', '', '', '2016-09-13 08:28:36', '2016-09-13 08:28:36'),
(48, 'bsad016', 64, '#BSAD016', '', '', '2016-09-13 08:30:25', '2016-09-13 08:30:25'),
(49, 'bsad017', 65, '#BSAD017', '', '', '2016-09-13 08:31:10', '2016-09-13 08:31:10'),
(50, 'bsad018', 66, '#BSAD018', '', '', '2016-09-13 08:31:21', '2016-09-13 08:31:21'),
(51, 'bsad019', 67, '#BSAD019', '', '', '2016-09-13 08:31:30', '2016-09-13 08:31:30'),
(52, 'bsad020', 68, '#BSAD020', '', '', '2016-09-13 08:31:39', '2016-09-13 08:31:39'),
(53, 'bsad021', 69, '#BSAD021', '', '', '2016-09-13 08:31:48', '2016-09-13 08:31:48'),
(54, 'bsad022', 70, '#BSAD022', '', '', '2016-09-13 08:31:58', '2016-09-13 08:31:58'),
(55, 'bsad023', 71, '#BSAD023', '', '', '2016-09-13 08:32:13', '2016-09-13 08:32:13'),
(56, 'bsad024', 72, '#BSAD024', '', '', '2016-09-13 08:32:26', '2016-09-13 08:32:26'),
(57, 'bsad025', 73, '#BSAD025', '', '', '2016-09-13 08:32:37', '2016-09-13 08:32:37'),
(58, 'bsad026', 74, '#BSAD026', '', '', '2016-09-13 08:32:50', '2016-09-13 08:32:50'),
(59, 'bsad027', 75, '#BSAD027', '', '', '2016-09-13 08:33:01', '2016-09-13 08:33:01'),
(60, 'bsad028', 76, '#BSAD028', '', '', '2016-09-13 08:33:15', '2016-09-13 08:33:15'),
(61, 'bsad029', 77, '#BSAD029', '', '', '2016-09-13 08:33:27', '2016-09-13 08:33:27'),
(62, 'bsad030', 78, '#BSAD030', '', '', '2016-09-13 08:33:39', '2016-09-13 08:33:39'),
(63, 'bsad031', 79, '#BSAD031', '', '', '2016-09-13 08:33:49', '2016-09-13 08:33:49'),
(64, 'bsad032', 80, '#BSAD032', '', '', '2016-09-13 08:34:00', '2016-09-13 08:34:00'),
(65, 'bsad033', 81, '#BSAD033', '', '', '2016-09-13 08:34:32', '2016-09-13 08:34:32'),
(66, 'bsad034', 82, '#BSAD034', '', '', '2016-09-13 08:34:42', '2016-09-13 08:34:42'),
(67, 'bsad035', 83, '#BSAD035', '', '', '2016-09-13 08:34:52', '2016-09-13 08:34:52'),
(68, 'bsad036', 84, '#BSAD036', '', '', '2016-09-13 08:35:03', '2016-09-13 08:35:03'),
(69, 'bsad037', 85, '#BSAD037', '', '', '2016-09-13 08:35:15', '2016-09-13 08:35:15'),
(70, 'bsad038', 86, '#BSAD038', '', '', '2016-09-13 08:35:27', '2016-09-13 08:35:27'),
(71, 'bsad039', 87, '#BSAD039', '', '', '2016-09-13 08:35:37', '2016-09-13 08:35:37'),
(72, 'bsad040', 88, '#BSAD040', '', '', '2016-09-13 08:35:47', '2016-09-13 08:35:47'),
(73, 'tad001', 89, '#TAD001', '', '', '2016-09-13 08:35:56', '2016-09-13 08:35:56'),
(74, 'tad002', 90, '#TAD002', '', '', '2016-09-13 08:36:06', '2016-09-13 08:36:06'),
(75, 'tad003', 91, '#TAD003', '', '', '2016-09-13 08:36:16', '2016-09-13 08:36:16'),
(76, 'tad004', 92, '#TAD004', '', '', '2016-09-13 08:36:25', '2016-09-13 08:36:25'),
(77, 'tad005', 93, '#TAD005', '', '', '2016-09-13 08:36:35', '2016-09-13 08:36:35'),
(78, 'tad006', 94, '#TAD006', '', '', '2016-09-13 08:36:45', '2016-09-13 08:36:45'),
(79, 'tad007', 95, '#TAD007', '', '', '2016-09-13 08:36:54', '2016-09-13 08:36:54'),
(80, 'lbad008', 106, '#LBAD008', '', '', '2016-09-13 11:49:44', '2016-09-13 11:49:44'),
(81, 'lbad004', 102, '#LBAD004', '', '', '2016-09-13 11:49:52', '2016-09-13 11:49:52'),
(82, 'lbad007', 105, '#LBAD007', '', '', '2016-09-13 11:50:03', '2016-09-13 11:50:03'),
(83, 'lbad006', 104, '#LBAD006', '', '', '2016-09-13 11:50:14', '2016-09-13 11:50:14'),
(84, 'lbad005', 103, '#LBAD005', '', '', '2016-09-13 11:50:23', '2016-09-13 11:50:23'),
(85, 'lbad009', 107, '#LBAD009', '', '', '2016-09-13 11:50:33', '2016-09-13 11:50:33'),
(86, 'tad008', 96, '#TAD008', '', '', '2016-09-13 11:50:49', '2016-09-13 11:50:49'),
(87, 'tad009', 97, '#TAD009', '', '', '2016-09-13 11:51:00', '2016-09-13 11:51:00'),
(88, 'tad010', 98, '#TAD010', '', '', '2016-09-13 11:51:10', '2016-09-13 11:51:10'),
(89, 'lbad001', 99, '#LBAD001', '', '', '2016-09-13 11:51:19', '2016-09-13 11:51:19'),
(90, 'lbad002', 100, '#LBAD002', '', '', '2016-09-13 11:51:28', '2016-09-13 11:51:28'),
(91, 'lbad003', 101, '#LBAD003', '', '', '2016-09-13 11:51:39', '2016-09-13 11:51:39'),
(92, 'tad011', 108, '#TAD011', '', '', '2016-09-13 20:49:54', '2016-09-13 20:49:54'),
(93, 'tad012', 109, '#TAD012', '', '', '2016-09-13 20:51:42', '2016-09-13 20:51:42'),
(94, 'tad013', 110, '#TAD013', '', '', '2016-09-13 20:53:27', '2016-09-13 20:53:27'),
(95, 'tad014', 111, '#TAD014', '', '', '2016-09-13 20:55:02', '2016-09-13 20:55:02'),
(96, 'tad015', 112, '#TAD015', '', '', '2016-09-13 20:57:19', '2016-09-13 20:57:19'),
(97, 'tad016', 113, '#TAD016', '', '', '2016-09-13 20:58:58', '2016-09-13 20:58:58'),
(98, 'tad017', 114, '#TAD017', '', '', '2016-09-13 20:59:53', '2016-09-13 20:59:53'),
(99, 'tad018', 115, '#TAD018', '', '', '2016-09-13 21:00:47', '2016-09-13 21:00:47'),
(100, 'tad019', 116, '#TAD019', '', '', '2016-09-13 21:02:03', '2016-09-13 21:02:03'),
(104, 'chad003', 121, 'ChAD003', '', '', '2016-12-05 16:15:44', '2016-12-08 06:46:11'),
(102, 'chad001', 118, 'ChAD001', '', '', '2016-12-05 15:56:19', '2016-12-08 06:42:28'),
(103, 'chad002-2', 120, 'ChAD002', '', '', '2016-12-05 16:06:42', '2016-12-08 06:42:49'),
(105, 'chad004', 122, 'ChAD004', '', '', '2016-12-05 16:18:52', '2016-12-05 16:22:44'),
(106, 'chad004-2', 123, 'ChAD004', '', '', '2016-12-05 16:25:07', '2016-12-08 06:46:38'),
(107, 'chad005-2', 124, 'ChAD005', '', '', '2016-12-05 16:29:39', '2016-12-08 06:47:09'),
(108, 'chad006', 125, 'ChAD006', '', '', '2016-12-05 16:36:08', '2016-12-08 06:50:11'),
(109, 'chad007', 126, 'ChAD007', '', '', '2016-12-05 16:36:29', '2016-12-08 06:50:35'),
(110, 'chad008', 127, 'ChAD008', '', '', '2016-12-05 16:37:51', '2016-12-08 06:49:40'),
(111, 'chad009', 128, 'ChAD009', '', '', '2016-12-05 16:47:29', '2016-12-08 06:51:23'),
(112, 'chad010', 129, 'ChAD010', '', '', '2016-12-05 16:50:10', '2016-12-08 06:53:23'),
(113, 'chad011-2', 130, 'ChAD011', '', '', '2016-12-05 17:04:26', '2016-12-08 06:53:43'),
(114, 'chad012', 131, 'ChAD012', '', '', '2016-12-05 17:07:04', '2016-12-08 07:06:55'),
(115, 'chad013', 132, 'ChAD013', '', '', '2016-12-05 17:08:18', '2016-12-08 06:54:15'),
(116, 'chad014', 133, 'ChAD014', '', '', '2016-12-05 17:11:25', '2016-12-08 06:54:34'),
(117, 'chad015-2', 134, 'ChAD015', '', '', '2016-12-05 17:14:18', '2016-12-08 06:54:53'),
(118, 'chad016', 135, 'ChAD016', '', '', '2016-12-05 17:18:21', '2016-12-08 06:55:56'),
(119, 'chad017', 136, 'ChAD017', '', '', '2016-12-05 17:22:29', '2016-12-08 07:08:41'),
(120, 'chad018-2', 137, 'ChAD018', '', '', '2016-12-05 17:25:53', '2016-12-08 06:56:35'),
(121, 'chad019-2', 138, 'ChAD019', '', '', '2016-12-05 17:28:37', '2016-12-08 06:56:54'),
(122, 'chad020-2', 139, 'ChAD020', '', '', '2016-12-05 17:32:30', '2016-12-08 06:57:16'),
(123, 'chad021-2', 140, 'ChAD021', '', '', '2016-12-05 17:34:43', '2016-12-08 06:58:10'),
(124, 'chad022-2', 141, 'ChAD022', '', '', '2016-12-05 17:36:39', '2016-12-08 06:58:27'),
(125, 'chad023-2', 142, 'ChAD023', '', '', '2016-12-05 17:38:37', '2016-12-08 06:58:41'),
(126, 'chad024-2', 143, 'ChAD024', '', '', '2016-12-05 17:41:21', '2016-12-08 06:58:57'),
(128, 'celebrity', 0, 'Celebrity', '', '', '2017-02-07 08:47:50', '2017-02-07 08:47:50');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `gallery_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `img_file` varchar(255) NOT NULL,
  `img_thumb` varchar(100) NOT NULL,
  `default_img` tinyint(1) NOT NULL DEFAULT '0',
  `feature` varchar(1) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `slug`, `gallery_id`, `name`, `img_file`, `img_thumb`, `default_img`, `feature`, `created`, `modified`) VALUES
(1, '', 4, '', 'casual_1_1.jpg', '', 0, '0', '2016-09-12 18:27:27', '2016-09-12 18:27:27'),
(2, '', 6, '', 'casual_1_1-0.jpg', '', 0, '0', '2016-09-13 08:51:53', '2016-09-13 08:51:53'),
(3, '', 6, '', 'casual_1_2.jpg', '', 0, '0', '2016-09-13 08:51:54', '2016-09-13 08:51:54'),
(4, '', 6, '', 'casual_1.jpg', '', 0, '0', '2016-09-13 08:51:55', '2016-09-13 08:51:55'),
(5, '', 7, '', 'casual_2.jpg', '', 0, '0', '2016-09-13 08:58:41', '2016-09-13 08:58:41'),
(6, '', 7, '', 'casual_2a.jpg', '', 0, '0', '2016-09-13 08:58:42', '2016-09-13 08:58:42'),
(7, '', 7, '', 'casual_2b.jpg', '', 0, '0', '2016-09-13 08:58:43', '2016-09-13 08:58:43'),
(8, '', 8, '', 'casual_3_2.jpg', '', 0, '0', '2016-09-13 09:01:41', '2016-09-13 09:01:41'),
(9, '', 8, '', 'casual_3.jpg', '', 0, '0', '2016-09-13 09:01:42', '2016-09-13 09:01:42'),
(10, '', 29, '', 'New_casual_5.jpg', '', 0, '0', '2016-09-13 09:03:08', '2016-09-13 09:03:08'),
(11, '', 30, '', 'New_casual_8.jpg', '', 0, '0', '2016-09-13 09:06:28', '2016-09-13 09:06:28'),
(12, '', 31, '', 'New_Casual_9jpg.jpg', '', 0, '0', '2016-09-13 09:08:02', '2016-09-13 09:08:02'),
(13, '', 32, '', 'New_Casual_10jpg_1.jpg', '', 0, '0', '2016-09-13 09:09:00', '2016-09-13 09:09:00'),
(14, '', 32, '', 'New_Casual_10jpg.jpg', '', 0, '0', '2016-09-13 09:09:00', '2016-09-13 09:09:00'),
(15, '', 33, '', 'New_casual_11.jpg', '', 0, '0', '2016-09-13 09:09:57', '2016-09-13 09:09:57'),
(16, '', 34, '', 'New_Casual_12jpg.jpg', '', 0, '0', '2016-09-13 09:10:57', '2016-09-13 09:10:57'),
(17, '', 35, '', 'New_casual_13.jpg', '', 0, '0', '2016-09-13 09:12:04', '2016-09-13 09:12:04'),
(18, '', 10, '', 'Bridal_1a.jpg', '', 0, '0', '2016-09-13 09:15:08', '2016-09-13 09:15:08'),
(19, '', 10, '', 'Bridal_1b_jpg.jpg', '', 0, '0', '2016-09-13 09:15:08', '2016-09-13 09:15:08'),
(20, '', 10, '', 'Bridal_1c.jpg', '', 0, '0', '2016-09-13 09:15:09', '2016-09-13 09:15:09'),
(21, '', 11, '', 'Bridal_2a.jpg', '', 0, '0', '2016-09-13 09:16:40', '2016-09-13 09:16:40'),
(22, '', 11, '', 'Bridal_2b.jpg', '', 0, '0', '2016-09-13 09:16:40', '2016-09-13 09:16:40'),
(23, '', 11, '', 'Bridal_2c.jpg', '', 0, '0', '2016-09-13 09:16:41', '2016-09-13 09:16:41'),
(24, '', 11, '', 'Bridal_2d.jpg', '', 0, '0', '2016-09-13 09:16:42', '2016-09-13 09:16:42'),
(25, '', 12, '', 'Bridal_3a.jpg', '', 0, '0', '2016-09-13 09:17:46', '2016-09-13 09:17:46'),
(26, '', 12, '', 'Bridal_3b.jpg', '', 0, '0', '2016-09-13 09:17:47', '2016-09-13 09:17:47'),
(27, '', 12, '', 'Bridal_3c.jpg', '', 0, '0', '2016-09-13 09:17:47', '2016-09-13 09:17:47'),
(28, '', 13, '', 'Bridal_4a.jpg', '', 0, '0', '2016-09-13 09:18:39', '2016-09-13 09:18:39'),
(29, '', 13, '', 'Bridal_4c.jpg', '', 0, '0', '2016-09-13 09:18:39', '2016-09-13 09:18:39'),
(30, '', 14, '', 'Bridal_5a.jpg', '', 0, '0', '2016-09-13 09:19:31', '2016-09-13 09:19:31'),
(31, '', 15, '', 'Bridal_6a.jpg', '', 0, '0', '2016-09-13 09:21:06', '2016-09-13 09:21:06'),
(32, '', 15, '', 'Bridal_6b.jpg', '', 0, '0', '2016-09-13 09:21:07', '2016-09-13 09:21:07'),
(33, '', 15, '', 'Bridal_6c.jpg', '', 0, '0', '2016-09-13 09:21:08', '2016-09-13 09:21:08'),
(34, '', 16, '', 'Bridal_7a.jpg', '', 0, '0', '2016-09-13 09:22:17', '2016-09-13 09:22:17'),
(35, '', 16, '', 'Bridal_7b.jpg', '', 0, '0', '2016-09-13 09:22:18', '2016-09-13 09:22:18'),
(36, '', 16, '', 'Bridal_7c.jpg', '', 0, '0', '2016-09-13 09:22:19', '2016-09-13 09:22:19'),
(37, '', 17, '', 'Bridal_8a.jpg', '', 0, '0', '2016-09-13 09:23:23', '2016-09-13 09:23:23'),
(38, '', 17, '', 'Bridal_8b.jpg', '', 0, '0', '2016-09-13 09:23:24', '2016-09-13 09:23:24'),
(39, '', 17, '', 'Bridal_8c.jpg', '', 0, '0', '2016-09-13 09:23:24', '2016-09-13 09:23:24'),
(40, '', 17, '', 'Bridal_8d.jpg', '', 0, '0', '2016-09-13 09:23:25', '2016-09-13 09:23:25'),
(41, '', 18, '', 'Bridal_9a.jpg', '', 0, '0', '2016-09-13 09:24:28', '2016-09-13 09:24:28'),
(42, '', 18, '', 'Bridal_9b.jpg', '', 0, '0', '2016-09-13 09:24:29', '2016-09-13 09:24:29'),
(43, '', 18, '', 'Bridal_9c.jpg', '', 0, '0', '2016-09-13 09:24:30', '2016-09-13 09:24:30'),
(44, '', 18, '', 'Bridal_9d.jpg', '', 0, '0', '2016-09-13 09:24:31', '2016-09-13 09:24:31'),
(45, '', 18, '', 'New_bridal_9.jpg', '', 0, '0', '2016-09-13 09:24:32', '2016-09-13 09:24:32'),
(46, '', 19, '', 'Bridal_10a.jpg', '', 0, '0', '2016-09-13 09:26:01', '2016-09-13 09:26:01'),
(47, '', 19, '', 'Bridal_10b.jpg', '', 0, '0', '2016-09-13 09:26:02', '2016-09-13 09:26:02'),
(48, '', 19, '', 'Bridal_10c.jpg', '', 0, '0', '2016-09-13 09:26:03', '2016-09-13 09:26:03'),
(49, '', 20, '', 'Bridal_11a.jpg', '', 0, '0', '2016-09-13 09:28:38', '2016-09-13 09:28:38'),
(50, '', 20, '', 'Bridal_11b.jpg', '', 0, '0', '2016-09-13 09:28:39', '2016-09-13 09:28:39'),
(51, '', 20, '', 'Bridal_11c.jpg', '', 0, '0', '2016-09-13 09:28:40', '2016-09-13 09:28:40'),
(52, '', 20, '', 'Bridal_11d.jpg', '', 0, '0', '2016-09-13 09:28:41', '2016-09-13 09:28:41'),
(53, '', 21, '', 'Bridal_12a.jpg', '', 0, '0', '2016-09-13 09:30:31', '2016-09-13 09:30:31'),
(54, '', 21, '', 'Bridal_12b.jpg', '', 0, '0', '2016-09-13 09:30:32', '2016-09-13 09:30:32'),
(55, '', 21, '', 'Bridal_12c.jpg', '', 0, '0', '2016-09-13 09:30:32', '2016-09-13 09:30:32'),
(56, '', 21, '', 'Bridal_12d.jpg', '', 0, '0', '2016-09-13 09:30:33', '2016-09-13 09:30:33'),
(57, '', 22, '', 'Bridal_13a.jpg', '', 0, '0', '2016-09-13 09:34:49', '2016-09-13 09:34:49'),
(58, '', 22, '', 'Bridal_13b.jpg', '', 0, '0', '2016-09-13 09:34:49', '2016-09-13 09:34:49'),
(59, '', 22, '', 'Bridal_13c.jpg', '', 0, '0', '2016-09-13 09:34:50', '2016-09-13 09:34:50'),
(60, '', 22, '', 'Bridal_13d.jpg', '', 0, '0', '2016-09-13 09:34:51', '2016-09-13 09:34:51'),
(61, '', 23, '', 'Bridal_14a.jpg', '', 0, '0', '2016-09-13 09:36:07', '2016-09-13 09:36:07'),
(63, '', 24, '', 'Bridal_15b.jpg', '', 0, '0', '2016-09-13 09:37:47', '2016-09-13 09:37:47'),
(64, '', 24, '', 'Bridal_15c.jpg', '', 0, '0', '2016-09-13 09:37:48', '2016-09-13 09:37:48'),
(65, '', 24, '', 'Bridal_15d.jpg', '', 0, '0', '2016-09-13 09:37:49', '2016-09-13 09:37:49'),
(66, '', 24, '', 'Bridal_15.jpg', '', 0, '0', '2016-09-13 09:40:47', '2016-09-13 09:40:47'),
(67, '', 25, '', 'Bridal_16a.jpg', '', 0, '0', '2016-09-13 09:43:18', '2016-09-13 09:43:18'),
(68, '', 25, '', 'Bridal_16b.jpg', '', 0, '0', '2016-09-13 09:43:19', '2016-09-13 09:43:19'),
(69, '', 25, '', 'Bridal_16c.jpg', '', 0, '0', '2016-09-13 09:43:20', '2016-09-13 09:43:20'),
(70, '', 25, '', 'Bridal_16d.jpg', '', 0, '0', '2016-09-13 09:43:21', '2016-09-13 09:43:21'),
(71, '', 26, '', 'Bridal_17a.jpg', '', 0, '0', '2016-09-13 09:44:17', '2016-09-13 09:44:17'),
(72, '', 27, '', 'Bridal_18a.jpg', '', 0, '0', '2016-09-13 09:45:24', '2016-09-13 09:45:24'),
(73, '', 27, '', 'Bridal_18b.jpg', '', 0, '0', '2016-09-13 09:45:25', '2016-09-13 09:45:25'),
(74, '', 27, '', 'Bridal_18c.jpg', '', 0, '0', '2016-09-13 09:45:25', '2016-09-13 09:45:25'),
(75, '', 28, '', 'Bridal_19a.jpg', '', 0, '0', '2016-09-13 09:49:53', '2016-09-13 09:49:53'),
(76, '', 28, '', 'Bridal_19b.jpg', '', 0, '0', '2016-09-13 09:49:53', '2016-09-13 09:49:53'),
(77, '', 36, '', 'New_special_occasion2.jpg', '', 0, '0', '2016-09-13 10:02:43', '2016-09-13 10:02:43'),
(78, '', 37, '', 'New_special_occasion3.jpg', '', 0, '0', '2016-09-13 10:05:32', '2016-09-13 10:05:32'),
(79, '', 39, '', 'New_special_occasion5.jpg', '', 0, '0', '2016-09-13 10:10:31', '2016-09-13 10:10:31'),
(80, '', 39, '', 'New_special_occasion5b.jpg', '', 0, '0', '2016-09-13 10:10:32', '2016-09-13 10:10:32'),
(81, '', 40, '', 'New_special_occasion8.jpg', '', 0, '0', '2016-09-13 10:11:16', '2016-09-13 10:11:16'),
(82, '', 41, '', 'New_special_occasion9.jpg', '', 0, '0', '2016-09-13 10:12:42', '2016-09-13 10:12:42'),
(83, '', 42, '', 'New_special_occasion10.jpg', '', 0, '0', '2016-09-13 10:13:49', '2016-09-13 10:13:49'),
(84, '', 43, '', 'New_special_occasion11.jpg', '', 0, '0', '2016-09-13 10:14:27', '2016-09-13 10:14:27'),
(85, '', 44, '', 'New_special_occasion12_2.jpg', '', 0, '0', '2016-09-13 10:15:10', '2016-09-13 10:15:10'),
(86, '', 44, '', 'New_special_occasion12_3.jpg', '', 0, '0', '2016-09-13 10:15:11', '2016-09-13 10:15:11'),
(87, '', 44, '', 'New_special_occasion12.jpg', '', 0, '0', '2016-09-13 10:15:12', '2016-09-13 10:15:12'),
(88, '', 45, '', 'New_special_occasion13.jpg', '', 0, '0', '2016-09-13 10:16:26', '2016-09-13 10:16:26'),
(89, '', 46, '', 'New_special_occasion14_2.jpg', '', 0, '0', '2016-09-13 10:17:01', '2016-09-13 10:17:01'),
(90, '', 46, '', 'New_special_occasion14.jpg', '', 0, '0', '2016-09-13 10:17:02', '2016-09-13 10:17:02'),
(91, '', 47, '', 'New_special_occasion15.jpg', '', 0, '0', '2016-09-13 10:18:14', '2016-09-13 10:18:14'),
(92, '', 47, '', 'New_special_occasion15b.jpg', '', 0, '0', '2016-09-13 10:18:15', '2016-09-13 10:18:15'),
(93, '', 48, '', 'New_special_occasion16_2.jpg', '', 0, '0', '2016-09-13 10:20:30', '2016-09-13 10:20:30'),
(94, '', 48, '', 'New_special_occasion16.jpg', '', 0, '0', '2016-09-13 10:20:35', '2016-09-13 10:20:35'),
(95, '', 49, '', 'New_special_occasion17_b.jpg', '', 0, '0', '2016-09-13 10:21:30', '2016-09-13 10:21:30'),
(96, '', 50, '', 'New_special_occasion18.jpg', '', 0, '0', '2016-09-13 10:22:34', '2016-09-13 10:22:34'),
(97, '', 51, '', 'New_special_occasion19.jpg', '', 0, '0', '2016-09-13 10:23:14', '2016-09-13 10:23:14'),
(98, '', 52, '', 'New_special_occasion20_2.jpg', '', 0, '0', '2016-09-13 10:23:58', '2016-09-13 10:23:58'),
(99, '', 52, '', 'New_special_occasion20.jpg', '', 0, '0', '2016-09-13 10:23:59', '2016-09-13 10:23:59'),
(100, '', 53, '', 'New_special_occasion21.jpg', '', 0, '0', '2016-09-13 10:24:39', '2016-09-13 10:24:39'),
(101, '', 55, '', 'New_special_occasion23.jpg', '', 0, '0', '2016-09-13 10:25:34', '2016-09-13 10:25:34'),
(102, '', 57, '', 'New_special_occasion25.jpg', '', 0, '0', '2016-09-13 10:27:42', '2016-09-13 10:27:42'),
(103, '', 58, '', 'New_special_occasion26_2.jpg', '', 0, '0', '2016-09-13 10:28:31', '2016-09-13 10:28:31'),
(104, '', 58, '', 'New_special_occasion26.jpg', '', 0, '0', '2016-09-13 10:28:32', '2016-09-13 10:28:32'),
(105, '', 59, '', 'New_special_occasion27.jpg', '', 0, '0', '2016-09-13 10:29:46', '2016-09-13 10:29:46'),
(106, '', 61, '', 'New_special_occasion29.jpg', '', 0, '0', '2016-09-13 10:34:48', '2016-09-13 10:34:48'),
(107, '', 62, '', 'New_special_occasion30_2.jpg', '', 0, '0', '2016-09-13 10:35:40', '2016-09-13 10:35:40'),
(108, '', 62, '', 'New_special_occasion30.jpg', '', 0, '0', '2016-09-13 10:35:41', '2016-09-13 10:35:41'),
(109, '', 63, '', 'New_special_occasion31.jpg', '', 0, '0', '2016-09-13 10:36:24', '2016-09-13 10:36:24'),
(110, '', 64, '', 'New_special_occasion32.jpg', '', 0, '0', '2016-09-13 10:37:19', '2016-09-13 10:37:19'),
(111, '', 65, '', 'New_special_occasion33.jpg', '', 0, '0', '2016-09-13 10:40:29', '2016-09-13 10:40:29'),
(112, '', 66, '', 'New_special_occasion34.jpg', '', 0, '0', '2016-09-13 10:41:31', '2016-09-13 10:41:31'),
(113, '', 67, '', 'New_special_occasion35.jpg', '', 0, '0', '2016-09-13 11:05:10', '2016-09-13 11:05:10'),
(114, '', 68, '', 'New_special_occasion36a.jpg', '', 0, '0', '2016-09-13 11:06:56', '2016-09-13 11:06:56'),
(115, '', 69, '', 'New_special_occasion37a.jpg', '', 0, '0', '2016-09-13 11:07:37', '2016-09-13 11:07:37'),
(116, '', 70, '', 'New_special_occasion38b.jpg', '', 0, '0', '2016-09-13 11:08:24', '2016-09-13 11:08:24'),
(117, '', 72, '', 'New_special_occassion1.jpg', '', 0, '0', '2016-09-13 11:09:10', '2016-09-13 11:09:10'),
(118, '', 90, '', 'little_bride_2.jpg', '', 0, '0', '2016-09-13 11:52:51', '2016-09-13 11:52:51'),
(119, '', 91, '', 'Little_bride_3a.jpg', '', 0, '0', '2016-09-13 11:54:03', '2016-09-13 11:54:03'),
(120, '', 81, '', 'Little_bride_4.jpg', '', 0, '0', '2016-09-13 11:54:59', '2016-09-13 11:54:59'),
(121, '', 84, '', 'little_bride_5.jpg', '', 0, '0', '2016-09-13 11:55:28', '2016-09-13 11:55:28'),
(122, '', 82, '', 'New_little_bride_7.jpg', '', 0, '0', '2016-09-13 11:56:29', '2016-09-13 11:56:29'),
(123, '', 85, '', 'New_little_bride_9a.jpg', '', 0, '0', '2016-09-13 11:59:07', '2016-09-13 11:59:07'),
(124, '', 73, '', 'Traditional_1b.jpg', '', 0, '0', '2016-09-13 20:36:35', '2016-09-13 20:36:35'),
(125, '', 74, '', 'Traditional_2_2.jpg', '', 0, '0', '2016-09-13 20:37:23', '2016-09-13 20:37:23'),
(126, '', 74, '', 'Traditional_2.jpg', '', 0, '0', '2016-09-13 20:37:24', '2016-09-13 20:37:24'),
(127, '', 75, '', 'Traditional_3_2.jpg', '', 0, '0', '2016-09-13 20:41:14', '2016-09-13 20:41:14'),
(128, '', 75, '', 'Traditional_3.jpg', '', 0, '0', '2016-09-13 20:41:15', '2016-09-13 20:41:15'),
(129, '', 76, '', 'Traditional_4a.jpg', '', 0, '0', '2016-09-13 20:41:59', '2016-09-13 20:41:59'),
(130, '', 77, '', 'Traditional_5.jpg', '', 0, '0', '2016-09-13 20:42:42', '2016-09-13 20:42:42'),
(131, '', 78, '', 'Traditional_6.jpg', '', 0, '0', '2016-09-13 20:43:21', '2016-09-13 20:43:21'),
(132, '', 79, '', 'Traditional_7_2.jpg', '', 0, '0', '2016-09-13 20:44:05', '2016-09-13 20:44:05'),
(133, '', 79, '', 'Traditional_7.jpg', '', 0, '0', '2016-09-13 20:44:07', '2016-09-13 20:44:07'),
(134, '', 86, '', 'Traditional_8_1.jpg', '', 0, '0', '2016-09-13 20:45:22', '2016-09-13 20:45:22'),
(135, '', 87, '', 'Traditional_9_1.jpg', '', 0, '0', '2016-09-13 20:46:41', '2016-09-13 20:46:41'),
(136, '', 87, '', 'Traditional_9_2.jpg', '', 0, '0', '2016-09-13 20:46:45', '2016-09-13 20:46:45'),
(137, '', 88, '', 'Traditional_10_1.jpg', '', 0, '0', '2016-09-13 20:48:05', '2016-09-13 20:48:05'),
(138, '', 88, '', 'Traditional_10.jpg', '', 0, '0', '2016-09-13 20:48:07', '2016-09-13 20:48:07'),
(139, '', 92, '', 'Traditional_11.jpg', '', 0, '0', '2016-09-13 20:50:44', '2016-09-13 20:50:44'),
(140, '', 93, '', 'Traditional_12.jpg', '', 0, '0', '2016-09-13 21:03:45', '2016-09-13 21:03:45'),
(141, '', 95, '', 'Traditional_14.jpg', '', 0, '0', '2016-09-13 21:04:42', '2016-09-13 21:04:42'),
(142, '', 94, '', 'Traditional_13_2.jpg', '', 0, '0', '2016-09-13 21:05:57', '2016-09-13 21:05:57'),
(143, '', 94, '', 'Traditional_13.jpg', '', 0, '0', '2016-09-13 21:05:57', '2016-09-13 21:05:57'),
(144, '', 96, '', 'Traditional_15.jpg', '', 0, '0', '2016-09-13 21:06:42', '2016-09-13 21:06:42'),
(145, '', 97, '', 'Traditional_16_1.jpg', '', 0, '0', '2016-09-13 21:07:54', '2016-09-13 21:07:54'),
(146, '', 97, '', 'Traditional_16.jpg', '', 0, '0', '2016-09-13 21:07:55', '2016-09-13 21:07:55'),
(147, '', 98, '', 'Traditional_17_2.jpg', '', 0, '0', '2016-09-13 21:08:43', '2016-09-13 21:08:43'),
(148, '', 98, '', 'Traditional_17.jpg', '', 0, '0', '2016-09-13 21:08:44', '2016-09-13 21:08:44'),
(149, '', 99, '', 'Traditional_18_1.jpg', '', 0, '0', '2016-09-13 21:09:45', '2016-09-13 21:09:45'),
(150, '', 99, '', 'Traditional_18_2.jpg', '', 0, '0', '2016-09-13 21:09:46', '2016-09-13 21:09:46'),
(151, '', 99, '', 'Traditional_18.jpg', '', 0, '0', '2016-09-13 21:09:47', '2016-09-13 21:09:47'),
(152, '', 100, '', 'Traditional_20.jpg', '', 0, '0', '2016-09-13 21:10:21', '2016-09-13 21:10:21'),
(153, '', 90, '', 'Bridal_18.jpg', '', 0, '0', '2016-09-14 10:45:10', '2016-09-14 10:45:10'),
(154, '', 89, '', 'Bridal_14.jpg', '', 0, '0', '2016-09-14 10:45:50', '2016-09-14 10:45:50'),
(155, '', 84, '', 'Traditional_13_2-0.jpg', '', 0, '0', '2016-09-14 10:46:39', '2016-09-14 10:46:39'),
(156, '', 101, '', 'ChAD001_1.jpg', '', 0, '0', '2016-12-05 11:30:52', '2016-12-05 11:30:52'),
(1573, '', 103, '', 'ChAD002_1.jpg', '', 0, '0', '2016-12-05 16:09:00', '2016-12-05 16:09:00'),
(1572, '', 102, '', 'ChAD001_1-0.jpg', '', 0, '0', '2016-12-05 16:01:29', '2016-12-05 16:01:29'),
(1574, '', 104, '', 'ChAD003_1.jpg', '', 0, '0', '2016-12-05 16:17:14', '2016-12-05 16:17:14'),
(1575, '', 105, '', 'ChAD004_1.jpg', '', 0, '0', '2016-12-05 16:19:22', '2016-12-05 16:19:22'),
(1609, '', 106, '', 'ChAD004.jpg', '', 0, '0', '2016-12-07 12:34:31', '2016-12-07 12:34:31'),
(1578, '', 108, '', 'ChAD006_1.jpg', '', 0, '0', '2016-12-05 16:56:18', '2016-12-05 16:56:18'),
(1579, '', 110, '', 'ChAD008_1.jpg', '', 0, '0', '2016-12-05 16:59:47', '2016-12-05 16:59:47'),
(1580, '', 111, '', 'ChAD009_1.jpg', '', 0, '0', '2016-12-05 17:00:35', '2016-12-05 17:00:35'),
(1607, '', 112, '', 'ChAD0010.jpg', '', 0, '0', '2016-12-07 12:31:49', '2016-12-07 12:31:49'),
(1606, '', 115, '', 'ChAD0013.jpg', '', 0, '0', '2016-12-07 12:30:14', '2016-12-07 12:30:14'),
(1583, '', 116, '', 'ChAD0014_2.jpg', '', 0, '0', '2016-12-05 17:12:09', '2016-12-05 17:12:09'),
(1584, '', 117, '', 'ChAD0015_1.jpg', '', 0, '0', '2016-12-05 17:16:33', '2016-12-05 17:16:33'),
(1585, '', 117, '', 'ChAD0015_2.jpg', '', 0, '0', '2016-12-05 17:16:34', '2016-12-05 17:16:34'),
(1605, '', 116, '', 'ChAD0014.jpg', '', 0, '0', '2016-12-07 12:28:58', '2016-12-07 12:28:58'),
(1587, '', 118, '', 'ChAD0016_2.jpg', '', 0, '0', '2016-12-05 17:18:57', '2016-12-05 17:18:57'),
(1588, '', 117, '', 'ChAD0015_1-0.jpg', '', 0, '0', '2016-12-05 17:22:04', '2016-12-05 17:22:04'),
(1589, '', 117, '', 'ChAD0015_2-0.jpg', '', 0, '0', '2016-12-05 17:22:05', '2016-12-05 17:22:05'),
(1590, '', 119, '', 'ChAD0017_1.jpg', '', 0, '0', '2016-12-05 17:23:43', '2016-12-05 17:23:43'),
(1602, '', 119, '', 'ChAD0017.jpg', '', 0, '0', '2016-12-07 12:22:38', '2016-12-07 12:22:38'),
(1592, '', 120, '', 'ChAD0018_1.jpg', '', 0, '0', '2016-12-05 17:26:59', '2016-12-05 17:26:59'),
(1593, '', 121, '', 'ChAD0019_1.jpg', '', 0, '0', '2016-12-05 17:29:05', '2016-12-05 17:29:05'),
(1594, '', 121, '', 'ChAD0019_2.jpg', '', 0, '0', '2016-12-05 17:29:05', '2016-12-05 17:29:05'),
(1595, '', 122, '', 'ChAD00020.jpg', '', 0, '0', '2016-12-05 17:33:04', '2016-12-05 17:33:04'),
(1596, '', 122, '', 'ChAD0020_1.jpg', '', 0, '0', '2016-12-05 17:33:04', '2016-12-05 17:33:04'),
(1597, '', 123, '', 'ChAD0021_1.jpg', '', 0, '0', '2016-12-05 17:35:07', '2016-12-05 17:35:07'),
(1604, '', 118, '', 'ChAD0016.jpg', '', 0, '0', '2016-12-07 12:27:18', '2016-12-07 12:27:18'),
(1599, '', 125, '', 'ChAD0023_1.jpg', '', 0, '0', '2016-12-05 17:39:09', '2016-12-05 17:39:09'),
(1601, '', 126, '', 'ChAD0024_1.jpg', '', 0, '0', '2016-12-05 17:41:44', '2016-12-05 17:41:44'),
(1603, '', 124, '', 'ChAD0022.jpg', '', 0, '0', '2016-12-07 12:25:07', '2016-12-07 12:25:07'),
(1669, '', 128, '', 'celebrity_20.jpg', '', 0, '0', '2017-02-07 09:56:39', '2017-02-07 09:56:39'),
(1668, '', 128, '', 'celebrity_19.jpg', '', 0, '0', '2017-02-07 09:56:39', '2017-02-07 09:56:39'),
(1667, '', 128, '', 'celebrity_18.jpg', '', 0, '0', '2017-02-07 09:56:38', '2017-02-07 09:56:38'),
(1666, '', 128, '', 'celebrity_17.jpg', '', 0, '0', '2017-02-07 09:56:37', '2017-02-07 09:56:37'),
(1665, '', 128, '', 'celebrity_16.jpg', '', 0, '0', '2017-02-07 09:56:37', '2017-02-07 09:56:37'),
(1664, '', 128, '', 'celebrity_15.jpg', '', 0, '0', '2017-02-07 09:56:36', '2017-02-07 09:56:36'),
(1663, '', 128, '', 'celebrity_14.jpg', '', 0, '0', '2017-02-07 09:56:35', '2017-02-07 09:56:35'),
(1662, '', 128, '', 'celebrity_13.jpg', '', 0, '0', '2017-02-07 09:56:35', '2017-02-07 09:56:35'),
(1661, '', 128, '', 'celebrity_12.jpg', '', 0, '0', '2017-02-07 09:56:34', '2017-02-07 09:56:34'),
(1660, '', 128, '', 'celebrity_11.jpg', '', 0, '0', '2017-02-07 09:56:33', '2017-02-07 09:56:33'),
(1659, '', 128, '', 'celebrity_10.jpg', '', 0, '0', '2017-02-07 09:56:32', '2017-02-07 09:56:32'),
(1658, '', 128, '', 'celebrity_9.jpg', '', 0, '0', '2017-02-07 09:56:31', '2017-02-07 09:56:31'),
(1657, '', 128, '', 'celebrity_8.jpg', '', 0, '0', '2017-02-07 09:56:30', '2017-02-07 09:56:30'),
(1656, '', 128, '', 'celebrity_7.jpg', '', 0, '0', '2017-02-07 09:56:30', '2017-02-07 09:56:30'),
(1655, '', 128, '', 'celebrity_6.jpg', '', 0, '0', '2017-02-07 09:56:29', '2017-02-07 09:56:29'),
(1654, '', 128, '', 'celebrity_5.jpg', '', 0, '0', '2017-02-07 09:56:22', '2017-02-07 09:56:22'),
(1653, '', 128, '', 'celebrity_4.jpg', '', 0, '0', '2017-02-07 09:56:21', '2017-02-07 09:56:21'),
(1652, '', 128, '', 'celebrity_3.jpg', '', 0, '0', '2017-02-07 09:56:21', '2017-02-07 09:56:21'),
(1651, '', 128, '', 'celebrity_2.jpg', '', 0, '0', '2017-02-07 09:56:20', '2017-02-07 09:56:20'),
(1650, '', 128, '', 'celebrity_1.jpg', '', 0, '0', '2017-02-07 09:56:19', '2017-02-07 09:56:19');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `title` varchar(255) DEFAULT NULL,
  `story` text,
  `summary` text,
  `publish` int(11) NOT NULL DEFAULT '1',
  `archive` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `image_caption` varchar(255) NOT NULL,
  `file` varchar(160) NOT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `file_1` varchar(255) DEFAULT NULL,
  `file_name_1` varchar(255) DEFAULT NULL,
  `file_2` varchar(255) DEFAULT NULL,
  `file_name_2` varchar(255) DEFAULT NULL,
  `file_3` varchar(255) DEFAULT NULL,
  `file_name_3` varchar(255) DEFAULT NULL,
  `file_4` varchar(255) NOT NULL,
  `file_name_4` varchar(255) NOT NULL,
  `mp3` varchar(255) NOT NULL,
  `category` varchar(20) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `news_date` date DEFAULT NULL,
  `type` varchar(1) NOT NULL DEFAULT '0',
  `add_news` varchar(1) NOT NULL DEFAULT '0',
  `download_only` varchar(1) NOT NULL DEFAULT '0',
  `media` varchar(1) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `timestamp` varchar(160) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_address2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_zip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_address2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_zip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weight` decimal(8,2) UNSIGNED DEFAULT '0.00',
  `size` int(11) DEFAULT NULL,
  `order_item_count` int(11) DEFAULT NULL,
  `subtotal` decimal(8,2) DEFAULT NULL,
  `tax` decimal(8,2) DEFAULT NULL,
  `shipping` decimal(8,2) DEFAULT NULL,
  `total` decimal(8,2) UNSIGNED DEFAULT NULL,
  `order_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `authorization` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `transaction` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `weight` decimal(8,2) UNSIGNED DEFAULT '0.00',
  `price` decimal(8,2) UNSIGNED DEFAULT NULL,
  `subtotal` decimal(8,2) UNSIGNED DEFAULT NULL,
  `size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `option_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `additional_info` text COLLATE utf8_unicode_ci,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `page_contents`
--

CREATE TABLE `page_contents` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `category` varchar(11) DEFAULT NULL,
  `publish_date` date DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `website` varchar(200) DEFAULT NULL,
  `icon` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `page_image` varchar(255) NOT NULL,
  `profile_image` varchar(255) NOT NULL,
  `banner_title` varchar(255) DEFAULT NULL,
  `banner_description` text,
  `file_name` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `file_date` date DEFAULT NULL,
  `file_name_1` varchar(255) DEFAULT NULL,
  `file_1` varchar(255) DEFAULT NULL,
  `file_name_2` varchar(255) DEFAULT NULL,
  `file_2` varchar(255) DEFAULT NULL,
  `file_name_3` varchar(255) DEFAULT NULL,
  `file_3` varchar(255) DEFAULT NULL,
  `file_name_4` varchar(255) DEFAULT NULL,
  `file_4` varchar(255) DEFAULT NULL,
  `mp3` varchar(255) NOT NULL,
  `page_type` varchar(1) NOT NULL DEFAULT '0',
  `add_content` varchar(1) NOT NULL DEFAULT '0',
  `action` varchar(20) DEFAULT NULL,
  `download_only` varchar(1) NOT NULL DEFAULT '0',
  `hide` varchar(1) NOT NULL DEFAULT '0',
  `feature` varchar(1) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `productmods`
--

CREATE TABLE `productmods` (
  `id` int(10) NOT NULL,
  `product_id` int(10) DEFAULT NULL,
  `sku` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `weight` decimal(8,2) DEFAULT NULL,
  `active` int(1) DEFAULT NULL,
  `views` int(11) DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) UNSIGNED NOT NULL,
  `category` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` int(11) UNSIGNED DEFAULT NULL,
  `brand_id` int(11) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `product_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `weight` decimal(8,2) DEFAULT NULL,
  `sizes` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tags` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `views` int(11) DEFAULT '0',
  `active` int(1) DEFAULT NULL,
  `product_status` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `category_id`, `brand_id`, `name`, `slug`, `currency`, `description`, `product_image`, `price`, `weight`, `sizes`, `tags`, `views`, `active`, `product_status`, `status`, `created`, `modified`) VALUES
(2, '1', NULL, NULL, 'front side', 'front-side', '', NULL, 'collection_large-0.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-08 23:20:54', '2016-09-08 23:20:54'),
(3, NULL, 5, NULL, '#CAD001', 'cad001-2', '', '', 'casual_1_3.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-12 18:31:57', '2016-09-13 08:03:29'),
(4, NULL, 5, NULL, '#CAD002', 'cad002-2', '', '', 'casual_2_1.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-12 18:37:21', '2016-09-13 08:03:45'),
(5, NULL, 5, NULL, '#CAD003', 'cad003-2', '', '', 'casual_3_1.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-12 18:38:37', '2016-09-13 08:08:27'),
(6, NULL, 5, NULL, '#CAD004', 'cad004-2', '', '', 'casual_4.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-12 18:39:35', '2016-09-13 08:19:14'),
(7, '3', NULL, NULL, '', NULL, '', NULL, 'casual_1_2.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 01:45:48', '2016-09-13 01:45:48'),
(8, '3', NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 01:46:22', '2016-09-13 01:46:22'),
(9, '3', NULL, NULL, '', NULL, '', NULL, 'casual_1_3-0.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 01:47:02', '2016-09-13 01:47:02'),
(10, '3', NULL, NULL, '', NULL, '', NULL, 'casual_1.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 01:48:12', '2016-09-13 01:48:12'),
(11, NULL, 2, NULL, '#BAD001', 'bad001', '', '<p>This bride&#39;s dress with the flowing long cape can be converted into a long sleeved or strapless gown making any bride look flawless and cathedral.</p>\r\n', 'Bridal_1.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 01:59:52', '2016-09-13 13:33:09'),
(12, NULL, 2, NULL, '#BAD002', 'bad002', '', '<p>A simple but classy bride whose lower section with ruffle detail can be converted into a simple mermaid without ruffles. Top Section Halter cape can also be removed for a more effortless strapless design.</p>\r\n', 'Bridal_2.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 02:03:36', '2016-09-13 13:37:10'),
(13, NULL, 2, NULL, '#BAD003', 'bad003', '', '<p>This Pleated Strapless Mermaid gown easily converts into a gown with straps.</p>\r\n', 'Bridal_3.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 02:04:21', '2016-09-13 13:37:47'),
(14, NULL, 2, NULL, '#BAD004', 'bad004', '', '<p>The off-shoulder pleated mermaid gown can also be converted into a strapless gown</p>\r\n', 'Bridal_4.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 02:05:13', '2016-09-13 13:38:22'),
(15, NULL, 2, NULL, '#BAD005', 'bad005', '', '<p>The Rosy &#39;A&#39; shaped gown with a rosy Bolero can be converted to have a covered top section which may be any of the options a bride could want.</p>\r\n', 'Bridal_5.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 02:06:09', '2016-09-13 13:40:20'),
(16, NULL, 2, NULL, '#BAD006', 'bad006', '', '<p>This Bridal look can be converted into a strapless look with buttons or pearl details at the back.</p>\r\n', 'Bridal_6.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 02:07:06', '2016-09-13 13:40:42'),
(17, NULL, 2, NULL, '#BAD007', 'bad007', '', '<p>This chic but simple and elegant bride easily converts into strapless.</p>\r\n', 'Bridal_7.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 02:07:54', '2016-09-13 13:41:30'),
(18, NULL, 2, NULL, '#BAD008', 'bad008', '', '<p>Change Looks completely with this trumpet gown with pleats which converts into a strapless gown without pleats, giving the bride a total new look in one dress.</p>\r\n', 'Bridal_8.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 02:08:45', '2016-09-13 13:41:55'),
(19, NULL, 2, NULL, '#BAD009', 'bad009', '', '<p>This Pleated mermaid dress gets even classier when converted into a short dress with tied bow straps.</p>\r\n', 'Bridal_9.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 02:09:20', '2016-09-13 13:42:18'),
(20, NULL, 2, NULL, '#BAD010', 'bad010', '', '<p>The pearl ball gown converts into a strapless gown without bolero; top section can be changed into straps or other options the bride prefers.</p>\r\n', 'Bridal_10.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 02:09:56', '2016-09-13 13:42:41'),
(21, NULL, 2, NULL, '#BAD011', 'bad011', '', '<p>This sexy and seeing bridal look comes with the option to be less revealing at the bust section and can be converted into a simple short dress.</p>\r\n', 'Bridal_11.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 02:10:33', '2016-09-13 13:43:35'),
(22, NULL, 2, NULL, '#BAD012', 'bad012-2', '', '<p>This elegant gown can be converted from and A-line dress to a mermaid dress and also comes with a removable bolero.</p>\r\n', 'Bridal_12-0.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 02:11:01', '2016-09-13 13:43:55'),
(23, NULL, 2, NULL, '#BAD013', 'bad013', '', '<p>This fully pearled gown can be converted to give a more plunging neckline and a removable shoulder detail to become a halter.</p>\r\n', 'Bridal_13.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 02:11:31', '2016-09-13 13:44:25'),
(24, NULL, 2, NULL, '#BAD014', 'bad014', '', '<p>This mermaid bridal look can be worn simpler without the rosy lower section to reveal a simpler mermaid gown effect.</p>\r\n', 'Bridal_14.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 02:12:17', '2016-09-13 13:44:53'),
(25, NULL, 2, NULL, '#BAD015', 'bad015-2', '', '<p>This chic and pencil dress bride with tulle at the waist area can be converted into a pencil dress without tulle details. Can also be made strapless</p>\r\n', 'Bridal_15a.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 02:12:42', '2016-09-13 13:45:28'),
(26, NULL, 2, NULL, '#BAD016', 'bad016', '', '<p>The elegant bridal look plays with a sheer tulle all round her waist which is removable and having a top section which can be made strapless.</p>\r\n', 'Bridal_16.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 02:13:09', '2016-09-13 13:45:49'),
(27, NULL, 2, NULL, '#BAD017', 'bad017', '', '<p>This simple bride with the cropped flare at the knee easily converts to a cropped dress without the rosy detail at the bottom and strapless option at the lower section</p>\r\n', 'Bridal_17.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 02:13:43', '2016-09-13 13:46:25'),
(28, NULL, 2, NULL, '#BAD018', 'bad018', '', '<p>This ruffled up gown can be converted totally without ruffles to have a flared dress and a removable top section.</p>\r\n', 'Bridal_18.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 02:14:11', '2016-09-13 13:47:21'),
(29, NULL, 2, NULL, '#BAD019', 'bad019', '', '<p>This elegant gown converts to be strapless effortlessly.</p>\r\n', 'Bridal_19.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 02:14:38', '2016-09-13 13:47:46'),
(31, NULL, 5, NULL, '#CAD005', 'cad005-2', '', '', 'New_casual_5_1.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 02:18:28', '2016-09-13 08:23:16'),
(32, NULL, 5, NULL, '#CAD008', 'cad008-2', '', '', 'New_Casual_8_1.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 02:19:29', '2016-09-13 08:23:24'),
(33, NULL, 5, NULL, '#CAD006', 'cad006-2', '', '', 'New_casual_9.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 02:20:08', '2016-09-13 08:23:37'),
(34, NULL, 5, NULL, '#CAD007', 'cad007-2', '', '', 'New_casual_10.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 02:20:36', '2016-09-13 08:23:56'),
(35, NULL, 5, NULL, '#CAD009', 'cad009-2', '', '', 'New_casual_11_1.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 02:21:16', '2016-09-13 08:24:06'),
(36, NULL, 5, NULL, '#CAD010', 'cad010-2', '', '', 'New_Casual_12jpg_1.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 02:21:52', '2016-09-13 08:24:16'),
(37, NULL, 5, NULL, '#CAD011', 'cad011-2', '', '', 'New_casual_13_1.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 02:22:29', '2016-09-13 08:24:29'),
(38, '37', NULL, NULL, '', NULL, '', NULL, 'New_casual_13.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 02:23:31', '2016-09-13 02:23:31'),
(39, '36', NULL, NULL, '', NULL, '', NULL, 'New_Casual_12jpg.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 02:24:01', '2016-09-13 02:24:01'),
(40, '35', NULL, NULL, '', NULL, '', NULL, 'New_casual_11.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 02:24:33', '2016-09-13 02:24:33'),
(41, '34', NULL, NULL, '', NULL, '', NULL, 'New_Casual_10jpg_1.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 02:25:14', '2016-09-13 02:25:14'),
(42, '34', NULL, NULL, '', NULL, '', NULL, 'New_Casual_10jpg.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 02:27:02', '2016-09-13 02:27:02'),
(43, '33', NULL, NULL, '', NULL, '', NULL, 'New_Casual_9jpg.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 02:27:47', '2016-09-13 02:27:47'),
(44, '32', NULL, NULL, '', NULL, '', NULL, 'New_casual_8.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 02:28:56', '2016-09-13 02:28:56'),
(45, '31', NULL, NULL, '', NULL, '', NULL, 'New_casual_5.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 02:29:39', '2016-09-13 02:29:39'),
(46, '4', NULL, NULL, '', NULL, '', NULL, 'casual_2.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 02:32:13', '2016-09-13 02:32:13'),
(47, '4', NULL, NULL, '', NULL, '', NULL, 'casual_2a.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 02:32:40', '2016-09-13 02:32:40'),
(48, '4', NULL, NULL, '', NULL, '', NULL, 'casual_2b.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 02:33:12', '2016-09-13 02:33:12'),
(49, '5', NULL, NULL, '', NULL, '', NULL, 'casual_3_2.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 02:33:38', '2016-09-13 02:33:38'),
(50, '5', NULL, NULL, '', NULL, '', NULL, 'casual_3.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 02:34:03', '2016-09-13 02:34:03'),
(51, NULL, 6, NULL, '#BSAD002', 'bsad002-2', '', '', 'New_special_occasion2_1.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 02:54:18', '2016-09-13 08:26:45'),
(52, NULL, 6, NULL, '#BSAD003', 'bsad003-2', '', '', 'New_special_occasion3_1.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 02:55:19', '2016-09-13 08:26:55'),
(53, NULL, 6, NULL, '#BSAD004', 'bsad004-2', '', '', 'New_special_occasion4.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 02:56:09', '2016-09-13 08:27:05'),
(54, NULL, 6, NULL, '#BSAD005', 'bsad005-2', '', '', 'New_special_occasion5_1.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 02:57:01', '2016-09-13 08:27:15'),
(56, NULL, 6, NULL, '#BSAD008', 'bsad008-2', '', '', 'New_special_occasion8_1.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 03:02:43', '2016-09-13 08:27:26'),
(57, NULL, 6, NULL, '#BSAD009', 'bsad009-2', '', '', 'New_special_occasion9_1.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 03:03:46', '2016-09-13 08:27:35'),
(58, NULL, 6, NULL, '#BSAD010', 'bsad010-2', '', '', 'New_special_occasion10_1.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 03:06:37', '2016-09-13 08:27:44'),
(59, NULL, 6, NULL, '#BSAD011', 'bsad011-2', '', '', 'New_special_occasion11_1.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 03:09:35', '2016-09-13 08:27:55'),
(60, NULL, 6, NULL, '#BSAD012', 'bsad012-2', '', '', 'New_special_occasion12_1.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 03:11:58', '2016-09-13 08:28:05'),
(61, NULL, 6, NULL, '#BSAD013', 'bsad013-2', '', '', 'New_special_occasion13_1.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 03:13:13', '2016-09-13 08:28:16'),
(62, NULL, 6, NULL, '#BSAD014', 'bsad014-2', '', '', 'New_special_occasion14_1.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 03:20:35', '2016-09-13 08:28:26'),
(63, NULL, 6, NULL, '#BSAD015', 'bsad015-2', '', '', 'New_special_occasion15_1.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 06:45:06', '2016-09-13 08:28:36'),
(64, NULL, 6, NULL, '#BSAD016', 'bsad016-2', '', '', 'New_special_occasion16_1.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 07:04:49', '2016-09-13 08:30:25'),
(65, NULL, 6, NULL, '#BSAD017', 'bsad017-2', '', '', 'New_special_occasion17.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 07:07:04', '2016-09-13 08:31:10'),
(66, NULL, 6, NULL, '#BSAD018', 'bsad018-2', '', '', 'New_special_occasion18_1.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 07:08:28', '2016-09-13 08:31:21'),
(67, NULL, 6, NULL, '#BSAD019', 'bsad019-2', '', '', 'New_special_occasion19_1.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 07:10:04', '2016-09-13 08:31:30'),
(68, NULL, 6, NULL, '#BSAD020', 'bsad020-2', '', '', 'New_special_occasion20_1.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 07:11:01', '2016-09-13 08:31:39'),
(69, NULL, 6, NULL, '#BSAD021', 'bsad021-2', '', '', 'New_special_occasion21_1.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 07:11:39', '2016-09-13 08:31:48'),
(70, NULL, 6, NULL, '#BSAD022', 'bsad022-2', '', '', 'New_special_occasion22.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 07:14:55', '2016-09-13 08:31:58'),
(71, NULL, 6, NULL, '#BSAD023', 'bsad023-2', '', '', 'New_special_occasion23_1.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 07:16:02', '2016-09-13 08:32:13'),
(72, NULL, 6, NULL, '#BSAD024', 'bsad024-2', '', '', 'New_special_occasion24.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 07:17:14', '2016-09-13 08:32:26'),
(73, NULL, 6, NULL, '#BSAD025', 'bsad025-2', '', '', 'New_special_occasion25_1.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 07:18:05', '2016-09-13 08:32:37'),
(74, NULL, 6, NULL, '#BSAD026', 'bsad026-2', '', '', 'New_special_occasion26_2.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 07:19:08', '2016-09-13 08:32:50'),
(75, NULL, 6, NULL, '#BSAD027', 'bsad027-2', '', '', 'New_special_occasion27_1.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 07:20:04', '2016-09-13 08:33:01'),
(76, NULL, 6, NULL, '#BSAD028', 'bsad028-2', '', '', 'New_special_occasion28.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 07:21:50', '2016-09-13 08:33:15'),
(77, NULL, 6, NULL, '#BSAD029', 'bsad029-2', '', '', 'New_special_occasion29_1.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 07:22:48', '2016-09-13 08:33:27'),
(78, NULL, 6, NULL, '#BSAD030', 'bsad030-2', '', '', 'New_special_occasion30_1.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 07:23:50', '2016-09-13 08:33:39'),
(79, NULL, 6, NULL, '#BSAD031', 'bsad031-2', '', '', 'New_special_occasion31_1.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 07:24:27', '2016-09-13 08:33:49'),
(80, NULL, 6, NULL, '#BSAD032', 'bsad032-2', '', '', 'New_special_occasion32_1.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 07:25:11', '2016-09-13 08:34:00'),
(81, NULL, 6, NULL, '#BSAD033', 'bsad033-2', '', '', 'New_special_occasion33_1.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 07:25:54', '2016-09-13 08:34:32'),
(82, NULL, 6, NULL, '#BSAD034', 'bsad034-2', '', '', 'New_special_occasion34_1.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 07:26:30', '2016-09-13 08:34:42'),
(83, NULL, 6, NULL, '#BSAD035', 'bsad035-2', '', '', 'New_special_occasion35_1.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 07:27:03', '2016-09-13 08:34:52'),
(84, NULL, 6, NULL, '#BSAD036', 'bsad036-2', '', '', 'New_special_occasion36.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 07:27:52', '2016-09-13 08:35:03'),
(85, NULL, 6, NULL, '#BSAD037', 'bsad037-2', '', '', 'New_special_occasion37.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 07:28:26', '2016-09-13 08:35:15'),
(86, NULL, 6, NULL, '#BSAD038', 'bsad038-2', '', '', 'New_special_occasion38a.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 07:29:07', '2016-09-13 08:35:27'),
(87, NULL, 6, NULL, '#BSAD039', 'bsad039-2', '', '', 'New_special_occasion39.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 07:29:56', '2016-09-13 08:35:37'),
(88, NULL, 6, NULL, '#BSAD040', 'bsad040-2', '', '', 'New_special_occasions1.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 07:30:50', '2016-09-13 08:35:47'),
(89, NULL, 3, NULL, '#TAD001', 'tad001-2', '', '', 'Traditional_1.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 08:08:37', '2016-09-13 08:35:56'),
(90, NULL, 3, NULL, '#TAD002', 'tad002-2', '', '', 'Traditional_2_1.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 08:14:45', '2016-09-13 08:36:06'),
(91, NULL, 3, NULL, '#TAD003', 'tad003-2', '', '', 'Traditional_3_1.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 08:15:53', '2016-09-13 08:36:16'),
(92, NULL, 3, NULL, '#TAD004', 'tad004-2', '', '', 'Traditional_4.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 08:17:40', '2016-09-13 08:36:25'),
(93, NULL, 3, NULL, '#TAD005', 'tad005-2', '', '', 'Traditional_5_1.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 08:18:34', '2016-09-13 08:36:35'),
(94, NULL, 3, NULL, '#TAD006', 'tad006-2', '', '', 'Traditional_6_1.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 08:19:17', '2016-09-13 08:36:44'),
(95, NULL, 3, NULL, '#TAD007', 'tad007-2', '', '', 'Traditional_7_1.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 08:20:27', '2016-09-13 08:36:54'),
(96, NULL, 3, NULL, '#TAD008', 'tad008-2', '', '', 'Traditional_8_2.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 08:43:28', '2016-09-13 11:50:49'),
(97, NULL, 3, NULL, '#TAD009', 'tad009-2', '', '', 'Traditional_9.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 08:44:20', '2016-09-13 11:51:00'),
(98, NULL, 3, NULL, '#TAD010', 'tad010-2', '', '', 'Traditional_10_2.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 08:45:08', '2016-09-13 11:51:10'),
(99, NULL, 4, NULL, '#LBAD001', 'lbad001-2', '', '', 'Little_Bride1.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 11:30:45', '2016-09-13 11:51:19'),
(100, NULL, 4, NULL, '#LBAD002', 'lbad002-2', '', '', 'little_bride_2a.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 11:32:33', '2016-09-13 11:51:28'),
(101, NULL, 4, NULL, '#LBAD003', 'lbad003-2', '', '', 'Little_bride_3.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 11:33:34', '2016-09-13 11:51:38'),
(102, NULL, 4, NULL, '#LBAD004', 'lbad004-2', '', '', 'Little_bride_4_1.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 11:42:11', '2016-09-13 11:49:52'),
(103, NULL, 4, NULL, '#LBAD005', 'lbad005-2', '', '', 'Little_bride_5_1.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 11:45:43', '2016-09-13 11:50:23'),
(104, NULL, 4, NULL, '#LBAD006', 'lbad006-2', '', '', 'Little_bride_6.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 11:47:20', '2016-09-13 11:50:14'),
(105, NULL, 4, NULL, '#LBAD007', 'lbad007-2', '', '', 'New_little_bride_7_1.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 11:49:06', '2016-09-13 11:50:03'),
(106, NULL, 4, NULL, '#LBAD008', 'lbad008', '', '', 'New_Little_bride_8.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 11:49:43', '2016-09-13 11:49:43'),
(107, NULL, 4, NULL, '#LBAD009', 'lbad009', '', '', 'New_little_bride_9.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 11:50:32', '2016-09-13 11:50:32'),
(108, NULL, 3, NULL, '#TAD011', 'tad011', '', '', 'Traditional_11_1.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 20:49:53', '2016-09-13 20:49:53'),
(109, NULL, 3, NULL, '#TAD012', 'tad012', '', '', 'Traditional_12_1.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 20:51:41', '2016-09-13 20:51:41'),
(110, NULL, 3, NULL, '#TAD013', 'tad013', '', '', 'Traditional_13_1.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 20:53:26', '2016-09-13 20:53:26'),
(111, NULL, 3, NULL, '#TAD014', 'tad014', '', '', 'Traditional_14_1.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 20:55:01', '2016-09-13 20:55:01'),
(112, NULL, 3, NULL, '#TAD015', 'tad015', '', '', 'Traditional_15_1.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 20:57:18', '2016-09-13 20:57:18'),
(113, NULL, 3, NULL, '#TAD016', 'tad016', '', '', 'Traditional_16_2.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 20:58:57', '2016-09-13 20:58:57'),
(114, NULL, 3, NULL, '#TAD017', 'tad017', '', '', 'Traditional_17_1.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 20:59:52', '2016-09-13 20:59:52'),
(115, NULL, 3, NULL, '#TAD018', 'tad018', '', '', 'Traditional_18_3.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 21:00:46', '2016-09-13 21:00:46'),
(116, NULL, 3, NULL, '#TAD019', 'tad019', '', '', 'Traditional_20_1.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-09-13 21:02:02', '2016-09-13 21:02:02'),
(118, NULL, 7, NULL, 'ChAD001', 'chad001', '', '<p>Red off shoulder short dress with removable netty overlay</p>\r\n\r\n<p>Available colours :Red</p>\r\n', 'ChAD001-0.jpg', '500.00', NULL, '5,6,7,8,9', NULL, 0, NULL, '', '0', '2016-12-05 15:56:19', '2016-12-08 06:42:28'),
(119, '118', NULL, NULL, '', NULL, '', NULL, 'ChAD001.jpg', NULL, NULL, '', NULL, 0, NULL, '', '0', '2016-12-05 16:00:57', '2016-12-05 16:00:57'),
(120, NULL, 7, NULL, 'ChAD002', 'chad002-2', '', '<p>Off shoulder pink flowy princess gown with gold glittering lace.&nbsp;</p>\r\n\r\n<p>Available in: &nbsp;Short and Long&nbsp;</p>\r\n\r\n<p>Available Colours: Pink, Peach, Gold</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'ChAD002.jpg', '550.00', NULL, '5,6,7,8,9', NULL, 0, NULL, '', '0', '2016-12-05 16:06:42', '2016-12-08 06:42:49'),
(121, NULL, 7, NULL, 'ChAD003', 'chad003', '', '<p>Beige pleated flare skirt or pencil skirt with inside out cape, perfect for mix and match.</p>\r\n\r\n<p>Pearl skirt available colours: Beige or blush with African print</p>\r\n', 'ChAD003.jpg', '400.00', NULL, '5,6,7,8,9', NULL, 0, NULL, '', '0', '2016-12-05 16:15:44', '2016-12-08 06:46:11'),
(123, NULL, 7, NULL, 'ChAD004', 'chad004', '', '<p>lvory pleated shift dress with 3/4 sleeve</p>\r\n\r\n<p>Available colours:&nbsp;Beige and lvory</p>\r\n', 'ChAD004_1.jpg', '450.00', NULL, '5,6,7,8,9', NULL, 0, NULL, '', '0', '2016-12-05 16:25:05', '2016-12-08 06:46:38'),
(124, NULL, 7, NULL, 'ChAD005', 'chad005-2', '', '<p>Blush mermaid dress with nude illusion at the knee and pearls detail .Also has two alternate cape for mix and match.</p>\r\n\r\n<p>Available colours: Blush</p>\r\n', 'ChAD005.jpg', '700.00', NULL, '5,6,7,8,9', NULL, 0, NULL, '', '0', '2016-12-05 16:29:38', '2016-12-08 06:47:09'),
(125, NULL, 7, NULL, 'ChAD006', 'chad006', '', '<p>Baby blue flower detailed pencil dress with pleated details at the waist and with pearls at the lower section</p>\r\n\r\n<p>Available colours: Baby blue&nbsp;</p>\r\n', 'ChAD006_1.jpg', '550.00', NULL, '5,6,7,8,9', NULL, 0, NULL, '', '0', '2016-12-05 16:36:08', '2016-12-08 06:50:11'),
(126, NULL, 7, NULL, 'ChAD007', 'chad007', '', '<p>Baby blue short flare dress with flowery detail and nude illusion.</p>\r\n\r\n<p>Available colours: Baby blue and Royal blue</p>\r\n', 'ChAD007.jpg', '350.00', NULL, '5,6,7,8,9', NULL, 0, NULL, '', '0', '2016-12-05 16:36:29', '2016-12-08 06:50:35'),
(127, NULL, 7, NULL, 'ChAD008', 'chad008', '', '<p>Navy blue pleated box pleated or pencil skirt with top inside out cape, perfect for mix and match.</p>\r\n\r\n<p>Available colours: Navy blue, Royal blue</p>\r\n', 'ChAD008.jpg', '450.00', NULL, '5,6,7,8,9', NULL, 0, NULL, '', '0', '2016-12-05 16:37:50', '2016-12-08 06:49:40'),
(128, NULL, 7, NULL, 'ChAD009', 'chad009', '', '<p>lvory pencil short dress with shoulder frills and pearls at the waist.</p>\r\n\r\n<p>Available colours: lvory</p>\r\n', 'ChAD009.jpg', '400.00', NULL, '5,6,7,8,9', NULL, 0, NULL, '', '0', '2016-12-05 16:47:28', '2016-12-08 06:51:23'),
(129, NULL, 7, NULL, 'ChAD010', 'chad010', '', '<p>lvory pencil dress with off shoulder cord lace over lay and pearl detail</p>\r\n\r\n<p>Available colours: lvory</p>\r\n', 'ChAD0010_1.jpg', '500.00', NULL, '5,6,7,8,9', NULL, 0, NULL, '', '0', '2016-12-05 16:50:09', '2016-12-08 06:53:22'),
(130, NULL, 7, NULL, 'ChAD011', 'chad011-2', '', '<p>Pearl capped pencil dress with a flare peplum.</p>\r\n\r\n<p>Available colours: Pink and Royal blue</p>\r\n', 'ChAD0011.jpg', '650.00', NULL, '5,6,7,8,9', NULL, 0, NULL, '', '0', '2016-12-05 17:04:26', '2016-12-08 06:53:43'),
(131, NULL, 7, NULL, 'ChAD012', 'chad012', '', '<p>Jumpsuit with flare cape and pearl detail</p>\r\n\r\n<p>Available colours: lvory and Blush</p>\r\n', 'ChAD0012.jpg', '500.00', NULL, '5,6,7,8,9', NULL, 0, NULL, '', '0', '2016-12-05 17:07:04', '2016-12-08 07:06:55'),
(132, NULL, 7, NULL, 'ChAD013', 'chad013', '', '<p>Two in one Pearl dress with strapless inner&nbsp;</p>\r\n\r\n<p>Available colours: Beige&nbsp;</p>\r\n', 'ChAD0013_1.jpg', '350.00', NULL, '5,6,7,8,9', NULL, 0, NULL, '', '0', '2016-12-05 17:08:18', '2016-12-08 06:54:15'),
(133, NULL, 7, NULL, 'ChAD014', 'chad014', '', '<p>Two in one pleated, chiffon dress with short pencil dress and pearls detail</p>\r\n\r\n<p>Available colours: Black and White</p>\r\n', 'ChAD0014_1.jpg', '550.00', NULL, '5,6,7,8,9', NULL, 0, NULL, '', '0', '2016-12-05 17:11:24', '2016-12-08 06:54:34'),
(134, NULL, 7, NULL, 'ChAD015', 'chad015-2', '', '<p>Royal blue mermaid dress and side peplum and pearl detail.</p>\r\n\r\n<p>Available colours: Royal blue</p>\r\n', 'ChAD0015.jpg', '600.00', NULL, '5,6,7,8,9', NULL, 0, NULL, '', '0', '2016-12-05 17:14:17', '2016-12-08 06:54:53'),
(135, NULL, 7, NULL, 'ChAD016', 'chad016', '', '<p>Strapless mermaid dress with kente top section and Kente pearl cape</p>\r\n\r\n<p>Available colours: lvory</p>\r\n', 'ChAD0016_1.jpg', '800.00', NULL, '5,6,7,8,9', NULL, 0, NULL, '', '0', '2016-12-05 17:18:20', '2016-12-08 06:55:56'),
(136, NULL, 7, NULL, 'ChAD017', 'chad017', '', '<p>Beige long or short ruffled skirt with strapless pearls or plain beige top and rosey cape</p>\r\n\r\n<p>Available colours: &nbsp;Beige</p>\r\n\r\n<p>GHS 300 for short skirt with plain top.</p>\r\n\r\n<p>GHS 350 for long with plain top&nbsp;</p>\r\n\r\n<p>GHS 400 for short skirt with pearls.</p>\r\n\r\n<p>GhS 450 for long skirt&nbsp;with pearls.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'ChAD0017_2.jpg', '450.00', NULL, '5,6,7,8,9', NULL, 0, NULL, '', '0', '2016-12-05 17:22:29', '2016-12-08 07:08:41'),
(137, NULL, 7, NULL, 'ChAD018', 'chad018-2', '', '<p>Ivory pencil dress with pleat details and kente motifs. And a removable pearl off shoulder cape</p>\r\n\r\n<p>Available colours: ivory</p>\r\n', 'ChAD0018.jpg', '550.00', NULL, '5,6,7,8,9', NULL, 0, NULL, '', '0', '2016-12-05 17:25:52', '2016-12-08 06:56:35'),
(138, NULL, 7, NULL, 'ChAD019', 'chad019-2', '', '<p>Pencil wrap red dress with gold detail.</p>\r\n\r\n<p>Available colours: Red</p>\r\n', 'ChAD0019.jpg', '550.00', NULL, '5,6,7,8,9', NULL, 0, NULL, '', '0', '2016-12-05 17:28:36', '2016-12-08 06:56:54'),
(139, NULL, 7, NULL, 'ChAD020', 'chad020-2', '', '<p>Box pleated short dress with flowery detail.</p>\r\n\r\n<p>Available colours: lvory and Beige&nbsp;</p>\r\n', 'ChAD0020.jpg', '450.00', NULL, '5,6,7,8,9', NULL, 0, NULL, '', '0', '2016-12-05 17:32:30', '2016-12-08 06:57:16'),
(140, NULL, 7, NULL, 'ChAD021', 'chad021-2', '', '<p>Beige mermaid dress with nude illusion at the sides and gold embellishment&nbsp;</p>\r\n\r\n<p>Available colours: Beige</p>\r\n', 'ChAD0021.jpg', '650.00', NULL, '5,6,7,8,9', NULL, 0, NULL, '', '0', '2016-12-05 17:34:42', '2016-12-08 06:58:10'),
(141, NULL, 7, NULL, 'ChAD022', 'chad022-2', '', '<p>Coral front pleated dress with straps and pearl or sequenced bolero.</p>\r\n\r\n<p>Available colours: Coral</p>\r\n\r\n<p>GHS 550 with pearl bolero.</p>\r\n\r\n<p>GHS 450 with sequence.</p>\r\n\r\n<p>*sequence available in gold and silver</p>\r\n', 'ChAD0022_1.jpg', '550.00', NULL, '5,6,7,8,9', NULL, 0, NULL, '', '0', '2016-12-05 17:36:39', '2016-12-08 06:58:27'),
(142, NULL, 7, NULL, 'ChAD023', 'chad023-2', '', '<p>Mint Green front pleated dress with straps and pearl or sequenced bolero.</p>\r\n\r\n<p>Available colours: Mint green</p>\r\n\r\n<p>GHS&nbsp;550 with pearl bolero.</p>\r\n\r\n<p>GHS&nbsp;450 with sequence.</p>\r\n\r\n<p>*sequence available in gold and silver</p>\r\n', 'ChAD0023.jpg', '550.00', NULL, '5,6,7,8,9', NULL, 0, NULL, '', '0', '2016-12-05 17:38:36', '2016-12-08 06:58:41'),
(143, NULL, 7, NULL, 'ChAD024', 'chad024-2', '', '<p>Pencil dress with peplum and gold and pearl details</p>\r\n\r\n<p>Available colours: Beige</p>\r\n', 'ChAD0024.jpg', '500.00', NULL, '5,6,7,8,9', NULL, 0, NULL, '', '0', '2016-12-05 17:41:21', '2016-12-08 06:58:57');

-- --------------------------------------------------------

--
-- Table structure for table `product_options`
--

CREATE TABLE `product_options` (
  `id` int(200) NOT NULL,
  `product_id` varchar(200) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created`, `modified`) VALUES
(1, 'Administrator', '2012-07-03 20:15:14', '2012-07-03 20:15:14'),
(2, 'User', '2012-07-11 18:38:46', '2012-07-11 18:38:46'),
(3, 'Clients', '2015-06-17 10:58:29', '2015-06-17 10:58:29');

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `name`, `created`, `modified`) VALUES
(1, 'Size 0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Size 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Size 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Size 6', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Size 8', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Size 10', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Size 12', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Size 14', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Size 16', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Size 18', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(160) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` char(40) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `role_id`, `created`, `modified`) VALUES
(1, 'Administrator', 'admin', '45f54f46144393e5be431a9092857b7f49782128', 1, '2012-07-03 20:20:22', '2015-01-09 03:08:34');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `category` varchar(1) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `text` longtext NOT NULL,
  `video_poster` varchar(255) NOT NULL,
  `video_mp4` varchar(255) NOT NULL,
  `video_webm` varchar(255) NOT NULL,
  `video_ogv` varchar(255) NOT NULL,
  `add_content` varchar(255) NOT NULL,
  `content_type` varchar(1) NOT NULL DEFAULT '0',
  `youtube_link` varchar(200) NOT NULL,
  `youtube` varchar(1) NOT NULL DEFAULT '0',
  `parent` varchar(1) NOT NULL DEFAULT '0',
  `featured` varchar(1) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acos`
--
ALTER TABLE `acos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aros`
--
ALTER TABLE `aros`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aros_acos`
--
ALTER TABLE `aros_acos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_contents`
--
ALTER TABLE `page_contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productmods`
--
ALTER TABLE `productmods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `modified` (`modified`),
  ADD KEY `category_id` (`product_id`),
  ADD KEY `brand_id` (`value`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `modified` (`modified`),
  ADD KEY `name_slug` (`slug`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `brand_id` (`brand_id`);

--
-- Indexes for table `product_options`
--
ALTER TABLE `product_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acos`
--
ALTER TABLE `acos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1233;
--
-- AUTO_INCREMENT for table `aros`
--
ALTER TABLE `aros`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `aros_acos`
--
ALTER TABLE `aros_acos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(150) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;
--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1670;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `page_contents`
--
ALTER TABLE `page_contents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `productmods`
--
ALTER TABLE `productmods`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;
--
-- AUTO_INCREMENT for table `product_options`
--
ALTER TABLE `product_options`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
