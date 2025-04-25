-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-04-2025 a las 15:09:53
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `digimundo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `active_users`
--

CREATE TABLE `active_users` (
  `user_id` int(11) NOT NULL,
  `last_alive` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `active_users`
--

INSERT INTO `active_users` (`user_id`, `last_alive`) VALUES
(4, '2025-04-25 15:07:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contactos`
--

CREATE TABLE `contactos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `mensaje` text NOT NULL,
  `creado_en` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `digimon`
--

CREATE TABLE `digimon` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `level` varchar(50) NOT NULL,
  `attribute` varchar(50) DEFAULT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `digimon`
--

INSERT INTO `digimon` (`id`, `name`, `level`, `attribute`, `img`) VALUES
(1, 'Koromon', 'In Training', NULL, 'https://digimon.shadowsmith.com/img/koromon.jpg'),
(2, 'Tsunomon', 'In Training', NULL, 'https://digimon.shadowsmith.com/img/tsunomon.jpg'),
(3, 'Yokomon', 'In Training', NULL, 'https://digimon.shadowsmith.com/img/yokomon.jpg'),
(4, 'Motimon', 'In Training', NULL, 'https://digimon.shadowsmith.com/img/motimon.jpg'),
(5, 'Tanemon', 'In Training', NULL, 'https://digimon.shadowsmith.com/img/tanemon.jpg'),
(6, 'Bukamon', 'In Training', NULL, 'https://digimon.shadowsmith.com/img/bukamon.jpg'),
(7, 'Tokomon', 'In Training', NULL, 'https://digimon.shadowsmith.com/img/tokomon.jpg'),
(8, 'Agumon', 'Rookie', NULL, 'https://digimon.shadowsmith.com/img/agumon.jpg'),
(9, 'Gabumon', 'Rookie', NULL, 'https://digimon.shadowsmith.com/img/gabumon.jpg'),
(10, 'Biyomon', 'Rookie', NULL, 'https://digimon.shadowsmith.com/img/biyomon.jpg'),
(11, 'Tentomon', 'Rookie', NULL, 'https://digimon.shadowsmith.com/img/tentomon.jpg'),
(12, 'Palmon', 'Rookie', NULL, 'https://digimon.shadowsmith.com/img/palmon.jpg'),
(13, 'Gomamon', 'Rookie', NULL, 'https://digimon.shadowsmith.com/img/gomamon.jpg'),
(14, 'Patamon', 'Rookie', NULL, 'https://digimon.shadowsmith.com/img/patamon.jpg'),
(15, 'Kuwagamon', 'Champion', NULL, 'https://digimon.shadowsmith.com/img/kuwagamon.jpg'),
(16, 'Greymon', 'Champion', NULL, 'https://digimon.shadowsmith.com/img/greymon.jpg'),
(17, 'Shellmon', 'Champion', NULL, 'https://digimon.shadowsmith.com/img/shellmon.jpg'),
(18, 'Garurumon', 'Champion', NULL, 'https://digimon.shadowsmith.com/img/garurumon.jpg'),
(19, 'Seadramon', 'Champion', NULL, 'https://digimon.shadowsmith.com/img/seadramon.jpg'),
(20, 'Monochromon', 'Champion', NULL, 'https://digimon.shadowsmith.com/img/monochromon.jpg'),
(21, 'Birdramon', 'Champion', NULL, 'https://digimon.shadowsmith.com/img/birdramon.jpg'),
(22, 'Meramon', 'Champion', NULL, 'https://digimon.shadowsmith.com/img/meramon.jpg'),
(23, 'Kabuterimon', 'Champion', NULL, 'https://digimon.shadowsmith.com/img/kabuterimon.jpg'),
(24, 'Andromon', 'Ultimate', NULL, 'https://digimon.shadowsmith.com/img/andromon.jpg'),
(25, 'Togemon', 'Champion', NULL, 'https://digimon.shadowsmith.com/img/togemon.jpg'),
(26, 'Numemon', 'Champion', NULL, 'https://digimon.shadowsmith.com/img/numemon.jpg'),
(27, 'Monzaemon', 'Ultimate', NULL, 'https://digimon.shadowsmith.com/img/monzaemon.jpg'),
(28, 'Ikkakumon', 'Champion', NULL, 'https://digimon.shadowsmith.com/img/ikkakumon.jpg'),
(29, 'Unimon', 'Champion', NULL, 'https://digimon.shadowsmith.com/img/unimon.jpg'),
(30, 'Leomon', 'Champion', NULL, 'https://digimon.shadowsmith.com/img/leomon.jpg'),
(31, 'Ogremon', 'Champion', NULL, 'https://digimon.shadowsmith.com/img/ogremon.jpg'),
(32, 'Devimon', 'Champion', NULL, 'https://digimon.shadowsmith.com/img/devimon.jpg'),
(33, 'Frigimon', 'Champion', NULL, 'https://digimon.shadowsmith.com/img/frigimon.jpg'),
(34, 'Mojyamon', 'Champion', NULL, 'https://digimon.shadowsmith.com/img/mojyamon.jpg'),
(35, 'Sukamon', 'Champion', NULL, 'https://digimon.shadowsmith.com/img/sukamon.jpg'),
(36, 'Centarumon', 'Champion', NULL, 'https://digimon.shadowsmith.com/img/centarumon.jpg'),
(37, 'Bakemon', 'Champion', NULL, 'https://digimon.shadowsmith.com/img/bakemon.jpg'),
(38, 'Elecmon', 'Rookie', NULL, 'https://digimon.shadowsmith.com/img/elecmon.jpg'),
(39, 'Botamon', 'Fresh', NULL, 'https://digimon.shadowsmith.com/img/botamon.jpg'),
(40, 'Punimon', 'Fresh', NULL, 'https://digimon.shadowsmith.com/img/punimon.jpg'),
(41, 'Poyomon', 'Fresh', NULL, 'https://digimon.shadowsmith.com/img/poyomon.jpg'),
(42, 'Yuramon', 'Fresh', NULL, 'https://digimon.shadowsmith.com/img/yuramon.jpg'),
(43, 'Angemon', 'Champion', NULL, 'https://digimon.shadowsmith.com/img/angemon.jpg'),
(44, 'Whamon', 'Champion', NULL, 'https://digimon.shadowsmith.com/img/whamon.jpg'),
(45, 'Drimogemon', 'Champion', NULL, 'https://digimon.shadowsmith.com/img/drimogemon.jpg'),
(46, 'Etemon', 'Ultimate', NULL, 'https://digimon.shadowsmith.com/img/etemon.jpg'),
(47, 'Gazimon', 'Rookie', NULL, 'https://digimon.shadowsmith.com/img/gazimon.jpg'),
(48, 'Pagumon', 'In Training', NULL, 'https://digimon.shadowsmith.com/img/pagumon.jpg'),
(49, 'SkullGreymon', 'Ultimate', NULL, 'https://digimon.shadowsmith.com/img/skullgreymon.jpg'),
(50, 'Kokatorimon', 'Champion', NULL, 'https://digimon.shadowsmith.com/img/kokatorimon.jpg'),
(51, 'Tyrannomon', 'Champion', NULL, 'https://digimon.shadowsmith.com/img/tyrannomon.jpg'),
(52, 'Piximon', 'Ultimate', NULL, 'https://digimon.shadowsmith.com/img/piximon.jpg'),
(53, 'Datamon', 'Ultimate', NULL, 'https://digimon.shadowsmith.com/img/datamon.jpg'),
(54, 'MetalGreymon', 'Ultimate', NULL, 'https://digimon.shadowsmith.com/img/metalgreymon.jpg'),
(55, 'DemiDevimon', 'Rookie', NULL, 'https://digimon.shadowsmith.com/img/demidevimon.jpg'),
(56, 'WereGarurumon', 'Ultimate', NULL, 'https://digimon.shadowsmith.com/img/weregarurumon.jpg'),
(57, 'Digitamamon', 'Ultimate', NULL, 'https://digimon.shadowsmith.com/img/digitamamon.jpg'),
(58, 'Vegiemon', 'Champion', NULL, 'https://digimon.shadowsmith.com/img/vegiemon.jpg'),
(59, 'Myotismon', 'Ultimate', NULL, 'https://digimon.shadowsmith.com/img/myotismon.jpg'),
(60, 'Vademon', 'Ultimate', NULL, 'https://digimon.shadowsmith.com/img/vademon.jpg'),
(61, 'Pabumon', 'Fresh', NULL, 'https://digimon.shadowsmith.com/img/pabumon.jpg'),
(62, 'Gekomon', 'Champion', NULL, 'https://digimon.shadowsmith.com/img/gekomon.jpg'),
(63, 'Otamamon', 'Rookie', NULL, 'https://digimon.shadowsmith.com/img/otamamon.jpg'),
(64, 'ShogunGekomon', 'Ultimate', NULL, 'https://digimon.shadowsmith.com/img/shogungekomon.jpg'),
(65, 'Garudamon', 'Ultimate', NULL, 'https://digimon.shadowsmith.com/img/garudamon.jpg'),
(66, 'Flymon', 'Champion', NULL, 'https://digimon.shadowsmith.com/img/flymon.jpg'),
(67, 'Gatomon', 'Champion', NULL, 'https://digimon.shadowsmith.com/img/gatomon.jpg'),
(68, 'Nanimon', 'Champion', NULL, 'https://digimon.shadowsmith.com/img/nanimon.jpg'),
(69, 'Devidramon', 'Champion', NULL, 'https://digimon.shadowsmith.com/img/devidramon.jpg'),
(70, 'Dokugumon', 'Champion', NULL, 'https://digimon.shadowsmith.com/img/dokugumon.jpg'),
(71, 'Mammothmon', 'Ultimate', NULL, 'https://digimon.shadowsmith.com/img/mammothmon.jpg'),
(72, 'Gesomon', 'Champion', NULL, 'https://digimon.shadowsmith.com/img/gesomon.jpg'),
(73, 'Raremon', 'Champion', NULL, 'https://digimon.shadowsmith.com/img/raremon.jpg'),
(74, 'SkullMeramon', 'Ultimate', NULL, 'https://digimon.shadowsmith.com/img/skullmeramon.jpg'),
(75, 'Wizardmon', 'Champion', NULL, 'https://digimon.shadowsmith.com/img/wizardmon.jpg'),
(76, 'Pumpkinmon', 'Ultimate', NULL, 'https://digimon.shadowsmith.com/img/pumpkinmon.jpg'),
(77, 'Gotsumon', 'Rookie', NULL, 'https://digimon.shadowsmith.com/img/gotsumon.jpg'),
(78, 'Lillymon', 'Ultimate', NULL, 'https://digimon.shadowsmith.com/img/lillymon.jpg'),
(79, 'Phantomon', 'Ultimate', NULL, 'https://digimon.shadowsmith.com/img/phantomon.jpg'),
(80, 'DarkTyrannomon', 'Champion', NULL, 'https://digimon.shadowsmith.com/img/darktyrannomon.jpg'),
(81, 'Gizamon', 'Rookie', NULL, 'https://digimon.shadowsmith.com/img/gizamon.jpg'),
(82, 'Zudomon', 'Ultimate', NULL, 'https://digimon.shadowsmith.com/img/zudomon.jpg'),
(83, 'MegaSeadramon', 'Ultimate', NULL, 'https://digimon.shadowsmith.com/img/megaseadramon.jpg'),
(84, 'Angewomon', 'Ultimate', NULL, 'https://digimon.shadowsmith.com/img/angewomon.jpg'),
(85, 'Tuskmon', 'Champion', NULL, 'https://digimon.shadowsmith.com/img/tuskmon.jpg'),
(86, 'Snimon', 'Champion', NULL, 'https://digimon.shadowsmith.com/img/snimon.jpg'),
(87, 'MegaKabuterimon', 'Ultimate', NULL, 'https://digimon.shadowsmith.com/img/megakabuterimon.jpg'),
(88, 'MagnaAngemon', 'Ultimate', NULL, 'https://digimon.shadowsmith.com/img/magnaangemon.jpg'),
(89, 'VenomMyotismon', 'Mega', NULL, 'https://digimon.shadowsmith.com/img/venommyotismon.jpg'),
(90, 'WarGreymon', 'Mega', NULL, 'https://digimon.shadowsmith.com/img/wargreymon.jpg'),
(91, 'MetalGarurumon', 'Mega', NULL, 'https://digimon.shadowsmith.com/img/metalgarurumon.jpg'),
(92, 'Nyaromon', 'In Training', NULL, 'https://digimon.shadowsmith.com/img/nyaromon.jpg'),
(93, 'Salamon', 'Rookie', NULL, 'https://digimon.shadowsmith.com/img/salamon.jpg'),
(94, 'Parrotmon', 'Ultimate', NULL, 'https://digimon.shadowsmith.com/img/parrotmon.jpg'),
(95, 'Chuumon', 'Rookie', NULL, 'https://digimon.shadowsmith.com/img/chuumon.jpg'),
(96, 'MetalSeadramon', 'Mega', NULL, 'https://digimon.shadowsmith.com/img/metalseadramon.jpg'),
(97, 'Machinedramon', 'Mega', NULL, 'https://digimon.shadowsmith.com/img/machinedramon.jpg'),
(98, 'Piedmon', 'Mega', NULL, 'https://digimon.shadowsmith.com/img/piedmon.jpg'),
(99, 'Puppetmon', 'Mega', NULL, 'https://digimon.shadowsmith.com/img/puppetmon.jpg'),
(100, 'Scorpiomon', 'Ultimate', NULL, 'https://digimon.shadowsmith.com/img/scorpiomon.jpg'),
(101, 'Divermon', 'Ultimate', NULL, 'https://digimon.shadowsmith.com/img/divermon.jpg'),
(102, 'Kiwimon', 'Champion', NULL, 'https://digimon.shadowsmith.com/img/kiwimon.jpg'),
(103, 'Mushroomon', 'Rookie', NULL, 'https://digimon.shadowsmith.com/img/mushroomon.jpg'),
(104, 'Blossomon', 'Ultimate', NULL, 'https://digimon.shadowsmith.com/img/blossomon.jpg'),
(105, 'Floramon', 'Rookie', NULL, 'https://digimon.shadowsmith.com/img/floramon.jpg'),
(106, 'Deramon', 'Ultimate', NULL, 'https://digimon.shadowsmith.com/img/deramon.jpg'),
(107, 'Cherrymon', 'Ultimate', NULL, 'https://digimon.shadowsmith.com/img/cherrymon.jpg'),
(108, 'Garbagemon', 'Ultimate', NULL, 'https://digimon.shadowsmith.com/img/garbagemon.jpg'),
(109, 'MetalEtemon', 'Mega', NULL, 'https://digimon.shadowsmith.com/img/metaletemon.jpg'),
(110, 'SaberLeomon', 'Mega', NULL, 'https://digimon.shadowsmith.com/img/saberleomon.jpg'),
(111, 'RedVegiemon', 'Champion', NULL, 'https://digimon.shadowsmith.com/img/redvegiemon.jpg'),
(112, 'Mekanorimon', 'Champion', NULL, 'https://digimon.shadowsmith.com/img/mekanorimon.jpg'),
(113, 'Tankmon', 'Champion', NULL, 'https://digimon.shadowsmith.com/img/tankmon.jpg'),
(114, 'Hagurumon', 'Rookie', NULL, 'https://digimon.shadowsmith.com/img/hagurumon.jpg'),
(115, 'WaruMonzaemon', 'Ultimate', NULL, 'https://digimon.shadowsmith.com/img/warumonzaemon.jpg'),
(116, 'LadyDevimon', 'Ultimate', NULL, 'https://digimon.shadowsmith.com/img/ladydevimon.jpg'),
(117, 'Vilemon', 'Champion', NULL, 'https://digimon.shadowsmith.com/img/vilemon.jpg'),
(118, 'Apocalymon', 'Mega', NULL, 'https://digimon.shadowsmith.com/img/apocalymon.jpg'),
(119, 'Kunemon', 'Rookie', NULL, 'https://digimon.shadowsmith.com/img/kunemon.jpg'),
(120, 'Musyamon', 'Champion', NULL, 'https://digimon.shadowsmith.com/img/musyamon.jpg'),
(121, 'Starmon', 'Champion', NULL, 'https://digimon.shadowsmith.com/img/starmon.jpg'),
(122, 'HerculesKabuterimon', 'Mega', NULL, 'https://digimon.shadowsmith.com/img/herculeskabuterimon.jpg'),
(123, 'Candlemon', 'Rookie', NULL, 'https://digimon.shadowsmith.com/img/candlemon.jpg'),
(124, 'Hanumon', 'Champion', NULL, 'https://digimon.shadowsmith.com/img/hanumon.jpg'),
(125, 'Kokuwamon', 'Rookie', NULL, 'https://digimon.shadowsmith.com/img/kokuwamon.jpg'),
(126, 'Revolvermon', 'Champion', NULL, 'https://digimon.shadowsmith.com/img/revolvermon.jpg'),
(127, 'Plesiomon', 'Mega', NULL, 'https://digimon.shadowsmith.com/img/plesiomon.jpg'),
(128, 'Megadramon', 'Ultimate', NULL, 'https://digimon.shadowsmith.com/img/megadramon.jpg'),
(129, 'BlueMeramon', 'Champion', NULL, 'https://digimon.shadowsmith.com/img/bluemeramon.jpg'),
(130, 'Magnadramon', 'Mega', NULL, 'https://digimon.shadowsmith.com/img/magnadramon.jpg'),
(131, 'Gorillamon', 'Champion', NULL, 'https://digimon.shadowsmith.com/img/gorillamon.jpg'),
(132, 'Syakomon', 'Rookie', NULL, 'https://digimon.shadowsmith.com/img/syakomon.jpg'),
(133, 'MarineAngemon', 'Mega', NULL, 'https://digimon.shadowsmith.com/img/marineangemon.jpg'),
(134, 'Boltmon', 'Mega', NULL, 'https://digimon.shadowsmith.com/img/boltmon.jpg'),
(135, 'Mamemon', 'Ultimate', NULL, 'https://digimon.shadowsmith.com/img/mamemon.jpg'),
(136, 'ExTyrannomon', 'Ultimate', NULL, 'https://digimon.shadowsmith.com/img/extyrannomon.jpg'),
(137, 'Veedramon', 'Champion', NULL, 'https://digimon.shadowsmith.com/img/veedramon.jpg'),
(138, 'AeroVeedramon', 'Ultimate', NULL, 'https://digimon.shadowsmith.com/img/aeroveedramon.jpg'),
(139, 'Phoenixmon', 'Mega', NULL, 'https://digimon.shadowsmith.com/img/phoenixmon.jpg'),
(140, 'Betamon', 'Rookie', NULL, 'https://digimon.shadowsmith.com/img/betamon.jpg'),
(141, 'Guardromon', 'Champion', NULL, 'https://digimon.shadowsmith.com/img/guardromon.jpg'),
(142, 'Penguinmon', 'Rookie', NULL, 'https://digimon.shadowsmith.com/img/penguinmon.jpg'),
(143, 'PlatinumSukamon', 'Champion', NULL, 'https://digimon.shadowsmith.com/img/platinumsukamon.jpg'),
(144, 'Psychemon', 'Rookie', NULL, 'https://digimon.shadowsmith.com/img/psychemon.jpg'),
(145, 'Tsukaimon', 'Rookie', NULL, 'https://digimon.shadowsmith.com/img/tsukaimon.jpg'),
(146, 'ModokiBetamon', 'Champion', NULL, 'https://digimon.shadowsmith.com/img/modokibetamon.jpg'),
(147, 'Saberdramon', 'Champion', NULL, 'https://digimon.shadowsmith.com/img/saberdramon.jpg'),
(148, 'SnowAgumon', 'Rookie', NULL, 'https://digimon.shadowsmith.com/img/snowagumon.jpg'),
(149, 'Icemon', 'Champion', NULL, 'https://digimon.shadowsmith.com/img/icemon.jpg'),
(150, 'Airdramon', 'Champion', NULL, 'https://digimon.shadowsmith.com/img/airdramon.jpg'),
(151, 'MetalTyrannomon', 'Ultimate', NULL, 'https://digimon.shadowsmith.com/img/metaltyrannomon.jpg'),
(152, 'Akatorimon', 'Champion', NULL, 'https://digimon.shadowsmith.com/img/akatorimon.jpg'),
(153, 'Geremon', 'Champion', NULL, 'https://digimon.shadowsmith.com/img/geremon.jpg'),
(154, 'Vermilimon', 'Ultimate', NULL, 'https://digimon.shadowsmith.com/img/vermilimon.jpg'),
(155, 'Meteormon', 'Ultimate', NULL, 'https://digimon.shadowsmith.com/img/meteormon.jpg'),
(156, 'Jijimon', 'Mega', NULL, 'https://digimon.shadowsmith.com/img/jijimon.jpg'),
(157, 'Babamon', 'Mega', NULL, 'https://digimon.shadowsmith.com/img/babamon.jpg'),
(158, 'FlareRizamon', 'Champion', NULL, 'https://digimon.shadowsmith.com/img/flarerizamon.jpg'),
(159, 'Thunderballmon', 'Champion', NULL, 'https://digimon.shadowsmith.com/img/thunderballmon.jpg'),
(160, 'Muchomon', 'Rookie', NULL, 'https://digimon.shadowsmith.com/img/muchomon.jpg'),
(161, 'Goldramon', 'Mega', NULL, 'https://digimon.shadowsmith.com/img/goldramon.jpg'),
(162, 'Soulmon', 'Champion', NULL, 'https://digimon.shadowsmith.com/img/soulmon.jpg'),
(163, 'Rosemon', 'Mega', NULL, 'https://digimon.shadowsmith.com/img/rosemon.jpg'),
(164, 'Piddomon', 'Champion', NULL, 'https://digimon.shadowsmith.com/img/piddomon.jpg'),
(165, 'Gigadramon', 'Ultimate', NULL, 'https://digimon.shadowsmith.com/img/gigadramon.jpg'),
(166, 'Cyberdramon', 'Ultimate', NULL, 'https://digimon.shadowsmith.com/img/cyberdramon.jpg'),
(167, 'SkullSatamon', 'Ultimate', NULL, 'https://digimon.shadowsmith.com/img/skullsatamon.jpg'),
(168, 'Milleniummon', 'Mega', NULL, 'https://digimon.shadowsmith.com/img/milleniummon.jpg'),
(169, 'Daemon', 'Mega', NULL, 'https://digimon.shadowsmith.com/img/daemon.jpg'),
(170, 'KingEtemon', 'Mega', NULL, 'https://digimon.shadowsmith.com/img/kingetemon.jpg'),
(171, 'Chibomon', 'Fresh', NULL, 'https://digimon.shadowsmith.com/img/chibomon.jpg'),
(172, 'Pururumon', 'Fresh', NULL, 'https://digimon.shadowsmith.com/img/pururumon.jpg'),
(173, 'Tsubumon', 'Fresh', NULL, 'https://digimon.shadowsmith.com/img/tsubumon.jpg'),
(174, 'DemiVeemon', 'Training', NULL, 'https://digimon.shadowsmith.com/img/demiveemon.jpg'),
(175, 'Poromon', 'Training', NULL, 'https://digimon.shadowsmith.com/img/poromon.jpg'),
(176, 'Upamon', 'Training', NULL, 'https://digimon.shadowsmith.com/img/upamon.jpg'),
(177, 'Hawkmon', 'Rookie', NULL, 'https://digimon.shadowsmith.com/img/hawkmon.jpg'),
(178, 'Armadillomon', 'Rookie', NULL, 'https://digimon.shadowsmith.com/img/armadillomon.jpg'),
(179, 'Wormmon', 'Rookie', NULL, 'https://digimon.shadowsmith.com/img/wormmon.jpg'),
(180, 'Flamedramon', 'Armor', NULL, 'https://digimon.shadowsmith.com/img/flamedramon.jpg'),
(181, 'Raidramon', 'Armor', NULL, 'https://digimon.shadowsmith.com/img/raidramon.jpg'),
(182, 'Magnamon', 'Armor', NULL, 'https://digimon.shadowsmith.com/img/magnamon.jpg'),
(183, 'Sethmon', 'Armor', NULL, 'https://digimon.shadowsmith.com/img/sethmon.jpg'),
(184, 'Halsemon', 'Armor', NULL, 'https://digimon.shadowsmith.com/img/halsemon.jpg'),
(185, 'Shurimon', 'Armor', NULL, 'https://digimon.shadowsmith.com/img/shurimon.jpg'),
(186, 'Toucanmon', 'Armor', NULL, 'https://digimon.shadowsmith.com/img/toucanmon.jpg'),
(187, 'Submarimon', 'Armor', NULL, 'https://digimon.shadowsmith.com/img/submarimon.jpg'),
(188, 'Bucchiemon', 'Armor', NULL, 'https://digimon.shadowsmith.com/img/bucchiemon.jpg'),
(189, 'Stegomon', 'Armor', NULL, 'https://digimon.shadowsmith.com/img/stegomon.jpg'),
(190, 'Pegasusmon', 'Armor', NULL, 'https://digimon.shadowsmith.com/img/pegasusmon.jpg'),
(191, 'Nefertimon', 'Armor', NULL, 'https://digimon.shadowsmith.com/img/nefertimon.jpg'),
(192, 'ExVeemon', 'Champion', NULL, 'https://digimon.shadowsmith.com/img/exveemon.jpg'),
(193, 'Stingmon', 'Champion', NULL, 'https://digimon.shadowsmith.com/img/stingmon.jpg'),
(194, 'Aquillamon', 'Champion', NULL, 'https://digimon.shadowsmith.com/img/aquillamon.jpg'),
(195, 'Ankylomon', 'Champion', NULL, 'https://digimon.shadowsmith.com/img/ankylomon.jpg'),
(196, 'Paildramon', 'Ultimate', NULL, 'https://digimon.shadowsmith.com/img/paildramon.jpg'),
(197, 'Dinobeemon', 'Ultimate', NULL, 'https://digimon.shadowsmith.com/img/dinobeemon.jpg'),
(198, 'Silphymon', 'Ultimate', NULL, 'https://digimon.shadowsmith.com/img/silphymon.jpg'),
(199, 'Shakkoumon', 'Ultimate', NULL, 'https://digimon.shadowsmith.com/img/shakkoumon.jpg'),
(200, 'Imperialdramon', 'Mega', NULL, 'https://digimon.shadowsmith.com/img/imperialdramon.jpg'),
(201, 'GranKuwagamon', 'Mega', NULL, 'https://digimon.shadowsmith.com/img/grankuwagamon.jpg'),
(202, 'Valkyrimon', 'Mega', NULL, 'https://digimon.shadowsmith.com/img/valkyrimon.jpg'),
(203, 'Vikemon', 'Mega', NULL, 'https://digimon.shadowsmith.com/img/vikemon.jpg'),
(204, 'Seraphimon', 'Mega', NULL, 'https://digimon.shadowsmith.com/img/seraphimon.jpg'),
(205, 'Zhuqiaomon', 'Mega', NULL, 'https://digimon.shadowsmith.com/img/zhuqiaomon.jpg'),
(206, 'Azulongmon', 'Mega', NULL, 'https://digimon.shadowsmith.com/img/azulongmon.jpg'),
(207, 'Baihumon', 'Mega', NULL, 'https://digimon.shadowsmith.com/img/baihumon.jpg'),
(208, 'Mokumon', 'Fresh', NULL, 'https://digimon.shadowsmith.com/img/mokumon.jpg'),
(209, 'Omnimon', 'Mega', NULL, 'https://digimon.shadowsmith.com/img/omnimon.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `newsletter`
--

CREATE TABLE `newsletter` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `newsletter`
--

INSERT INTO `newsletter` (`id`, `email`) VALUES
(12, 'tucorreo@correo.es');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('user','admin') NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`) VALUES
(4, 'admin', '$2b$10$3RuhwVc4XR/vM/EyyMmwPux07hxMSoxGvRK0x.DEQMcaO/A441QZy', 'admin'),
(7, 'usuarioprueba', '$2b$10$9kUPftJM/utkTA/lGVcb9OeVq8Ni6iHhZFgE0Qa/xx8nQNoQqgUfC', 'user');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `active_users`
--
ALTER TABLE `active_users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indices de la tabla `contactos`
--
ALTER TABLE `contactos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `digimon`
--
ALTER TABLE `digimon`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `contactos`
--
ALTER TABLE `contactos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `digimon`
--
ALTER TABLE `digimon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=213;

--
-- AUTO_INCREMENT de la tabla `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `active_users`
--
ALTER TABLE `active_users`
  ADD CONSTRAINT `fk_active_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
