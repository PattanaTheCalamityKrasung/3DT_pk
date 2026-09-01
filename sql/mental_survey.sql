-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 23, 2026 at 03:54 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mental_survey`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers_table`
--

CREATE TABLE `answers_table` (
  `answer_id` int(11) NOT NULL,
  `response_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `answer_value` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `answers_table`
--

INSERT INTO `answers_table` (`answer_id`, `response_id`, `question_id`, `answer_value`) VALUES
(1, 31, 1, 8.00),
(2, 31, 2, 35.00),
(3, 31, 3, 6.00),
(4, 31, 4, 30.00),
(5, 31, 5, 17.00),
(6, 31, 6, 2.00),
(7, 31, 7, 1.00),
(8, 31, 8, 19.00),
(9, 31, 9, 10.00),
(10, 31, 10, 10.00),
(11, 32, 1, 8.10),
(12, 32, 2, 36.00),
(13, 32, 3, 6.00),
(14, 32, 4, 29.00),
(15, 32, 5, 17.00),
(16, 32, 6, 2.00),
(17, 32, 7, 1.00),
(18, 32, 8, 20.00),
(19, 32, 9, 10.00),
(20, 32, 10, 10.00),
(21, 33, 1, 8.20),
(22, 33, 2, 37.00),
(23, 33, 3, 6.00),
(24, 33, 4, 28.00),
(25, 33, 5, 18.00),
(26, 33, 6, 2.00),
(27, 33, 7, 1.00),
(28, 33, 8, 20.00),
(29, 33, 9, 10.00),
(30, 33, 10, 10.00),
(31, 34, 1, 8.30),
(32, 34, 2, 38.00),
(33, 34, 3, 6.00),
(34, 34, 4, 27.00),
(35, 34, 5, 18.00),
(36, 34, 6, 2.00),
(37, 34, 7, 1.00),
(38, 34, 8, 21.00),
(39, 34, 9, 10.00),
(40, 34, 10, 10.00),
(41, 35, 1, 8.40),
(42, 35, 2, 39.00),
(43, 35, 3, 6.00),
(44, 35, 4, 26.00),
(45, 35, 5, 19.00),
(46, 35, 6, 2.00),
(47, 35, 7, 1.00),
(48, 35, 8, 21.00),
(49, 35, 9, 10.00),
(50, 35, 10, 10.00),
(51, 36, 1, 8.50),
(52, 36, 2, 40.00),
(53, 36, 3, 7.00),
(54, 36, 4, 25.00),
(55, 36, 5, 19.00),
(56, 36, 6, 2.00),
(57, 36, 7, 1.00),
(58, 36, 8, 22.00),
(59, 36, 9, 10.00),
(60, 36, 10, 10.00),
(61, 37, 1, 8.00),
(62, 37, 2, 41.00),
(63, 37, 3, 7.00),
(64, 37, 4, 27.00),
(65, 37, 5, 15.00),
(66, 37, 6, 3.00),
(67, 37, 7, 2.00),
(68, 37, 8, 18.00),
(69, 37, 9, 9.00),
(70, 37, 10, 9.00),
(71, 38, 1, 7.50),
(72, 38, 2, 20.00),
(73, 38, 3, 4.00),
(74, 38, 4, 45.00),
(75, 38, 5, 8.00),
(76, 38, 6, 6.00),
(77, 38, 7, 5.00),
(78, 38, 8, 10.00),
(79, 38, 9, 6.00),
(80, 38, 10, 6.00),
(81, 39, 1, 6.30),
(82, 39, 2, 12.00),
(83, 39, 3, 2.00),
(84, 39, 4, 55.00),
(85, 39, 5, 4.00),
(86, 39, 6, 7.00),
(87, 39, 7, 7.00),
(88, 39, 8, 7.00),
(89, 39, 9, 4.00),
(90, 39, 10, 5.00),
(91, 40, 1, 6.80),
(92, 40, 2, 18.00),
(93, 40, 3, 3.00),
(94, 40, 4, 48.00),
(95, 40, 5, 6.00),
(96, 40, 6, 6.00),
(97, 40, 7, 5.00),
(98, 40, 8, 10.00),
(99, 40, 9, 6.00),
(100, 40, 10, 6.00),
(101, 41, 1, 7.20),
(102, 41, 2, 26.00),
(103, 41, 3, 5.00),
(104, 41, 4, 38.00),
(105, 41, 5, 11.00),
(106, 41, 6, 4.00),
(107, 41, 7, 3.00),
(108, 41, 8, 15.00),
(109, 41, 9, 8.00),
(110, 41, 10, 8.00),
(111, 42, 1, 5.60),
(112, 42, 2, 9.00),
(113, 42, 3, 1.00),
(114, 42, 4, 57.00),
(115, 42, 5, 3.00),
(116, 42, 6, 8.00),
(117, 42, 7, 8.00),
(118, 42, 8, 6.00),
(119, 42, 9, 3.00),
(120, 42, 10, 4.00),
(121, 43, 1, 6.10),
(122, 43, 2, 14.00),
(123, 43, 3, 2.00),
(124, 43, 4, 50.00),
(125, 43, 5, 7.00),
(126, 43, 6, 7.00),
(127, 43, 7, 6.00),
(128, 43, 8, 9.00),
(129, 43, 9, 5.00),
(130, 43, 10, 5.00),
(131, 44, 1, 7.70),
(132, 44, 2, 30.00),
(133, 44, 3, 6.00),
(134, 44, 4, 34.00),
(135, 44, 5, 14.00),
(136, 44, 6, 3.00),
(137, 44, 7, 2.00),
(138, 44, 8, 17.00),
(139, 44, 9, 9.00),
(140, 44, 10, 9.00),
(141, 45, 1, 6.60),
(142, 45, 2, 21.00),
(143, 45, 3, 4.00),
(144, 45, 4, 44.00),
(145, 45, 5, 9.00),
(146, 45, 6, 5.00),
(147, 45, 7, 4.00),
(148, 45, 8, 12.00),
(149, 45, 9, 7.00),
(150, 45, 10, 7.00),
(151, 46, 1, 7.90),
(152, 46, 2, 33.00),
(153, 46, 3, 6.00),
(154, 46, 4, 32.00),
(155, 46, 5, 16.00),
(156, 46, 6, 2.00),
(157, 46, 7, 1.00),
(158, 46, 8, 19.00),
(159, 46, 9, 10.00),
(160, 46, 10, 10.00),
(161, 47, 1, 5.80),
(162, 47, 2, 13.00),
(163, 47, 3, 2.00),
(164, 47, 4, 52.00),
(165, 47, 5, 5.00),
(166, 47, 6, 7.00),
(167, 47, 7, 6.00),
(168, 47, 8, 8.00),
(169, 47, 9, 5.00),
(170, 47, 10, 5.00),
(171, 48, 1, 7.10),
(172, 48, 2, 23.00),
(173, 48, 3, 4.00),
(174, 48, 4, 40.00),
(175, 48, 5, 10.00),
(176, 48, 6, 4.00),
(177, 48, 7, 3.00),
(178, 48, 8, 14.00),
(179, 48, 9, 8.00),
(180, 48, 10, 8.00),
(181, 49, 1, 8.20),
(182, 49, 2, 36.00),
(183, 49, 3, 7.00),
(184, 49, 4, 28.00),
(185, 49, 5, 17.00),
(186, 49, 6, 2.00),
(187, 49, 7, 1.00),
(188, 49, 8, 20.00),
(189, 49, 9, 10.00),
(190, 49, 10, 10.00),
(191, 50, 1, 6.40),
(192, 50, 2, 16.00),
(193, 50, 3, 3.00),
(194, 50, 4, 47.00),
(195, 50, 5, 7.00),
(196, 50, 6, 6.00),
(197, 50, 7, 5.00),
(198, 50, 8, 10.00),
(199, 50, 9, 6.00),
(200, 50, 10, 6.00),
(201, 51, 1, 7.40),
(202, 51, 2, 28.00),
(203, 51, 3, 5.00),
(204, 51, 4, 36.00),
(205, 51, 5, 13.00),
(206, 51, 6, 3.00),
(207, 51, 7, 2.00),
(208, 51, 8, 16.00),
(209, 51, 9, 9.00),
(210, 51, 10, 9.00),
(211, 52, 1, 5.50),
(212, 52, 2, 8.00),
(213, 52, 3, 1.00),
(214, 52, 4, 56.00),
(215, 52, 5, 3.00),
(216, 52, 6, 8.00),
(217, 52, 7, 7.00),
(218, 52, 8, 6.00),
(219, 52, 9, 4.00),
(220, 52, 10, 4.00),
(221, 53, 1, 6.90),
(222, 53, 2, 24.00),
(223, 53, 3, 4.00),
(224, 53, 4, 41.00),
(225, 53, 5, 11.00),
(226, 53, 6, 4.00),
(227, 53, 7, 3.00),
(228, 53, 8, 14.00),
(229, 53, 9, 8.00),
(230, 53, 10, 8.00),
(231, 54, 1, 7.80),
(232, 54, 2, 34.00),
(233, 54, 3, 6.00),
(234, 54, 4, 31.00),
(235, 54, 5, 16.00),
(236, 54, 6, 2.00),
(237, 54, 7, 1.00),
(238, 54, 8, 19.00),
(239, 54, 9, 10.00),
(240, 54, 10, 10.00),
(241, 55, 1, 6.00),
(242, 55, 2, 11.00),
(243, 55, 3, 2.00),
(244, 55, 4, 54.00),
(245, 55, 5, 5.00),
(246, 55, 6, 7.00),
(247, 55, 7, 6.00),
(248, 55, 8, 8.00),
(249, 55, 9, 5.00),
(250, 55, 10, 5.00),
(251, 56, 1, 7.60),
(252, 56, 2, 31.00),
(253, 56, 3, 6.00),
(254, 56, 4, 34.00),
(255, 56, 5, 14.00),
(256, 56, 6, 2.00),
(257, 56, 7, 2.00),
(258, 56, 8, 17.00),
(259, 56, 9, 10.00),
(260, 56, 10, 10.00),
(261, 57, 1, 6.70),
(262, 57, 2, 17.00),
(263, 57, 3, 3.00),
(264, 57, 4, 46.00),
(265, 57, 5, 8.00),
(266, 57, 6, 5.00),
(267, 57, 7, 4.00),
(268, 57, 8, 12.00),
(269, 57, 9, 7.00),
(270, 57, 10, 7.00),
(271, 58, 1, 8.40),
(272, 58, 2, 39.00),
(273, 58, 3, 7.00),
(274, 58, 4, 27.00),
(275, 58, 5, 18.00),
(276, 58, 6, 2.00),
(277, 58, 7, 1.00),
(278, 58, 8, 21.00),
(279, 58, 9, 10.00),
(280, 58, 10, 10.00),
(281, 59, 1, 6.20),
(282, 59, 2, 13.00),
(283, 59, 3, 2.00),
(284, 59, 4, 53.00),
(285, 59, 5, 5.00),
(286, 59, 6, 7.00),
(287, 59, 7, 6.00),
(288, 59, 8, 8.00),
(289, 59, 9, 5.00),
(290, 59, 10, 5.00),
(291, 60, 1, 7.30),
(292, 60, 2, 25.00),
(293, 60, 3, 5.00),
(294, 60, 4, 39.00),
(295, 60, 5, 12.00),
(296, 60, 6, 4.00),
(297, 60, 7, 3.00),
(298, 60, 8, 15.00),
(299, 60, 9, 8.00),
(300, 60, 10, 9.00),
(301, 61, 1, 5.30),
(302, 61, 2, 7.00),
(303, 61, 3, 1.00),
(304, 61, 4, 58.00),
(305, 61, 5, 3.00),
(306, 61, 6, 8.00),
(307, 61, 7, 8.00),
(308, 61, 8, 5.00),
(309, 61, 9, 3.00),
(310, 61, 10, 3.00),
(311, 62, 1, 7.00),
(312, 62, 2, 22.00),
(313, 62, 3, 4.00),
(314, 62, 4, 42.00),
(315, 62, 5, 10.00),
(316, 62, 6, 4.00),
(317, 62, 7, 3.00),
(318, 62, 8, 14.00),
(319, 62, 9, 8.00),
(320, 62, 10, 8.00),
(321, 63, 1, 8.50),
(322, 63, 2, 40.00),
(323, 63, 3, 7.00),
(324, 63, 4, 25.00),
(325, 63, 5, 19.00),
(326, 63, 6, 2.00),
(327, 63, 7, 1.00),
(328, 63, 8, 22.00),
(329, 63, 9, 10.00),
(330, 63, 10, 10.00),
(331, 64, 1, 6.50),
(332, 64, 2, 19.00),
(333, 64, 3, 3.00),
(334, 64, 4, 45.00),
(335, 64, 5, 8.00),
(336, 64, 6, 5.00),
(337, 64, 7, 5.00),
(338, 64, 8, 11.00),
(339, 64, 9, 7.00),
(340, 64, 10, 7.00),
(341, 65, 1, 7.50),
(342, 65, 2, 27.00),
(343, 65, 3, 5.00),
(344, 65, 4, 37.00),
(345, 65, 5, 13.00),
(346, 65, 6, 3.00),
(347, 65, 7, 2.00),
(348, 65, 8, 16.00),
(349, 65, 9, 9.00),
(350, 65, 10, 9.00),
(351, 66, 1, 5.90),
(352, 66, 2, 10.00),
(353, 66, 3, 2.00),
(354, 66, 4, 55.00),
(355, 66, 5, 4.00),
(356, 66, 6, 7.00),
(357, 66, 7, 7.00),
(358, 66, 8, 7.00),
(359, 66, 9, 4.00),
(360, 66, 10, 5.00),
(361, 67, 1, 6.80),
(362, 67, 2, 20.00),
(363, 67, 3, 4.00),
(364, 67, 4, 43.00),
(365, 67, 5, 9.00),
(366, 67, 6, 5.00),
(367, 67, 7, 4.00),
(368, 67, 8, 13.00),
(369, 67, 9, 8.00),
(370, 67, 10, 8.00),
(371, 68, 1, 8.00),
(372, 68, 2, 35.00),
(373, 68, 3, 6.00),
(374, 68, 4, 30.00),
(375, 68, 5, 16.00),
(376, 68, 6, 2.00),
(377, 68, 7, 1.00),
(378, 68, 8, 19.00),
(379, 68, 9, 10.00),
(380, 68, 10, 10.00),
(381, 69, 1, 6.30),
(382, 69, 2, 15.00),
(383, 69, 3, 3.00),
(384, 69, 4, 49.00),
(385, 69, 5, 7.00),
(386, 69, 6, 6.00),
(387, 69, 7, 5.00),
(388, 69, 8, 10.00),
(389, 69, 9, 6.00),
(390, 69, 10, 6.00),
(391, 70, 1, 7.20),
(392, 70, 2, 24.00),
(393, 70, 3, 5.00),
(394, 70, 4, 38.00),
(395, 70, 5, 11.00),
(396, 70, 6, 4.00),
(397, 70, 7, 3.00),
(398, 70, 8, 15.00),
(399, 70, 9, 8.00),
(400, 70, 10, 9.00),
(401, 71, 1, 5.70),
(402, 71, 2, 9.00),
(403, 71, 3, 1.00),
(404, 71, 4, 57.00),
(405, 71, 5, 3.00),
(406, 71, 6, 8.00),
(407, 71, 7, 8.00),
(408, 71, 8, 6.00),
(409, 71, 9, 3.00),
(410, 71, 10, 4.00),
(411, 72, 1, 7.70),
(412, 72, 2, 32.00),
(413, 72, 3, 6.00),
(414, 72, 4, 33.00),
(415, 72, 5, 15.00),
(416, 72, 6, 2.00),
(417, 72, 7, 1.00),
(418, 72, 8, 18.00),
(419, 72, 9, 10.00),
(420, 72, 10, 10.00),
(421, 73, 1, 6.60),
(422, 73, 2, 18.00),
(423, 73, 3, 3.00),
(424, 73, 4, 47.00),
(425, 73, 5, 8.00),
(426, 73, 6, 6.00),
(427, 73, 7, 5.00),
(428, 73, 8, 11.00),
(429, 73, 9, 7.00),
(430, 73, 10, 7.00),
(431, 74, 1, 8.10),
(432, 74, 2, 36.00),
(433, 74, 3, 7.00),
(434, 74, 4, 29.00),
(435, 74, 5, 17.00),
(436, 74, 6, 2.00),
(437, 74, 7, 1.00),
(438, 74, 8, 20.00),
(439, 74, 9, 10.00),
(440, 74, 10, 10.00),
(441, 75, 1, 6.10),
(442, 75, 2, 14.00),
(443, 75, 3, 2.00),
(444, 75, 4, 52.00),
(445, 75, 5, 6.00),
(446, 75, 6, 7.00),
(447, 75, 7, 6.00),
(448, 75, 8, 9.00),
(449, 75, 9, 5.00),
(450, 75, 10, 5.00),
(451, 76, 1, 7.40),
(452, 76, 2, 29.00),
(453, 76, 3, 5.00),
(454, 76, 4, 35.00),
(455, 76, 5, 13.00),
(456, 76, 6, 3.00),
(457, 76, 7, 2.00),
(458, 76, 8, 16.00),
(459, 76, 9, 9.00),
(460, 76, 10, 9.00),
(461, 77, 1, 5.40),
(462, 77, 2, 8.00),
(463, 77, 3, 1.00),
(464, 77, 4, 59.00),
(465, 77, 5, 3.00),
(466, 77, 6, 8.00),
(467, 77, 7, 8.00),
(468, 77, 8, 6.00),
(469, 77, 9, 3.00),
(470, 77, 10, 3.00),
(471, 78, 1, 7.90),
(472, 78, 2, 34.00),
(473, 78, 3, 6.00),
(474, 78, 4, 31.00),
(475, 78, 5, 16.00),
(476, 78, 6, 2.00),
(477, 78, 7, 1.00),
(478, 78, 8, 19.00),
(479, 78, 9, 10.00),
(480, 78, 10, 10.00),
(481, 79, 1, 6.90),
(482, 79, 2, 22.00),
(483, 79, 3, 4.00),
(484, 79, 4, 42.00),
(485, 79, 5, 10.00),
(486, 79, 6, 4.00),
(487, 79, 7, 3.00),
(488, 79, 8, 14.00),
(489, 79, 9, 8.00),
(490, 79, 10, 8.00),
(491, 80, 1, 8.30),
(492, 80, 2, 38.00),
(493, 80, 3, 6.00),
(494, 80, 4, 27.00),
(495, 80, 5, 18.00),
(496, 80, 6, 2.00),
(497, 80, 7, 1.00),
(498, 80, 8, 21.00),
(499, 80, 9, 10.00),
(500, 80, 10, 10.00),
(501, 81, 1, 6.40),
(502, 81, 2, 17.00),
(503, 81, 3, 3.00),
(504, 81, 4, 48.00),
(505, 81, 5, 8.00),
(506, 81, 6, 6.00),
(507, 81, 7, 5.00),
(508, 81, 8, 11.00),
(509, 81, 9, 6.00),
(510, 81, 10, 7.00),
(511, 82, 1, 7.10),
(512, 82, 2, 23.00),
(513, 82, 3, 4.00),
(514, 82, 4, 40.00),
(515, 82, 5, 11.00),
(516, 82, 6, 4.00),
(517, 82, 7, 3.00),
(518, 82, 8, 14.00),
(519, 82, 9, 8.00),
(520, 82, 10, 8.00),
(521, 83, 1, 5.20),
(522, 83, 2, 6.00),
(523, 83, 3, 1.00),
(524, 83, 4, 60.00),
(525, 83, 5, 2.00),
(526, 83, 6, 9.00),
(527, 83, 7, 9.00),
(528, 83, 8, 5.00),
(529, 83, 9, 2.00),
(530, 83, 10, 2.00),
(531, 84, 1, 7.60),
(532, 84, 2, 31.00),
(533, 84, 3, 6.00),
(534, 84, 4, 34.00),
(535, 84, 5, 14.00),
(536, 84, 6, 2.00),
(537, 84, 7, 2.00),
(538, 84, 8, 17.00),
(539, 84, 9, 10.00),
(540, 84, 10, 10.00),
(541, 85, 1, 6.80),
(542, 85, 2, 20.00),
(543, 85, 3, 4.00),
(544, 85, 4, 44.00),
(545, 85, 5, 9.00),
(546, 85, 6, 5.00),
(547, 85, 7, 4.00),
(548, 85, 8, 13.00),
(549, 85, 9, 8.00),
(550, 85, 10, 8.00),
(551, 86, 1, 8.50),
(552, 86, 2, 40.00),
(553, 86, 3, 7.00),
(554, 86, 4, 25.00),
(555, 86, 5, 19.00),
(556, 86, 6, 2.00),
(557, 86, 7, 1.00),
(558, 86, 8, 22.00),
(559, 86, 9, 10.00),
(560, 86, 10, 10.00),
(561, 87, 1, 6.00),
(562, 87, 2, 12.00),
(563, 87, 3, 2.00),
(564, 87, 4, 53.00),
(565, 87, 5, 5.00),
(566, 87, 6, 7.00),
(567, 87, 7, 6.00),
(568, 87, 8, 8.00),
(569, 87, 9, 5.00),
(570, 87, 10, 5.00),
(571, 88, 1, 7.30),
(572, 88, 2, 26.00),
(573, 88, 3, 5.00),
(574, 88, 4, 36.00),
(575, 88, 5, 12.00),
(576, 88, 6, 4.00),
(577, 88, 7, 3.00),
(578, 88, 8, 15.00),
(579, 88, 9, 9.00),
(580, 88, 10, 9.00),
(581, 89, 1, 5.80),
(582, 89, 2, 10.00),
(583, 89, 3, 2.00),
(584, 89, 4, 55.00),
(585, 89, 5, 4.00),
(586, 89, 6, 8.00),
(587, 89, 7, 7.00),
(588, 89, 8, 7.00),
(589, 89, 9, 4.00),
(590, 89, 10, 5.00),
(591, 90, 1, 7.80),
(592, 90, 2, 33.00),
(593, 90, 3, 6.00),
(594, 90, 4, 32.00),
(595, 90, 5, 15.00),
(596, 90, 6, 2.00),
(597, 90, 7, 1.00),
(598, 90, 8, 18.00),
(599, 90, 9, 10.00),
(600, 90, 10, 10.00),
(601, 91, 1, 6.50),
(602, 91, 2, 16.00),
(603, 91, 3, 3.00),
(604, 91, 4, 46.00),
(605, 91, 5, 8.00),
(606, 91, 6, 5.00),
(607, 91, 7, 4.00),
(608, 91, 8, 12.00),
(609, 91, 9, 7.00),
(610, 91, 10, 7.00),
(611, 92, 1, 7.50),
(612, 92, 2, 28.00),
(613, 92, 3, 5.00),
(614, 92, 4, 37.00),
(615, 92, 5, 13.00),
(616, 92, 6, 3.00),
(617, 92, 7, 2.00),
(618, 92, 8, 16.00),
(619, 92, 9, 9.00),
(620, 92, 10, 9.00),
(621, 93, 1, 5.60),
(622, 93, 2, 7.00),
(623, 93, 3, 1.00),
(624, 93, 4, 58.00),
(625, 93, 5, 3.00),
(626, 93, 6, 8.00),
(627, 93, 7, 8.00),
(628, 93, 8, 6.00),
(629, 93, 9, 3.00),
(630, 93, 10, 4.00),
(631, 94, 1, 7.00),
(632, 94, 2, 21.00),
(633, 94, 3, 4.00),
(634, 94, 4, 41.00),
(635, 94, 5, 10.00),
(636, 94, 6, 4.00),
(637, 94, 7, 3.00),
(638, 94, 8, 14.00),
(639, 94, 9, 8.00),
(640, 94, 10, 8.00),
(641, 95, 1, 8.20),
(642, 95, 2, 37.00),
(643, 95, 3, 7.00),
(644, 95, 4, 28.00),
(645, 95, 5, 18.00),
(646, 95, 6, 2.00),
(647, 95, 7, 1.00),
(648, 95, 8, 20.00),
(649, 95, 9, 10.00),
(650, 95, 10, 10.00),
(651, 96, 1, 6.20),
(652, 96, 2, 13.00),
(653, 96, 3, 2.00),
(654, 96, 4, 51.00),
(655, 96, 5, 6.00),
(656, 96, 6, 7.00),
(657, 96, 7, 6.00),
(658, 96, 8, 9.00),
(659, 96, 9, 5.00),
(660, 96, 10, 5.00),
(661, 97, 1, 7.70),
(662, 97, 2, 30.00),
(663, 97, 3, 6.00),
(664, 97, 4, 35.00),
(665, 97, 5, 15.00),
(666, 97, 6, 3.00),
(667, 97, 7, 2.00),
(668, 97, 8, 17.00),
(669, 97, 9, 10.00),
(670, 97, 10, 10.00),
(671, 98, 1, 6.70),
(672, 98, 2, 19.00),
(673, 98, 3, 3.00),
(674, 98, 4, 45.00),
(675, 98, 5, 9.00),
(676, 98, 6, 5.00),
(677, 98, 7, 4.00),
(678, 98, 8, 12.00),
(679, 98, 9, 7.00),
(680, 98, 10, 7.00),
(681, 99, 1, 8.40),
(682, 99, 2, 39.00),
(683, 99, 3, 7.00),
(684, 99, 4, 26.00),
(685, 99, 5, 19.00),
(686, 99, 6, 2.00),
(687, 99, 7, 1.00),
(688, 99, 8, 21.00),
(689, 99, 9, 10.00),
(690, 99, 10, 10.00),
(691, 100, 1, 7.00),
(692, 100, 2, 25.00),
(693, 100, 3, 5.00),
(694, 100, 4, 40.00),
(695, 100, 5, 12.00),
(696, 100, 6, 4.00),
(697, 100, 7, 3.00),
(698, 100, 8, 15.00),
(699, 100, 9, 8.00),
(700, 100, 10, 8.00);

-- --------------------------------------------------------

--
-- Table structure for table `counsellors_table`
--

CREATE TABLE `counsellors_table` (
  `counsellor_id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `counsellors_table`
--

INSERT INTO `counsellors_table` (`counsellor_id`, `firstname`, `lastname`, `email`, `password`) VALUES
(1, 'counsellor', 'counsellor', 'counsellor@gmail.com', '74e67455ab4baa0de9b6db27b7be80b9888117b966347ce31c4477e54a267f3c'),
(3, 'pattna', 'krasung', 'pk@gmail.com', '74e67455ab4baa0de9b6db27b7be80b9888117b966347ce31c4477e54a267f3c'),
(5, '123', '123', '123@gmail.com', '74e67455ab4baa0de9b6db27b7be80b9888117b966347ce31c4477e54a267f3c');

-- --------------------------------------------------------

--
-- Table structure for table `questions_table`
--

CREATE TABLE `questions_table` (
  `question_id` int(11) NOT NULL,
  `survey_id` int(11) NOT NULL,
  `question_number` int(11) NOT NULL,
  `question_text` varchar(500) NOT NULL,
  `question_type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `questions_table`
--

INSERT INTO `questions_table` (`question_id`, `survey_id`, `question_number`, `question_text`, `question_type`) VALUES
(1, 1, 1, 'How many hours of sleep do you get per night?', 'number'),
(2, 1, 2, 'How often do you spend time with friends and family?', 'number'),
(3, 1, 3, 'How many days of the week do you spend doing physical activity?', 'number'),
(4, 1, 4, 'How many hours per week do you spend working or studying?', 'number'),
(5, 1, 5, 'How many new people do you interact with per week?', 'number'),
(6, 1, 6, 'How do you rate your stress level from 1-10?', 'number'),
(7, 1, 7, 'How do you rate your anxiety level from 1-10?', 'number'),
(8, 1, 8, 'How many hours per week do you spend relaxing?', 'number'),
(9, 1, 9, 'How would you rate your ability to take on challenges from 1-10?', 'number'),
(10, 1, 10, 'How would you rate your personal wellbeing from 1-10?', 'number');

-- --------------------------------------------------------

--
-- Table structure for table `responses_table`
--

CREATE TABLE `responses_table` (
  `response_id` int(11) NOT NULL,
  `vistor_id` int(11) NOT NULL,
  `survey_id` int(11) NOT NULL,
  `date_submitted` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `responses_table`
--

INSERT INTO `responses_table` (`response_id`, `vistor_id`, `survey_id`, `date_submitted`) VALUES
(1, 515, 1, '2026-08-23 13:49:30'),
(2, 516, 1, '2026-08-23 13:49:30'),
(3, 517, 1, '2026-08-23 13:49:30'),
(4, 518, 1, '2026-08-23 13:49:30'),
(5, 519, 1, '2026-08-23 13:49:30'),
(6, 520, 1, '2026-08-23 13:49:30'),
(7, 521, 1, '2026-08-23 13:49:30'),
(8, 522, 1, '2026-08-23 13:49:30'),
(9, 523, 1, '2026-08-23 13:49:30'),
(10, 524, 1, '2026-08-23 13:49:30'),
(11, 525, 1, '2026-08-23 13:49:30'),
(12, 526, 1, '2026-08-23 13:49:30'),
(13, 527, 1, '2026-08-23 13:49:30'),
(14, 528, 1, '2026-08-23 13:49:30'),
(15, 529, 1, '2026-08-23 13:49:30'),
(16, 530, 1, '2026-08-23 13:49:30'),
(17, 531, 1, '2026-08-23 13:49:30'),
(18, 532, 1, '2026-08-23 13:49:30'),
(19, 533, 1, '2026-08-23 13:49:30'),
(20, 534, 1, '2026-08-23 13:49:30'),
(21, 535, 1, '2026-08-23 13:49:30'),
(22, 536, 1, '2026-08-23 13:49:30'),
(23, 537, 1, '2026-08-23 13:49:30'),
(24, 538, 1, '2026-08-23 13:49:30'),
(25, 539, 1, '2026-08-23 13:49:30'),
(26, 540, 1, '2026-08-23 13:49:30'),
(27, 541, 1, '2026-08-23 13:49:30'),
(28, 542, 1, '2026-08-23 13:49:30'),
(29, 543, 1, '2026-08-23 13:49:30'),
(30, 544, 1, '2026-08-23 13:49:30'),
(31, 545, 1, '2026-08-23 13:49:30'),
(32, 546, 1, '2026-08-23 13:49:30'),
(33, 547, 1, '2026-08-23 13:49:30'),
(34, 548, 1, '2026-08-23 13:49:30'),
(35, 549, 1, '2026-08-23 13:49:30'),
(36, 550, 1, '2026-08-23 13:49:30'),
(37, 551, 1, '2026-08-23 13:49:30'),
(38, 552, 1, '2026-08-23 13:49:30'),
(39, 553, 1, '2026-08-23 13:49:30'),
(40, 554, 1, '2026-08-23 13:49:30'),
(41, 555, 1, '2026-08-23 13:49:30'),
(42, 556, 1, '2026-08-23 13:49:30'),
(43, 557, 1, '2026-08-23 13:49:30'),
(44, 558, 1, '2026-08-23 13:49:30'),
(45, 559, 1, '2026-08-23 13:49:30'),
(46, 560, 1, '2026-08-23 13:49:30'),
(47, 561, 1, '2026-08-23 13:49:30'),
(48, 562, 1, '2026-08-23 13:49:30'),
(49, 563, 1, '2026-08-23 13:49:30'),
(50, 564, 1, '2026-08-23 13:49:30'),
(51, 565, 1, '2026-08-23 13:49:30'),
(52, 566, 1, '2026-08-23 13:49:30'),
(53, 567, 1, '2026-08-23 13:49:30'),
(54, 568, 1, '2026-08-23 13:49:30'),
(55, 569, 1, '2026-08-23 13:49:30'),
(56, 570, 1, '2026-08-23 13:49:30'),
(57, 571, 1, '2026-08-23 13:49:30'),
(58, 572, 1, '2026-08-23 13:49:30'),
(59, 573, 1, '2026-08-23 13:49:30'),
(60, 574, 1, '2026-08-23 13:49:30'),
(61, 575, 1, '2026-08-23 13:49:30'),
(62, 576, 1, '2026-08-23 13:49:30'),
(63, 577, 1, '2026-08-23 13:49:30'),
(64, 578, 1, '2026-08-23 13:49:30'),
(65, 579, 1, '2026-08-23 13:49:30'),
(66, 580, 1, '2026-08-23 13:49:30'),
(67, 581, 1, '2026-08-23 13:49:30'),
(68, 582, 1, '2026-08-23 13:49:30'),
(69, 583, 1, '2026-08-23 13:49:30'),
(70, 584, 1, '2026-08-23 13:49:30'),
(71, 585, 1, '2026-08-23 13:49:30'),
(72, 586, 1, '2026-08-23 13:49:30'),
(73, 587, 1, '2026-08-23 13:49:30'),
(74, 588, 1, '2026-08-23 13:49:30'),
(75, 589, 1, '2026-08-23 13:49:30'),
(76, 590, 1, '2026-08-23 13:49:30'),
(77, 591, 1, '2026-08-23 13:49:30'),
(78, 592, 1, '2026-08-23 13:49:30'),
(79, 593, 1, '2026-08-23 13:49:30'),
(80, 594, 1, '2026-08-23 13:49:30'),
(81, 595, 1, '2026-08-23 13:49:30'),
(82, 596, 1, '2026-08-23 13:49:30'),
(83, 597, 1, '2026-08-23 13:49:30'),
(84, 598, 1, '2026-08-23 13:49:30'),
(85, 599, 1, '2026-08-23 13:49:30'),
(86, 600, 1, '2026-08-23 13:49:30'),
(87, 601, 1, '2026-08-23 13:49:30'),
(88, 602, 1, '2026-08-23 13:49:30'),
(89, 603, 1, '2026-08-23 13:49:30'),
(90, 604, 1, '2026-08-23 13:49:30'),
(91, 605, 1, '2026-08-23 13:49:30'),
(92, 606, 1, '2026-08-23 13:49:30'),
(93, 607, 1, '2026-08-23 13:49:30'),
(94, 608, 1, '2026-08-23 13:49:30'),
(95, 609, 1, '2026-08-23 13:49:30'),
(96, 610, 1, '2026-08-23 13:49:30'),
(97, 611, 1, '2026-08-23 13:49:30'),
(98, 612, 1, '2026-08-23 13:49:30'),
(99, 613, 1, '2026-08-23 13:49:30'),
(100, 614, 1, '2026-08-23 13:49:30');

-- --------------------------------------------------------

--
-- Table structure for table `senior_admin_table`
--

CREATE TABLE `senior_admin_table` (
  `admin_id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `senior_admin_table`
--

INSERT INTO `senior_admin_table` (`admin_id`, `firstname`, `lastname`, `email`, `password`) VALUES
(1, 'Admin', 'Admin', 'admin@gmail.com', '74e67455ab4baa0de9b6db27b7be80b9888117b966347ce31c4477e54a267f3c'),
(3, 'Pattana', 'Krausng', 'placeholder@gmail.com', '74e67455ab4baa0de9b6db27b7be80b9888117b966347ce31c4477e54a267f3c');

-- --------------------------------------------------------

--
-- Table structure for table `surveys_table`
--

CREATE TABLE `surveys_table` (
  `survey_id` int(11) NOT NULL,
  `survey_name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `surveys_table`
--

INSERT INTO `surveys_table` (`survey_id`, `survey_name`, `description`) VALUES
(1, 'Mental Health Survey', 'A survey which assess the users mental health, only through numerical values');

-- --------------------------------------------------------

--
-- Table structure for table `vistor_table`
--

CREATE TABLE `vistor_table` (
  `vistor_id` int(10) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vistor_table`
--

INSERT INTO `vistor_table` (`vistor_id`, `firstname`, `lastname`, `email`, `password`) VALUES
(515, 'Visitor1', 'Person1', 'visitor1@example.com', 'Test1234'),
(516, 'Visitor2', 'Person2', 'visitor2@example.com', 'Test1234'),
(517, 'Visitor3', 'Person3', 'visitor3@example.com', 'Test1234'),
(518, 'Visitor4', 'Person4', 'visitor4@example.com', 'Test1234'),
(519, 'Visitor5', 'Person5', 'visitor5@example.com', 'Test1234'),
(520, 'Visitor6', 'Person6', 'visitor6@example.com', 'Test1234'),
(521, 'Visitor7', 'Person7', 'visitor7@example.com', 'Test1234'),
(522, 'Visitor8', 'Person8', 'visitor8@example.com', 'Test1234'),
(523, 'Visitor9', 'Person9', 'visitor9@example.com', 'Test1234'),
(524, 'Visitor10', 'Person10', 'visitor10@example.com', 'Test1234'),
(525, 'Visitor11', 'Person11', 'visitor11@example.com', 'Test1234'),
(526, 'Visitor12', 'Person12', 'visitor12@example.com', 'Test1234'),
(527, 'Visitor13', 'Person13', 'visitor13@example.com', 'Test1234'),
(528, 'Visitor14', 'Person14', 'visitor14@example.com', 'Test1234'),
(529, 'Visitor15', 'Person15', 'visitor15@example.com', 'Test1234'),
(530, 'Visitor16', 'Person16', 'visitor16@example.com', 'Test1234'),
(531, 'Visitor17', 'Person17', 'visitor17@example.com', 'Test1234'),
(532, 'Visitor18', 'Person18', 'visitor18@example.com', 'Test1234'),
(533, 'Visitor19', 'Person19', 'visitor19@example.com', 'Test1234'),
(534, 'Visitor20', 'Person20', 'visitor20@example.com', 'Test1234'),
(535, 'Visitor21', 'Person21', 'visitor21@example.com', 'Test1234'),
(536, 'Visitor22', 'Person22', 'visitor22@example.com', 'Test1234'),
(537, 'Visitor23', 'Person23', 'visitor23@example.com', 'Test1234'),
(538, 'Visitor24', 'Person24', 'visitor24@example.com', 'Test1234'),
(539, 'Visitor25', 'Person25', 'visitor25@example.com', 'Test1234'),
(540, 'Visitor26', 'Person26', 'visitor26@example.com', 'Test1234'),
(541, 'Visitor27', 'Person27', 'visitor27@example.com', 'Test1234'),
(542, 'Visitor28', 'Person28', 'visitor28@example.com', 'Test1234'),
(543, 'Visitor29', 'Person29', 'visitor29@example.com', 'Test1234'),
(544, 'Visitor30', 'Person30', 'visitor30@example.com', 'Test1234'),
(545, 'Visitor31', 'Person31', 'visitor31@example.com', 'Test1234'),
(546, 'Visitor32', 'Person32', 'visitor32@example.com', 'Test1234'),
(547, 'Visitor33', 'Person33', 'visitor33@example.com', 'Test1234'),
(548, 'Visitor34', 'Person34', 'visitor34@example.com', 'Test1234'),
(549, 'Visitor35', 'Person35', 'visitor35@example.com', 'Test1234'),
(550, 'Visitor36', 'Person36', 'visitor36@example.com', 'Test1234'),
(551, 'Visitor37', 'Person37', 'visitor37@example.com', 'Test1234'),
(552, 'Visitor38', 'Person38', 'visitor38@example.com', 'Test1234'),
(553, 'Visitor39', 'Person39', 'visitor39@example.com', 'Test1234'),
(554, 'Visitor40', 'Person40', 'visitor40@example.com', 'Test1234'),
(555, 'Visitor41', 'Person41', 'visitor41@example.com', 'Test1234'),
(556, 'Visitor42', 'Person42', 'visitor42@example.com', 'Test1234'),
(557, 'Visitor43', 'Person43', 'visitor43@example.com', 'Test1234'),
(558, 'Visitor44', 'Person44', 'visitor44@example.com', 'Test1234'),
(559, 'Visitor45', 'Person45', 'visitor45@example.com', 'Test1234'),
(560, 'Visitor46', 'Person46', 'visitor46@example.com', 'Test1234'),
(561, 'Visitor47', 'Person47', 'visitor47@example.com', 'Test1234'),
(562, 'Visitor48', 'Person48', 'visitor48@example.com', 'Test1234'),
(563, 'Visitor49', 'Person49', 'visitor49@example.com', 'Test1234'),
(564, 'Visitor50', 'Person50', 'visitor50@example.com', 'Test1234'),
(565, 'Visitor51', 'Person51', 'visitor51@example.com', 'Test1234'),
(566, 'Visitor52', 'Person52', 'visitor52@example.com', 'Test1234'),
(567, 'Visitor53', 'Person53', 'visitor53@example.com', 'Test1234'),
(568, 'Visitor54', 'Person54', 'visitor54@example.com', 'Test1234'),
(569, 'Visitor55', 'Person55', 'visitor55@example.com', 'Test1234'),
(570, 'Visitor56', 'Person56', 'visitor56@example.com', 'Test1234'),
(571, 'Visitor57', 'Person57', 'visitor57@example.com', 'Test1234'),
(572, 'Visitor58', 'Person58', 'visitor58@example.com', 'Test1234'),
(573, 'Visitor59', 'Person59', 'visitor59@example.com', 'Test1234'),
(574, 'Visitor60', 'Person60', 'visitor60@example.com', 'Test1234'),
(575, 'Visitor61', 'Person61', 'visitor61@example.com', 'Test1234'),
(576, 'Visitor62', 'Person62', 'visitor62@example.com', 'Test1234'),
(577, 'Visitor63', 'Person63', 'visitor63@example.com', 'Test1234'),
(578, 'Visitor64', 'Person64', 'visitor64@example.com', 'Test1234'),
(579, 'Visitor65', 'Person65', 'visitor65@example.com', 'Test1234'),
(580, 'Visitor66', 'Person66', 'visitor66@example.com', 'Test1234'),
(581, 'Visitor67', 'Person67', 'visitor67@example.com', 'Test1234'),
(582, 'Visitor68', 'Person68', 'visitor68@example.com', 'Test1234'),
(583, 'Visitor69', 'Person69', 'visitor69@example.com', 'Test1234'),
(584, 'Visitor70', 'Person70', 'visitor70@example.com', 'Test1234'),
(585, 'Visitor71', 'Person71', 'visitor71@example.com', 'Test1234'),
(586, 'Visitor72', 'Person72', 'visitor72@example.com', 'Test1234'),
(587, 'Visitor73', 'Person73', 'visitor73@example.com', 'Test1234'),
(588, 'Visitor74', 'Person74', 'visitor74@example.com', 'Test1234'),
(589, 'Visitor75', 'Person75', 'visitor75@example.com', 'Test1234'),
(590, 'Visitor76', 'Person76', 'visitor76@example.com', 'Test1234'),
(591, 'Visitor77', 'Person77', 'visitor77@example.com', 'Test1234'),
(592, 'Visitor78', 'Person78', 'visitor78@example.com', 'Test1234'),
(593, 'Visitor79', 'Person79', 'visitor79@example.com', 'Test1234'),
(594, 'Visitor80', 'Person80', 'visitor80@example.com', 'Test1234'),
(595, 'Visitor81', 'Person81', 'visitor81@example.com', 'Test1234'),
(596, 'Visitor82', 'Person82', 'visitor82@example.com', 'Test1234'),
(597, 'Visitor83', 'Person83', 'visitor83@example.com', 'Test1234'),
(598, 'Visitor84', 'Person84', 'visitor84@example.com', 'Test1234'),
(599, 'Visitor85', 'Person85', 'visitor85@example.com', 'Test1234'),
(600, 'Visitor86', 'Person86', 'visitor86@example.com', 'Test1234'),
(601, 'Visitor87', 'Person87', 'visitor87@example.com', 'Test1234'),
(602, 'Visitor88', 'Person88', 'visitor88@example.com', 'Test1234'),
(603, 'Visitor89', 'Person89', 'visitor89@example.com', 'Test1234'),
(604, 'Visitor90', 'Person90', 'visitor90@example.com', 'Test1234'),
(605, 'Visitor91', 'Person91', 'visitor91@example.com', 'Test1234'),
(606, 'Visitor92', 'Person92', 'visitor92@example.com', 'Test1234'),
(607, 'Visitor93', 'Person93', 'visitor93@example.com', 'Test1234'),
(608, 'Visitor94', 'Person94', 'visitor94@example.com', 'Test1234'),
(609, 'Visitor95', 'Person95', 'visitor95@example.com', 'Test1234'),
(610, 'Visitor96', 'Person96', 'visitor96@example.com', 'Test1234'),
(611, 'Visitor97', 'Person97', 'visitor97@example.com', 'Test1234'),
(612, 'Visitor98', 'Person98', 'visitor98@example.com', 'Test1234'),
(613, 'Visitor99', 'Person99', 'visitor99@example.com', 'Test1234'),
(614, 'Visitor100', 'Person100', 'visitor100@example.com', 'Test1234'),
(642, 'tw', 'tw', 'twentyone@gmail.com', '74e67455ab4baa0de9b6db27b7be80b9888117b966347ce31c4477e54a267f3c'),
(643, 'dada', 'dada', 'placeholder@gmail.com', '74e67455ab4baa0de9b6db27b7be80b9888117b966347ce31c4477e54a267f3c');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers_table`
--
ALTER TABLE `answers_table`
  ADD PRIMARY KEY (`answer_id`),
  ADD KEY `response_id` (`response_id`),
  ADD KEY `question_id` (`question_id`);

--
-- Indexes for table `counsellors_table`
--
ALTER TABLE `counsellors_table`
  ADD PRIMARY KEY (`counsellor_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `questions_table`
--
ALTER TABLE `questions_table`
  ADD PRIMARY KEY (`question_id`),
  ADD KEY `survey_id` (`survey_id`);

--
-- Indexes for table `responses_table`
--
ALTER TABLE `responses_table`
  ADD PRIMARY KEY (`response_id`),
  ADD KEY `vistor_id` (`vistor_id`),
  ADD KEY `survey_id` (`survey_id`);

--
-- Indexes for table `senior_admin_table`
--
ALTER TABLE `senior_admin_table`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `surveys_table`
--
ALTER TABLE `surveys_table`
  ADD PRIMARY KEY (`survey_id`);

--
-- Indexes for table `vistor_table`
--
ALTER TABLE `vistor_table`
  ADD PRIMARY KEY (`vistor_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers_table`
--
ALTER TABLE `answers_table`
  MODIFY `answer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=701;

--
-- AUTO_INCREMENT for table `counsellors_table`
--
ALTER TABLE `counsellors_table`
  MODIFY `counsellor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `questions_table`
--
ALTER TABLE `questions_table`
  MODIFY `question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `responses_table`
--
ALTER TABLE `responses_table`
  MODIFY `response_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `senior_admin_table`
--
ALTER TABLE `senior_admin_table`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `surveys_table`
--
ALTER TABLE `surveys_table`
  MODIFY `survey_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vistor_table`
--
ALTER TABLE `vistor_table`
  MODIFY `vistor_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=644;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answers_table`
--
ALTER TABLE `answers_table`
  ADD CONSTRAINT `answers_table_ibfk_1` FOREIGN KEY (`response_id`) REFERENCES `responses_table` (`response_id`),
  ADD CONSTRAINT `answers_table_ibfk_2` FOREIGN KEY (`question_id`) REFERENCES `questions_table` (`question_id`);

--
-- Constraints for table `questions_table`
--
ALTER TABLE `questions_table`
  ADD CONSTRAINT `questions_table_ibfk_1` FOREIGN KEY (`survey_id`) REFERENCES `surveys_table` (`survey_id`);

--
-- Constraints for table `responses_table`
--
ALTER TABLE `responses_table`
  ADD CONSTRAINT `responses_table_ibfk_1` FOREIGN KEY (`vistor_id`) REFERENCES `vistor_table` (`vistor_id`),
  ADD CONSTRAINT `responses_table_ibfk_2` FOREIGN KEY (`survey_id`) REFERENCES `surveys_table` (`survey_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
