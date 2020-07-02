-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-07-2020 a las 18:35:30
-- Versión del servidor: 10.1.36-MariaDB
-- Versión de PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `easyscript`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `codigos`
--

CREATE TABLE `codigos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(10) NOT NULL,
  `segundos_ahorrados` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `codigos`
--

INSERT INTO `codigos` (`id`, `nombre`, `segundos_ahorrados`) VALUES
(1, 'MM02', 52),
(2, 'MM01', 82),
(3, 'XD02', 54),
(4, 'ME12', 77),
(5, 'VK11', 80),
(6, 'XK02', 53),
(7, 'VA02', 48),
(8, 'ME11', 132),
(9, 'VA01', 222),
(10, 'XD01', 237),
(11, 'XK01', 201),
(12, 'ME22N', 141),
(13, 'CS01', 142),
(14, 'CS02', 78),
(15, 'VK12', 73),
(16, 'ME01', 51),
(17, 'ME21N', 217),
(18, 'AS02', 55),
(19, 'SM30', 63),
(20, 'MIGO', 98),
(21, 'FB01', 163),
(22, 'PA30', 70),
(23, 'MR21', 48),
(24, 'IE02', 57),
(25, 'MM06', 17),
(26, 'AS01', 150),
(27, 'FB50', 174),
(28, 'FB02', 70),
(29, 'KS01', 147),
(30, 'FB60', 181),
(31, 'KS02', 36),
(32, 'VL02N', 45),
(33, 'FD32', 52),
(34, 'SU01', 62),
(35, 'VD02', 55),
(36, 'IE01', 217),
(37, 'VF02', 54),
(38, 'CA02', 88),
(39, 'VD51', 65),
(40, 'MB1B', 57),
(41, 'IW32', 65),
(42, 'ME22', 77),
(43, 'FS00', 88),
(44, 'PA40', 112),
(45, 'FK02', 53),
(46, 'IL02', 54),
(47, 'KO01', 123),
(48, 'MMSC', 46),
(49, 'MB1C', 71),
(50, 'IL01', 187),
(51, 'LS01N', 53),
(52, 'BP', 86),
(53, 'MM03', 37),
(54, 'CA01', 94),
(55, 'MEK1', 76),
(56, 'KO02', 41),
(57, 'ABAVN', 84),
(58, 'F-02', 225),
(59, 'MB1A', 56),
(60, 'CJ02', 97),
(61, 'MSC2N', 99),
(62, 'ME52N', 83),
(63, 'C223', 105),
(64, 'FD02', 48),
(65, 'LT01', 74),
(66, 'VA42', 65),
(67, 'IP02', 47),
(68, 'ME23N', 86),
(69, 'ME32K', 80),
(70, 'VF01', 96),
(71, 'CO02', 44),
(72, 'FB70', 210),
(73, 'VD01', 143),
(74, 'FI01', 83),
(75, 'ME15', 35),
(76, 'VD52', 36),
(77, 'AS91', 202),
(78, 'FBRA', 53),
(79, 'KP26', 68),
(80, 'KE51', 89),
(81, 'CJ20N', 210),
(82, 'MIRO', 203),
(83, 'CT04', 82),
(84, 'MK02', 45),
(85, 'MSC1N', 74),
(86, 'FK01', 228),
(87, 'XK05', 41),
(88, 'VB11', 109),
(89, 'FSP0', 67),
(90, 'FB03', 76),
(91, 'LS02N', 44),
(92, 'IA05', 165),
(93, 'PO13', 75),
(94, 'VV31', 55),
(95, 'VB01', 42),
(96, 'CL20N', 49),
(97, 'MMAM', 48),
(98, 'ME31K', 201),
(99, 'ABUMN', 100),
(100, 'MEK2', 52),
(101, 'KP06', 67),
(102, 'FB09', 70),
(103, 'CV02N', 78),
(104, 'KE52', 39),
(105, 'VL01N', 63),
(106, 'VDH1N', 88),
(107, 'IW31', 198),
(108, 'VF11', 30),
(109, 'VA41', 1541),
(110, 'ME52', 49),
(111, 'IA06', 107),
(112, 'VV32', 40),
(113, 'MBST', 39),
(114, 'SE38', 65),
(115, 'MB11', 55),
(116, 'PP01', 79),
(117, 'IP10', 38),
(118, 'ABSO', 93),
(119, 'ME51N', 281),
(120, 'CV01N', 143),
(121, 'IP05', 44),
(122, 'VAP1', 246),
(123, 'CR02', 55),
(124, 'IW22', 125),
(125, 'PFCG', 84),
(126, 'MM42', 85),
(127, 'AS92', 71),
(128, 'FI02', 43),
(129, 'QP02', 96),
(130, 'C202', 103),
(131, 'XK06', 38),
(132, 'XD05', 285),
(133, 'MI02', 31),
(134, 'BAPI_MATER', 9),
(135, 'FD01', 161),
(136, 'VL32N', 99),
(137, 'FB75', 135),
(138, 'FSS0', 104),
(139, 'IP42', 152),
(140, 'SE16', 36),
(141, 'F-32', 105),
(142, 'ABZON', 94),
(143, 'FBS1', 81),
(144, 'FB08', 45),
(145, 'CJ01', 112),
(146, 'F-28', 146),
(147, 'F-43', 145),
(148, 'LT12', 42),
(149, 'CR01', 311),
(150, 'XD03', 68),
(151, 'IW21', 143),
(152, 'VA22', 86),
(153, 'PP02', 72),
(154, 'MI10', 156),
(155, 'ABAA', 88),
(156, 'AS11', 113),
(157, 'MK01', 132),
(158, 'VB02', 45),
(159, 'VA03', 150),
(160, 'CL24N', 64),
(161, 'SA38', 84),
(162, 'ME21', 288),
(163, 'VT02N', 36),
(164, 'ABT1N', 119),
(165, 'IK01', 87),
(166, 'IQ02', 43),
(167, 'IB01', 42),
(168, 'CO01', 92),
(169, 'IP41', 199),
(170, 'IR01', 264),
(171, 'FBL5N', 120),
(172, 'ME32L', 90),
(173, 'KE21N', 354),
(174, 'MD12', 29),
(175, 'VV21', 54),
(176, 'FV50', 303),
(177, 'VB12', 35),
(178, 'IK11', 53),
(179, 'XD06', 34),
(180, 'AB08', 56),
(181, 'VAP2', 54),
(182, 'IW41', 130),
(183, 'LPK1', 66),
(184, 'VBO2', 77),
(185, 'MM41', 452),
(186, 'IR02', 47),
(187, 'SE16N', 96),
(188, 'SPRO', 72),
(189, 'LT15', 42),
(190, 'WE19', 84),
(191, 'FB65', 131),
(192, 'MN04', 86),
(193, 'ABAON', 84),
(194, 'QP01', 117),
(195, 'WE20', 60),
(196, '\\/SAPAPO\\/', 54),
(197, 'LB02', 18),
(198, 'MD04', 128),
(199, 'IP01', 197),
(200, 'VBO1', 110),
(201, 'VA21', 123),
(202, 'C201', 303),
(203, 'KB21N', 65),
(204, 'MM17', 71),
(205, 'MN05', 51),
(206, 'VV11', 79),
(207, 'CAT2', 102),
(208, 'IK02', 41),
(209, 'CL01', 108),
(210, 'MD61', 94),
(211, 'IB02', 30),
(212, 'KA01', 58),
(213, 'MD62', 22),
(214, 'QI01', 45),
(215, 'MI04', 33),
(216, 'MR8M', 47),
(217, 'FBB1', 268),
(218, 'LS01', 43),
(219, 'F-30', 130),
(220, 'FB05', 132),
(221, 'FBL1N', 102),
(222, 'CL02', 160),
(223, 'CC01', 100),
(224, 'XK03', 77),
(225, 'AS06', 28),
(226, 'ML81N', 130),
(227, 'CS07', 40),
(228, 'PO10', 53),
(229, 'FK08', 22),
(230, 'ME51', 88),
(231, 'FV60', 111),
(232, 'SM31', 74),
(233, 'POF1', 55),
(234, 'XD07', 52),
(235, 'IP04', 98),
(236, 'QS21', 155),
(237, 'VF03', 77),
(238, 'F-03', 102),
(239, 'QM02', 37),
(240, 'CJ12', 56),
(241, 'COR2', 28),
(242, 'F-44', 130),
(243, 'F-22', 169),
(244, 'ME53N', 28),
(245, 'IW52', 77),
(246, 'SM37', -3),
(247, '0VRF', 111),
(248, 'LT10', 74),
(249, 'KL01', 98),
(250, 'KB31N', 91),
(251, 'FBD1', 186),
(252, 'VA32', 59),
(253, 'CLMM', 68),
(254, 'ME13', 24),
(255, 'FBL3N', 175),
(256, 'IW51', 146),
(257, 'VL31N', 46),
(258, 'CK74N', 157),
(259, '0VTC', 67),
(260, 'KA06', 46),
(261, 'MB01', 71),
(262, 'F-05', 229),
(263, 'POP1', 105),
(264, 'FK05', 18),
(265, 'IB11', 93),
(266, 'KA02', 33),
(267, 'AC02', 67),
(268, 'CK11N', 144),
(269, 'CC02', 31),
(270, 'LPK2', 60),
(271, 'QA11', 135),
(272, 'VK15', 66),
(273, 'VK13', 22),
(274, 'TK11', 106),
(275, 'PP03', 145),
(276, 'WB02', 47),
(277, 'MI01', 51),
(278, 'MC86', 84),
(279, 'MB22', 38),
(280, 'VV22', 51),
(281, 'CO11N', 75),
(282, 'MI09', 59),
(283, 'IB12', 83),
(284, 'IA11', 258),
(285, 'VCH1', 74),
(286, 'LT06', 43),
(287, 'F-51', 185),
(288, 'BAPI_PO_CH', 1),
(289, 'ME1M', 118),
(290, 'CU41', 29),
(291, 'ME31L', 205),
(292, 'VOE4', 79),
(293, 'VD05', 43),
(294, 'VV12', 61),
(295, 'SO10', 88),
(296, 'MMPV', 50),
(297, 'CS03', 65),
(298, 'WE02', 56),
(299, 'IQ01', 43),
(300, 'CJ30', 41),
(301, 'OB08', 82),
(302, 'CN22', 74),
(303, 'V\\/76', 24),
(304, 'CO13', 37),
(305, 'CA10', 85),
(306, 'MIR4', 44),
(307, 'CJR2', 80),
(308, 'IA12', 64),
(309, 'ME32', 92),
(310, 'HU02', 56),
(311, 'MASS', 59),
(312, 'RECN', 54),
(313, 'FCH8', 62),
(314, 'IA02', 85),
(315, 'IE03', 72),
(316, 'QS23', 52),
(317, 'FBV0', 400),
(318, 'AS03', 19),
(319, 'AS05', 23),
(320, 'PO03', 84),
(321, 'IK12', 32),
(322, 'MD03', 18),
(323, 'VL09', 42),
(324, 'SU10', 44),
(325, 'FTXP', 43),
(326, 'KB15N', 39),
(327, 'FCH6', 27),
(328, 'KB11N', 103),
(329, 'SE37', 37),
(330, 'KO22', 43),
(331, 'CJ40', 75),
(332, 'IA01', 215),
(333, 'MB21', 55),
(334, 'FV70', 143),
(335, 'MEQ1', 44),
(336, 'LS02', 64),
(337, 'MD11', 46),
(338, 'OIOB', 108),
(339, 'KPF6', 184),
(340, 'MI07', 32),
(341, 'OVE1', 101),
(342, 'CA22', 81),
(343, 'QI02', 45),
(344, 'COR1', 101),
(345, 'OMD0', 31),
(346, 'VL10B', 48),
(347, 'BD87', 81),
(348, 'XK07', 45),
(349, 'PA20', 114),
(350, 'QA02', 287),
(351, 'KSH2', 70),
(352, 'POP2', 52),
(353, 'F-53', 84),
(354, 'BAPI_PO_CR', -1),
(355, 'BAPI_GOODS', 0),
(356, 'LT03', 33),
(357, 'MR11', 86),
(358, 'VA31', 339),
(359, 'VT01N', 119),
(360, 'UKM_BP', 49),
(361, 'SQ01', 35),
(362, 'VB22', 96),
(363, 'MB51', 96),
(364, 'CS20', 88),
(365, 'CEWB', 442),
(366, 'IW33', 18),
(367, 'FS02', 72),
(368, 'OX09', 104),
(369, 'CS15', 80),
(370, 'FK06', 17),
(371, 'WRCR', 31),
(372, 'KP46', 51),
(373, 'VK14', 64),
(374, 'CK74', 155),
(375, 'WG22', 33),
(376, 'MIGO_GI', 99),
(377, 'MD02', 37),
(378, 'IW38', 109),
(379, 'KO88', -1),
(380, 'ABZU', 92),
(381, 'CC11', 54),
(382, 'LI11N', 58),
(383, 'MC94', 67),
(384, 'F-47', 97),
(385, 'CA03', 48),
(386, 'BAPI_SALES', -2),
(387, 'LT09', 53),
(388, 'FB41', 205),
(389, 'FK03', 0),
(390, 'VB21', 137),
(391, 'CJ11', 123),
(392, 'F-04', 204),
(393, 'CRC2', 57),
(394, 'CS40', 12),
(395, 'VL03N', 65),
(396, 'ME29N', -1),
(397, 'IW45', 77),
(398, 'KS04', 51),
(399, 'VCH2', 49),
(400, 'CU42', 44),
(401, 'ME38', 75),
(402, 'MM50', 47),
(403, 'ME03', 14),
(404, 'F-21', 196),
(405, 'CRC1', 222),
(406, 'BAPI_INCOM', 18),
(407, 'FB01L', 177),
(408, 'VV71', 60),
(409, 'KSU2', 186),
(410, 'MIGO_TR', 75),
(411, 'TK12', 87),
(412, 'MAP1', 54),
(413, 'AB01', 113),
(414, 'VI02', 56),
(415, '7KE1', 82),
(416, 'MB02', 46),
(417, 'SQVI', 61),
(418, 'SU01D', 39),
(419, 'FD08', 21),
(420, 'VA05', 80),
(421, 'POF2', 60),
(422, 'CJ20', 727),
(423, 'MK05', 22),
(424, 'OBYA', 85),
(425, 'LU02', 27),
(426, 'VD06', 27),
(427, 'AIAB', 44),
(428, 'WG21', 62),
(429, 'VD03', 19),
(430, 'SPAD', 52),
(431, 'CA21', 150),
(432, 'CRMD_ORDER', 16),
(433, 'PU01', 82),
(434, 'QM01', 211),
(435, 'FB50L', 165),
(436, 'F-65', 128),
(437, 'VOE2', 49),
(438, 'ME28', 11),
(439, 'PA61', 57),
(440, 'PK05', 132),
(441, 'IA08', 174),
(442, 'KK01', 32),
(443, 'ML81', 86),
(444, 'CA12', 60),
(445, 'ZMM02', 48),
(446, 'OKB9', 86),
(447, 'MM12', 55),
(448, 'PKMC', 236),
(449, 'MMP1', 39),
(450, 'QS41', 52),
(451, 'VA12', 66),
(452, 'MP01', 92),
(453, 'KE21', 191),
(454, 'FBN1', 52),
(455, 'PK02', 28),
(456, 'BAPI_ACC_D', -23),
(457, 'ABAW', 66),
(458, 'CV03N', 49),
(459, 'CA98', 43),
(460, 'IW42', 73),
(461, 'MIGO_GR', 257),
(462, 'VBN1', 53),
(463, 'AIBU', 83),
(464, 'FD05', 35),
(465, 'FK09', 26),
(466, 'CK24', 252),
(467, '\\/SAPAPO\\/', 62),
(468, 'IL03', 37),
(469, 'RFC_READ_T', 12),
(470, 'KSH1', 30),
(471, 'LS22', 26),
(472, 'AS94', 228),
(473, 'VPE1', 201),
(474, 'PPOME', 77),
(475, 'ES31', 33),
(476, 'OBCB', 57),
(477, 'CJ07', 31),
(478, 'FBV1', 243),
(479, 'IH08', 35),
(480, 'ABNAN', 37),
(481, 'MMZ1', 109),
(482, '\\/SCWM\\/MA', 64),
(483, 'CO03', 54),
(484, 'KSU8', 209),
(485, 'CAA2', 46),
(486, 'F110', 46),
(487, 'SCAL', 72),
(488, 'CK40N', 110),
(489, 'CK94', 33),
(490, 'OX10', 267),
(491, 'GB01', 180),
(492, 'SM36', 122),
(493, 'CN21', 92),
(494, 'BAPI_OBJCL', -1),
(495, 'VLMOVE', 36),
(496, 'CWBQM', 84),
(497, 'FV75', 151),
(498, 'MB52', 134),
(499, 'FV50L', 485),
(500, 'VKP5', 71);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `divisas`
--

CREATE TABLE `divisas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `valor` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `divisas`
--

INSERT INTO `divisas` (`id`, `nombre`, `valor`) VALUES
(1, 'Argentine Peso (ARS)', 70.1575),
(2, 'Brazilian Real (BRL)', 5.3609);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `codigos`
--
ALTER TABLE `codigos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `divisas`
--
ALTER TABLE `divisas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `codigos`
--
ALTER TABLE `codigos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=501;

--
-- AUTO_INCREMENT de la tabla `divisas`
--
ALTER TABLE `divisas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
