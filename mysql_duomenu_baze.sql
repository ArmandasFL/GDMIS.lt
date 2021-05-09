-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 2021 m. Bal 18 d. 09:43
-- Server version: 10.4.15-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u891110049_gdmis`
--

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT 0,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `commentable_id` int(10) UNSIGNED NOT NULL,
  `commentable_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `pagrindinis` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Sukurta duomenų kopija lentelei `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `parent_id`, `comment`, `commentable_id`, `commentable_type`, `created_at`, `updated_at`, `pagrindinis`) VALUES
(1, 14, 0, 'komentaras', 61, NULL, '2021-03-27 00:48:20', '2021-03-27 00:48:20', 1),
(2, 14, 1, 'komentaras', 61, NULL, '2021-03-27 00:48:32', '2021-03-27 00:48:32', 0),
(3, 14, 0, 'antras komentas', 61, NULL, '2021-03-27 00:48:43', '2021-03-27 00:48:43', 1),
(4, 14, 1, 'hello', 61, NULL, '2021-03-27 00:49:24', '2021-03-27 00:49:24', 0),
(5, 3, 3, '1 childas', 61, NULL, '2021-04-02 12:52:51', '2021-04-02 12:52:51', 0),
(6, 3, 0, 'Trečias main komentaras', 61, NULL, '2021-04-02 13:23:26', '2021-04-02 13:23:26', 1),
(7, 3, 0, 'Ketvirtas mainas', 61, NULL, '2021-04-02 15:47:47', '2021-04-02 15:47:47', 1),
(8, 3, 0, 'Penktas mainas', 61, NULL, '2021-04-02 15:48:23', '2021-04-02 15:48:23', 1),
(9, 3, 8, 'Penkto pirmas childas', 61, NULL, '2021-04-02 15:48:33', '2021-04-02 15:48:33', 0),
(10, 1, 0, 'testas', 61, NULL, '2021-04-02 16:02:21', '2021-04-02 16:02:21', 1),
(11, 3, 6, 'Trečio parento pirmas childas', 61, NULL, '2021-04-03 11:27:12', '2021-04-03 11:27:12', 0),
(12, 1, 6, 'trečio maino atsakymas', 61, NULL, '2021-04-03 15:21:10', '2021-04-03 15:21:10', 0),
(13, 17, 0, 'komentuoju', 62, NULL, '2021-04-07 14:30:52', '2021-04-07 14:30:52', 1),
(14, 17, 0, 'fhssahjsvhdsgpprthojjtnglfkcnhbgauūųūįė990ėę0-ę0ėihhfgvcsjl`;mkz cz`hsgdgwjkd;lklkjbjh`gcfdseesadxfsgyuagiuhsijlskldmvklnjxfhiugutopop;;lfkhdgsffahaalkklajdhvcyudiotorelkjal;lkcjhggdgdgdgdjgkkvjbsjdjkjakjaha dsjshgbhjgdhjhagsfga    rfgheuuwiasjhafhagsfd', 62, NULL, '2021-04-07 14:57:46', '2021-04-07 14:57:46', 1),
(15, 14, 7, '1', 61, NULL, '2021-04-10 13:30:30', '2021-04-10 13:30:30', 0),
(16, 14, 7, '2', 61, NULL, '2021-04-10 13:30:55', '2021-04-10 13:30:55', 0),
(17, 1, 8, 'testas', 61, NULL, '2021-04-10 14:25:55', '2021-04-10 14:25:55', 0),
(18, 1, 7, '3', 61, NULL, '2021-04-10 19:55:14', '2021-04-10 19:55:14', 0),
(19, 3, 1, 'Trečias childas', 61, NULL, '2021-04-10 20:21:51', '2021-04-10 20:21:51', 0),
(20, 1, 1, 'bandau', 61, NULL, '2021-04-10 20:24:16', '2021-04-10 20:24:16', 0),
(21, 3, 1, 'Penktas childas', 61, NULL, '2021-04-10 20:24:51', '2021-04-10 20:24:51', 0),
(22, 1, 1, 'gsdagadsggadas', 61, NULL, '2021-04-10 20:26:00', '2021-04-10 20:26:00', 0),
(23, 1, 8, 'agsddgsagd', 61, NULL, '2021-04-10 20:26:51', '2021-04-10 20:26:51', 0),
(24, 3, 1, 'Septintas childas', 61, NULL, '2021-04-10 20:28:01', '2021-04-10 20:28:01', 0),
(25, 3, 7, '4', 61, NULL, '2021-04-10 20:49:58', '2021-04-10 20:49:58', 0),
(26, 14, 1, 'ujh', 61, NULL, '2021-04-11 10:48:23', '2021-04-11 10:48:23', 0),
(27, 17, 0, 'urhvbjjdbvbsihfeūįė09šį9-įę9ųęčų0-ą§-ą9ū0ėųęū9įšėšęūįųėęūįėęituiehifgsų9čūūėą09ččų0įųęčęčįį', 63, NULL, '2021-04-12 16:07:28', '2021-04-12 16:07:28', 1),
(28, 17, 27, 'uryygsvhjzjkjcjzcs', 63, NULL, '2021-04-12 16:08:07', '2021-04-12 16:08:07', 0),
(29, 17, 0, 'uuhvcvhjzjksaugdasd', 63, NULL, '2021-04-12 16:08:13', '2021-04-12 16:08:13', 1),
(30, 17, 29, 'dcasadw', 63, NULL, '2021-04-12 16:08:29', '2021-04-12 16:08:29', 0),
(31, 17, 29, 'sfdbgfjhblkjlikfuyutjxrt', 63, NULL, '2021-04-12 16:08:37', '2021-04-12 16:08:37', 0),
(32, 31, 3, '2', 61, NULL, '2021-04-13 17:38:53', '2021-04-13 17:38:53', 0),
(33, 14, 1, 'hi', 61, NULL, '2021-04-13 17:59:40', '2021-04-13 17:59:40', 0),
(34, 14, 0, 'naujas komentas', 61, NULL, '2021-04-13 18:22:55', '2021-04-13 18:22:55', 1),
(35, 14, 0, 'naujas komentaas2', 61, NULL, '2021-04-13 18:23:05', '2021-04-13 18:23:05', 1),
(36, 14, 0, 'test1', 71, NULL, '2021-04-16 19:46:19', '2021-04-16 19:46:19', 1),
(37, 14, 0, 'test2', 71, NULL, '2021-04-16 19:46:27', '2021-04-16 19:46:27', 1),
(38, 14, 0, 'test3', 71, NULL, '2021-04-16 19:46:34', '2021-04-16 19:46:34', 1),
(39, 14, 36, '1', 71, NULL, '2021-04-16 19:46:40', '2021-04-16 19:46:40', 0),
(40, 14, 36, '2', 71, NULL, '2021-04-16 19:46:48', '2021-04-16 19:46:48', 0),
(41, 14, 37, '1', 71, NULL, '2021-04-16 19:46:54', '2021-04-16 19:46:54', 0),
(42, 14, 38, '1', 71, NULL, '2021-04-16 19:46:59', '2021-04-16 19:46:59', 0),
(43, 14, 36, '3', 71, NULL, '2021-04-16 19:47:05', '2021-04-16 19:47:05', 0),
(44, 14, 36, '4', 71, NULL, '2021-04-16 19:47:11', '2021-04-16 19:47:11', 0),
(45, 14, 36, '5', 71, NULL, '2021-04-16 19:47:19', '2021-04-16 19:47:19', 0),
(46, 14, 36, '6', 71, NULL, '2021-04-16 19:47:25', '2021-04-16 19:47:25', 0),
(47, 14, 36, '7', 71, NULL, '2021-04-16 19:47:30', '2021-04-16 19:47:30', 0),
(48, 14, 36, '8', 71, NULL, '2021-04-16 19:47:35', '2021-04-16 19:47:35', 0),
(49, 14, 36, '9', 71, NULL, '2021-04-16 19:47:40', '2021-04-16 19:47:40', 0),
(50, 14, 36, '10', 71, NULL, '2021-04-16 19:47:47', '2021-04-16 19:47:47', 0),
(51, 14, 36, '11', 71, NULL, '2021-04-16 19:47:53', '2021-04-16 19:47:53', 0),
(52, 14, 36, '12', 71, NULL, '2021-04-16 19:47:58', '2021-04-16 19:47:58', 0),
(53, 14, 36, '13', 71, NULL, '2021-04-16 19:48:03', '2021-04-16 19:48:03', 0),
(54, 14, 36, '14', 71, NULL, '2021-04-16 19:48:09', '2021-04-16 19:48:09', 0),
(55, 14, 36, '15', 71, NULL, '2021-04-16 19:48:15', '2021-04-16 19:48:15', 0),
(56, 14, 36, '16', 71, NULL, '2021-04-16 19:48:19', '2021-04-16 19:48:19', 0),
(57, 14, 36, '17', 71, NULL, '2021-04-16 19:48:24', '2021-04-16 19:48:24', 0),
(58, 14, 36, '18', 71, NULL, '2021-04-16 19:48:29', '2021-04-16 19:48:29', 0),
(59, 14, 36, '19', 71, NULL, '2021-04-16 19:48:34', '2021-04-16 19:48:34', 0),
(60, 14, 36, '20', 71, NULL, '2021-04-16 19:48:39', '2021-04-16 19:48:39', 0),
(61, 14, 36, '21', 71, NULL, '2021-04-16 19:48:45', '2021-04-16 19:48:45', 0),
(62, 14, 0, 'sdgsgd', 65, NULL, '2021-04-16 20:39:42', '2021-04-16 20:39:42', 1),
(63, 46, 0, 'Geras', 74, NULL, '2021-04-16 21:03:49', '2021-04-16 21:03:49', 1),
(64, 14, 0, 'hg', 80, NULL, '2021-04-18 02:02:38', '2021-04-18 02:02:38', 1),
(65, 14, 0, 'uiy', 80, NULL, '2021-04-18 02:09:03', '2021-04-18 02:09:03', 1),
(66, 14, 0, 'rfyut', 80, NULL, '2021-04-18 02:10:12', '2021-04-18 02:10:12', 1),
(67, 14, 64, 'uiyu', 80, NULL, '2021-04-18 02:12:55', '2021-04-18 02:12:55', 0);

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `megstamiausi`
--

CREATE TABLE `megstamiausi` (
  `id` int(10) UNSIGNED NOT NULL,
  `vartotojo_id` int(11) NOT NULL,
  `megstamos_nuotraukos_id` int(11) NOT NULL,
  `autoriaus_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Sukurta duomenų kopija lentelei `megstamiausi`
--

INSERT INTO `megstamiausi` (`id`, `vartotojo_id`, `megstamos_nuotraukos_id`, `autoriaus_id`) VALUES
(2, 14, 64, 14),
(3, 14, 61, 14),
(6, 1, 65, 16),
(8, 17, 63, 9),
(12, 14, 71, 14),
(13, 40, 76, 40),
(14, 14, 76, 40),
(15, 14, 38, 6),
(16, 14, 65, 16),
(17, 46, 74, 14),
(19, 14, 80, 14);

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Sukurta duomenų kopija lentelei `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2020_11_27_143057_create_sessions_table', 1),
(8, '2020_11_28_184604_valstybes', 2),
(9, '2020_12_01_154514_add_google_id_column', 3),
(10, '2020_12_01_160908_add_facebook_id_column_in_users_table', 4),
(11, '2020_12_27_144357_nuotrauku_nustatymai', 5),
(12, '2021_01_03_154417_nuotraukos', 6),
(13, '2021_01_13_164029_megstamiausi', 7),
(18, '2021_01_22_095653_create_comments_table', 8);

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `nuotraukos`
--

CREATE TABLE `nuotraukos` (
  `id` int(10) UNSIGNED NOT NULL,
  `sritis` tinyint(4) NOT NULL,
  `pavadinimas` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aprasymas` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `formatai` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `plotis` int(11) DEFAULT NULL,
  `aukstis` int(11) DEFAULT NULL,
  `dpi` tinyint(4) NOT NULL,
  `spalvos` tinyint(4) NOT NULL,
  `PagrindineNuotrauka` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AntraNuotrauka` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TreciaNuotrauka` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `KetvirtaNuotrauka` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `programa` tinyint(4) NOT NULL,
  `aplinka` tinyint(4) NOT NULL,
  `IrankiaiIskiepiai` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PapildomiIrankiai` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FiltraiEfektai` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PapildomiEfektai` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DarboPriemone` tinyint(4) NOT NULL,
  `DizainasKurtas` tinyint(4) NOT NULL,
  `Paskirtis` tinyint(4) NOT NULL,
  `DarboLaikas` int(11) DEFAULT NULL,
  `Sudetingumas` tinyint(4) NOT NULL,
  `VaizdoPamoka` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Pastabos` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Raktazodziai` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Autorius` int(11) NOT NULL,
  `Perziuros` int(11) NOT NULL DEFAULT 0,
  `Publikuota` timestamp NOT NULL DEFAULT current_timestamp(),
  `patinka` int(11) NOT NULL DEFAULT 0,
  `komentarai` int(11) NOT NULL DEFAULT 0,
  `Redaguota` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Sukurta duomenų kopija lentelei `nuotraukos`
--

INSERT INTO `nuotraukos` (`id`, `sritis`, `pavadinimas`, `aprasymas`, `formatai`, `plotis`, `aukstis`, `dpi`, `spalvos`, `PagrindineNuotrauka`, `AntraNuotrauka`, `TreciaNuotrauka`, `KetvirtaNuotrauka`, `programa`, `aplinka`, `IrankiaiIskiepiai`, `PapildomiIrankiai`, `FiltraiEfektai`, `PapildomiEfektai`, `DarboPriemone`, `DizainasKurtas`, `Paskirtis`, `DarboLaikas`, `Sudetingumas`, `VaizdoPamoka`, `Pastabos`, `Raktazodziai`, `Autorius`, `Perziuros`, `Publikuota`, `patinka`, `komentarai`, `Redaguota`) VALUES
(3, 1, 'Automatives', '<div>Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.<br></div>', '[\"JPEG\",\"PNG\"]', 3840, 2160, 4, 1, 'nuotraukos/ikelimai/bpVVmPGI1rriBAWXn2cJ6JZ5G-1610097542.jpg', 'nuotraukos/ikelimai/xbAkse08g5zJJoXtUfzrEnYp2-1610096270.JPG', 'nuotraukos/ikelimai/2BTAhVSBA1UUTlDtYY7zKOwRK-1610096275.jpg', 'nuotraukos/ikelimai/LaS4OKHutEfmoQlNXN75HMOVH-1618076932.jpg', 1, 2, '[\"Camera RAW\",\"Gradient Tool\",\"Shape \\/ Frame\",\"Text\",\"Alien Skin Software\"]', '[\"testas\"]', '[\"Lighting Effects\",\"3D Map\",\"Blur Effects\",\"Text Effects\",\"Collage\"]', '[\"testas\",\"Testas\",\"naujas atsiranda\"]', 1, 1, 2, NULL, 3, 'https://www.youtube.com/embed/tk2OwXJepKA', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.', '[\"Mašinos\",\"Architektūra\",\"Filmai\",\"Meilė\",\"Piešiniai\",\"gdasasgdgsd\"]', 1, 976, '2021-01-15 14:37:25', 0, 0, '2021-04-16 18:33:41'),
(4, 3, 'Unsample', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.<br>', '[\"JPEG\"]', 1028, 720, 1, 0, 'nuotraukos/ikelimai/bpVVmPGI1rriBAWXn2cJ6JZ5G-1610097542.jpg', 'nuotraukos/ikelimai/LVyj8XQb0woNqy23kAPpm4Gwx-1610097542.jpg', 'nuotraukos/ikelimai/xeoT7i6ldFGssXHNHtFYNlHgv-1610097542.jpg', 'nuotraukos/ikelimai/gNAkWXsmRCrRIICb9lsJfuZ2a-1610097542.jpg', 1, 3, '[\"Gradient Tool\",\"Shape \\/ Frame\",\"Artboard\"]', NULL, '[\"3D Map\",\"Blur Effects\",\"Text Effects\"]', NULL, 1, 1, 1, 5, 2, 'https://www.youtube.com/embed/XIMLoLxmTDw', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.', '[\"Fantazija\",\"Gamta\"]', 6, 107, '2021-01-15 14:37:25', 0, 0, '0000-00-00 00:00:00'),
(5, 3, 'Automative', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.<br>', '[\"JPEG\",\"PNG\"]', 1080, 720, 4, 1, 'nuotraukos/ikelimai/VjNJ3QvuEsNEIPiEWjeqjqyUR-1610096270.jpg', 'nuotraukos/ikelimai/xbAkse08g5zJJoXtUfzrEnYp2-1610096270.JPG', 'nuotraukos/ikelimai/2BTAhVSBA1UUTlDtYY7zKOwRK-1610096275.jpg', 'nuotraukos/ikelimai/RLSPKjZNtLLI0ggGpDIHtJVIN-1610096275.jpg', 1, 2, '[\"Camera RAW\",\"Shape \\/ Frame\",\"Text\",\"Alien Skin Software\"]', NULL, '[\"3D Map\",\"Text Effects\",\"Collage\"]', NULL, 1, 1, 1, 5, 2, 'https://www.youtube.com/embed/XIMLoLxmTDw', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.', '[\"Mašinos\",\"Architektūra\",\"Filmai\",\"Meilė\"]', 6, 90, '2021-01-15 14:37:25', 0, 0, '0000-00-00 00:00:00'),
(6, 3, 'Unsample', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.<br>', '[\"JPEG\"]', 1028, 720, 1, 0, 'nuotraukos/ikelimai/bpVVmPGI1rriBAWXn2cJ6JZ5G-1610097542.jpg', 'nuotraukos/ikelimai/LVyj8XQb0woNqy23kAPpm4Gwx-1610097542.jpg', 'nuotraukos/ikelimai/xeoT7i6ldFGssXHNHtFYNlHgv-1610097542.jpg', 'nuotraukos/ikelimai/gNAkWXsmRCrRIICb9lsJfuZ2a-1610097542.jpg', 1, 3, '[\"Gradient Tool\",\"Shape \\/ Frame\",\"Artboard\"]', NULL, '[\"3D Map\",\"Blur Effects\",\"Text Effects\"]', NULL, 1, 1, 1, 5, 2, 'https://www.youtube.com/embed/XIMLoLxmTDw', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.', '[\"Fantazija\",\"Gamta\"]', 6, 112, '2021-01-15 14:37:25', 0, 0, '0000-00-00 00:00:00'),
(7, 3, 'Automative', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.<br>', '[\"JPEG\",\"PNG\"]', 1080, 720, 4, 1, 'nuotraukos/ikelimai/VjNJ3QvuEsNEIPiEWjeqjqyUR-1610096270.jpg', 'nuotraukos/ikelimai/xbAkse08g5zJJoXtUfzrEnYp2-1610096270.JPG', 'nuotraukos/ikelimai/2BTAhVSBA1UUTlDtYY7zKOwRK-1610096275.jpg', 'nuotraukos/ikelimai/RLSPKjZNtLLI0ggGpDIHtJVIN-1610096275.jpg', 1, 2, '[\"Camera RAW\",\"Shape \\/ Frame\",\"Text\",\"Alien Skin Software\"]', NULL, '[\"3D Map\",\"Text Effects\",\"Collage\"]', NULL, 1, 1, 1, 5, 2, 'https://www.youtube.com/embed/XIMLoLxmTDw', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.', '[\"Mašinos\",\"Architektūra\",\"Filmai\",\"Meilė\"]', 6, 29, '2021-01-15 14:37:25', 0, 0, '0000-00-00 00:00:00'),
(8, 3, 'Unsample', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.<br>', '[\"JPEG\"]', 1028, 720, 1, 0, 'nuotraukos/ikelimai/bpVVmPGI1rriBAWXn2cJ6JZ5G-1610097542.jpg', 'nuotraukos/ikelimai/LVyj8XQb0woNqy23kAPpm4Gwx-1610097542.jpg', 'nuotraukos/ikelimai/xeoT7i6ldFGssXHNHtFYNlHgv-1610097542.jpg', 'nuotraukos/ikelimai/gNAkWXsmRCrRIICb9lsJfuZ2a-1610097542.jpg', 1, 3, '[\"Gradient Tool\",\"Shape \\/ Frame\",\"Artboard\"]', NULL, '[\"3D Map\",\"Blur Effects\",\"Text Effects\"]', NULL, 1, 1, 1, 5, 2, 'https://www.youtube.com/embed/XIMLoLxmTDw', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.', '[\"Fantazija\",\"Gamta\"]', 6, 24, '2021-01-15 14:37:25', 0, 0, '0000-00-00 00:00:00'),
(9, 3, 'Automative', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.<br>', '[\"JPEG\",\"PNG\"]', 1080, 720, 4, 1, 'nuotraukos/ikelimai/VjNJ3QvuEsNEIPiEWjeqjqyUR-1610096270.jpg', 'nuotraukos/ikelimai/xbAkse08g5zJJoXtUfzrEnYp2-1610096270.JPG', 'nuotraukos/ikelimai/2BTAhVSBA1UUTlDtYY7zKOwRK-1610096275.jpg', 'nuotraukos/ikelimai/RLSPKjZNtLLI0ggGpDIHtJVIN-1610096275.jpg', 1, 2, '[\"Camera RAW\",\"Shape \\/ Frame\",\"Text\",\"Alien Skin Software\"]', NULL, '[\"3D Map\",\"Text Effects\",\"Collage\"]', NULL, 1, 1, 1, 5, 2, 'https://www.youtube.com/embed/XIMLoLxmTDw', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.', '[\"Mašinos\",\"Architektūra\",\"Filmai\",\"Meilė\"]', 6, 23, '2021-01-15 14:37:25', 0, 0, '0000-00-00 00:00:00'),
(11, 3, 'Automative', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.<br>', '[\"JPEG\",\"PNG\"]', 1080, 720, 4, 1, 'nuotraukos/ikelimai/VjNJ3QvuEsNEIPiEWjeqjqyUR-1610096270.jpg', 'nuotraukos/ikelimai/xbAkse08g5zJJoXtUfzrEnYp2-1610096270.JPG', 'nuotraukos/ikelimai/2BTAhVSBA1UUTlDtYY7zKOwRK-1610096275.jpg', 'nuotraukos/ikelimai/RLSPKjZNtLLI0ggGpDIHtJVIN-1610096275.jpg', 1, 2, '[\"Camera RAW\",\"Shape \\/ Frame\",\"Text\",\"Alien Skin Software\"]', NULL, '[\"3D Map\",\"Text Effects\",\"Collage\"]', NULL, 1, 1, 1, 5, 2, 'https://www.youtube.com/embed/XIMLoLxmTDw', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.', '[\"Mašinos\",\"Architektūra\",\"Filmai\",\"Meilė\"]', 6, 34, '2021-01-15 14:37:25', 0, 0, '0000-00-00 00:00:00'),
(12, 3, 'Unsample', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.<br>', '[\"JPEG\"]', 1028, 720, 1, 0, 'nuotraukos/ikelimai/bpVVmPGI1rriBAWXn2cJ6JZ5G-1610097542.jpg', 'nuotraukos/ikelimai/LVyj8XQb0woNqy23kAPpm4Gwx-1610097542.jpg', 'nuotraukos/ikelimai/xeoT7i6ldFGssXHNHtFYNlHgv-1610097542.jpg', 'nuotraukos/ikelimai/gNAkWXsmRCrRIICb9lsJfuZ2a-1610097542.jpg', 1, 3, '[\"Gradient Tool\",\"Shape \\/ Frame\",\"Artboard\"]', NULL, '[\"3D Map\",\"Blur Effects\",\"Text Effects\"]', NULL, 1, 1, 1, 5, 2, 'https://www.youtube.com/embed/XIMLoLxmTDw', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.', '[\"Fantazija\",\"Gamta\"]', 6, 34, '2021-01-15 14:37:25', 0, 0, '0000-00-00 00:00:00'),
(13, 3, 'Automative', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.<br>', '[\"JPEG\",\"PNG\"]', 1080, 720, 4, 1, 'nuotraukos/ikelimai/VjNJ3QvuEsNEIPiEWjeqjqyUR-1610096270.jpg', 'nuotraukos/ikelimai/xbAkse08g5zJJoXtUfzrEnYp2-1610096270.JPG', 'nuotraukos/ikelimai/2BTAhVSBA1UUTlDtYY7zKOwRK-1610096275.jpg', 'nuotraukos/ikelimai/RLSPKjZNtLLI0ggGpDIHtJVIN-1610096275.jpg', 1, 2, '[\"Camera RAW\",\"Shape \\/ Frame\",\"Text\",\"Alien Skin Software\"]', NULL, '[\"3D Map\",\"Text Effects\",\"Collage\"]', NULL, 1, 1, 1, 5, 2, 'https://www.youtube.com/embed/XIMLoLxmTDw', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.', '[\"Mašinos\",\"Architektūra\",\"Filmai\",\"Meilė\"]', 6, 22, '2021-01-15 14:37:25', 0, 0, '0000-00-00 00:00:00'),
(14, 3, 'Unsample', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.<br>', '[\"JPEG\"]', 1028, 720, 1, 0, 'nuotraukos/ikelimai/bpVVmPGI1rriBAWXn2cJ6JZ5G-1610097542.jpg', 'nuotraukos/ikelimai/LVyj8XQb0woNqy23kAPpm4Gwx-1610097542.jpg', 'nuotraukos/ikelimai/xeoT7i6ldFGssXHNHtFYNlHgv-1610097542.jpg', 'nuotraukos/ikelimai/gNAkWXsmRCrRIICb9lsJfuZ2a-1610097542.jpg', 1, 3, '[\"Gradient Tool\",\"Shape \\/ Frame\",\"Artboard\"]', NULL, '[\"3D Map\",\"Blur Effects\",\"Text Effects\"]', NULL, 1, 1, 1, 5, 2, 'https://www.youtube.com/embed/XIMLoLxmTDw', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.', '[\"Fantazija\",\"Gamta\"]', 6, 20, '2021-01-15 14:37:25', 0, 0, '0000-00-00 00:00:00'),
(15, 3, 'Automative', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.<br>', '[\"JPEG\",\"PNG\"]', 1080, 720, 4, 1, 'nuotraukos/ikelimai/VjNJ3QvuEsNEIPiEWjeqjqyUR-1610096270.jpg', 'nuotraukos/ikelimai/xbAkse08g5zJJoXtUfzrEnYp2-1610096270.JPG', 'nuotraukos/ikelimai/2BTAhVSBA1UUTlDtYY7zKOwRK-1610096275.jpg', 'nuotraukos/ikelimai/RLSPKjZNtLLI0ggGpDIHtJVIN-1610096275.jpg', 1, 2, '[\"Camera RAW\",\"Shape \\/ Frame\",\"Text\",\"Alien Skin Software\"]', NULL, '[\"3D Map\",\"Text Effects\",\"Collage\"]', NULL, 1, 1, 1, 5, 2, 'https://www.youtube.com/embed/XIMLoLxmTDw', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.', '[\"Mašinos\",\"Architektūra\",\"Filmai\",\"Meilė\"]', 6, 18, '2021-01-15 14:37:25', 0, 0, '0000-00-00 00:00:00'),
(16, 3, 'Unsample', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.<br>', '[\"JPEG\"]', 1028, 720, 1, 0, 'nuotraukos/ikelimai/bpVVmPGI1rriBAWXn2cJ6JZ5G-1610097542.jpg', 'nuotraukos/ikelimai/LVyj8XQb0woNqy23kAPpm4Gwx-1610097542.jpg', 'nuotraukos/ikelimai/xeoT7i6ldFGssXHNHtFYNlHgv-1610097542.jpg', 'nuotraukos/ikelimai/gNAkWXsmRCrRIICb9lsJfuZ2a-1610097542.jpg', 1, 3, '[\"Gradient Tool\",\"Shape \\/ Frame\",\"Artboard\"]', NULL, '[\"3D Map\",\"Blur Effects\",\"Text Effects\"]', NULL, 1, 1, 1, 5, 2, 'https://www.youtube.com/embed/XIMLoLxmTDw', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.', '[\"Fantazija\",\"Gamta\"]', 6, 14, '2021-01-15 14:37:25', 0, 0, '0000-00-00 00:00:00'),
(17, 3, 'Automative', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.<br>', '[\"JPEG\",\"PNG\"]', 1080, 720, 4, 1, 'nuotraukos/ikelimai/VjNJ3QvuEsNEIPiEWjeqjqyUR-1610096270.jpg', 'nuotraukos/ikelimai/xbAkse08g5zJJoXtUfzrEnYp2-1610096270.JPG', 'nuotraukos/ikelimai/2BTAhVSBA1UUTlDtYY7zKOwRK-1610096275.jpg', 'nuotraukos/ikelimai/RLSPKjZNtLLI0ggGpDIHtJVIN-1610096275.jpg', 1, 2, '[\"Camera RAW\",\"Shape \\/ Frame\",\"Text\",\"Alien Skin Software\"]', NULL, '[\"3D Map\",\"Text Effects\",\"Collage\"]', NULL, 1, 1, 1, 5, 2, 'https://www.youtube.com/embed/XIMLoLxmTDw', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.', '[\"Mašinos\",\"Architektūra\",\"Filmai\",\"Meilė\"]', 6, 13, '2021-01-15 14:37:25', 0, 0, '0000-00-00 00:00:00'),
(18, 3, 'Unsample', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.<br>', '[\"JPEG\"]', 1028, 720, 1, 0, 'nuotraukos/ikelimai/bpVVmPGI1rriBAWXn2cJ6JZ5G-1610097542.jpg', 'nuotraukos/ikelimai/LVyj8XQb0woNqy23kAPpm4Gwx-1610097542.jpg', 'nuotraukos/ikelimai/xeoT7i6ldFGssXHNHtFYNlHgv-1610097542.jpg', 'nuotraukos/ikelimai/gNAkWXsmRCrRIICb9lsJfuZ2a-1610097542.jpg', 1, 3, '[\"Gradient Tool\",\"Shape \\/ Frame\",\"Artboard\"]', NULL, '[\"3D Map\",\"Blur Effects\",\"Text Effects\"]', NULL, 1, 1, 1, 5, 2, 'https://www.youtube.com/embed/XIMLoLxmTDw', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.', '[\"Fantazija\",\"Gamta\"]', 6, 15, '2021-01-15 14:37:25', 0, 0, '0000-00-00 00:00:00'),
(19, 3, 'Automative', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.<br>', '[\"JPEG\",\"PNG\"]', 1080, 720, 4, 1, 'nuotraukos/ikelimai/VjNJ3QvuEsNEIPiEWjeqjqyUR-1610096270.jpg', 'nuotraukos/ikelimai/xbAkse08g5zJJoXtUfzrEnYp2-1610096270.JPG', 'nuotraukos/ikelimai/2BTAhVSBA1UUTlDtYY7zKOwRK-1610096275.jpg', 'nuotraukos/ikelimai/RLSPKjZNtLLI0ggGpDIHtJVIN-1610096275.jpg', 1, 2, '[\"Camera RAW\",\"Shape \\/ Frame\",\"Text\",\"Alien Skin Software\"]', NULL, '[\"3D Map\",\"Text Effects\",\"Collage\"]', NULL, 1, 1, 1, 5, 2, 'https://www.youtube.com/embed/XIMLoLxmTDw', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.', '[\"Mašinos\",\"Architektūra\",\"Filmai\",\"Meilė\"]', 6, 67, '2021-01-15 14:37:25', 0, 0, '0000-00-00 00:00:00'),
(20, 3, 'Unsample', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.<br>', '[\"JPEG\"]', 1028, 720, 1, 0, 'nuotraukos/ikelimai/bpVVmPGI1rriBAWXn2cJ6JZ5G-1610097542.jpg', 'nuotraukos/ikelimai/LVyj8XQb0woNqy23kAPpm4Gwx-1610097542.jpg', 'nuotraukos/ikelimai/xeoT7i6ldFGssXHNHtFYNlHgv-1610097542.jpg', 'nuotraukos/ikelimai/gNAkWXsmRCrRIICb9lsJfuZ2a-1610097542.jpg', 1, 3, '[\"Gradient Tool\",\"Shape \\/ Frame\",\"Artboard\"]', NULL, '[\"3D Map\",\"Blur Effects\",\"Text Effects\"]', NULL, 1, 1, 1, 5, 2, 'https://www.youtube.com/embed/XIMLoLxmTDw', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.', '[\"Fantazija\",\"Gamta\"]', 6, 14, '2021-01-15 14:37:25', 0, 0, '0000-00-00 00:00:00'),
(21, 3, 'Automative', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.<br>', '[\"JPEG\",\"PNG\"]', 1080, 720, 4, 1, 'nuotraukos/ikelimai/VjNJ3QvuEsNEIPiEWjeqjqyUR-1610096270.jpg', 'nuotraukos/ikelimai/xbAkse08g5zJJoXtUfzrEnYp2-1610096270.JPG', 'nuotraukos/ikelimai/2BTAhVSBA1UUTlDtYY7zKOwRK-1610096275.jpg', 'nuotraukos/ikelimai/RLSPKjZNtLLI0ggGpDIHtJVIN-1610096275.jpg', 1, 2, '[\"Camera RAW\",\"Shape \\/ Frame\",\"Text\",\"Alien Skin Software\"]', NULL, '[\"3D Map\",\"Text Effects\",\"Collage\"]', NULL, 1, 1, 1, 5, 2, 'https://www.youtube.com/embed/XIMLoLxmTDw', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.', '[\"Mašinos\",\"Architektūra\",\"Filmai\",\"Meilė\"]', 6, 16, '2021-01-15 14:37:25', 0, 0, '0000-00-00 00:00:00'),
(22, 3, 'Unsample', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.<br>', '[\"JPEG\"]', 1028, 720, 1, 0, 'nuotraukos/ikelimai/bpVVmPGI1rriBAWXn2cJ6JZ5G-1610097542.jpg', 'nuotraukos/ikelimai/LVyj8XQb0woNqy23kAPpm4Gwx-1610097542.jpg', 'nuotraukos/ikelimai/xeoT7i6ldFGssXHNHtFYNlHgv-1610097542.jpg', 'nuotraukos/ikelimai/gNAkWXsmRCrRIICb9lsJfuZ2a-1610097542.jpg', 1, 3, '[\"Gradient Tool\",\"Shape \\/ Frame\",\"Artboard\"]', NULL, '[\"3D Map\",\"Blur Effects\",\"Text Effects\"]', NULL, 1, 1, 1, 5, 2, 'https://www.youtube.com/embed/XIMLoLxmTDw', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.', '[\"Fantazija\",\"Gamta\"]', 6, 13, '2021-01-15 14:37:25', 0, 0, '0000-00-00 00:00:00'),
(23, 3, 'Automative', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.<br>', '[\"JPEG\",\"PNG\"]', 1080, 720, 4, 1, 'nuotraukos/ikelimai/VjNJ3QvuEsNEIPiEWjeqjqyUR-1610096270.jpg', 'nuotraukos/ikelimai/xbAkse08g5zJJoXtUfzrEnYp2-1610096270.JPG', 'nuotraukos/ikelimai/2BTAhVSBA1UUTlDtYY7zKOwRK-1610096275.jpg', 'nuotraukos/ikelimai/RLSPKjZNtLLI0ggGpDIHtJVIN-1610096275.jpg', 1, 2, '[\"Camera RAW\",\"Shape \\/ Frame\",\"Text\",\"Alien Skin Software\"]', NULL, '[\"3D Map\",\"Text Effects\",\"Collage\"]', NULL, 1, 1, 1, 5, 2, 'https://www.youtube.com/embed/XIMLoLxmTDw', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.', '[\"Mašinos\",\"Architektūra\",\"Filmai\",\"Meilė\"]', 6, 14, '2021-01-15 14:37:25', 0, 0, '0000-00-00 00:00:00'),
(24, 3, 'Unsample', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.<br>', '[\"JPEG\"]', 1028, 720, 1, 0, 'nuotraukos/ikelimai/bpVVmPGI1rriBAWXn2cJ6JZ5G-1610097542.jpg', 'nuotraukos/ikelimai/LVyj8XQb0woNqy23kAPpm4Gwx-1610097542.jpg', 'nuotraukos/ikelimai/xeoT7i6ldFGssXHNHtFYNlHgv-1610097542.jpg', 'nuotraukos/ikelimai/gNAkWXsmRCrRIICb9lsJfuZ2a-1610097542.jpg', 1, 3, '[\"Gradient Tool\",\"Shape \\/ Frame\",\"Artboard\"]', NULL, '[\"3D Map\",\"Blur Effects\",\"Text Effects\"]', NULL, 1, 1, 1, 5, 2, 'https://www.youtube.com/embed/XIMLoLxmTDw', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.', '[\"Fantazija\",\"Gamta\"]', 6, 17, '2021-01-15 14:37:25', 0, 0, '0000-00-00 00:00:00'),
(25, 3, 'Automative', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.<br>', '[\"JPEG\",\"PNG\"]', 1080, 720, 4, 1, 'nuotraukos/ikelimai/VjNJ3QvuEsNEIPiEWjeqjqyUR-1610096270.jpg', 'nuotraukos/ikelimai/xbAkse08g5zJJoXtUfzrEnYp2-1610096270.JPG', 'nuotraukos/ikelimai/2BTAhVSBA1UUTlDtYY7zKOwRK-1610096275.jpg', 'nuotraukos/ikelimai/RLSPKjZNtLLI0ggGpDIHtJVIN-1610096275.jpg', 1, 2, '[\"Camera RAW\",\"Shape \\/ Frame\",\"Text\",\"Alien Skin Software\"]', NULL, '[\"3D Map\",\"Text Effects\",\"Collage\"]', NULL, 1, 1, 1, 5, 2, 'https://www.youtube.com/embed/XIMLoLxmTDw', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.', '[\"Mašinos\",\"Architektūra\",\"Filmai\",\"Meilė\"]', 6, 14, '2021-01-15 14:37:25', 0, 0, '0000-00-00 00:00:00'),
(26, 3, 'Unsample', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.<br>', '[\"JPEG\"]', 1028, 720, 1, 0, 'nuotraukos/ikelimai/bpVVmPGI1rriBAWXn2cJ6JZ5G-1610097542.jpg', 'nuotraukos/ikelimai/LVyj8XQb0woNqy23kAPpm4Gwx-1610097542.jpg', 'nuotraukos/ikelimai/xeoT7i6ldFGssXHNHtFYNlHgv-1610097542.jpg', 'nuotraukos/ikelimai/gNAkWXsmRCrRIICb9lsJfuZ2a-1610097542.jpg', 1, 3, '[\"Gradient Tool\",\"Shape \\/ Frame\",\"Artboard\"]', NULL, '[\"3D Map\",\"Blur Effects\",\"Text Effects\"]', NULL, 1, 1, 1, 5, 2, 'https://www.youtube.com/embed/XIMLoLxmTDw', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.', '[\"Fantazija\",\"Gamta\"]', 6, 14, '2021-01-15 14:37:25', 0, 0, '0000-00-00 00:00:00'),
(27, 3, 'Automative', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.<br>', '[\"JPEG\",\"PNG\"]', 1080, 720, 4, 1, 'nuotraukos/ikelimai/VjNJ3QvuEsNEIPiEWjeqjqyUR-1610096270.jpg', 'nuotraukos/ikelimai/xbAkse08g5zJJoXtUfzrEnYp2-1610096270.JPG', 'nuotraukos/ikelimai/2BTAhVSBA1UUTlDtYY7zKOwRK-1610096275.jpg', 'nuotraukos/ikelimai/RLSPKjZNtLLI0ggGpDIHtJVIN-1610096275.jpg', 1, 2, '[\"Camera RAW\",\"Shape \\/ Frame\",\"Text\",\"Alien Skin Software\"]', NULL, '[\"3D Map\",\"Text Effects\",\"Collage\"]', NULL, 1, 1, 1, 5, 2, 'https://www.youtube.com/embed/XIMLoLxmTDw', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.', '[\"Mašinos\",\"Architektūra\",\"Filmai\",\"Meilė\"]', 6, 15, '2021-01-15 14:37:25', 0, 0, '0000-00-00 00:00:00'),
(28, 3, 'Unsample', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.<br>', '[\"JPEG\"]', 1028, 720, 1, 0, 'nuotraukos/ikelimai/bpVVmPGI1rriBAWXn2cJ6JZ5G-1610097542.jpg', 'nuotraukos/ikelimai/LVyj8XQb0woNqy23kAPpm4Gwx-1610097542.jpg', 'nuotraukos/ikelimai/xeoT7i6ldFGssXHNHtFYNlHgv-1610097542.jpg', 'nuotraukos/ikelimai/gNAkWXsmRCrRIICb9lsJfuZ2a-1610097542.jpg', 1, 3, '[\"Gradient Tool\",\"Shape \\/ Frame\",\"Artboard\"]', NULL, '[\"3D Map\",\"Blur Effects\",\"Text Effects\"]', NULL, 1, 1, 1, 5, 2, 'https://www.youtube.com/embed/XIMLoLxmTDw', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.', '[\"Fantazija\",\"Gamta\"]', 6, 14, '2021-01-15 14:37:25', 0, 0, '0000-00-00 00:00:00'),
(29, 3, 'Automative', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.<br>', '[\"JPEG\",\"PNG\"]', 1080, 720, 4, 1, 'nuotraukos/ikelimai/VjNJ3QvuEsNEIPiEWjeqjqyUR-1610096270.jpg', 'nuotraukos/ikelimai/xbAkse08g5zJJoXtUfzrEnYp2-1610096270.JPG', 'nuotraukos/ikelimai/2BTAhVSBA1UUTlDtYY7zKOwRK-1610096275.jpg', 'nuotraukos/ikelimai/RLSPKjZNtLLI0ggGpDIHtJVIN-1610096275.jpg', 1, 2, '[\"Camera RAW\",\"Shape \\/ Frame\",\"Text\",\"Alien Skin Software\"]', NULL, '[\"3D Map\",\"Text Effects\",\"Collage\"]', NULL, 1, 1, 1, 5, 2, 'https://www.youtube.com/embed/XIMLoLxmTDw', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.', '[\"Mašinos\",\"Architektūra\",\"Filmai\",\"Meilė\"]', 6, 17, '2021-01-15 14:37:25', 0, 0, '0000-00-00 00:00:00'),
(30, 3, 'Unsample', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.<br>', '[\"JPEG\"]', 1028, 720, 1, 0, 'nuotraukos/ikelimai/bpVVmPGI1rriBAWXn2cJ6JZ5G-1610097542.jpg', 'nuotraukos/ikelimai/LVyj8XQb0woNqy23kAPpm4Gwx-1610097542.jpg', 'nuotraukos/ikelimai/xeoT7i6ldFGssXHNHtFYNlHgv-1610097542.jpg', 'nuotraukos/ikelimai/gNAkWXsmRCrRIICb9lsJfuZ2a-1610097542.jpg', 1, 3, '[\"Gradient Tool\",\"Shape \\/ Frame\",\"Artboard\"]', NULL, '[\"3D Map\",\"Blur Effects\",\"Text Effects\"]', NULL, 1, 1, 1, 5, 2, 'https://www.youtube.com/embed/XIMLoLxmTDw', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.', '[\"Fantazija\",\"Gamta\"]', 6, 15, '2021-01-15 14:37:25', 0, 0, '0000-00-00 00:00:00');
INSERT INTO `nuotraukos` (`id`, `sritis`, `pavadinimas`, `aprasymas`, `formatai`, `plotis`, `aukstis`, `dpi`, `spalvos`, `PagrindineNuotrauka`, `AntraNuotrauka`, `TreciaNuotrauka`, `KetvirtaNuotrauka`, `programa`, `aplinka`, `IrankiaiIskiepiai`, `PapildomiIrankiai`, `FiltraiEfektai`, `PapildomiEfektai`, `DarboPriemone`, `DizainasKurtas`, `Paskirtis`, `DarboLaikas`, `Sudetingumas`, `VaizdoPamoka`, `Pastabos`, `Raktazodziai`, `Autorius`, `Perziuros`, `Publikuota`, `patinka`, `komentarai`, `Redaguota`) VALUES
(31, 3, 'Automative', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.<br>', '[\"JPEG\",\"PNG\"]', 1080, 720, 4, 1, 'nuotraukos/ikelimai/VjNJ3QvuEsNEIPiEWjeqjqyUR-1610096270.jpg', 'nuotraukos/ikelimai/xbAkse08g5zJJoXtUfzrEnYp2-1610096270.JPG', 'nuotraukos/ikelimai/2BTAhVSBA1UUTlDtYY7zKOwRK-1610096275.jpg', 'nuotraukos/ikelimai/RLSPKjZNtLLI0ggGpDIHtJVIN-1610096275.jpg', 1, 2, '[\"Camera RAW\",\"Shape \\/ Frame\",\"Text\",\"Alien Skin Software\"]', NULL, '[\"3D Map\",\"Text Effects\",\"Collage\"]', NULL, 1, 1, 1, 5, 2, 'https://www.youtube.com/embed/XIMLoLxmTDw', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.', '[\"Mašinos\",\"Architektūra\",\"Filmai\",\"Meilė\"]', 6, 14, '2021-01-15 14:37:25', 0, 0, '0000-00-00 00:00:00'),
(32, 3, 'Unsample', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.<br>', '[\"JPEG\"]', 1028, 720, 1, 0, 'nuotraukos/ikelimai/bpVVmPGI1rriBAWXn2cJ6JZ5G-1610097542.jpg', 'nuotraukos/ikelimai/LVyj8XQb0woNqy23kAPpm4Gwx-1610097542.jpg', 'nuotraukos/ikelimai/xeoT7i6ldFGssXHNHtFYNlHgv-1610097542.jpg', 'nuotraukos/ikelimai/gNAkWXsmRCrRIICb9lsJfuZ2a-1610097542.jpg', 1, 3, '[\"Gradient Tool\",\"Shape \\/ Frame\",\"Artboard\"]', NULL, '[\"3D Map\",\"Blur Effects\",\"Text Effects\"]', NULL, 1, 1, 1, 5, 2, 'https://www.youtube.com/embed/XIMLoLxmTDw', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.', '[\"Fantazija\",\"Gamta\"]', 6, 16, '2021-01-15 14:37:25', 0, 0, '0000-00-00 00:00:00'),
(33, 3, 'Automative', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.<br>', '[\"JPEG\",\"PNG\"]', 1080, 720, 4, 1, 'nuotraukos/ikelimai/VjNJ3QvuEsNEIPiEWjeqjqyUR-1610096270.jpg', 'nuotraukos/ikelimai/xbAkse08g5zJJoXtUfzrEnYp2-1610096270.JPG', 'nuotraukos/ikelimai/2BTAhVSBA1UUTlDtYY7zKOwRK-1610096275.jpg', 'nuotraukos/ikelimai/RLSPKjZNtLLI0ggGpDIHtJVIN-1610096275.jpg', 1, 2, '[\"Camera RAW\",\"Shape \\/ Frame\",\"Text\",\"Alien Skin Software\"]', NULL, '[\"3D Map\",\"Text Effects\",\"Collage\"]', NULL, 1, 1, 1, 5, 2, 'https://www.youtube.com/embed/XIMLoLxmTDw', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.', '[\"Mašinos\",\"Architektūra\",\"Filmai\",\"Meilė\"]', 6, 13, '2021-01-15 14:37:25', 0, 0, '0000-00-00 00:00:00'),
(34, 3, 'Unsample', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.<br>', '[\"JPEG\"]', 1028, 720, 1, 0, 'nuotraukos/ikelimai/bpVVmPGI1rriBAWXn2cJ6JZ5G-1610097542.jpg', 'nuotraukos/ikelimai/LVyj8XQb0woNqy23kAPpm4Gwx-1610097542.jpg', 'nuotraukos/ikelimai/xeoT7i6ldFGssXHNHtFYNlHgv-1610097542.jpg', 'nuotraukos/ikelimai/gNAkWXsmRCrRIICb9lsJfuZ2a-1610097542.jpg', 1, 3, '[\"Gradient Tool\",\"Shape \\/ Frame\",\"Artboard\"]', NULL, '[\"3D Map\",\"Blur Effects\",\"Text Effects\"]', NULL, 1, 1, 1, 5, 2, 'https://www.youtube.com/embed/XIMLoLxmTDw', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.', '[\"Fantazija\",\"Gamta\"]', 6, 24, '2021-01-15 14:37:25', 0, 0, '0000-00-00 00:00:00'),
(35, 3, 'Automative', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.<br>', '[\"JPEG\",\"PNG\"]', 1080, 720, 4, 1, 'nuotraukos/ikelimai/VjNJ3QvuEsNEIPiEWjeqjqyUR-1610096270.jpg', 'nuotraukos/ikelimai/xbAkse08g5zJJoXtUfzrEnYp2-1610096270.JPG', 'nuotraukos/ikelimai/2BTAhVSBA1UUTlDtYY7zKOwRK-1610096275.jpg', 'nuotraukos/ikelimai/RLSPKjZNtLLI0ggGpDIHtJVIN-1610096275.jpg', 1, 2, '[\"Camera RAW\",\"Shape \\/ Frame\",\"Text\",\"Alien Skin Software\"]', NULL, '[\"3D Map\",\"Text Effects\",\"Collage\"]', NULL, 1, 1, 1, 5, 2, 'https://www.youtube.com/embed/XIMLoLxmTDw', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.', '[\"Mašinos\",\"Architektūra\",\"Filmai\",\"Meilė\"]', 6, 17, '2021-01-15 14:37:25', 0, 0, '0000-00-00 00:00:00'),
(36, 3, 'Unsample', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.<br>', '[\"JPEG\"]', 1028, 720, 1, 0, 'nuotraukos/ikelimai/bpVVmPGI1rriBAWXn2cJ6JZ5G-1610097542.jpg', 'nuotraukos/ikelimai/LVyj8XQb0woNqy23kAPpm4Gwx-1610097542.jpg', 'nuotraukos/ikelimai/xeoT7i6ldFGssXHNHtFYNlHgv-1610097542.jpg', 'nuotraukos/ikelimai/gNAkWXsmRCrRIICb9lsJfuZ2a-1610097542.jpg', 1, 3, '[\"Gradient Tool\",\"Shape \\/ Frame\",\"Artboard\"]', NULL, '[\"3D Map\",\"Blur Effects\",\"Text Effects\"]', NULL, 1, 1, 1, 5, 2, 'https://www.youtube.com/embed/XIMLoLxmTDw', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.', '[\"Fantazija\",\"Gamta\"]', 6, 23, '2021-01-15 14:37:25', 0, 0, '0000-00-00 00:00:00'),
(37, 3, 'Automative', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.<br>', '[\"JPEG\",\"PNG\"]', 1080, 720, 4, 1, 'nuotraukos/ikelimai/VjNJ3QvuEsNEIPiEWjeqjqyUR-1610096270.jpg', 'nuotraukos/ikelimai/xbAkse08g5zJJoXtUfzrEnYp2-1610096270.JPG', 'nuotraukos/ikelimai/2BTAhVSBA1UUTlDtYY7zKOwRK-1610096275.jpg', 'nuotraukos/ikelimai/RLSPKjZNtLLI0ggGpDIHtJVIN-1610096275.jpg', 1, 2, '[\"Camera RAW\",\"Shape \\/ Frame\",\"Text\",\"Alien Skin Software\"]', NULL, '[\"3D Map\",\"Text Effects\",\"Collage\"]', NULL, 1, 1, 1, 5, 2, 'https://www.youtube.com/embed/XIMLoLxmTDw', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.', '[\"Mašinos\",\"Architektūra\",\"Filmai\",\"Meilė\"]', 6, 14, '2021-01-15 14:37:25', 0, 0, '0000-00-00 00:00:00'),
(38, 3, 'Unsample', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.<br>', '[\"JPEG\"]', 1028, 720, 1, 0, 'nuotraukos/ikelimai/bpVVmPGI1rriBAWXn2cJ6JZ5G-1610097542.jpg', 'nuotraukos/ikelimai/LVyj8XQb0woNqy23kAPpm4Gwx-1610097542.jpg', 'nuotraukos/ikelimai/xeoT7i6ldFGssXHNHtFYNlHgv-1610097542.jpg', 'nuotraukos/ikelimai/gNAkWXsmRCrRIICb9lsJfuZ2a-1610097542.jpg', 1, 3, '[\"Gradient Tool\",\"Shape \\/ Frame\",\"Artboard\"]', NULL, '[\"3D Map\",\"Blur Effects\",\"Text Effects\"]', NULL, 1, 1, 1, 5, 2, 'https://www.youtube.com/embed/XIMLoLxmTDw', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.', '[\"Fantazija\",\"Gamta\"]', 6, 18, '2021-01-15 14:37:25', 1, 0, '0000-00-00 00:00:00'),
(39, 3, 'Automative', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.<br>', '[\"JPEG\",\"PNG\"]', 1080, 720, 4, 1, 'nuotraukos/ikelimai/VjNJ3QvuEsNEIPiEWjeqjqyUR-1610096270.jpg', 'nuotraukos/ikelimai/xbAkse08g5zJJoXtUfzrEnYp2-1610096270.JPG', 'nuotraukos/ikelimai/2BTAhVSBA1UUTlDtYY7zKOwRK-1610096275.jpg', 'nuotraukos/ikelimai/RLSPKjZNtLLI0ggGpDIHtJVIN-1610096275.jpg', 1, 2, '[\"Camera RAW\",\"Shape \\/ Frame\",\"Text\",\"Alien Skin Software\"]', NULL, '[\"3D Map\",\"Text Effects\",\"Collage\"]', NULL, 1, 1, 1, 5, 2, 'https://www.youtube.com/embed/XIMLoLxmTDw', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.', '[\"Mašinos\",\"Architektūra\",\"Filmai\",\"Meilė\"]', 6, 20, '2021-01-15 14:37:25', 0, 0, '0000-00-00 00:00:00'),
(40, 3, 'Unsample', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.<br>', '[\"JPEG\"]', 1028, 720, 1, 0, 'nuotraukos/ikelimai/bpVVmPGI1rriBAWXn2cJ6JZ5G-1610097542.jpg', 'nuotraukos/ikelimai/LVyj8XQb0woNqy23kAPpm4Gwx-1610097542.jpg', 'nuotraukos/ikelimai/xeoT7i6ldFGssXHNHtFYNlHgv-1610097542.jpg', 'nuotraukos/ikelimai/gNAkWXsmRCrRIICb9lsJfuZ2a-1610097542.jpg', 1, 3, '[\"Gradient Tool\",\"Shape \\/ Frame\",\"Artboard\"]', NULL, '[\"3D Map\",\"Blur Effects\",\"Text Effects\"]', NULL, 1, 1, 1, 5, 2, 'https://www.youtube.com/embed/XIMLoLxmTDw', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.', '[\"Fantazija\",\"Gamta\"]', 6, 26, '2021-01-15 14:37:25', 0, 0, '0000-00-00 00:00:00'),
(41, 3, 'Automative', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.<br>', '[\"JPEG\",\"PNG\"]', 1080, 720, 4, 1, 'nuotraukos/ikelimai/VjNJ3QvuEsNEIPiEWjeqjqyUR-1610096270.jpg', 'nuotraukos/ikelimai/xbAkse08g5zJJoXtUfzrEnYp2-1610096270.JPG', 'nuotraukos/ikelimai/2BTAhVSBA1UUTlDtYY7zKOwRK-1610096275.jpg', 'nuotraukos/ikelimai/RLSPKjZNtLLI0ggGpDIHtJVIN-1610096275.jpg', 1, 2, '[\"Camera RAW\",\"Shape \\/ Frame\",\"Text\",\"Alien Skin Software\"]', NULL, '[\"3D Map\",\"Text Effects\",\"Collage\"]', NULL, 1, 1, 1, 5, 2, 'https://www.youtube.com/embed/XIMLoLxmTDw', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.', '[\"Mašinos\",\"Architektūra\",\"Filmai\",\"Meilė\"]', 6, 15, '2021-01-15 14:37:25', 0, 0, '0000-00-00 00:00:00'),
(42, 3, 'Unsample', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.<br>', '[\"JPEG\"]', 1028, 720, 1, 0, 'nuotraukos/ikelimai/bpVVmPGI1rriBAWXn2cJ6JZ5G-1610097542.jpg', 'nuotraukos/ikelimai/LVyj8XQb0woNqy23kAPpm4Gwx-1610097542.jpg', 'nuotraukos/ikelimai/xeoT7i6ldFGssXHNHtFYNlHgv-1610097542.jpg', 'nuotraukos/ikelimai/gNAkWXsmRCrRIICb9lsJfuZ2a-1610097542.jpg', 1, 3, '[\"Gradient Tool\",\"Shape \\/ Frame\",\"Artboard\"]', NULL, '[\"3D Map\",\"Blur Effects\",\"Text Effects\"]', NULL, 1, 1, 1, 5, 2, 'https://www.youtube.com/embed/XIMLoLxmTDw', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.', '[\"Fantazija\",\"Gamta\"]', 6, 17, '2021-01-15 14:37:25', 0, 0, '0000-00-00 00:00:00'),
(43, 3, 'Automative', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.<br>', '[\"JPEG\",\"PNG\"]', 1080, 720, 4, 1, 'nuotraukos/ikelimai/VjNJ3QvuEsNEIPiEWjeqjqyUR-1610096270.jpg', 'nuotraukos/ikelimai/xbAkse08g5zJJoXtUfzrEnYp2-1610096270.JPG', 'nuotraukos/ikelimai/2BTAhVSBA1UUTlDtYY7zKOwRK-1610096275.jpg', 'nuotraukos/ikelimai/RLSPKjZNtLLI0ggGpDIHtJVIN-1610096275.jpg', 1, 2, '[\"Camera RAW\",\"Shape \\/ Frame\",\"Text\",\"Alien Skin Software\"]', NULL, '[\"3D Map\",\"Text Effects\",\"Collage\"]', NULL, 1, 1, 1, 5, 2, 'https://www.youtube.com/embed/XIMLoLxmTDw', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.', '[\"Mašinos\",\"Architektūra\",\"Filmai\",\"Meilė\"]', 6, 17, '2021-01-15 14:37:25', 0, 0, '0000-00-00 00:00:00'),
(44, 3, 'Unsample', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.<br>', '[\"JPEG\"]', 1028, 720, 1, 0, 'nuotraukos/ikelimai/bpVVmPGI1rriBAWXn2cJ6JZ5G-1610097542.jpg', 'nuotraukos/ikelimai/LVyj8XQb0woNqy23kAPpm4Gwx-1610097542.jpg', 'nuotraukos/ikelimai/xeoT7i6ldFGssXHNHtFYNlHgv-1610097542.jpg', 'nuotraukos/ikelimai/gNAkWXsmRCrRIICb9lsJfuZ2a-1610097542.jpg', 1, 3, '[\"Gradient Tool\",\"Shape \\/ Frame\",\"Artboard\"]', NULL, '[\"3D Map\",\"Blur Effects\",\"Text Effects\"]', NULL, 1, 1, 1, 5, 2, 'https://www.youtube.com/embed/XIMLoLxmTDw', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.', '[\"Fantazija\",\"Gamta\"]', 6, 15, '2021-01-15 14:37:25', 0, 0, '0000-00-00 00:00:00'),
(45, 3, 'Automative', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.<br>', '[\"JPEG\",\"PNG\"]', 1080, 720, 4, 1, 'nuotraukos/ikelimai/VjNJ3QvuEsNEIPiEWjeqjqyUR-1610096270.jpg', 'nuotraukos/ikelimai/xbAkse08g5zJJoXtUfzrEnYp2-1610096270.JPG', 'nuotraukos/ikelimai/2BTAhVSBA1UUTlDtYY7zKOwRK-1610096275.jpg', 'nuotraukos/ikelimai/RLSPKjZNtLLI0ggGpDIHtJVIN-1610096275.jpg', 1, 2, '[\"Camera RAW\",\"Shape \\/ Frame\",\"Text\",\"Alien Skin Software\"]', NULL, '[\"3D Map\",\"Text Effects\",\"Collage\"]', NULL, 1, 1, 1, 5, 2, 'https://www.youtube.com/embed/XIMLoLxmTDw', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.', '[\"Mašinos\",\"Architektūra\",\"Filmai\",\"Meilė\"]', 6, 24, '2021-01-15 14:37:25', 0, 0, '0000-00-00 00:00:00'),
(46, 3, 'Unsample', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.<br>', '[\"JPEG\"]', 1028, 720, 1, 0, 'nuotraukos/ikelimai/bpVVmPGI1rriBAWXn2cJ6JZ5G-1610097542.jpg', 'nuotraukos/ikelimai/LVyj8XQb0woNqy23kAPpm4Gwx-1610097542.jpg', 'nuotraukos/ikelimai/xeoT7i6ldFGssXHNHtFYNlHgv-1610097542.jpg', 'nuotraukos/ikelimai/gNAkWXsmRCrRIICb9lsJfuZ2a-1610097542.jpg', 1, 3, '[\"Gradient Tool\",\"Shape \\/ Frame\",\"Artboard\"]', NULL, '[\"3D Map\",\"Blur Effects\",\"Text Effects\"]', NULL, 1, 1, 1, 5, 2, 'https://www.youtube.com/embed/XIMLoLxmTDw', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.', '[\"Fantazija\",\"Gamta\"]', 6, 15, '2021-01-15 14:37:25', 0, 0, '0000-00-00 00:00:00'),
(47, 3, 'Automative', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.<br>', '[\"JPEG\",\"PNG\"]', 1080, 720, 4, 1, 'nuotraukos/ikelimai/VjNJ3QvuEsNEIPiEWjeqjqyUR-1610096270.jpg', 'nuotraukos/ikelimai/xbAkse08g5zJJoXtUfzrEnYp2-1610096270.JPG', 'nuotraukos/ikelimai/2BTAhVSBA1UUTlDtYY7zKOwRK-1610096275.jpg', 'nuotraukos/ikelimai/RLSPKjZNtLLI0ggGpDIHtJVIN-1610096275.jpg', 1, 2, '[\"Camera RAW\",\"Shape \\/ Frame\",\"Text\",\"Alien Skin Software\"]', NULL, '[\"3D Map\",\"Text Effects\",\"Collage\"]', NULL, 1, 1, 1, 5, 2, 'https://www.youtube.com/embed/XIMLoLxmTDw', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.', '[\"Mašinos\",\"Architektūra\",\"Filmai\",\"Meilė\"]', 6, 30, '2021-01-15 14:37:25', 0, 0, '0000-00-00 00:00:00'),
(48, 3, 'Unsample', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.<br>', '[\"JPEG\"]', 1028, 720, 1, 0, 'nuotraukos/ikelimai/bpVVmPGI1rriBAWXn2cJ6JZ5G-1610097542.jpg', 'nuotraukos/ikelimai/LVyj8XQb0woNqy23kAPpm4Gwx-1610097542.jpg', 'nuotraukos/ikelimai/xeoT7i6ldFGssXHNHtFYNlHgv-1610097542.jpg', 'nuotraukos/ikelimai/gNAkWXsmRCrRIICb9lsJfuZ2a-1610097542.jpg', 1, 3, '[\"Gradient Tool\",\"Shape \\/ Frame\",\"Artboard\"]', NULL, '[\"3D Map\",\"Blur Effects\",\"Text Effects\"]', NULL, 1, 1, 1, 5, 2, 'https://www.youtube.com/embed/XIMLoLxmTDw', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.', '[\"Fantazija\",\"Gamta\"]', 6, 16, '2021-01-15 14:37:25', 0, 0, '0000-00-00 00:00:00'),
(49, 3, 'Automative', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.<br>', '[\"JPEG\",\"PNG\"]', 1080, 720, 4, 1, 'nuotraukos/ikelimai/VjNJ3QvuEsNEIPiEWjeqjqyUR-1610096270.jpg', 'nuotraukos/ikelimai/xbAkse08g5zJJoXtUfzrEnYp2-1610096270.JPG', 'nuotraukos/ikelimai/2BTAhVSBA1UUTlDtYY7zKOwRK-1610096275.jpg', 'nuotraukos/ikelimai/RLSPKjZNtLLI0ggGpDIHtJVIN-1610096275.jpg', 1, 2, '[\"Camera RAW\",\"Shape \\/ Frame\",\"Text\",\"Alien Skin Software\"]', NULL, '[\"3D Map\",\"Text Effects\",\"Collage\"]', NULL, 1, 1, 1, 5, 2, 'https://www.youtube.com/embed/XIMLoLxmTDw', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.', '[\"Mašinos\",\"Architektūra\",\"Filmai\",\"Meilė\"]', 6, 17, '2021-01-15 14:37:25', 0, 0, '0000-00-00 00:00:00'),
(50, 3, 'Unsample', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.<br>', '[\"JPEG\"]', 1028, 720, 1, 0, 'nuotraukos/ikelimai/bpVVmPGI1rriBAWXn2cJ6JZ5G-1610097542.jpg', 'nuotraukos/ikelimai/LVyj8XQb0woNqy23kAPpm4Gwx-1610097542.jpg', 'nuotraukos/ikelimai/xeoT7i6ldFGssXHNHtFYNlHgv-1610097542.jpg', 'nuotraukos/ikelimai/gNAkWXsmRCrRIICb9lsJfuZ2a-1610097542.jpg', 1, 3, '[\"Gradient Tool\",\"Shape \\/ Frame\",\"Artboard\"]', NULL, '[\"3D Map\",\"Blur Effects\",\"Text Effects\"]', NULL, 1, 1, 1, 5, 2, 'https://www.youtube.com/embed/XIMLoLxmTDw', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.', '[\"Fantazija\",\"Gamta\"]', 6, 15, '2021-01-15 14:37:25', 0, 0, '0000-00-00 00:00:00'),
(51, 3, 'Automative', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.<br>', '[\"JPEG\",\"PNG\"]', 1080, 720, 4, 1, 'nuotraukos/ikelimai/VjNJ3QvuEsNEIPiEWjeqjqyUR-1610096270.jpg', 'nuotraukos/ikelimai/xbAkse08g5zJJoXtUfzrEnYp2-1610096270.JPG', 'nuotraukos/ikelimai/2BTAhVSBA1UUTlDtYY7zKOwRK-1610096275.jpg', 'nuotraukos/ikelimai/RLSPKjZNtLLI0ggGpDIHtJVIN-1610096275.jpg', 1, 2, '[\"Camera RAW\",\"Shape \\/ Frame\",\"Text\",\"Alien Skin Software\"]', NULL, '[\"3D Map\",\"Text Effects\",\"Collage\"]', NULL, 1, 1, 1, 5, 2, 'https://www.youtube.com/embed/XIMLoLxmTDw', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.', '[\"Mašinos\",\"Architektūra\",\"Filmai\",\"Meilė\"]', 6, 19, '2021-01-15 14:37:25', 0, 0, '0000-00-00 00:00:00'),
(52, 3, 'Unsample', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.<br>', '[\"JPEG\"]', 1028, 720, 1, 0, 'nuotraukos/ikelimai/bpVVmPGI1rriBAWXn2cJ6JZ5G-1610097542.jpg', 'nuotraukos/ikelimai/LVyj8XQb0woNqy23kAPpm4Gwx-1610097542.jpg', 'nuotraukos/ikelimai/xeoT7i6ldFGssXHNHtFYNlHgv-1610097542.jpg', 'nuotraukos/ikelimai/gNAkWXsmRCrRIICb9lsJfuZ2a-1610097542.jpg', 1, 3, '[\"Gradient Tool\",\"Shape \\/ Frame\",\"Artboard\"]', NULL, '[\"3D Map\",\"Blur Effects\",\"Text Effects\"]', NULL, 1, 1, 1, 5, 2, 'https://www.youtube.com/embed/XIMLoLxmTDw', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.', '[\"Fantazija\",\"Gamta\"]', 6, 28, '2021-01-15 14:37:25', 0, 0, '0000-00-00 00:00:00'),
(53, 3, 'Automative', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.<br>', '[\"JPEG\",\"PNG\"]', 1080, 720, 4, 1, 'nuotraukos/ikelimai/VjNJ3QvuEsNEIPiEWjeqjqyUR-1610096270.jpg', 'nuotraukos/ikelimai/xbAkse08g5zJJoXtUfzrEnYp2-1610096270.JPG', 'nuotraukos/ikelimai/2BTAhVSBA1UUTlDtYY7zKOwRK-1610096275.jpg', 'nuotraukos/ikelimai/RLSPKjZNtLLI0ggGpDIHtJVIN-1610096275.jpg', 1, 2, '[\"Camera RAW\",\"Shape \\/ Frame\",\"Text\",\"Alien Skin Software\"]', NULL, '[\"3D Map\",\"Text Effects\",\"Collage\"]', NULL, 1, 1, 1, 5, 2, 'https://www.youtube.com/embed/XIMLoLxmTDw', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.', '[\"Mašinos\",\"Architektūra\",\"Filmai\",\"Meilė\"]', 6, 20, '2021-01-15 14:37:25', 0, 0, '0000-00-00 00:00:00'),
(54, 3, 'Unsample', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.<br>', '[\"JPEG\"]', 1028, 720, 1, 0, 'nuotraukos/ikelimai/bpVVmPGI1rriBAWXn2cJ6JZ5G-1610097542.jpg', 'nuotraukos/ikelimai/LVyj8XQb0woNqy23kAPpm4Gwx-1610097542.jpg', 'nuotraukos/ikelimai/xeoT7i6ldFGssXHNHtFYNlHgv-1610097542.jpg', 'nuotraukos/ikelimai/gNAkWXsmRCrRIICb9lsJfuZ2a-1610097542.jpg', 1, 3, '[\"Gradient Tool\",\"Shape \\/ Frame\",\"Artboard\"]', NULL, '[\"3D Map\",\"Blur Effects\",\"Text Effects\"]', NULL, 1, 1, 1, 5, 2, 'https://www.youtube.com/embed/XIMLoLxmTDw', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.', '[\"Fantazija\",\"Gamta\"]', 6, 17, '2021-01-15 14:37:25', 0, 0, '0000-00-00 00:00:00'),
(55, 3, 'Automative', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.<br>', '[\"JPEG\",\"PNG\"]', 1080, 720, 4, 1, 'nuotraukos/ikelimai/VjNJ3QvuEsNEIPiEWjeqjqyUR-1610096270.jpg', 'nuotraukos/ikelimai/xbAkse08g5zJJoXtUfzrEnYp2-1610096270.JPG', 'nuotraukos/ikelimai/2BTAhVSBA1UUTlDtYY7zKOwRK-1610096275.jpg', 'nuotraukos/ikelimai/RLSPKjZNtLLI0ggGpDIHtJVIN-1610096275.jpg', 1, 2, '[\"Camera RAW\",\"Shape \\/ Frame\",\"Text\",\"Alien Skin Software\"]', NULL, '[\"3D Map\",\"Text Effects\",\"Collage\"]', NULL, 1, 1, 1, 5, 2, 'https://www.youtube.com/embed/XIMLoLxmTDw', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.', '[\"Mašinos\",\"Architektūra\",\"Filmai\",\"Meilė\"]', 6, 14, '2021-01-15 14:37:25', 0, 0, '0000-00-00 00:00:00'),
(56, 3, 'Unsample', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.<br>', '[\"JPEG\"]', 1028, 720, 1, 0, 'nuotraukos/ikelimai/bpVVmPGI1rriBAWXn2cJ6JZ5G-1610097542.jpg', 'nuotraukos/ikelimai/LVyj8XQb0woNqy23kAPpm4Gwx-1610097542.jpg', 'nuotraukos/ikelimai/xeoT7i6ldFGssXHNHtFYNlHgv-1610097542.jpg', 'nuotraukos/ikelimai/gNAkWXsmRCrRIICb9lsJfuZ2a-1610097542.jpg', 1, 3, '[\"Gradient Tool\",\"Shape \\/ Frame\",\"Artboard\"]', NULL, '[\"3D Map\",\"Blur Effects\",\"Text Effects\"]', NULL, 1, 1, 1, 5, 2, 'https://www.youtube.com/embed/XIMLoLxmTDw', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.', '[\"Fantazija\",\"Gamta\"]', 6, 14, '2021-01-15 14:37:25', 0, 0, '0000-00-00 00:00:00'),
(57, 3, 'Automative', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.<br>', '[\"JPEG\",\"PNG\"]', 1080, 720, 4, 1, 'nuotraukos/ikelimai/VjNJ3QvuEsNEIPiEWjeqjqyUR-1610096270.jpg', 'nuotraukos/ikelimai/xbAkse08g5zJJoXtUfzrEnYp2-1610096270.JPG', 'nuotraukos/ikelimai/2BTAhVSBA1UUTlDtYY7zKOwRK-1610096275.jpg', 'nuotraukos/ikelimai/RLSPKjZNtLLI0ggGpDIHtJVIN-1610096275.jpg', 1, 2, '[\"Camera RAW\",\"Shape \\/ Frame\",\"Text\",\"Alien Skin Software\"]', NULL, '[\"3D Map\",\"Text Effects\",\"Collage\"]', NULL, 1, 1, 1, 5, 2, 'https://www.youtube.com/embed/XIMLoLxmTDw', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.', '[\"Mašinos\",\"Architektūra\",\"Filmai\",\"Meilė\"]', 6, 14, '2021-01-15 14:37:25', 0, 0, '0000-00-00 00:00:00');
INSERT INTO `nuotraukos` (`id`, `sritis`, `pavadinimas`, `aprasymas`, `formatai`, `plotis`, `aukstis`, `dpi`, `spalvos`, `PagrindineNuotrauka`, `AntraNuotrauka`, `TreciaNuotrauka`, `KetvirtaNuotrauka`, `programa`, `aplinka`, `IrankiaiIskiepiai`, `PapildomiIrankiai`, `FiltraiEfektai`, `PapildomiEfektai`, `DarboPriemone`, `DizainasKurtas`, `Paskirtis`, `DarboLaikas`, `Sudetingumas`, `VaizdoPamoka`, `Pastabos`, `Raktazodziai`, `Autorius`, `Perziuros`, `Publikuota`, `patinka`, `komentarai`, `Redaguota`) VALUES
(58, 3, 'Unsample', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.<br>', '[\"JPEG\"]', 1028, 720, 1, 0, 'nuotraukos/ikelimai/bpVVmPGI1rriBAWXn2cJ6JZ5G-1610097542.jpg', 'nuotraukos/ikelimai/LVyj8XQb0woNqy23kAPpm4Gwx-1610097542.jpg', 'nuotraukos/ikelimai/xeoT7i6ldFGssXHNHtFYNlHgv-1610097542.jpg', 'nuotraukos/ikelimai/gNAkWXsmRCrRIICb9lsJfuZ2a-1610097542.jpg', 1, 3, '[\"Gradient Tool\",\"Shape \\/ Frame\",\"Artboard\"]', NULL, '[\"3D Map\",\"Blur Effects\",\"Text Effects\"]', NULL, 1, 1, 1, 5, 2, 'https://www.youtube.com/embed/XIMLoLxmTDw', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.', '[\"Fantazija\",\"Gamta\"]', 6, 14, '2021-01-15 14:37:25', 0, 0, '0000-00-00 00:00:00'),
(59, 3, 'Automative', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.<br>', '[\"JPEG\",\"PNG\"]', 1080, 720, 4, 1, 'nuotraukos/ikelimai/VjNJ3QvuEsNEIPiEWjeqjqyUR-1610096270.jpg', 'nuotraukos/ikelimai/xbAkse08g5zJJoXtUfzrEnYp2-1610096270.JPG', 'nuotraukos/ikelimai/2BTAhVSBA1UUTlDtYY7zKOwRK-1610096275.jpg', 'nuotraukos/ikelimai/RLSPKjZNtLLI0ggGpDIHtJVIN-1610096275.jpg', 1, 2, '[\"Camera RAW\",\"Shape \\/ Frame\",\"Text\",\"Alien Skin Software\"]', NULL, '[\"3D Map\",\"Text Effects\",\"Collage\"]', NULL, 1, 1, 1, 5, 2, 'https://www.youtube.com/embed/XIMLoLxmTDw', 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.', '[\"Mašinos\",\"Architektūra\",\"Filmai\",\"Meilė\"]', 6, 15, '2021-01-15 14:37:25', 0, 0, '0000-00-00 00:00:00'),
(60, 3, 'Testas 2021 Cukrus', '<h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-family: DauphinPlain; font-size: 24px; line-height: 24px; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);\">Kas yra Lorem Ipsum?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"><strong style=\"margin: 0px; padding: 0px;\">Lorem ipsum</strong>&nbsp;- tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.</p>', '[\"JPEG\",\"GIF\"]', NULL, NULL, 3, 0, 'nuotraukos/ikelimai/0n53uSN4OYQAu8liKTRvFamf3-1611925905.png', 'nuotraukos/ikelimai/W4sEeeXUF3Gevwv4sDb3Wa4qK-1611925905.png', 'nuotraukos/ikelimai/DfsLqWQF4CxFm3JRph5lcFEDQ-1611925905.jpg', 'nuotraukos/ikelimai/Th98w7xdtNEU5LX287keSOEMb-1611925905.png', 1, 2, '[\"Camera RAW\",\"Shape \\/ Frame\",\"Neat Image\"]', NULL, '[\"3D Map\",\"Blur Effects\"]', NULL, 2, 1, 2, NULL, 2, 'https://www.youtube.com/embed/CWqrdzNoBKA', 'Grafika (gr. grapho – „rašau, piešiu“) – vaizduojamosios dailės šaka, kurios meninio vaizdo pagrindą sudaro piešinys. Svarbiausios meninio vaizdo kūrimo priemonės yra kontūrinė linija, juodų ir baltų dėmių deriniai, štrichas ir medžiaga (dažniausiai baltas ar spalvotas popierius), kurioje piešiama ar spausdinama.', '[\"Mašinos\",\"Mėnulis\",\"Saulė\",\"Obuolys\",\"mama\",\"liuksas\"]', 9, 240, '2021-01-29 13:11:45', 0, 0, '2021-04-08 17:45:26'),
(61, 3, 'HEyHEyHEyHEyHEyHE2222222HEyHEyHEyHEyHEyHE2222222HEyHEyHEyHEyHEyHE2222222HEyHEyHEyHEyHEyHE2222222HEyH', 'textastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextas<b>textastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastext</b>astextastextastextastextastextastextastextastextastextastextastextastextastextas<font face=\"impact\">textastextastextastextastextastextastextastextastextastextastextastextastextastextastextastex</font>tastextastextastextastextastextastextastextastextastextastex<i>tastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastexta</i>stextastextast<font face=\"verdana\">extastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextast</font>extastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextast<u>extastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextaste</u>xtastextastextastextastextastextastextastextastextastextastextast<img src=\"http://gph.is/2eH6YIH\" alt=\"wow\" align=\"left\">extastextastextastextastextastextastextastextastextastextastextastextastextas<font face=\"verdana\">textastextastextastextastextastextastextastextastextastextastextastextastextastextastext</font><img src=\"https://images.app.goo.gl/ZHtdhCVfDv3qbTmy5\" alt=\"wow\" align=\"left\"><font face=\"verdana\">astextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextast<font size=\"1\">extastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextaste</font>xtastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastext</font><img src=\"https://i.imgur.com/qL9H8yh.jpg\" width=\"446\"><font face=\"verdana\">astextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastexta</font>stextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastexta<font size=\"6\">stextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextast</font>extastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextastextas', '[\"JPEG\",\"PNG\"]', 1920, 1080, 4, 3, 'nuotraukos/ikelimai/LzolAojIrA6OoBnX3naB0rCje-1612276519.jpg', 'nuotraukos/ikelimai/Iz7R2SFLmrg4P193DruMDZzjQ-1616797536.jpg', 'nuotraukos/ikelimai/ewqIoFDHTEmTAu6x8Geb4pThd-1616797541.png', 'nuotraukos/ikelimai/cxqm9KoJBfP81Ce9AZPNC1GFK-1616797541.jpg', 1, 0, '[\"Camera RAW\",\"Gradient Tool\",\"Shape \\/ Frame\",\"Text\",\"Artboard\",\"Alien Skin Software\",\"Alpha Plug-ins\",\"Andromeda Software\",\"Auto FX Software\",\"Avenza\",\"Corel\",\"Digimarc\",\"Digital Anarchy\",\"Digital Film Tools\",\"DXO\",\"Extensis\",\"Flaming Pear Software\",\"fnord\",\"Google Nik Collection\",\"HDRsoft\",\"Imagenomic\",\"Monotype\",\"Mister Retro\",\"Neat Image\",\"OnOne\",\"Portrait Pro\",\"ProDigital Software\",\"Topaz Labs\",\"Topaz Rad\"]', NULL, '[\"Lighting Effects\",\"3D Map\",\"Blur Effects\",\"Text Effects\",\"Color Effects\",\"Collage\",\"Border \\/ Frame Effects\",\"Blending Effects\",\"Reflection Effects\",\"HDR Effects\",\"Artistic\",\"Blur\",\"Brush Strokes\",\"Distort\",\"Noise\",\"Pixelate\",\"Render\",\"Sharpen\",\"Sketch\",\"Stylize\",\"Texture\",\"Video\",\"Digimarc\",\"Vanishing Point\"]', NULL, 2, 1, 1, NULL, 3, 'https://www.youtube.com/embed/OpFA9Gm2QjI', 'pastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabafaffasospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospasta\r\nbospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabospastabos', '[\"Architektūra\",\"Fotografija\",\"Mašinos\",\"Miestai\",\"mano raktažodis\",\"hometown\"]', 14, 1537, '2021-02-02 14:35:19', 1, 28, '2021-04-07 17:45:53'),
(62, 2, 'Tattoo dizainas be šablono', '<font size=\"6\" face=\"comic sans ms\">Va taip va ir va kaip va, ot tai ir va kaip</font>', '[\"JPEG\",\"PNG\",\"RAW\"]', 2334, 1200, 2, 4, 'nuotraukos/ikelimai/uHqMlk3QxpncxezTuLLwvawyT-1612301676.PNG', 'nuotraukos/ikelimai/AQQi94n536r3lF6iYb6oIpUgU-1612301676.jpg', 'nuotraukos/ikelimai/0GpeK4wFWcC84TDH77oBSjgMp-1612301676.jpg', 'nuotraukos/ikelimai/SYpbRQaZfrFlaRmbXdEt8YRdP-1612301676.jpg', 3, 0, '[]', NULL, '[\"Lighting Effects\",\"Blur Effects\"]', NULL, 6, 0, 1, NULL, 3, NULL, '<br>', '[\"Animacija\",\"Tattoo\",\"Fantazija\"]', 17, 205, '2021-02-02 21:34:36', 0, 2, '0000-00-00 00:00:00'),
(63, 5, 'Testas 2021-03-6 Gėlės', 'Gėlės yra gražios', '[\"PNG\",\"GIF\"]', NULL, NULL, 3, 0, 'nuotraukos/ikelimai/KQY6BfStQWrIcX7TGIi4irqwJ-1615050971.jpg', 'nuotraukos/ikelimai/KXLBZXBn8vXtp0E0sf6zwh1kR-1615050971.png', 'nuotraukos/ikelimai/vSXdqUw6wXikq967OIFElIhdE-1615050971.jpg', 'nuotraukos/ikelimai/fYcyc18xT2LdOFzRCqkoCwrnP-1615050971.jpg', 1, 4, '[\"Avenza\",\"Digimarc\"]', '[\"Rainbow Effect\"]', '[\"Blur Effects\",\"Border \\/ Frame Effects\"]', '[\"Sea effect\"]', 0, 1, 1, NULL, 3, 'https://www.youtube.com/embed/ES9VYq_zHOk', 'Grįžta vaikai namo', '[\"Fantazija\",\"Gamta\",\"Kosmosas\",\"Bičių\",\"Avilys\",\"Ąžuolas\",\"mama\"]', 9, 249, '2021-03-06 17:16:15', 1, 5, '2021-04-14 19:16:06'),
(64, 3, 'Limitas per visa šita elute iki antraščių', 'assefsf', '[\"JPEG\",\"PNG\",\"GIF\",\"SVG\",\"EPS\",\"PSD\",\"TIFF\",\"RAW\",\"AI\",\"CDR\"]', 1920, 1080, 2, 1, 'nuotraukos/ikelimai/xFYqu3XxQI6IKGn8GgleA5bdm-1615963633.jpg', NULL, NULL, NULL, 1, 0, '[\"Camera RAW\",\"Gradient Tool\",\"Shape \\/ Frame\",\"Text\",\"Artboard\",\"Alien Skin Software\",\"Alpha Plug-ins\",\"Andromeda Software\",\"Auto FX Software\",\"Avenza\",\"Corel\",\"Digimarc\",\"Digital Anarchy\",\"Digital Film Tools\",\"DXO\",\"Extensis\",\"Flaming Pear Software\",\"fnord\",\"Google Nik Collection\",\"HDRsoft\",\"Imagenomic\",\"Monotype\",\"Mister Retro\",\"Neat Image\",\"OnOne\",\"Portrait Pro\",\"ProDigital Software\",\"Topaz Labs\",\"Topaz Rad\"]', NULL, '[\"Lighting Effects\",\"3D Map\",\"Blur Effects\",\"Text Effects\",\"Color Effects\",\"Collage\",\"Border \\/ Frame Effects\",\"Blending Effects\",\"Reflection Effects\",\"Artistic\",\"Blur\",\"Brush Strokes\",\"Distort\",\"Noise\",\"Pixelate\",\"Render\",\"Sharpen\",\"Sketch\",\"Stylize\",\"Texture\",\"Video\",\"Digimarc\",\"Vanishing Point\"]', NULL, 2, 2, 2, NULL, 2, 'https://www.youtube.com/embed/tk2OwXJepKA', '<br>dsf', '[\"3D\",\"Architektūra\",\"Animacija\",\"Filmai\",\"gėlės\",\"pasaulis\",\"toks tiks???\",\"labas\"]', 14, 181, '2021-03-14 06:38:34', 1, 0, '2021-04-13 17:48:16'),
(65, 12, 'pheonix', '1', '[\"JPEG\"]', NULL, NULL, 3, 0, 'nuotraukos/ikelimai/KloJK2IXpfq0AATWRjXk52gYZ-1615705393.png', NULL, NULL, NULL, 1, 0, '[]', NULL, '[]', NULL, 0, 0, 2, NULL, 1, NULL, '<br>', '[\"Fotografija\",\"Meilė\",\"asfasfafasfa\"]', 16, 199, '2021-03-14 07:03:13', 2, 1, '0000-00-00 00:00:00'),
(68, 1, 'dgsadasg', 'agsddsagdfewhewyhgewryewrgewrgefddddddddsagsddsagdfewhewyhgewryewrgewrgefddddddddsagsddsagdfewhewyhgewryewrgewrgefddddddddsagsddsagdfewhewyhgewryewrgewrgefddddddddsagsddsagdfewhewyhgewryewrgewrgefddddddddsagsddsagdfewhewyhgewryewrgewrgefddddddddsagsddsagdfewhewyhgewryewrgewrgefddddddddsagsddsagdfewhewyhgewryewrgewrgefddddddddsagsddsagdfewhewyhgewryewrgewrgefddddddddsagsddsagdfewhewyhgewryewrgewrgefddddddddsagsddsagdfewhewyhgewryewrgewrgefddddddddsagsddsagdfewhewyhgewryewrgewrgefddddddddsagsddsagdfewhewyhgewryewrgewrgefddddddddsagsddsagdfewhewyhgewryewrgewrgefddddddddsagsddsagdfewhewyhgewryewrgewrgefddddddddsagsddsagdfewhewyhgewryewrgewrgefddddddddsagsddsagdfewhewyhgewryewrgewrgefddddddddsagsddsagdfewhewyhgewryewrgewrgefddddddddsagsddsagdfewhewyhgewryewrgewrgefddddddddsagsddsagdfewhewyhgewryewrgewrgefddddddddsagsddsagdfewhewyhgewryewrgewrgefddddddddsagsddsagdfewhewyhgewryewrgewrgefddddddddsagsddsagdfewhewyhgewryewrgewrgefddddddddsagsddsagdfewhewyhgewryewrgewrgefddddddddsagsddsagdfewhewyhgewryewrgewrgefddddddddsagsddsagdfewhewyhgewryewrgewrgefddddddddsagsddsagdfewhewyhgewryewrgewrgefddddddddsagsddsagdfewhewyhgewryewrgewrgefdddddddds', '[\"JPEG\",\"SVG\"]', 1366, 720, 3, 2, 'nuotraukos/ikelimai/gvHhbOEYY9e4dVRTwJYWfBVl3-1618420955.jpg', 'nuotraukos/ikelimai/nO0o26E2iKisdhhvBISsfUxBq-1618420913.jpg', 'nuotraukos/ikelimai/zag4cxK54xIq8EQ7HjJuDnSdh-1618420921.jpg', 'nuotraukos/ikelimai/hLcqCOYRf1cvPWo4duXBotoH0-1618420259.jpg', 1, 2, '[\"Camera RAW\",\"Shape \\/ Frame\",\"Alien Skin Software\",\"Andromeda Software\"]', '[\"Testas naujas\"]', '[\"3D Map\",\"Color Effects\",\"HDR Effects\"]', '[\"Naujas \\u012fvedimas\"]', 1, 2, 1, NULL, 2, 'https://www.youtube.com/embed/tk2OwXJepKA', 'gdsgsgddgwkjjigwfweriutjriowjtjoiwtwetqwqe', '[\"Filmai\",\"dagdaggdsa\",\"hfdhsfdhfhaasgh\"]', 1, 39, '2021-04-14 17:00:32', 0, 0, '2021-04-16 22:05:17'),
(69, 1, 'Cyberpunk 4077', '<h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-family: DauphinPlain; font-size: 24px; line-height: 24px; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);\">Kas yra Lorem Ipsum?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"><strong style=\"margin: 0px; padding: 0px;\">Lorem ipsum</strong>&nbsp;- tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.</p>', '[\"GIF\",\"SVG\"]', NULL, NULL, 3, 0, 'nuotraukos/ikelimai/lCA0bd3fE3wEcgEow4on4Po0W-1618421245.jpg', 'nuotraukos/ikelimai/H58dbPA6KlJFVwRtZgGE5jjSc-1618421245.jpg', 'nuotraukos/ikelimai/Gpp1Z0cNvdBDBxjJhCJbJ9jJq-1618421245.jpg', 'nuotraukos/ikelimai/mGP6Hs64kRZVuvsqzVjzbqgoD-1618421245.jpg', 1, 1, '[\"Artboard\",\"Alien Skin Software\"]', '[\"Nauajs \\u012fskiepis\"]', '[\"3D Map\",\"Text Effects\"]', '[\"Naujas efektas\"]', 1, 1, 1, NULL, 3, 'https://www.youtube.com/embed/xYLH8lHFs6A', 'Test', '[\"fishrer\",\"best\",\"songs\",\"4ever\"]', 9, 44, '2021-04-14 17:05:00', 0, 0, '2021-04-14 21:19:56'),
(70, 12, 'WAR IN TOWN', '<b><span style=\"color: rgb(64, 64, 64); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 15.2px; background-color: rgb(255, 255, 255);\">The updated version of&nbsp;</span><em style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-size: 15.2px; vertical-align: baseline; background: rgb(255, 255, 255); color: rgb(64, 64, 64); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Enlisted</em></b><span style=\"color: rgb(64, 64, 64); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 15.2px; background-color: rgb(255, 255, 255);\">&nbsp;features new missions, weapons and gear that were not seen during the Closed Beta Test. For example, the new Fortified District map in the Battle for Moscow campaign is a frozen battlefield, where the attacking side crosses the river to storm a massive fortification under dynamically changing weather conditions. The game progression system has also been drastically changed, and the Battle Pass is now the main way of getting new soldiers and equipment. The first Battle Pass season began on April 8th and will last for 75 days. The most interesting rewards are the rare collectible weapons: Berdan No.2 and Gewehr 1888 rifles, Schmeisser MK36 III SMG and Springfield M1903 semi-automatic carbine with Pedersen device.</span><br>', '[\"AI\"]', 1920, 768, 4, 2, 'nuotraukos/ikelimai/ChTUaI5hJthAB3zKIm3AFA8id-1618488710.jpg', 'nuotraukos/ikelimai/mj7zXhAek5vjroRbFdPKtF4N7-1618488710.jpg', 'nuotraukos/ikelimai/SZVGWpr3kdmMnksAPLBevchw4-1618488710.jpg', 'nuotraukos/ikelimai/0cq7awWD2CeosOC4JBSqaZ8G2-1618488710.png', 1, 2, '[\"Gradient Tool\"]', '[\"War \\u012fskiepis\"]', '[\"3D Map\",\"Text Effects\"]', '[\"War efektas\"]', 2, 1, 1, NULL, 3, 'https://www.youtube.com/embed/OQ4eL8ey_X0', 'Enlisted is now available in open beta on PC, PlayStation 5, Xbox Series X and Xbox Series S.', '[\"Siaubas\",\"karas\",\"war\",\"warzone\",\"cod\",\"enlisted\"]', 36, 17, '2021-04-15 12:11:50', 0, 0, '2021-04-15 15:17:22'),
(71, 3, 'Magic', '<div style=\"text-align: center;\">filtrai ir efektaifiltrai ir efektaifiltrai ir efektaifiltrai ir efektaifiltrai ir efektaifiltrai ir efektaifiltrai ir efektaifiltrai ir efektaifiltrai ir efektaifiltrai ir efektaifiltrai ir efektaifiltrai ir efektaifiltrai ir efektaifiltrai ir efektaifiltrai ir efektaifiltrai ir efektaifiltrai ir efektaifiltrai ir efektaifiltrai ir efektaifiltrai ir efektaifiltrai ir efektaifiltrai ir efektaifiltrai ir efektai</div><div style=\"text-align: left;\">filtrai ir efektaifiltrai ir efektaifiltrai ir efektaifiltrai ir efektaifiltrai ir efektaifiltrai ir efektaifiltrai ir efektaifiltrai ir efektaifiltrai ir efektaifiltrai ir efektaifiltrai ir efektai<br></div><div style=\"text-align: right;\">filtrai ir efektaifiltrai ir efektaifiltrai ir efektaifiltrai ir efektaifiltrai ir efektaifiltrai ir efektaifiltrai ir efektaifiltrai ir efektaifiltrai ir efektaifiltrai ir efektaifiltrai ir efektaifiltrai ir efektaifiltrai ir efektaifiltrai ir efektai<br></div><div style=\"text-align: justify;\"><span style=\"text-align: left;\">filtrai ir efektaifiltrai ir efektaifiltrai ir efektaifiltrai ir efektaifiltrai ir efektaifiltrai ir efektaifiltrai ir efektaifiltrai ir efektaifiltrai ir efektaifiltrai ir efektaifiltrai ir efektaifiltrai ir efektaifiltrai ir efektaifiltrai ir efektai]</span><br></div><div style=\"text-align: justify;\"><span style=\"text-align: left; background-color: rgb(102, 255, 204);\"><br></span></div><div style=\"text-align: justify;\"><span style=\"text-align: left; background-color: rgb(102, 255, 204);\">filtrai ir efektaifiltrai ir efektaifiltrai ir efektaifiltrai ir efektaifiltrai ir efektaifiltrai ir efektaifiltrai ir efektaifiltrai ir efektaifiltrai ir efektaifiltrai ir efektaifiltrai ir efektaifiltrai ir efektaifiltrai ir efektaifiltrai ir efektai</span><span style=\"text-align: left;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"text-align: left;\">filtrai ir efektaifiltrai ir efektaifiltrai ir efektaifiltrai ir efektaifiltrai ir efektaifiltrai ir efektaifiltrai ir efektaifiltrai ir efektaifiltrai ir efektaifiltrai ir efektaifiltrai ir efektaifiltrai <font color=\"#ff0033\">ir efektaifiltrai ir efektaifiltrai ir efektai</font></span><span style=\"text-align: left; background-color: rgb(102, 255, 204);\"><br></span></div><div style=\"text-align: justify;\"><span style=\"text-align: left;\"><font color=\"#ff0033\"><br></font></span></div>', '[\"JPEG\",\"PNG\",\"AI\"]', 1920, 1080, 4, 0, 'nuotraukos/ikelimai/ecH9NZDbpquOF7w3F4zkW9pfK-1618591535.jpg', 'nuotraukos/ikelimai/pMSzuchJ7xlBTUPZxMY7vhhtW-1618591535.jpg', 'nuotraukos/ikelimai/gm1z8bA2uwG6Tb95ijDLBmnTR-1618591535.jpg', 'nuotraukos/ikelimai/FNEq83H7FtydX0DcvJkCBM9cQ-1618591540.jpg', 1, 3, '[\"Camera RAW\",\"Shape \\/ Frame\"]', '[\"asdad\"]', '[\"Blur Effects\"]', '[\"gagsg\"]', 3, 2, 2, NULL, 3, 'https://www.youtube.com/embed/nvtwo2ugwU8', 'Pastabos ir kreditaidasdafsfsfafs', '[\"Architektūra\",\"Gamta\",\"Filmai\",\"Žaidimai\",\"asfasf\"]', 14, 34, '2021-04-16 16:45:40', 1, 26, '2021-04-16 19:50:14'),
(73, 2, 'io', 'yu', '[\"JPEG\",\"PNG\"]', NULL, NULL, 3, 0, 'nuotraukos/ikelimai/hxhm3W6ymiO6ZV8JRXn9VTzgf-1618593281.jpg', NULL, NULL, NULL, 1, 0, '[]', '[]', '[]', '[]', 0, 0, 2, NULL, 1, '', NULL, '[]', 14, 5, '2021-04-16 17:14:41', 0, 0, '2021-04-16 17:14:41'),
(74, 1, 'ghf', 'fgh', '[\"JPEG\"]', NULL, NULL, 3, 0, 'nuotraukos/ikelimai/r49NWteZQDyGa8AcHaf3b1FJJ-1618593351.jpg', NULL, NULL, NULL, 2, 0, '[]', '[]', '[]', '[]', 0, 0, 2, NULL, 1, '', NULL, '[]', 14, 17, '2021-04-16 17:15:51', 1, 1, '2021-04-16 20:28:06'),
(75, 1, 'oihj', 'ui<div><br></div>', '[\"PNG\"]', NULL, NULL, 3, 0, 'nuotraukos/ikelimai/9JgMz6OmZP571S3dAQ9SoWTXM-1618593388.jpg', NULL, NULL, NULL, 8, 0, '[]', '[]', '[]', '[]', 0, 0, 2, NULL, 1, '', 'fgh', '[]', 14, 19, '2021-04-16 17:16:28', 0, 0, '2021-04-16 20:17:11'),
(76, 8, 'asf', 'wet', '[\"JPEG\",\"PNG\"]', NULL, NULL, 3, 0, 'nuotraukos/ikelimai/W7uQzZ6nGLStZ6FZ6itvOPmU6-1618594622.jpg', 'nuotraukos/ikelimai/NcZmYzMieTpMM4DLujSKdD8xG-1618594622.jpg', 'nuotraukos/ikelimai/ymiePPDLr84AlUAtr21aCExsE-1618594622.jpg', 'nuotraukos/ikelimai/hbAYffDUkFV0hRGx6OtXVfYOa-1618594622.jpg', 3, 0, '[]', '[]', '[]', '[]', 0, 0, 2, NULL, 1, '', NULL, '[]', 40, 11, '2021-04-16 17:37:02', 2, 0, '2021-04-16 17:37:02'),
(77, 6, 'fg', 'dy<div><br></div>', '[\"JPEG\",\"PNG\"]', NULL, NULL, 3, 0, 'nuotraukos/ikelimai/8A1IOsZCTU8VQoo227T5mcT1n-1618596241.jpg', NULL, NULL, NULL, 6, 0, '[]', '[]', '[]', '[]', 0, 0, 2, NULL, 1, '', 'asfasfasfafsafasf', '[]', 44, 13, '2021-04-16 18:04:01', 0, 0, '2021-04-16 18:04:01'),
(78, 1, 'as', '<div><br></div><div><br></div>', '[\"JPEG\"]', NULL, NULL, 3, 0, 'nuotraukos/ikelimai/yN34tBJz7njfCDtdLPHNj0flk-1618685807.jpg', NULL, NULL, NULL, 2, 0, '[]', '[]', '[]', '[]', 0, 0, 2, NULL, 1, '', NULL, '[]', 14, 3, '2021-04-17 18:56:47', 0, 0, '2021-04-17 18:56:47'),
(79, 2, 'asasssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss', 'sda', '[\"JPEG\"]', NULL, NULL, 3, 0, 'nuotraukos/ikelimai/FVE2bpEN1kxJ78GpdlAeXRyAs-1618687324.jpg', NULL, NULL, NULL, 1, 2, '[]', '[]', '[]', '[]', 0, 0, 2, NULL, 1, '', NULL, '[]', 14, 4, '2021-04-17 19:22:04', 0, 0, '2021-04-17 22:22:17'),
(80, 2, 'gkh', 'as', '[\"JPEG\"]', NULL, NULL, 3, 0, 'nuotraukos/ikelimai/3XkSS4XCQcybMPfEp2pdMhn9g-1618688187.jpg', NULL, NULL, NULL, 3, 0, '[]', '[]', '[]', '[]', 0, 0, 2, NULL, 1, '', NULL, '[]', 14, 18, '2021-04-17 19:36:27', 1, 4, '2021-04-17 19:36:27');

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `nuotrauku_nustatymai`
--

CREATE TABLE `nuotrauku_nustatymai` (
  `id` int(10) UNSIGNED NOT NULL,
  `pasirinkimas` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `programa` tinyint(4) NOT NULL,
  `nustatymas` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Sukurta duomenų kopija lentelei `nuotrauku_nustatymai`
--

INSERT INTO `nuotrauku_nustatymai` (`id`, `pasirinkimas`, `programa`, `nustatymas`) VALUES
(1, 'Essentials (Default)', 1, 1),
(2, '3D', 1, 1),
(3, 'Graphic &amp; Web', 1, 1),
(4, 'Motion', 1, 1),
(5, 'Painting', 1, 1),
(6, 'Photography', 1, 1),
(7, 'Essentials (Default)', 3, 1),
(8, 'Essentials Classic', 3, 1),
(9, 'Automation', 3, 1),
(10, 'Layout', 3, 1),
(11, 'Painting', 3, 1),
(12, 'Printing &amp; Proofing', 3, 1),
(13, 'Tracing', 3, 1),
(14, 'Typhography', 3, 1),
(15, 'Web', 3, 1),
(16, 'Touch', 3, 1),
(17, 'Default', 7, 1),
(18, 'Lite', 7, 1),
(19, 'X6 Inspired', 7, 1),
(20, 'Touch', 7, 1),
(21, 'Illustration', 7, 1),
(22, 'Page Layout', 7, 1),
(23, 'Adobe Illustrator', 7, 1),
(24, 'Camera RAW', 1, 2),
(25, 'Gradient Tool', 1, 2),
(26, 'Shape / Frame', 1, 2),
(27, 'Text', 1, 2),
(28, 'Artboard', 1, 2),
(29, 'Alien Skin Software', 1, 2),
(30, 'Alpha Plug-ins', 1, 2),
(31, 'Andromeda Software', 1, 2),
(32, 'Auto FX Software', 1, 2),
(33, 'Avenza', 1, 2),
(34, 'Corel', 1, 2),
(35, 'Digimarc', 1, 2),
(36, 'Digital Anarchy', 1, 2),
(37, 'Digital Film Tools', 1, 2),
(38, 'DXO', 1, 2),
(39, 'Extensis', 1, 2),
(40, 'Flaming Pear Software', 1, 2),
(41, 'fnord', 1, 2),
(42, 'Google Nik Collection', 1, 2),
(43, 'HDRsoft', 1, 2),
(44, 'Imagenomic', 1, 2),
(45, 'Monotype', 1, 2),
(46, 'Mister Retro', 1, 2),
(47, 'Neat Image', 1, 2),
(48, 'OnOne', 1, 2),
(49, 'Portrait Pro', 1, 2),
(50, 'ProDigital Software', 1, 2),
(51, 'Topaz Labs', 1, 2),
(52, 'Topaz Rad', 1, 2),
(53, 'Corel Photo-Paint', 7, 2),
(54, 'Corel R.A.V.E.', 7, 2),
(55, 'CorelDraw', 7, 2),
(56, 'CorelDraw.app', 7, 2),
(57, 'Corel Font Manager', 7, 2),
(58, 'PowerTrace', 7, 2),
(59, 'AfterShot 3 HDR', 7, 2),
(60, 'Lighting Effects', 1, 3),
(61, '3D Map', 1, 3),
(62, 'Blur Effects', 1, 3),
(63, 'Text Effects', 1, 3),
(64, 'Color Effects', 1, 3),
(65, 'Collage', 1, 3),
(66, 'Border / Frame Effects', 1, 3),
(67, 'Blending Effects', 1, 3),
(68, 'Reflection Effects', 1, 3),
(69, 'HDR Effects', 1, 3),
(70, 'Artistic', 1, 3),
(71, 'Blur', 1, 3),
(72, 'Brush Strokes', 1, 3),
(73, 'Distort', 1, 3),
(74, 'Noise', 1, 3),
(75, 'Pixelate', 1, 3),
(76, 'Render', 1, 3),
(77, 'Sharpen', 1, 3),
(78, 'Sketch', 1, 3),
(79, 'Stylize', 1, 3),
(80, 'Texture', 1, 3),
(81, 'Video', 1, 3),
(82, 'Digimarc', 1, 3),
(83, 'Vanishing Point', 1, 3),
(84, 'Lighting Effects', 3, 3),
(85, '3D Map', 3, 3),
(86, 'Blur Effects', 3, 3),
(87, 'Text Effects', 3, 3),
(88, 'Color Effects', 3, 3),
(89, 'Collage', 3, 3),
(90, 'Border / Frame Effects', 3, 3),
(91, 'Blending Effects', 3, 3),
(92, 'Reflection Effects', 3, 3),
(93, 'HDR Effects', 3, 3),
(94, '3D', 3, 3),
(95, 'Convert to Shape', 3, 3),
(96, 'Crop Marks', 3, 3),
(97, 'Distort &amp; Transform', 3, 3),
(98, 'Path', 3, 3),
(99, 'Pathfinder', 3, 3),
(100, 'Rasterize', 3, 3),
(101, 'Stylize', 3, 3),
(102, 'SVG Filters', 3, 3),
(103, 'Warp', 3, 3),
(104, 'Lighting Effects', 7, 3),
(105, '3D Map', 7, 3),
(106, 'Blur Effects', 7, 3),
(107, 'Text Effects', 7, 3),
(108, 'Color Effects', 7, 3),
(109, 'Collage', 7, 3),
(110, 'Border / Frame Effects', 7, 3),
(111, 'Blending Effects', 7, 3),
(112, 'Reflection Effects', 7, 3),
(113, 'HDR Effects', 7, 3),
(114, 'Animation', 7, 3),
(115, 'Text', 7, 3),
(116, 'Raster', 7, 3),
(117, 'Vector', 7, 3);

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `paieska`
--

CREATE TABLE `paieska` (
  `id` int(11) NOT NULL,
  `kriterijus` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reiksme` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `agent` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Sukurta duomenų kopija lentelei `paieska`
--

INSERT INTO `paieska` (`id`, `kriterijus`, `reiksme`, `ip`, `agent`) VALUES
(8, 'Raktazodziai', '%Filmai%', '207.46.13.16', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)'),
(9, 'IrankiaiIskiepiai', '%ProDigital Software%', '66.249.72.156', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.130 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'),
(37, 'programa', '3', '78.60.243.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36'),
(38, 'sritis', '1', '78.60.243.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36'),
(39, 'sritis', '3', '78.60.243.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36'),
(51, 'Raktazodziai', '%Žaidimai%', '66.249.72.157', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'),
(68, 'sritis', '3', '13.66.139.15', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)');

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `paieskai`
--

CREATE TABLE `paieskai` (
  `id` int(11) NOT NULL,
  `pavadinimas` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parametras` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reiksme` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Sukurta duomenų kopija lentelei `paieskai`
--

INSERT INTO `paieskai` (`id`, `pavadinimas`, `parametras`, `reiksme`) VALUES
(1, 'Logotipai', 'sritis', 1),
(2, 'Firminis Stilius', 'sritis', 2),
(3, 'Plakatai', 'sritis', 3),
(4, 'Pakuotės', 'sritis', 4),
(5, 'Stendai', 'sritis', 5),
(6, 'Pardavimų vizuolinė dalis', 'sritis', 6),
(7, 'Knygos', 'sritis', 7),
(8, 'Laikraščiai', 'sritis', 8),
(9, 'Žurnalai', 'sritis', 9),
(10, 'Interneto svetainių dizainas', 'sritis', 10),
(11, 'Orientavimosi nuorodų sistemos', 'sritis', 11),
(12, 'Reklamos', 'sritis', 12),
(13, 'Adobe Photoshop', 'programa', 1),
(14, 'Adobe InDesign', 'programa', 2),
(15, 'Adobe Illustrator', 'programa', 3),
(16, 'Adobe XD', 'programa', 4),
(17, 'Affinity Designer', 'programa', 5),
(18, 'Canva', 'programa', 6),
(19, 'CorelDraw Graphics Suite', 'programa', 7),
(20, 'Colorcinch', 'programa', 8),
(21, 'GIMP', 'programa', 9),
(22, 'Gravit Designer', 'programa', 10),
(23, 'Infinite Design', 'programa', 11),
(24, 'Inkscape', 'programa', 12),
(25, 'Photoscape', 'programa', 13),
(26, 'PixTeller', 'programa', 14),
(27, 'Sketch', 'programa', 15),
(28, 'Vectr', 'programa', 16),
(29, 'Xara Designer Pro', 'programa', 17),
(30, 'Affinity Photo', 'programa', 18),
(31, 'Pixelmator Pro', 'programa', 19),
(32, 'Pixlr', 'programa', 20),
(33, 'sRGB Color', 'spalvos', 0),
(34, 'RGB Color', 'spalvos', 1),
(35, 'CMYK Color', 'spalvos', 2),
(36, 'Indexed Color', 'spalvos', 3),
(37, 'Grayscale', 'spalvos', 4),
(38, 'Graphic Tablet', 'priemone', 1),
(39, 'Smart Pen', 'priemone', 2),
(40, 'Touch Pad', 'priemone', 3),
(41, 'Mouse', 'priemone', 4),
(42, 'Dot-Grid Notebook', 'priemone', 5),
(43, 'Paper &amp; Ink', 'priemone', 6),
(44, 'Nuo nulio', 'DizainasKurtas', 0),
(45, 'Pagal šabloną', 'DizainasKurtas', 1),
(46, 'Nuotraukos pagrindu', 'DizainasKurtas', 2);

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Sukurta duomenų kopija lentelei `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('pkmotedmoted12@gmail.com', '$2y$10$bW9Js8CTD7Cj0t0jIQibAODV.UywmRaJ76FOHRtVqkvFwj.LNmQ5O', '2021-02-02 16:45:23'),
('armandas12@gmail.com', '$2y$10$HEw/brqGdq8lKphrA29jgewl83I8JzjurTEB2Sb7C/GaT2gEahGw6', '2021-03-14 07:26:36'),
('vaida.budryte@gmail.com', '$2y$10$do1dCJDT.wHCmsnsghkXRe/.I6MxpZ9/qksBbJoxwMimlb3UQDsIi', '2021-04-12 13:15:18'),
('killermanfree123@gmail.com', '$2y$10$wbxsV1npUAL7MKk9l5h31eaQGmxmkwEc.rL8c3lkHBAYWF0u0BwuS', '2021-04-13 17:23:13');

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Sukurta duomenų kopija lentelei `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('2ak4rsNLZkQWIaNbMRw4rrSmWJ8uVGNzpTBO2aqW', NULL, '35.246.65.127', 'Go-http-client/1.1', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiQ01yOHFreWJvSHdRUUhlaFcwZUxnSW14M0JXb0Jqb2NjSnpNNjRXbCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1618719557),
('Bf8aSIzNqloCx999BKZToKYzggxZHQ4I4DjrcbBW', NULL, '88.216.74.54', 'Mozilla/5.0 (Linux; Android 10; POCOPHONE F1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.93 Mobile Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidW5ZZkE5Q01pdDVVUDQ1RDVORkd2eHFBZjliaWk2SFhjRE9NeUx4aSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozNjoiaHR0cHM6Ly9nZG1pcy5sdC92YXJ0b3RvamFzL3Byb2ZpbGlzIjt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHBzOi8vZ2RtaXMubHQvcGFtaXJzdGFzLXNsYXB0YXpvZGlzIjt9fQ==', 1618738775),
('bmifpqHgvdw27udrGZPdOpMOCfW4kJkgb8hmaElx', NULL, '84.55.51.194', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'YTo0OntzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czozNjoiaHR0cHM6Ly9nZG1pcy5sdC92YXJ0b3RvamFzL3Byb2ZpbGlzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo2OiJfdG9rZW4iO3M6NDA6ImhzUWRrcWFYc2xTREs3Q2JmZXFQUWVKMVM0VmxYUFVEMkRja2pQeHQiO3M6MzoidXJsIjthOjE6e3M6ODoiaW50ZW5kZWQiO3M6MzY6Imh0dHBzOi8vZ2RtaXMubHQvdmFydG90b2phcy9wcm9maWxpcyI7fX0=', 1618703680),
('DM6Ks1vdwSIHxnoxIzcmJI4YGjg6ZVPh7V7F1axk', NULL, '13.66.139.133', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaEoxQklhb1lGT2tsWWV1M3JKYk5MUUlWaHhsSFFuS2tndHFJS0g1TCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHBzOi8vZ2RtaXMubHQvbnVvdHJhdWthLzU0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1618692595),
('g11m0mwFfTkK7R8gM0PZjzAOXv5Qri7LEvEL56tB', NULL, '199.59.150.182', 'Twitterbot/1.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWHlRYWMxbmNKd3dmMDVyTkJYeTVwenNmZ1dVZXlmZ3RaaFloNXpCdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHBzOi8vZ2RtaXMubHQvbnVvdHJhdWthLzgwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1618702420),
('gL6pHzsGCzlGoouSUTPRZdGNtc8jcHWNvacTUvy5', NULL, '13.66.139.2', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ1VUZExhV0thdHpScWdWcHJxMmpRaHBDbTZRY0pQQWIzbXZKUnQxbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTY6Imh0dHBzOi8vZ2RtaXMubHQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1618731529),
('rCvBkzpu19GoxuoAOy5OuGIkIOneWugaOUz2CGAg', NULL, '212.52.59.98', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidWM1SkhIVWhpN3AzSjZhNDEwampCbUU5QTh1U0NkekNJajNGSDMxeiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHBzOi8vZ2RtaXMubHQvdmFydG90b2phcy9wcm9maWxpcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjE6e3M6ODoiaW50ZW5kZWQiO3M6MzY6Imh0dHBzOi8vZ2RtaXMubHQvdmFydG90b2phcy9wcm9maWxpcyI7fX0=', 1618738827),
('Ssm3dEGLxLgbFBr4Gt7CxgzAzJSFZYsdwrbMrAIT', NULL, '212.52.59.98', 'Mozilla/5.0 (Linux; Android 11; SM-G970F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.105 Mobile Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidWdrUXFZTGJtcDh1NzRmckFBV1ExeEJGZmJYcG5Gd0RONUhQUXgzTyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozNjoiaHR0cHM6Ly9nZG1pcy5sdC92YXJ0b3RvamFzL3Byb2ZpbGlzIjt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHBzOi8vZ2RtaXMubHQvdmFydG90b2phcy9wcm9maWxpcyI7fX0=', 1618691046),
('U4nhKR5jvZ5998DevFGfB7fSW4SwW4hm2fndvoES', NULL, '13.66.139.15', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVmt2Z0lOYUJYOTVKdmRhUlZ3YXJXZVV2dUJUaktRT2JkQmdJOTNzUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHBzOi8vZ2RtaXMubHQvcm9keXRpL3NyaXRpcy8zIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1618732828),
('vnykQTW10atV7wb2UAINs5p4ZS6k0IThvbMnqFJH', NULL, '66.249.73.233', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVEtabkNGQmFsR2htOXIzSzRXMU5JTjNXaEU0N3JOTGdVS3M4YVMzViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjQ6Imh0dHBzOi8vZ2RtaXMubHQvc2llbmEvMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1618709839),
('xs6hCI8uctvwagHOLOG1jCuAxkkzfZlNJTWgTMy3', NULL, '13.66.139.75', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiblB3NXZ3SVdVdWhUS2tsc0NnT2MzVWh2V3BRTmM5dFlHcEF5Nko3MyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjQ6Imh0dHBzOi8vZ2RtaXMubHQvP3BhZ2U9MiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1618708885),
('zBqb3ERVv7twXQaDHZalrcp1vfOQgHqrikLlxf18', NULL, '66.249.73.233', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOEFoNkRsdll1aHFZUkI1WkY2cExlMjRianBxS1RoMm9DRTJlY3RvSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHBzOi8vZ2RtaXMubHQvbnVvdHJhdWthLzY4Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1618713679);

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `google_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `miestas` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apie` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salis` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `github` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitch` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Sukurta duomenų kopija lentelei `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`, `google_id`, `facebook_id`, `miestas`, `apie`, `salis`, `facebook`, `twitter`, `github`, `twitch`, `instagram`) VALUES
(1, 'Bandymas', 'bandymas@gmail.com', NULL, '$2y$10$DbGYPPEFz/VgLUwT/QqA/e5Oukl2wHJfJDT/moFHND18B31ydn0xy', NULL, NULL, 'DOYab2ifgdXQgXgxAVGoxLyZpaHZZv9jpQ3JNN8rdioSUbvuViOKUqnYcooi', NULL, NULL, '2020-11-27 14:48:11', '2021-04-07 22:12:25', NULL, NULL, NULL, NULL, 'Lietuva', NULL, NULL, NULL, NULL, 'gsdgsagadgsadasd'),
(3, 'Testas Testauskas', 'testas@testauskas.lt', NULL, 'eyJpdiI6InhNTzV0TWV5dy9rZEhsRTl0bGlaMnc9PSIsInZhbHVlIjoiWk9zQmhLNEllUGVGZ2tDclo2TWI3UHRDRnAvRlBlVWtodWY5YTAxQmJxcz0iLCJtYWMiOiIyZTdhZjkxMWNjMGIxNjUwZmY3ZTU0NzVmMzUwNjY1YTlkNGM3NmQ4OGFkNzI0YzRjZjYxNTljOGFjNjM3YzNjIn0=', NULL, NULL, NULL, NULL, NULL, '2020-12-01 16:02:22', '2021-04-10 22:19:47', '118234576802931730833', NULL, 'Šiauliai', NULL, NULL, 'https://www.facebook.com/', NULL, NULL, NULL, 'https://www.instagram.com/'),
(6, 'Moted LTU', 'pkmotedmoted12@gmail.com', NULL, 'eyJpdiI6InhWT0FHWXJQOVlDS3N3YytxT1A4Qnc9PSIsInZhbHVlIjoiNWNHUXFjTlZ6R1dWSjlyMkJLQU53NjU0L0tnc0VFNmlpbDUxazEvZkxSaz0iLCJtYWMiOiI1N2IzN2ZhMTUwMjVkMDVmOGY1MDFkYzNjN2VkZDRjODI2NWE1NWQyOTdiNzU0ZTUyYjc2MTQ5NDY4NTIzNTBjIn0=', NULL, NULL, NULL, NULL, NULL, '2020-12-23 16:41:45', '2020-12-23 16:41:45', '118181125339612423687', NULL, NULL, 'Lorem ipsum - tai fiktyvus tekstas naudojamas spaudos ir grafinio dizaino pasaulyje jau nuo XVI a. pradžios. Lorem Ipsum tapo standartiniu fiktyviu tekstu, kai nežinomas spaustuvininkas atsitiktine tvarka išdėliojo raides atspaudų prese ir tokiu būdu sukūrė raidžių egzempliorių. Šis tekstas išliko beveik nepasikeitęs ne tik penkis amžius, bet ir įžengė i kopiuterinio grafinio dizaino laikus. Jis išpopuliarėjo XX a. šeštajame dešimtmetyje, kai buvo išleisti Letraset lapai su Lorem Ipsum ištraukomis, o vėliau -leidybinė sistema AldusPageMaker, kurioje buvo ir Lorem Ipsum versija.', NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'Vardenis Pavardenis', 'testas@testauskas.lt', NULL, 'eyJpdiI6Ik9PWlR0UnlXL2ZDWE5iWCsxci83Q3c9PSIsInZhbHVlIjoianNFVUo3VW9teGd1VzNucFAranM3Wi9DNDJSTmM0cEJkR0pDZ1R4VkRldz0iLCJtYWMiOiIwNjIxYjAwYzViMWI0N2Q3NzAwYzZiNDU1YTI1YTRlZDBjZTNkM2UxYjg1OTNiODQ3ODM4MGNhMmJlMWIyYjlmIn0=', NULL, NULL, NULL, NULL, 'profile-photos/2dLqD8ATrN9Jwe8c7KmkjgYOvpdCLII8Bkop2Cz0.png', '2021-01-29 13:08:09', '2021-04-17 12:23:15', '117772717000566277491', NULL, 'Šiauliai', 'Programuotojas WEB', 'Lietuva', 'https://fb.com/', 'Tesr', 'https://www.github.com', 'https://www.twitch.tv/', 'https://www.instagram.com/'),
(14, 'heyooo', 'armandas12@gmail.com', NULL, '$2y$10$aOc7PCQ8AAomiu64ZV.NHu0FPH59jsO7aGOaWD25h8CA1q6IIKQda', NULL, NULL, 'djaOLvlQCtK8WlgyUwDswqKSNj2ieAhWjzpn0JncwSp1XpeUpsh0dUxMKXax', NULL, 'profile-photos/TwD6Y3jv99hffdPzQK5Ww0mIQ92hCb6goLk4CXp1.jpeg', '2021-02-01 18:41:44', '2021-04-16 21:06:15', NULL, NULL, 'Vilnius', 'cia as kuris buvau tada', 'Jordanija', 'https://www.facebook.com/armandas.simkus/', 'https://twitter.com/Motedaccess', 'https://github.com/ArmandasFL', 'sfd', 'AS'),
(16, 'Armandas Šimkus', 'armandas.simkus@stud.vgtu.lt', NULL, 'eyJpdiI6Ii81N2MvcVl4dmdQSjEzTndTWHVadUE9PSIsInZhbHVlIjoiTk9wWDZ2MG5pUTRmdXV2VFA1M1ZWc3FyQUpjVFpZencwWnlNRXFFOFN4RT0iLCJtYWMiOiJiMTc4NGM1MWE1MmZkYTFiZmFmYmVkNTlmMjUwYTQxM2Q0OWJlZTEzNGNmZmY3ZGY5YWUxYTlkOWMyOWQ2YmM4In0=', NULL, NULL, NULL, NULL, 'profile-photos/8rZeJcrJgQMk9uyGljO8BlyboqAZ50fJfWvtJ2kg.jpeg', '2021-02-02 15:03:10', '2021-02-02 15:05:55', '110022678066851669495', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'Ji', 'vaida.budryte@gmail.com', NULL, 'eyJpdiI6InVjQ0twY3JCN2dkV2FaM2U3bWxjZFE9PSIsInZhbHVlIjoiWnRQY3ByUitPT3grSU5kTTlPeERyd0tBT0RGd2dYNTFzc0IxdGlPUldoYz0iLCJtYWMiOiIzODhkM2I1NDY0OGI0Yzk1Y2QxMDdhZDk5MjYwNjc2Y2RkNWE1YWNmYjY4ZmVhYzcyZjczMmU0MzY0ZjMxNmExIn0=', NULL, NULL, NULL, NULL, NULL, '2021-02-02 19:05:01', '2021-03-14 17:48:52', '113561111862906374938', NULL, 'Kaunas', NULL, 'Lietuva', NULL, NULL, NULL, NULL, NULL),
(18, 'Vaida Lukoševičė', 'vaida.lukosevice@gmail.com', NULL, 'eyJpdiI6ImNmeFJjVFMrVEJKWUQ3U1NvZk9hNHc9PSIsInZhbHVlIjoiVTZCVXpDeS95V3pWQVZvTFpwZlhFTFFTNks3dklWRDRNY2RlTm1xeW8waz0iLCJtYWMiOiJmMDQ2Y2U2ODEzMTljYTBiNzVkYmI0NjQwNDE0MmVkOTc1NWRiZGY4ODc5ZjQ3ZGQ1NDYzMTAzNWI2MGMwMGYwIn0=', NULL, NULL, NULL, NULL, NULL, '2021-02-02 21:40:00', '2021-02-02 21:40:00', '117715337967623099840', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'Nenaudojamas Naudotojas', 'nenaudojamas@gmail.com', NULL, 'eyJpdiI6InF1aEZNTUQxMFYvWDJQUjVRMWVaN1E9PSIsInZhbHVlIjoick9QY1pBUXR3VC8wUkFtMTZLL2hRYVNBTGR1T2d1SWh5RTNKTlIwUzFBUT0iLCJtYWMiOiIzY2VjYTRiMjJhZWEyODZmN2YwMDYzYzZlOTUzMjM5NWVkNzg2ZjUyZDliYTQxZjA4MGRlYTUyNTgxOTQ5MTAwIn0=', NULL, NULL, NULL, NULL, NULL, '2021-02-07 18:19:54', '2021-02-07 18:19:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'Varden Pavarden', 'varden.pavarden@gmail.com', NULL, 'eyJpdiI6IjF6SnU3UmlrTll0S1FGbzVxU3UvWlE9PSIsInZhbHVlIjoiR1p3R3FEQzhQd1p2emZ1TDhQckdReGZLWkdzV2U5aEJ0ODJZSnI1cjVBVT0iLCJtYWMiOiJiYjdhNzFmMmEyMDgwZjdiYzA5MjVkMjUyMzI4OGVlMTMzZWNkN2RkNTFjNWJjMmViMzMyZGVmMzMyZjE0YjY3In0=', NULL, NULL, NULL, NULL, NULL, '2021-02-15 12:50:51', '2021-02-15 12:50:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'Testas Testauskas', 'testas@testauskas.lt', NULL, 'eyJpdiI6Iks5TWRRVGVjL3ZOUDNCdGFJU1ZWSkE9PSIsInZhbHVlIjoiTy90SlcyOUxscUttck9Da3JHWldWRVpCRGpnSHU3ZWwwVXdSRmxEdGxYND0iLCJtYWMiOiJlYTFjZDE4NDc5MWU4NDE2Njc5NjVhZDM0ZGIzN2ExZDBiNWY2MGYxMTdjZDI4N2UxODM0OWFlYmEyODAxZWYzIn0=', NULL, NULL, NULL, NULL, NULL, '2021-02-15 13:54:04', '2021-02-15 13:54:04', NULL, '10217913029516259', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'Moted / Arma', 'armandas12@gmail.com', NULL, 'eyJpdiI6IlNWaEl6Q1FQMlpQRjYzYzE1OGtSRWc9PSIsInZhbHVlIjoieGx6ZVZtZW0zQjduTkpMdThURGF5cWR2a0k2dVIrcnhxQWw1L2JhcDF6UT0iLCJtYWMiOiIwYTU3ODU2MmFhMGQwNzVkMTVkMWJhZGViMWEyYTJhZTg0M2NiOTY1M2E3MzkzODRjM2ZkMjAwOTFlODExMmNjIn0=', NULL, NULL, NULL, NULL, NULL, '2021-03-14 07:30:31', '2021-03-14 07:30:31', '108461889173675611678', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 'Jon Jonana', 'jon@inbox.lt', NULL, 'eyJpdiI6IlllNmRFNm1IdFRLdVZoZXRGTWpsUkE9PSIsInZhbHVlIjoiMHdNblE3OE03TkJNdkFvbXk0cXJRaEJVMjlHQ2VnZURkZXFYNTluY0kzWT0iLCJtYWMiOiI4OTA5MDRjMzZjNWM3NmJjODhmMWQ3ZjAxYzgyMWJhNGQyZjcwMGNkZjZjNDgxYzM3OTY5NmNkODcwMTRlYTliIn0=', NULL, NULL, NULL, NULL, NULL, '2021-03-25 18:07:05', '2021-03-25 18:07:05', NULL, '4074619872564546', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 'Vaida Budryte', 'vaida.budryte@gmail.com', NULL, 'eyJpdiI6IjB3d2dGR1NQMkRSeC9xWGwreXZScUE9PSIsInZhbHVlIjoiQlZOZ0d6UUNGNzJZTmxWMFJ3UjR4dndUYllIdDN4SHZTRGxhSytLMkMxaz0iLCJtYWMiOiJkYjQ0NDkwNjQ5ODQyOGM1ZThlMGIyMGI2MmFmNjExOGU5YTFkMjBkOGY4OWQ0OTViZWYzODJkNzk2YTU1NmQ0In0=', NULL, NULL, NULL, NULL, NULL, '2021-04-12 12:13:24', '2021-04-12 12:13:24', NULL, '10222400548781003', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 'Dan Dudly', 'killermanfree123@gmail.com', NULL, 'eyJpdiI6InQrT2k0bGNYNGJpektwcEZ3SUQyclE9PSIsInZhbHVlIjoic3Frbi9hajFNMGhrTEFzYjZ3NDZiSFZIdDB5aDVRVFVGTWZQdERraHk4az0iLCJtYWMiOiIyNDk4YzIxNTMwMDNiZWJhMDYxOTQyMTVhYjJlMGUyZDUzMGVhM2VhMTA0NTU0NTlkYzNjNDY0YTAzMjQ0Zjc4In0=', NULL, NULL, NULL, NULL, NULL, '2021-04-13 17:19:49', '2021-04-13 17:19:49', '104954964363319264939', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'Jonas', 'jonas@gmail.com', NULL, '$2y$10$lWFjnQicn9zX5.mT5WeVI.hRvgEw38wfYtbg6wGKC8vyJocsHcEnm', NULL, NULL, NULL, NULL, NULL, '2021-04-14 22:03:36', '2021-04-14 22:03:36', NULL, NULL, 'Utena', NULL, 'Lietuva', NULL, NULL, NULL, NULL, NULL),
(36, 'Lorem Ipsum', 'cyberpunk2077@gmail.com', NULL, '$2y$10$iVOQn3ueDgiDSGjzYzWywOQg0RnOovmHHdD8dUUa2OFNXrShxtqqG', NULL, NULL, NULL, NULL, 'profile-photos/p5EIzwnuFITLgB0FLFOfJcipMktxElzrViB9FEUJ.png', '2021-04-15 15:04:46', '2021-04-15 15:06:27', NULL, NULL, 'Kaunas', NULL, 'Lietuva', NULL, NULL, NULL, NULL, NULL),
(39, 'Kieša', 'kiesa@gmail.com', NULL, '$2y$10$eeUbNsm8EExmskJmzbOnV.NgwtFYsj8Kt8TaZckLbCWKLV/hqX2x6', NULL, NULL, NULL, NULL, NULL, '2021-04-16 13:28:35', '2021-04-16 13:28:35', NULL, NULL, 'Kaunas', NULL, 'Lietuva', NULL, NULL, NULL, NULL, NULL),
(40, 'labas1', 'labas1@gmail.com', NULL, '$2y$10$3lS6GZt7uTwfQ98tMmwXouyGCoOw.a0JA3iK.zwIWtOI9R.DOuDey', NULL, NULL, NULL, NULL, 'profile-photos/WtXPJRhIPT1zSaccQ0vob1vvXRBLragL9oe2wOfS.jpeg', '2021-04-16 14:59:50', '2021-04-16 20:34:49', NULL, NULL, 'labas1', NULL, 'Lietuva', NULL, NULL, NULL, NULL, NULL),
(41, 'test20', 'test20@gmail.com', NULL, '$2y$10$l330GAESGJISeRGKW.SlT.m8rmiQ5q5EQo/NMl25lyny94VemaI.a', NULL, NULL, NULL, NULL, NULL, '2021-04-16 15:02:12', '2021-04-16 15:02:12', NULL, NULL, 'test20', NULL, 'Lietuva', NULL, NULL, NULL, NULL, NULL),
(42, 'test23', 'test23@gmail.com', NULL, '$2y$10$GC12IJKSTuH4eIKujZ8BQeweHPhPek0sU9/FQcf1avn1gPoVIwjsi', NULL, NULL, NULL, NULL, NULL, '2021-04-16 15:05:28', '2021-04-16 15:05:28', NULL, NULL, 'test23', NULL, 'Lietuva', NULL, NULL, NULL, NULL, NULL),
(43, 'Stasys', 'stasys@gmail.com', NULL, '$2y$10$Eo8XEgY/M.r0lxScvCwI1uS/zarFe.LRliVj7.akMsVC78whh771S', NULL, NULL, NULL, NULL, NULL, '2021-04-16 17:00:51', '2021-04-16 17:00:51', NULL, NULL, 'dasfsadsfadfdsa', NULL, 'Lietuva', NULL, NULL, NULL, NULL, NULL),
(44, 'test30', 'test30@gmail.com', NULL, '$2y$10$FCsRwLNpb50SnSipb/t8eOf2c6mMuUY4yTJuGuYjWrB52vPRsgAXe', NULL, NULL, NULL, NULL, NULL, '2021-04-16 20:18:55', '2021-04-16 20:18:55', NULL, NULL, 'test30', NULL, 'Angilija', NULL, NULL, NULL, NULL, NULL),
(45, 'dgf', 'dgf@gmail.com', NULL, '$2y$10$E/vsi7az7pRrv1wVRDxAk..IngouHJt27jwzs1FcTgNygm.3t.KMm', NULL, NULL, NULL, NULL, NULL, '2021-04-16 20:19:39', '2021-04-16 20:19:39', NULL, NULL, NULL, NULL, 'Lietuva', NULL, NULL, NULL, NULL, NULL),
(46, 'Edgaras Šimkus', 'edgarasimkus@gmail.com', NULL, '$2y$10$8l4sKzFG31Am4XlltUATu.LWmZC3shrANL65yjy6ILW8xJMpt3Pi2', NULL, NULL, NULL, NULL, NULL, '2021-04-16 20:58:54', '2021-04-16 21:00:11', NULL, NULL, 'Kaunas', NULL, 'Lietuva', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `valstybes`
--

CREATE TABLE `valstybes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alpha_2` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alpha_3` char(3) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Sukurta duomenų kopija lentelei `valstybes`
--

INSERT INTO `valstybes` (`id`, `name`, `alpha_2`, `alpha_3`) VALUES
(4, 'Afganistanas', 'af', 'afg'),
(8, 'Albanija', 'al', 'alb'),
(12, 'Alžyras', 'dz', 'dza'),
(20, 'Andora', 'ad', 'and'),
(24, 'Angola', 'ao', 'ago'),
(28, 'Antigva ir Barbuda', 'ag', 'atg'),
(31, 'Azerbaidžanas', 'az', 'aze'),
(32, 'Argentina', 'ar', 'arg'),
(36, 'Australija', 'au', 'aus'),
(40, 'Austrija', 'at', 'aut'),
(44, 'Bahamos', 'bs', 'bhs'),
(48, 'Bahreinas', 'bh', 'bhr'),
(50, 'Bangladešas', 'bd', 'bgd'),
(51, 'Armėnija', 'am', 'arm'),
(52, 'Barbadosas', 'bb', 'brb'),
(56, 'Belgija', 'be', 'bel'),
(64, 'Butanas', 'bt', 'btn'),
(68, 'Bolivija', 'bo', 'bol'),
(70, 'Bosnija ir Hercegovina', 'ba', 'bih'),
(72, 'Botsvana', 'bw', 'bwa'),
(76, 'Brazilija', 'br', 'bra'),
(84, 'Belizas', 'bz', 'blz'),
(90, 'Saliamono Salos', 'sb', 'slb'),
(96, 'Brunėjus', 'bn', 'brn'),
(100, 'Bulgarija', 'bg', 'bgr'),
(104, 'Mianmaras', 'mm', 'mmr'),
(108, 'Burundis', 'bi', 'bdi'),
(112, 'Baltarusija', 'by', 'blr'),
(116, 'Kambodža', 'kh', 'khm'),
(120, 'Kamerūnas', 'cm', 'cmr'),
(124, 'Kanada', 'ca', 'can'),
(132, 'Žaliasis Kyšulys', 'cv', 'cpv'),
(140, 'Centrinės Afrikos Respublika', 'cf', 'caf'),
(144, 'Šri Lanka', 'lk', 'lka'),
(148, 'Čadas', 'td', 'tcd'),
(152, 'Čilė', 'cl', 'chl'),
(156, 'Kinija', 'cn', 'chn'),
(170, 'Kolumbija', 'co', 'col'),
(174, 'Komorai', 'km', 'com'),
(178, 'Kongo Respublika', 'cg', 'cog'),
(180, 'Kongo Demokratinė Respublika', 'cd', 'cod'),
(188, 'Kosta Rika', 'cr', 'cri'),
(191, 'Kroatija', 'hr', 'hrv'),
(192, 'Kuba', 'cu', 'cub'),
(196, 'Kipras', 'cy', 'cyp'),
(203, 'Čekija', 'cz', 'cze'),
(204, 'Beninas', 'bj', 'ben'),
(208, 'Danija', 'dk', 'dnk'),
(212, 'Dominika', 'dm', 'dma'),
(214, 'Dominikos Respublika', 'do', 'dom'),
(218, 'Ekvadoras', 'ec', 'ecu'),
(222, 'Salvadoras', 'sv', 'slv'),
(226, 'Pusiaujo Gvinėja', 'gq', 'gnq'),
(231, 'Etiopija', 'et', 'eth'),
(232, 'Eritrėja', 'er', 'eri'),
(233, 'Estija', 'ee', 'est'),
(242, 'Fidžis', 'fj', 'fji'),
(246, 'Suomija', 'fi', 'fin'),
(250, 'Prancūzija', 'fr', 'fra'),
(262, 'Džibutis', 'dj', 'dji'),
(266, 'Gabonas', 'ga', 'gab'),
(268, 'Gruzija', 'ge', 'geo'),
(270, 'Gambija', 'gm', 'gmb'),
(276, 'Vokietija', 'de', 'deu'),
(288, 'Gana', 'gh', 'gha'),
(296, 'Kiribatis', 'ki', 'kir'),
(300, 'Graikija', 'gr', 'grc'),
(308, 'Grenada', 'gd', 'grd'),
(320, 'Gvatemala', 'gt', 'gtm'),
(324, 'Gvinėja', 'gn', 'gin'),
(328, 'Gajana', 'gy', 'guy'),
(332, 'Haitis', 'ht', 'hti'),
(340, 'Hondūras', 'hn', 'hnd'),
(348, 'Vengrija', 'hu', 'hun'),
(352, 'Islandija', 'is', 'isl'),
(356, 'Indija', 'in', 'ind'),
(360, 'Indonezija', 'id', 'idn'),
(364, 'Iranas', 'ir', 'irn'),
(368, 'Irakas', 'iq', 'irq'),
(372, 'Airija', 'ie', 'irl'),
(376, 'Izraelis', 'il', 'isr'),
(380, 'Italija', 'it', 'ita'),
(384, 'Dramblio Kaulo Krantas', 'ci', 'civ'),
(388, 'Jamaika', 'jm', 'jam'),
(392, 'Japonija', 'jp', 'jpn'),
(398, 'Kazachstanas', 'kz', 'kaz'),
(400, 'Jordanija', 'jo', 'jor'),
(404, 'Kenija', 'ke', 'ken'),
(408, 'Šiaurės Korėja', 'kp', 'prk'),
(410, 'Pietų Korėja', 'kr', 'kor'),
(414, 'Kuveitas', 'kw', 'kwt'),
(417, 'Kirgizija', 'kg', 'kgz'),
(418, 'Laosas', 'la', 'lao'),
(422, 'Libanas', 'lb', 'lbn'),
(426, 'Lesotas', 'ls', 'lso'),
(428, 'Latvija', 'lv', 'lva'),
(430, 'Liberija', 'lr', 'lbr'),
(434, 'Libija', 'ly', 'lby'),
(438, 'Lichtenšteinas', 'li', 'lie'),
(440, 'Lietuva', 'lt', 'ltu'),
(442, 'Liuksemburgas', 'lu', 'lux'),
(450, 'Madagaskaras', 'mg', 'mdg'),
(454, 'Malavis', 'mw', 'mwi'),
(458, 'Malaizija', 'my', 'mys'),
(462, 'Maldyvai', 'mv', 'mdv'),
(466, 'Malis', 'ml', 'mli'),
(470, 'Malta', 'mt', 'mlt'),
(478, 'Mauritanija', 'mr', 'mrt'),
(480, 'Mauricijus', 'mu', 'mus'),
(484, 'Meksika', 'mx', 'mex'),
(492, 'Monakas', 'mc', 'mco'),
(496, 'Mongolija', 'mn', 'mng'),
(498, 'Moldavija', 'md', 'mda'),
(499, 'Juodkalnija', 'me', 'mne'),
(504, 'Marokas', 'ma', 'mar'),
(508, 'Mozambikas', 'mz', 'moz'),
(512, 'Omanas', 'om', 'omn'),
(516, 'Namibija', 'na', 'nam'),
(520, 'Nauru', 'nr', 'nru'),
(524, 'Nepalas', 'np', 'npl'),
(528, 'Nyderlandai', 'nl', 'nld'),
(548, 'Vanuatu', 'vu', 'vut'),
(554, 'Naujoji Zelandija', 'nz', 'nzl'),
(558, 'Nikaragva', 'ni', 'nic'),
(562, 'Nigeris', 'ne', 'ner'),
(566, 'Nigerija', 'ng', 'nga'),
(578, 'Norvegija', 'no', 'nor'),
(583, 'Mikronezija', 'fm', 'fsm'),
(584, 'Maršalo salos', 'mh', 'mhl'),
(585, 'Palau', 'pw', 'plw'),
(586, 'Pakistanas', 'pk', 'pak'),
(591, 'Panama', 'pa', 'pan'),
(598, 'Papua Naujoji Gvinėja', 'pg', 'png'),
(600, 'Paragvajus', 'py', 'pry'),
(604, 'Peru', 'pe', 'per'),
(608, 'Filipinai', 'ph', 'phl'),
(616, 'Lenkija', 'pl', 'pol'),
(620, 'Portugalija', 'pt', 'prt'),
(624, 'Bisau Gvinėja', 'gw', 'gnb'),
(626, 'Rytų Timoras', 'tl', 'tls'),
(634, 'Kataras', 'qa', 'qat'),
(642, 'Rumunija', 'ro', 'rou'),
(643, 'Rusija', 'ru', 'rus'),
(646, 'Ruanda', 'rw', 'rwa'),
(659, 'Sent Kitsas ir Nevis', 'kn', 'kna'),
(662, 'Sent Lusija', 'lc', 'lca'),
(670, 'Sent Vinsentas ir Grenadinai', 'vc', 'vct'),
(674, 'San Marinas', 'sm', 'smr'),
(678, 'San Tomė ir Prinsipė', 'st', 'stp'),
(682, 'Saudo Arabija', 'sa', 'sau'),
(686, 'Senegalas', 'sn', 'sen'),
(688, 'Serbija', 'rs', 'srb'),
(690, 'Seišeliai', 'sc', 'syc'),
(694, 'Siera Leonė', 'sl', 'sle'),
(702, 'Singapūras', 'sg', 'sgp'),
(703, 'Slovakija', 'sk', 'svk'),
(704, 'Vietnamas', 'vn', 'vnm'),
(705, 'Slovėnija', 'si', 'svn'),
(706, 'Somalis', 'so', 'som'),
(710, 'PAR', 'za', 'zaf'),
(716, 'Zimbabvė', 'zw', 'zwe'),
(724, 'Ispanija', 'es', 'esp'),
(728, 'Pietų Sudanas', 'ss', 'ssd'),
(729, 'Sudanas', 'sd', 'sdn'),
(740, 'Surinamas', 'sr', 'sur'),
(748, 'Svazilendas', 'sz', 'swz'),
(752, 'Švedija', 'se', 'swe'),
(756, 'Šveicarija', 'ch', 'che'),
(760, 'Sirija', 'sy', 'syr'),
(762, 'Tadžikija', 'tj', 'tjk'),
(764, 'Tailandas', 'th', 'tha'),
(768, 'Togas', 'tg', 'tgo'),
(776, 'Tonga', 'to', 'ton'),
(780, 'Trinidadas ir Tobagas', 'tt', 'tto'),
(784, 'Jungtiniai Arabų Emyratai', 'ae', 'are'),
(788, 'Tunisas', 'tn', 'tun'),
(792, 'Turkija', 'tr', 'tur'),
(795, 'Turkmėnija', 'tm', 'tkm'),
(798, 'Tuvalu', 'tv', 'tuv'),
(800, 'Uganda', 'ug', 'uga'),
(804, 'Ukraina', 'ua', 'ukr'),
(807, 'Makedonija', 'mk', 'mkd'),
(818, 'Egiptas', 'eg', 'egy'),
(826, 'Jungtinė Karalystė', 'gb', 'gbr'),
(834, 'Tanzanija', 'tz', 'tza'),
(840, 'Jungtinės Valstijos', 'us', 'usa'),
(854, 'Burkina Faso', 'bf', 'bfa'),
(858, 'Urugvajus', 'uy', 'ury'),
(860, 'Uzbekistanas', 'uz', 'uzb'),
(862, 'Venesuela', 've', 'ven'),
(882, 'Samoa', 'ws', 'wsm'),
(887, 'Jemenas', 'ye', 'yem'),
(894, 'Zambija', 'zm', 'zmb');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `megstamiausi`
--
ALTER TABLE `megstamiausi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nuotraukos`
--
ALTER TABLE `nuotraukos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nuotrauku_nustatymai`
--
ALTER TABLE `nuotrauku_nustatymai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paieska`
--
ALTER TABLE `paieska`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paieskai`
--
ALTER TABLE `paieskai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `valstybes`
--
ALTER TABLE `valstybes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `megstamiausi`
--
ALTER TABLE `megstamiausi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `nuotraukos`
--
ALTER TABLE `nuotraukos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `nuotrauku_nustatymai`
--
ALTER TABLE `nuotrauku_nustatymai`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `paieska`
--
ALTER TABLE `paieska`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `paieskai`
--
ALTER TABLE `paieskai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `valstybes`
--
ALTER TABLE `valstybes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=895;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
