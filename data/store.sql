-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Client :  localhost:8889
-- Généré le :  Jeu 19 Janvier 2017 à 16:59
-- Version du serveur :  5.5.42
-- Version de PHP :  7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de données :  `store`
--

-- --------------------------------------------------------

--
-- Structure de la table `Amis`
--

CREATE TABLE `Amis` (
  `id` int(11) NOT NULL,
  `users_id` int(11) DEFAULT NULL,
  `commu_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `Categories`
--

CREATE TABLE `Categories` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `Categories`
--

INSERT INTO `Categories` (`id`, `name`) VALUES
(1, 'Arcade'),
(2, 'Indie'),
(3, 'Adventure'),
(4, 'Pinball'),
(5, 'Quiz/Trivia'),
(6, 'Hack and slash/Beat ''em up'),
(7, 'Tactical'),
(8, 'Turn-based strategy (TBS)'),
(9, 'Strategy'),
(10, 'Sport'),
(11, 'Simulator'),
(12, 'Role-playing (RPG)'),
(13, 'Real Time Strategy (RTS)'),
(14, 'Racing'),
(15, 'Puzzle'),
(16, 'Platform'),
(17, 'Music'),
(18, 'Shooter'),
(19, 'Fighting'),
(20, 'Point-and-click');

-- --------------------------------------------------------

--
-- Structure de la table `Categories_jeux`
--

CREATE TABLE `Categories_jeux` (
  `id` int(11) NOT NULL,
  `jeux_id` int(11) DEFAULT NULL,
  `categories_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=164 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `Categories_jeux`
--

INSERT INTO `Categories_jeux` (`id`, `jeux_id`, `categories_id`) VALUES
(1, 1, 16),
(2, 2, 16),
(3, 3, 15),
(4, 4, 16),
(5, 4, 3),
(6, 5, 14),
(7, 6, 9),
(8, 7, 15),
(9, 7, 3),
(10, 7, 2),
(11, 8, 18),
(12, 8, 14),
(13, 8, 3),
(14, 9, 11),
(15, 10, 16),
(16, 11, 6),
(17, 12, 16),
(18, 13, 14),
(19, 14, 11),
(20, 14, 10),
(21, 15, 16),
(22, 16, 11),
(23, 17, 11),
(24, 18, 18),
(25, 19, 18),
(26, 19, 3),
(27, 20, 11),
(28, 20, 2),
(29, 20, 9),
(30, 21, 2),
(31, 22, 11),
(32, 23, 14),
(33, 24, 20),
(34, 24, 2),
(35, 25, 11),
(36, 25, 2),
(37, 25, 9),
(38, 26, 18),
(39, 27, 11),
(40, 27, 10),
(41, 28, 12),
(42, 28, 3),
(43, 29, 3),
(44, 29, 2),
(45, 29, 20),
(46, 30, 15),
(47, 31, 18),
(48, 31, 11),
(49, 32, 18),
(50, 33, 16),
(51, 33, 3),
(52, 33, 15),
(53, 34, 16),
(54, 35, 12),
(55, 35, 11),
(56, 35, 2),
(57, 36, 14),
(58, 37, 3),
(59, 37, 2),
(60, 38, 20),
(61, 39, 11),
(62, 39, 2),
(63, 40, 3),
(64, 41, 3),
(65, 41, 19),
(66, 42, 3),
(67, 43, 12),
(68, 43, 3),
(69, 44, 3),
(70, 44, 2),
(71, 45, 16),
(72, 46, 11),
(73, 46, 2),
(74, 46, 9),
(75, 47, 18),
(76, 48, 18),
(77, 49, 16),
(78, 50, 11),
(79, 51, 11),
(80, 52, 18),
(81, 53, 3),
(82, 53, 19),
(83, 53, 8),
(84, 54, 12),
(85, 55, 12),
(86, 55, 3),
(87, 56, 19),
(88, 56, 12),
(89, 56, 3),
(90, 58, 18),
(91, 58, 7),
(92, 59, 18),
(93, 59, 11),
(94, 59, 3),
(95, 59, 14),
(96, 60, 10),
(97, 61, 16),
(98, 62, 3),
(99, 63, 3),
(100, 64, 18),
(101, 64, 7),
(102, 65, 10),
(103, 67, 3),
(104, 68, 18),
(105, 68, 7),
(106, 69, 11),
(107, 69, 2),
(108, 69, 9),
(109, 71, 11),
(110, 72, 3),
(111, 72, 2),
(112, 73, 14),
(113, 73, 11),
(114, 74, 18),
(115, 75, 3),
(116, 76, 18),
(117, 76, 14),
(118, 76, 3),
(119, 77, 18),
(120, 78, 16),
(121, 78, 3),
(122, 78, 15),
(123, 78, 2),
(124, 79, 9),
(125, 79, 7),
(126, 80, 18),
(127, 80, 6),
(128, 81, 18),
(129, 81, 6),
(130, 82, 1),
(131, 82, 14),
(132, 83, 17),
(133, 84, 18),
(134, 84, 12),
(135, 84, 3),
(136, 85, 11),
(137, 85, 3),
(138, 85, 9),
(139, 85, 2),
(140, 86, 18),
(141, 86, 3),
(142, 87, 19),
(143, 88, 18),
(144, 88, 3),
(145, 88, 2),
(146, 89, 12),
(147, 90, 12),
(148, 90, 2),
(149, 90, 3),
(150, 91, 19),
(151, 93, 12),
(152, 94, 16),
(153, 95, 3),
(154, 95, 15),
(155, 95, 20),
(156, 96, 9),
(157, 97, 11),
(158, 97, 3),
(159, 98, 16),
(160, 98, 3),
(161, 99, 2),
(162, 99, 3),
(163, 100, 20);

-- --------------------------------------------------------

--
-- Structure de la table `Communaute`
--

CREATE TABLE `Communaute` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `Jeux`
--

CREATE TABLE `Jeux` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `summary` varchar(45) DEFAULT NULL,
  `cover_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `Jeux`
--

INSERT INTO `Jeux` (`id`, `name`, `summary`, `cover_url`) VALUES
(1, 'Super Mario World', 'Super Mario World (known in Japan as Super Ma', '//images.igdb.com/igdb/image/upload/t_thumb/rbdpnsh7jkx4cvejygkc.png'),
(2, 'Super Mario Bros. 3', 'Super Mario Bros. 3 is a platform video game ', '//images.igdb.com/igdb/image/upload/t_thumb/ogguvec9vhrsml4uxqrg.png'),
(3, 'Candy Crush Soda Saga', 'Spin-off to the famous Candy Crush Saga, made', '//images.igdb.com/igdb/image/upload/t_thumb/bdacvq7evn1skjcsbozw.png'),
(4, 'Super Mario Run', 'Super Mario goes mobile!\nUnlike other games i', '//images.igdb.com/igdb/image/upload/t_thumb/xlrghajdrbhlpuyk1xgf.png'),
(5, 'Mario Kart 64', NULL, '//images.igdb.com/igdb/image/upload/t_thumb/tnapkuvk8aup3aoamxuz.png'),
(6, 'PokÃ©mon Trading Card Game Online', 'PokÃ©mon Trading Card Game Online (also refer', '//images.igdb.com/igdb/image/upload/t_thumb/wlw3qjmd9u87he3zleh5.png'),
(7, 'Hello, Neighbour!', 'Hello Neighbor is a stealth horror game about', '//images.igdb.com/igdb/image/upload/t_thumb/tyelx5vyuefiuff0gqai.png'),
(8, 'Grand Theft Auto: Vice City', 'In the year 1986, Tommy Vercetti is heavily i', '//images.igdb.com/igdb/image/upload/t_thumb/wfeojuvgbk2kctpfdeff.png'),
(9, 'PewDiePie''s Tuber Simulator', 'Follow in the footsteps of one of the biggest', '//images.igdb.com/igdb/image/upload/t_thumb/aqsq0z9glpf5y6vzldqi.png'),
(10, 'Super Mario Bros.', NULL, '//images.igdb.com/igdb/image/upload/t_thumb/ygfznmlzsw2yb4j88qlv.png'),
(11, 'Dead Island 2', 'Welcome to Zombie California! Slay and surviv', '//images.igdb.com/igdb/image/upload/t_thumb/lumgkti6rht3evlbu8xw.png'),
(12, 'Super Mario 64', 'Super Mario 64 is a 3D action-adventure platf', '//images.igdb.com/igdb/image/upload/t_thumb/scutr4p9gytl4txb2soy.png'),
(13, 'Asphalt 8: Airborne', 'With more than 120 million downloads, the bes', '//images.igdb.com/igdb/image/upload/t_thumb/fgd8wuhejfasibzxyhr4.png'),
(14, 'Pro Evolution Soccer 2017', 'Pro Evolution Soccer 2017 is a sports video g', '//images.igdb.com/igdb/image/upload/t_thumb/togsnlwzoipzu4b68k03.png'),
(15, 'Super Mario 3D World', NULL, '//images.igdb.com/igdb/image/upload/t_thumb/oqqqgruohtigzopvxxbn.png'),
(16, 'Honey Select', 'Honey Select is an eroge created by the Japan', '//images.igdb.com/igdb/image/upload/t_thumb/j4w0ev381yutxuhv8akc.png'),
(17, 'Totally Accurate Battle Simulator', 'A physics based medieval battle simulator whi', '//images.igdb.com/igdb/image/upload/t_thumb/vex1s6b1qxq5bqz2puu8.png'),
(18, 'Call of Duty: Modern Warfare Remastered', 'One of the most critically-acclaimed games in', '//images.igdb.com/igdb/image/upload/t_thumb/yixntz4bbcnw8qfnea7v.png'),
(19, 'ARK: Survival Evolved', 'ARK: Survival Evolved takes on the survival g', '//images.igdb.com/igdb/image/upload/t_thumb/dmwwgrfcsgugg8fhsye9.png'),
(20, 'Basement', 'Basement is a strategy game, where you play a', '//images.igdb.com/igdb/image/upload/t_thumb/ruhw3cmmk0jkechnezw8.png'),
(21, 'Genital Jousting', 'Genital Jousting is an online and local multi', '//images.igdb.com/igdb/image/upload/t_thumb/mzq1tgabzrraghos5yt6.png'),
(22, 'Euro Truck Simulator 2', 'Euro Truck Simulator 2 is a vehicle simulatio', '//images.igdb.com/igdb/image/upload/t_thumb/gklcunivr2u4gsouchfy.png'),
(23, 'Need for Speed: Most Wanted', 'Need for Speed: Most Wanted takes on the game', '//images.igdb.com/igdb/image/upload/t_thumb/onlimcrgz1zsngrffmql.png'),
(24, 'Five Nights at Freddy''s: Sister Location', 'Welcome to Circus Baby''s Pizza World, where f', '//images.igdb.com/igdb/image/upload/t_thumb/qzs2lfqf6cg6ir0x0qi4.png'),
(25, 'Villagers', 'Villagers is a beautifully illustrated and ri', '//images.igdb.com/igdb/image/upload/t_thumb/aooqizxhppovwmuyfkql.png'),
(26, 'Plants vs Zombies: Garden Warfare 2', 'The battle for suburbia grows to crazy new he', '//images.igdb.com/igdb/image/upload/t_thumb/vk9uczy2gvbs0kh9qcee.png'),
(27, 'Pro Evolution Soccer 2016', 'Pro Evolution Soccer 2016 is a football simul', '//images.igdb.com/igdb/image/upload/t_thumb/njdljknlffn4gdmpwvrh.png'),
(28, 'The Witcher 3: Wild Hunt', 'The Witcher: Wild Hunt is a story-driven, nex', '//images.igdb.com/igdb/image/upload/t_thumb/enfj0w4cqsicczzkaas0.png'),
(29, 'Masochisia', 'A young man discovers through a series of hal', '//images.igdb.com/igdb/image/upload/t_thumb/mftzxbt2mmh1bufp3kal.png'),
(30, 'Candy Crush Saga', NULL, '//images.igdb.com/igdb/image/upload/t_thumb/u9s7ap9gi5kestfxhxdf.png'),
(31, 'Call of Duty 4: Modern Warfare', 'Call of Duty 4: Modern Warfare differs from p', '//images.igdb.com/igdb/image/upload/t_thumb/okxplofk1uomxyrnlf2u.png'),
(32, 'Battlefield 4', 'Battlefield 4â„¢ is the genre-defining action', '//images.igdb.com/igdb/image/upload/t_thumb/g23vpma81u9fdiwftyyq.png'),
(33, 'The Last Guardian', 'In a strange and mystical  land, a young boy ', '//images.igdb.com/igdb/image/upload/t_thumb/munqfxbnf1ur93vajjtq.png'),
(34, 'Super Mario Maker', 'Super Mario Maker lets peopleâ€™s imagination', '//images.igdb.com/igdb/image/upload/t_thumb/dp2l6fpd1yfj0sxcjsi8.png'),
(35, 'A Life in Silk - The First Cumming', 'A Life in Silk is a highly-interactive visual', '//images.igdb.com/igdb/image/upload/t_thumb/oo0dqt8ollefvigrr6bj.png'),
(36, 'Mario Kart 8', 'Turn your racing experience upside down! Nint', '//images.igdb.com/igdb/image/upload/t_thumb/ivcvfoeo23xitx8xfz8m.png'),
(37, 'Only If', 'Only If is a surreal first person adventure-p', '//images.igdb.com/igdb/image/upload/t_thumb/dwlut5kq4edrbjxlmf8o.png'),
(38, 'Five Nights at Freddy''s 2', 'Welcome back to the new and improved Freddy F', '//images.igdb.com/igdb/image/upload/t_thumb/gijknwoi0dybriqaxnxi.png'),
(39, 'Intensive Exposure', 'Intensive Exposure is a fast paced game in wh', '//images.igdb.com/igdb/image/upload/t_thumb/ialyqgcgdjsgmsawu9it.png'),
(40, 'The Legend of Zelda: Ocarina of Time', 'The Legend of Zelda: Ocarina of Time reveals ', '//images.igdb.com/igdb/image/upload/t_thumb/shusfaev6gpjuskum2vp.png'),
(41, 'Dragon Ball: Xenoverse 2', 'DRAGON BALL XENOVERSE 2 builds upon the highl', '//images.igdb.com/igdb/image/upload/t_thumb/oss9bgnecqtgn2fvoae2.png'),
(42, 'The Walking Dead: The Telltale Series - A New', 'When family is all you have leftâ€¦how far wi', '//images.igdb.com/igdb/image/upload/t_thumb/cjktwgl53zzbifkcwu7n.png'),
(43, 'Earthlock: Festival of Magic', 'An original turn-based role-playing game set ', '//images.igdb.com/igdb/image/upload/t_thumb/g0whm2zpztk4g3mwpzo4.png'),
(44, 'ASTRONEER', 'Explore and exploit distant worlds in  â€“ A ', '//images.igdb.com/igdb/image/upload/t_thumb/xgguzsjsxtlaclprqytj.png'),
(45, 'Super Mario Galaxy', NULL, '//images.igdb.com/igdb/image/upload/t_thumb/tzhmiarlwidopzrzohd5.png'),
(46, 'RIOT - Civil Unrest', 'As civil crisis deepens and inequality tears ', '//images.igdb.com/igdb/image/upload/t_thumb/cdfsdijmouaxz7jnx8bl.png'),
(47, 'Resident Evil 4 HD', NULL, '//images.igdb.com/igdb/image/upload/t_thumb/sr0fecogohjqyqb7zjvt.png'),
(48, 'Call of Duty: Black Ops III', 'Call of Duty: Black Ops 3 deploys players int', '//images.igdb.com/igdb/image/upload/t_thumb/sllwko8hqltmmklognzp.png'),
(49, 'Super Mario Galaxy 2', NULL, '//images.igdb.com/igdb/image/upload/t_thumb/wyk6wqgo2fjd4g6xdntx.png'),
(50, 'Oppai Slider 2', NULL, '//images.igdb.com/igdb/image/upload/t_thumb/nkugb4uvps5dzccb1wpl.png'),
(51, 'Oppai Slider 2', NULL, '//images.igdb.com/igdb/image/upload/t_thumb/nkugb4uvps5dzccb1wpl.png'),
(52, 'Left 4 Dead 2', 'Left 4 Dead 2 is a cooperative first-person s', '//images.igdb.com/igdb/image/upload/t_thumb/fxyjfhvtwzzof9ij8ehp.png'),
(53, 'PokÃ©mon GO', 'Travel between the real world and the virtual', '//images.igdb.com/igdb/image/upload/t_thumb/ztn8s8y6o5zslmwbc9b6.png'),
(54, 'Mount & Blade II: Bannerlord', 'Mount &amp; Blade II: Bannerlord is an upcomi', '//images.igdb.com/igdb/image/upload/t_thumb/r5busv6ylns65cfuhadd.png'),
(55, 'Tyranny', 'You are a Fatebinder, the judge and execution', '//images.igdb.com/igdb/image/upload/t_thumb/n4docywvgez39uanixnj.png'),
(56, 'Final Fantasy XV', 'Final Fantasy XV is an upcoming action role-p', '//images.igdb.com/igdb/image/upload/t_thumb/exzxitwgvhwzric1byej.png'),
(57, 'Winds of Revenge', 'Wind of Revenge is a simple game made by a te', NULL),
(58, 'Counter-Strike: Global Offensive', 'Counter-Strike: Global Offensive (CS:GO) expa', '//images.igdb.com/igdb/image/upload/t_thumb/tjavlrx5y8lkol7uql40.png'),
(59, 'Grand Theft Auto V', 'The biggest, most dynamic and most diverse op', '//images.igdb.com/igdb/image/upload/t_thumb/vdzfsbissgp55fvfxccp.png'),
(60, 'NBA 2K17', 'NBA 2K franchise continues to stake its claim', '//images.igdb.com/igdb/image/upload/t_thumb/tfebzciucanpvkzsq6ot.png'),
(61, 'Super Mario 3D Land', 'Mario is once again out to beat Bowser in Sup', '//images.igdb.com/igdb/image/upload/t_thumb/fcgiwb5fhmiyoil5xohy.png'),
(62, 'Resident Evil 7: biohazard', 'Resident Evil 7: Biohazard is an upcoming sur', '//images.igdb.com/igdb/image/upload/t_thumb/wprikj6ydxigxadbt2ld.png'),
(63, 'Uncharted 4: A Thief''s End', 'Several years after his last adventure, retir', '//images.igdb.com/igdb/image/upload/t_thumb/tocoysjnay4he4zjdlwo.png'),
(64, 'Tom Clancy''s Rainbow Six: Siege', 'Inspired by the reality of counter terrorist ', '//images.igdb.com/igdb/image/upload/t_thumb/sztcjmrrz4bu9hzthq0m.png'),
(65, 'FIFA 17', 'For the first time ever in FIFA, live your st', '//images.igdb.com/igdb/image/upload/t_thumb/cmtplicvdajycqx2vz6t.png'),
(66, 'Dead by Daylight', 'Dead by Daylight is an asymmetrical multiplay', '//images.igdb.com/igdb/image/upload/t_thumb/j4vfgb82gxzsjicvdrqx.png'),
(67, 'Gravity Rush Remastered', 'Gravity Rush is an action-adventure video gam', '//images.igdb.com/igdb/image/upload/t_thumb/mx5du2ic1safvthafuav.png'),
(68, 'Call of Duty: Modern Warfare 3', 'Call of Duty: Modern Warfare 3 is a first-per', '//images.igdb.com/igdb/image/upload/t_thumb/obimr8uf45m5cdjltket.png'),
(69, 'Youtubers Life', 'Youtubers Life is the ultimate vlogger tycoon', '//images.igdb.com/igdb/image/upload/t_thumb/aifxr1f9hl9l6eh6a7ll.png'),
(70, 'Call of Duty: Black Ops III - Awakening', 'DLC 1 Awakening for Black Ops 3 with all new ', '//images.igdb.com/igdb/image/upload/t_thumb/hezdwiux0snzgwdky4vh.png'),
(71, 'Farming Simulator 17', 'Farming Simulator 17 invites you into the cha', '//images.igdb.com/igdb/image/upload/t_thumb/pa3z9uzmi4qfhuu6huc8.png'),
(72, 'Valley', 'Explore the vast and beautiful world of Valle', '//images.igdb.com/igdb/image/upload/t_thumb/teckkuuai65o2eh6owkq.png'),
(73, 'Need for Speed: Most Wanted', NULL, '//images.igdb.com/igdb/image/upload/t_thumb/i9nybooe1t3tve9yhyn0.png'),
(74, 'Far Cry: Primal', 'Gamers play as TAKKAR, a seasoned hunter and ', '//images.igdb.com/igdb/image/upload/t_thumb/z0gwvg9bgdi7a5xuwlqh.png'),
(75, 'The Legend of Zelda: Breath of the Wild', '"Step into a world of discovery, exploration ', '//images.igdb.com/igdb/image/upload/t_thumb/id7oqxsma8y2lcazszzk.png'),
(76, 'Grand Theft Auto IV', 'What does the American dream mean today? For ', '//images.igdb.com/igdb/image/upload/t_thumb/tvcgnhqrhts9gcqqjrgj.png'),
(77, 'Call of Duty: Infinite Warfare', 'Call of Duty: Infinite Warfare delivers three', '//images.igdb.com/igdb/image/upload/t_thumb/eal3ny34yjjyirfio9wj.png'),
(78, 'Candle', 'Candle is an adventure with challenging puzzl', '//images.igdb.com/igdb/image/upload/t_thumb/az3ynjq4ethsnubuolt2.png'),
(79, 'Shadow Tactics: Blades of the Shogun', 'Skillfully hide from and sneak past the enemi', '//images.igdb.com/igdb/image/upload/t_thumb/kgwsarnz3dkb4gwttc3u.png'),
(80, 'Space Hulk: Deathwing', 'Space Hulk: Deathwing is a First-Person Shoot', '//images.igdb.com/igdb/image/upload/t_thumb/jkxacpun6pxy4wkftye1.png'),
(81, 'Dead Rising 4', 'Itâ€™s the holiday season in Willamette, Colo', '//images.igdb.com/igdb/image/upload/t_thumb/rxykiiokoyhetfgtlwgm.png'),
(82, 'Forza Horizon 3', 'Youâ€™re in charge of the Horizon Festival. C', '//images.igdb.com/igdb/image/upload/t_thumb/olxhsw4djfakodpuedut.png'),
(83, 'Just Dance 2017', NULL, '//images.igdb.com/igdb/image/upload/t_thumb/zcysnxvf8dmqs3idnqu9.png'),
(84, 'Mass Effect: Andromeda', 'A new adventure awaits in the Mass Effect uni', '//images.igdb.com/igdb/image/upload/t_thumb/to0fpjpsmljecmfh5udd.png'),
(85, 'Caravan', 'Many myths and legends have been woven about ', '//images.igdb.com/igdb/image/upload/t_thumb/f98wqaqj5e05b1dfxd7z.png'),
(86, 'Rise of the Tomb Raider', 'Join Lara Croft on her first great tomb raidi', '//images.igdb.com/igdb/image/upload/t_thumb/qk5tk3ny2ldnkubviav7.png'),
(87, 'Dragon Ball Z: Budokai Tenkaichi 3', NULL, '//images.igdb.com/igdb/image/upload/t_thumb/zb9e8lng5su9zpkc4ehf.png'),
(88, 'Arizona Sunshine', 'Step into the midst of a zombie apocalypse as', '//images.igdb.com/igdb/image/upload/t_thumb/tuyyrk2tlzm5qfd7irtl.png'),
(89, 'Horizon: Zero Dawn', 'Horizon Zero Dawn, an exhilarating new action', '//images.igdb.com/igdb/image/upload/t_thumb/yvgbtirrauwekgytcfmg.png'),
(90, 'Sky Break', 'Sky Break is an open-world game on a stormy a', '//images.igdb.com/igdb/image/upload/t_thumb/ebebxnv543d4y5e4wazd.png'),
(91, 'Super Smash Bros. for Wii U', 'Super Smash Bros. for Wii U is the fourth con', '//images.igdb.com/igdb/image/upload/t_thumb/hkvfafzafofri94eyxfw.png'),
(92, 'FINAL FANTASY XV - Season Pass Upgrade', 'The Season Pass allows you to download additi', '//images.igdb.com/igdb/image/upload/t_thumb/rlc4qgumkjimw09mxgdk.png'),
(93, 'Cyberpunk 2077', 'The upcoming RPG from CD Projekt RED, creator', '//images.igdb.com/igdb/image/upload/t_thumb/h9ssivehsetxeoodt6hu.png'),
(94, 'Super Mario All-Stars', 'Super Mario All-Stars was released on the SNE', '//images.igdb.com/igdb/image/upload/t_thumb/nl9vdgf0yei8xzdloza1.png'),
(95, 'Syberia 3', 'Syberia 3 takes you inside an enchanting, mys', '//images.igdb.com/igdb/image/upload/t_thumb/rcnkq8wf9jykaghykcoj.png'),
(96, 'Microsoft Spider Solitaire', 'Spider Solitaire, also known as Microsoft Spi', '//images.igdb.com/igdb/image/upload/t_thumb/zyz5rbwhlqwxhub38xlu.png'),
(97, 'Scrap Mechanic', 'Welcome to the machine-filled creative paradi', '//images.igdb.com/igdb/image/upload/t_thumb/vajbps3fphrcm7yhajmy.png'),
(98, 'Shantae: Half-Genie Hero', 'Shantae embarks on her first full HD adventur', '//images.igdb.com/igdb/image/upload/t_thumb/nl0xylkr12ta44sufduv.png'),
(99, 'Aragami', 'ARAGAMI is a third-person stealth game in whi', '//images.igdb.com/igdb/image/upload/t_thumb/q4xygfwkhoihkdkdwteq.png'),
(100, 'Layers of Fear', 'Layers of Fear is a psychedelic horror that w', '//images.igdb.com/igdb/image/upload/t_thumb/cszqaj3wjp7smxg4llpu.png');

-- --------------------------------------------------------

--
-- Structure de la table `Screen`
--

CREATE TABLE `Screen` (
  `id` int(11) NOT NULL,
  `url` varchar(45) DEFAULT NULL,
  `cloudinary_id` varchar(45) DEFAULT NULL,
  `jeux_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=401 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `Screen`
--

INSERT INTO `Screen` (`id`, `url`, `cloudinary_id`, `jeux_id`) VALUES
(1, '//images.igdb.com/igdb/image/upload/t_thumb/p', NULL, 1),
(2, '//images.igdb.com/igdb/image/upload/t_thumb/b', NULL, 1),
(3, '//images.igdb.com/igdb/image/upload/t_thumb/i', NULL, 1),
(4, '//images.igdb.com/igdb/image/upload/t_thumb/x', NULL, 1),
(5, '//images.igdb.com/igdb/image/upload/t_thumb/e', NULL, 2),
(6, '//images.igdb.com/igdb/image/upload/t_thumb/e', NULL, 2),
(7, '//images.igdb.com/igdb/image/upload/t_thumb/c', NULL, 2),
(8, '//images.igdb.com/igdb/image/upload/t_thumb/r', NULL, 3),
(9, '//images.igdb.com/igdb/image/upload/t_thumb/w', NULL, 3),
(10, '//images.igdb.com/igdb/image/upload/t_thumb/l', NULL, 4),
(11, '//images.igdb.com/igdb/image/upload/t_thumb/w', NULL, 4),
(12, '//images.igdb.com/igdb/image/upload/t_thumb/x', NULL, 5),
(13, '//images.igdb.com/igdb/image/upload/t_thumb/y', NULL, 5),
(14, '//images.igdb.com/igdb/image/upload/t_thumb/v', NULL, 5),
(15, '//images.igdb.com/igdb/image/upload/t_thumb/q', NULL, 5),
(16, '//images.igdb.com/igdb/image/upload/t_thumb/e', NULL, 5),
(17, '//images.igdb.com/igdb/image/upload/t_thumb/y', NULL, 7),
(18, '//images.igdb.com/igdb/image/upload/t_thumb/d', NULL, 7),
(19, '//images.igdb.com/igdb/image/upload/t_thumb/w', NULL, 7),
(20, '//images.igdb.com/igdb/image/upload/t_thumb/p', NULL, 7),
(21, '//images.igdb.com/igdb/image/upload/t_thumb/m', NULL, 7),
(22, '//images.igdb.com/igdb/image/upload/t_thumb/y', NULL, 8),
(23, '//images.igdb.com/igdb/image/upload/t_thumb/t', NULL, 8),
(24, '//images.igdb.com/igdb/image/upload/t_thumb/c', NULL, 8),
(25, '//images.igdb.com/igdb/image/upload/t_thumb/i', NULL, 8),
(26, '//images.igdb.com/igdb/image/upload/t_thumb/t', NULL, 8),
(27, '//images.igdb.com/igdb/image/upload/t_thumb/w', NULL, 9),
(28, '//images.igdb.com/igdb/image/upload/t_thumb/u', NULL, 9),
(29, '//images.igdb.com/igdb/image/upload/t_thumb/s', NULL, 9),
(30, '//images.igdb.com/igdb/image/upload/t_thumb/n', NULL, 10),
(31, '//images.igdb.com/igdb/image/upload/t_thumb/b', NULL, 10),
(32, '//images.igdb.com/igdb/image/upload/t_thumb/q', NULL, 10),
(33, '//images.igdb.com/igdb/image/upload/t_thumb/a', NULL, 10),
(34, '//images.igdb.com/igdb/image/upload/t_thumb/e', NULL, 10),
(35, '//images.igdb.com/igdb/image/upload/t_thumb/k', NULL, 11),
(36, '//images.igdb.com/igdb/image/upload/t_thumb/m', NULL, 11),
(37, '//images.igdb.com/igdb/image/upload/t_thumb/n', NULL, 11),
(38, '//images.igdb.com/igdb/image/upload/t_thumb/g', NULL, 11),
(39, '//images.igdb.com/igdb/image/upload/t_thumb/c', NULL, 11),
(40, '//images.igdb.com/igdb/image/upload/t_thumb/c', NULL, 12),
(41, '//images.igdb.com/igdb/image/upload/t_thumb/n', NULL, 12),
(42, '//images.igdb.com/igdb/image/upload/t_thumb/b', NULL, 12),
(43, '//images.igdb.com/igdb/image/upload/t_thumb/h', NULL, 12),
(44, '//images.igdb.com/igdb/image/upload/t_thumb/a', NULL, 12),
(45, '//images.igdb.com/igdb/image/upload/t_thumb/i', NULL, 13),
(46, '//images.igdb.com/igdb/image/upload/t_thumb/n', NULL, 13),
(47, '//images.igdb.com/igdb/image/upload/t_thumb/u', NULL, 13),
(48, '//images.igdb.com/igdb/image/upload/t_thumb/x', NULL, 13),
(49, '//images.igdb.com/igdb/image/upload/t_thumb/c', NULL, 14),
(50, '//images.igdb.com/igdb/image/upload/t_thumb/w', NULL, 14),
(51, '//images.igdb.com/igdb/image/upload/t_thumb/c', NULL, 14),
(52, '//images.igdb.com/igdb/image/upload/t_thumb/l', NULL, 14),
(53, '//images.igdb.com/igdb/image/upload/t_thumb/d', NULL, 14),
(54, '//images.igdb.com/igdb/image/upload/t_thumb/o', NULL, 15),
(55, '//images.igdb.com/igdb/image/upload/t_thumb/y', NULL, 15),
(56, '//images.igdb.com/igdb/image/upload/t_thumb/k', NULL, 15),
(57, '//images.igdb.com/igdb/image/upload/t_thumb/v', NULL, 15),
(58, '//images.igdb.com/igdb/image/upload/t_thumb/q', NULL, 15),
(59, '//images.igdb.com/igdb/image/upload/t_thumb/h', NULL, 16),
(60, '//images.igdb.com/igdb/image/upload/t_thumb/y', NULL, 16),
(61, '//images.igdb.com/igdb/image/upload/t_thumb/a', NULL, 16),
(62, '//images.igdb.com/igdb/image/upload/t_thumb/i', NULL, 17),
(63, '//images.igdb.com/igdb/image/upload/t_thumb/n', NULL, 17),
(64, '//images.igdb.com/igdb/image/upload/t_thumb/z', NULL, 17),
(65, '//images.igdb.com/igdb/image/upload/t_thumb/f', NULL, 17),
(66, '//images.igdb.com/igdb/image/upload/t_thumb/y', NULL, 18),
(67, '//images.igdb.com/igdb/image/upload/t_thumb/m', NULL, 18),
(68, '//images.igdb.com/igdb/image/upload/t_thumb/h', NULL, 18),
(69, '//images.igdb.com/igdb/image/upload/t_thumb/m', NULL, 18),
(70, '//images.igdb.com/igdb/image/upload/t_thumb/m', NULL, 18),
(71, '//images.igdb.com/igdb/image/upload/t_thumb/g', NULL, 19),
(72, '//images.igdb.com/igdb/image/upload/t_thumb/j', NULL, 19),
(73, '//images.igdb.com/igdb/image/upload/t_thumb/j', NULL, 19),
(74, '//images.igdb.com/igdb/image/upload/t_thumb/k', NULL, 19),
(75, '//images.igdb.com/igdb/image/upload/t_thumb/l', NULL, 19),
(76, '//images.igdb.com/igdb/image/upload/t_thumb/t', NULL, 21),
(77, '//images.igdb.com/igdb/image/upload/t_thumb/z', NULL, 22),
(78, '//images.igdb.com/igdb/image/upload/t_thumb/w', NULL, 22),
(79, '//images.igdb.com/igdb/image/upload/t_thumb/s', NULL, 22),
(80, '//images.igdb.com/igdb/image/upload/t_thumb/p', NULL, 22),
(81, '//images.igdb.com/igdb/image/upload/t_thumb/g', NULL, 22),
(82, '//images.igdb.com/igdb/image/upload/t_thumb/b', NULL, 23),
(83, '//images.igdb.com/igdb/image/upload/t_thumb/v', NULL, 23),
(84, '//images.igdb.com/igdb/image/upload/t_thumb/j', NULL, 23),
(85, '//images.igdb.com/igdb/image/upload/t_thumb/k', NULL, 23),
(86, '//images.igdb.com/igdb/image/upload/t_thumb/w', NULL, 23),
(87, '//images.igdb.com/igdb/image/upload/t_thumb/d', NULL, 24),
(88, '//images.igdb.com/igdb/image/upload/t_thumb/w', NULL, 24),
(89, '//images.igdb.com/igdb/image/upload/t_thumb/x', NULL, 24),
(90, '//images.igdb.com/igdb/image/upload/t_thumb/o', NULL, 24),
(91, '//images.igdb.com/igdb/image/upload/t_thumb/r', NULL, 24),
(92, '//images.igdb.com/igdb/image/upload/t_thumb/y', NULL, 25),
(93, '//images.igdb.com/igdb/image/upload/t_thumb/j', NULL, 25),
(94, '//images.igdb.com/igdb/image/upload/t_thumb/o', NULL, 25),
(95, '//images.igdb.com/igdb/image/upload/t_thumb/r', NULL, 26),
(96, '//images.igdb.com/igdb/image/upload/t_thumb/m', NULL, 26),
(97, '//images.igdb.com/igdb/image/upload/t_thumb/z', NULL, 26),
(98, '//images.igdb.com/igdb/image/upload/t_thumb/f', NULL, 26),
(99, '//images.igdb.com/igdb/image/upload/t_thumb/k', NULL, 26),
(100, '//images.igdb.com/igdb/image/upload/t_thumb/s', NULL, 27),
(101, '//images.igdb.com/igdb/image/upload/t_thumb/n', NULL, 27),
(102, '//images.igdb.com/igdb/image/upload/t_thumb/u', NULL, 27),
(103, '//images.igdb.com/igdb/image/upload/t_thumb/k', NULL, 27),
(104, '//images.igdb.com/igdb/image/upload/t_thumb/i', NULL, 27),
(105, '//images.igdb.com/igdb/image/upload/t_thumb/z', NULL, 28),
(106, '//images.igdb.com/igdb/image/upload/t_thumb/f', NULL, 28),
(107, '//images.igdb.com/igdb/image/upload/t_thumb/e', NULL, 28),
(108, '//images.igdb.com/igdb/image/upload/t_thumb/u', NULL, 28),
(109, '//images.igdb.com/igdb/image/upload/t_thumb/m', NULL, 28),
(110, '//images.igdb.com/igdb/image/upload/t_thumb/a', NULL, 29),
(111, '//images.igdb.com/igdb/image/upload/t_thumb/l', NULL, 29),
(112, '//images.igdb.com/igdb/image/upload/t_thumb/k', NULL, 31),
(113, '//images.igdb.com/igdb/image/upload/t_thumb/r', NULL, 31),
(114, '//images.igdb.com/igdb/image/upload/t_thumb/q', NULL, 31),
(115, '//images.igdb.com/igdb/image/upload/t_thumb/z', NULL, 31),
(116, '//images.igdb.com/igdb/image/upload/t_thumb/l', NULL, 31),
(117, '//images.igdb.com/igdb/image/upload/t_thumb/c', NULL, 32),
(118, '//images.igdb.com/igdb/image/upload/t_thumb/y', NULL, 32),
(119, '//images.igdb.com/igdb/image/upload/t_thumb/d', NULL, 32),
(120, '//images.igdb.com/igdb/image/upload/t_thumb/i', NULL, 32),
(121, '//images.igdb.com/igdb/image/upload/t_thumb/b', NULL, 33),
(122, '//images.igdb.com/igdb/image/upload/t_thumb/r', NULL, 33),
(123, '//images.igdb.com/igdb/image/upload/t_thumb/l', NULL, 33),
(124, '//images.igdb.com/igdb/image/upload/t_thumb/c', NULL, 33),
(125, '//images.igdb.com/igdb/image/upload/t_thumb/a', NULL, 33),
(126, '//images.igdb.com/igdb/image/upload/t_thumb/s', NULL, 34),
(127, '//images.igdb.com/igdb/image/upload/t_thumb/a', NULL, 34),
(128, '//images.igdb.com/igdb/image/upload/t_thumb/q', NULL, 35),
(129, '//images.igdb.com/igdb/image/upload/t_thumb/i', NULL, 35),
(130, '//images.igdb.com/igdb/image/upload/t_thumb/u', NULL, 36),
(131, '//images.igdb.com/igdb/image/upload/t_thumb/e', NULL, 36),
(132, '//images.igdb.com/igdb/image/upload/t_thumb/e', NULL, 36),
(133, '//images.igdb.com/igdb/image/upload/t_thumb/l', NULL, 36),
(134, '//images.igdb.com/igdb/image/upload/t_thumb/z', NULL, 36),
(135, '//images.igdb.com/igdb/image/upload/t_thumb/x', NULL, 37),
(136, '//images.igdb.com/igdb/image/upload/t_thumb/g', NULL, 37),
(137, '//images.igdb.com/igdb/image/upload/t_thumb/j', NULL, 38),
(138, '//images.igdb.com/igdb/image/upload/t_thumb/z', NULL, 39),
(139, '//images.igdb.com/igdb/image/upload/t_thumb/m', NULL, 39),
(140, '//images.igdb.com/igdb/image/upload/t_thumb/p', NULL, 39),
(141, '//images.igdb.com/igdb/image/upload/t_thumb/t', NULL, 39),
(142, '//images.igdb.com/igdb/image/upload/t_thumb/d', NULL, 39),
(143, '//images.igdb.com/igdb/image/upload/t_thumb/h', NULL, 40),
(144, '//images.igdb.com/igdb/image/upload/t_thumb/b', NULL, 40),
(145, '//images.igdb.com/igdb/image/upload/t_thumb/i', NULL, 40),
(146, '//images.igdb.com/igdb/image/upload/t_thumb/o', NULL, 40),
(147, '//images.igdb.com/igdb/image/upload/t_thumb/p', NULL, 40),
(148, '//images.igdb.com/igdb/image/upload/t_thumb/y', NULL, 41),
(149, '//images.igdb.com/igdb/image/upload/t_thumb/n', NULL, 41),
(150, '//images.igdb.com/igdb/image/upload/t_thumb/k', NULL, 41),
(151, '//images.igdb.com/igdb/image/upload/t_thumb/k', NULL, 41),
(152, '//images.igdb.com/igdb/image/upload/t_thumb/x', NULL, 41),
(153, '//images.igdb.com/igdb/image/upload/t_thumb/u', NULL, 42),
(154, '//images.igdb.com/igdb/image/upload/t_thumb/s', NULL, 42),
(155, '//images.igdb.com/igdb/image/upload/t_thumb/h', NULL, 42),
(156, '//images.igdb.com/igdb/image/upload/t_thumb/a', NULL, 42),
(157, '//images.igdb.com/igdb/image/upload/t_thumb/b', NULL, 42),
(158, '//images.igdb.com/igdb/image/upload/t_thumb/d', NULL, 43),
(159, '//images.igdb.com/igdb/image/upload/t_thumb/e', NULL, 43),
(160, '//images.igdb.com/igdb/image/upload/t_thumb/j', NULL, 43),
(161, '//images.igdb.com/igdb/image/upload/t_thumb/d', NULL, 43),
(162, '//images.igdb.com/igdb/image/upload/t_thumb/l', NULL, 43),
(163, '//images.igdb.com/igdb/image/upload/t_thumb/k', NULL, 44),
(164, '//images.igdb.com/igdb/image/upload/t_thumb/d', NULL, 44),
(165, '//images.igdb.com/igdb/image/upload/t_thumb/m', NULL, 44),
(166, '//images.igdb.com/igdb/image/upload/t_thumb/e', NULL, 44),
(167, '//images.igdb.com/igdb/image/upload/t_thumb/o', NULL, 45),
(168, '//images.igdb.com/igdb/image/upload/t_thumb/f', NULL, 45),
(169, '//images.igdb.com/igdb/image/upload/t_thumb/p', NULL, 45),
(170, '//images.igdb.com/igdb/image/upload/t_thumb/i', NULL, 45),
(171, '//images.igdb.com/igdb/image/upload/t_thumb/x', NULL, 46),
(172, '//images.igdb.com/igdb/image/upload/t_thumb/b', NULL, 46),
(173, '//images.igdb.com/igdb/image/upload/t_thumb/t', NULL, 46),
(174, '//images.igdb.com/igdb/image/upload/t_thumb/k', NULL, 46),
(175, '//images.igdb.com/igdb/image/upload/t_thumb/m', NULL, 46),
(176, '//images.igdb.com/igdb/image/upload/t_thumb/k', NULL, 47),
(177, '//images.igdb.com/igdb/image/upload/t_thumb/p', NULL, 48),
(178, '//images.igdb.com/igdb/image/upload/t_thumb/l', NULL, 48),
(179, '//images.igdb.com/igdb/image/upload/t_thumb/l', NULL, 48),
(180, '//images.igdb.com/igdb/image/upload/t_thumb/p', NULL, 48),
(181, '//images.igdb.com/igdb/image/upload/t_thumb/m', NULL, 48),
(182, '//images.igdb.com/igdb/image/upload/t_thumb/w', NULL, 49),
(183, '//images.igdb.com/igdb/image/upload/t_thumb/j', NULL, 49),
(184, '//images.igdb.com/igdb/image/upload/t_thumb/z', NULL, 49),
(185, '//images.igdb.com/igdb/image/upload/t_thumb/z', NULL, 49),
(186, '//images.igdb.com/igdb/image/upload/t_thumb/w', NULL, 49),
(187, '//images.igdb.com/igdb/image/upload/t_thumb/w', NULL, 52),
(188, '//images.igdb.com/igdb/image/upload/t_thumb/u', NULL, 52),
(189, '//images.igdb.com/igdb/image/upload/t_thumb/s', NULL, 52),
(190, '//images.igdb.com/igdb/image/upload/t_thumb/r', NULL, 52),
(191, '//images.igdb.com/igdb/image/upload/t_thumb/b', NULL, 52),
(192, '//images.igdb.com/igdb/image/upload/t_thumb/j', NULL, 53),
(193, '//images.igdb.com/igdb/image/upload/t_thumb/a', NULL, 53),
(194, '//images.igdb.com/igdb/image/upload/t_thumb/s', NULL, 53),
(195, '//images.igdb.com/igdb/image/upload/t_thumb/v', NULL, 54),
(196, '//images.igdb.com/igdb/image/upload/t_thumb/l', NULL, 54),
(197, '//images.igdb.com/igdb/image/upload/t_thumb/s', NULL, 54),
(198, '//images.igdb.com/igdb/image/upload/t_thumb/d', NULL, 54),
(199, '//images.igdb.com/igdb/image/upload/t_thumb/a', NULL, 54),
(200, '//images.igdb.com/igdb/image/upload/t_thumb/a', NULL, 55),
(201, '//images.igdb.com/igdb/image/upload/t_thumb/y', NULL, 55),
(202, '//images.igdb.com/igdb/image/upload/t_thumb/b', NULL, 55),
(203, '//images.igdb.com/igdb/image/upload/t_thumb/i', NULL, 55),
(204, '//images.igdb.com/igdb/image/upload/t_thumb/i', NULL, 55),
(205, '//images.igdb.com/igdb/image/upload/t_thumb/r', NULL, 56),
(206, '//images.igdb.com/igdb/image/upload/t_thumb/x', NULL, 56),
(207, '//images.igdb.com/igdb/image/upload/t_thumb/f', NULL, 56),
(208, '//images.igdb.com/igdb/image/upload/t_thumb/y', NULL, 56),
(209, '//images.igdb.com/igdb/image/upload/t_thumb/x', NULL, 57),
(210, '//images.igdb.com/igdb/image/upload/t_thumb/g', NULL, 57),
(211, '//images.igdb.com/igdb/image/upload/t_thumb/n', NULL, 57),
(212, '//images.igdb.com/igdb/image/upload/t_thumb/j', NULL, 58),
(213, '//images.igdb.com/igdb/image/upload/t_thumb/n', NULL, 58),
(214, '//images.igdb.com/igdb/image/upload/t_thumb/u', NULL, 58),
(215, '//images.igdb.com/igdb/image/upload/t_thumb/f', NULL, 58),
(216, '//images.igdb.com/igdb/image/upload/t_thumb/h', NULL, 59),
(217, '//images.igdb.com/igdb/image/upload/t_thumb/n', NULL, 59),
(218, '//images.igdb.com/igdb/image/upload/t_thumb/o', NULL, 59),
(219, '//images.igdb.com/igdb/image/upload/t_thumb/e', NULL, 59),
(220, '//images.igdb.com/igdb/image/upload/t_thumb/v', NULL, 59),
(221, '//images.igdb.com/igdb/image/upload/t_thumb/g', NULL, 59),
(222, '//images.igdb.com/igdb/image/upload/t_thumb/j', NULL, 60),
(223, '//images.igdb.com/igdb/image/upload/t_thumb/i', NULL, 60),
(224, '//images.igdb.com/igdb/image/upload/t_thumb/k', NULL, 60),
(225, '//images.igdb.com/igdb/image/upload/t_thumb/w', NULL, 60),
(226, '//images.igdb.com/igdb/image/upload/t_thumb/k', NULL, 60),
(227, '//images.igdb.com/igdb/image/upload/t_thumb/e', NULL, 61),
(228, '//images.igdb.com/igdb/image/upload/t_thumb/u', NULL, 61),
(229, '//images.igdb.com/igdb/image/upload/t_thumb/t', NULL, 61),
(230, '//images.igdb.com/igdb/image/upload/t_thumb/w', NULL, 61),
(231, '//images.igdb.com/igdb/image/upload/t_thumb/h', NULL, 61),
(232, '//images.igdb.com/igdb/image/upload/t_thumb/t', NULL, 62),
(233, '//images.igdb.com/igdb/image/upload/t_thumb/w', NULL, 62),
(234, '//images.igdb.com/igdb/image/upload/t_thumb/h', NULL, 62),
(235, '//images.igdb.com/igdb/image/upload/t_thumb/c', NULL, 62),
(236, '//images.igdb.com/igdb/image/upload/t_thumb/i', NULL, 62),
(237, '//images.igdb.com/igdb/image/upload/t_thumb/f', NULL, 63),
(238, '//images.igdb.com/igdb/image/upload/t_thumb/b', NULL, 63),
(239, '//images.igdb.com/igdb/image/upload/t_thumb/q', NULL, 63),
(240, '//images.igdb.com/igdb/image/upload/t_thumb/r', NULL, 63),
(241, '//images.igdb.com/igdb/image/upload/t_thumb/t', NULL, 63),
(242, '//images.igdb.com/igdb/image/upload/t_thumb/b', NULL, 64),
(243, '//images.igdb.com/igdb/image/upload/t_thumb/u', NULL, 64),
(244, '//images.igdb.com/igdb/image/upload/t_thumb/u', NULL, 64),
(245, '//images.igdb.com/igdb/image/upload/t_thumb/f', NULL, 64),
(246, '//images.igdb.com/igdb/image/upload/t_thumb/k', NULL, 64),
(247, '//images.igdb.com/igdb/image/upload/t_thumb/p', NULL, 65),
(248, '//images.igdb.com/igdb/image/upload/t_thumb/c', NULL, 65),
(249, '//images.igdb.com/igdb/image/upload/t_thumb/a', NULL, 65),
(250, '//images.igdb.com/igdb/image/upload/t_thumb/s', NULL, 65),
(251, '//images.igdb.com/igdb/image/upload/t_thumb/w', NULL, 65),
(252, '//images.igdb.com/igdb/image/upload/t_thumb/n', NULL, 66),
(253, '//images.igdb.com/igdb/image/upload/t_thumb/u', NULL, 66),
(254, '//images.igdb.com/igdb/image/upload/t_thumb/p', NULL, 66),
(255, '//images.igdb.com/igdb/image/upload/t_thumb/v', NULL, 66),
(256, '//images.igdb.com/igdb/image/upload/t_thumb/d', NULL, 66),
(257, '//images.igdb.com/igdb/image/upload/t_thumb/q', NULL, 67),
(258, '//images.igdb.com/igdb/image/upload/t_thumb/b', NULL, 67),
(259, '//images.igdb.com/igdb/image/upload/t_thumb/t', NULL, 68),
(260, '//images.igdb.com/igdb/image/upload/t_thumb/q', NULL, 68),
(261, '//images.igdb.com/igdb/image/upload/t_thumb/l', NULL, 68),
(262, '//images.igdb.com/igdb/image/upload/t_thumb/c', NULL, 68),
(263, '//images.igdb.com/igdb/image/upload/t_thumb/k', NULL, 68),
(264, '//images.igdb.com/igdb/image/upload/t_thumb/i', NULL, 69),
(265, '//images.igdb.com/igdb/image/upload/t_thumb/u', NULL, 69),
(266, '//images.igdb.com/igdb/image/upload/t_thumb/v', NULL, 69),
(267, '//images.igdb.com/igdb/image/upload/t_thumb/c', NULL, 69),
(268, '//images.igdb.com/igdb/image/upload/t_thumb/o', NULL, 69),
(269, '//images.igdb.com/igdb/image/upload/t_thumb/a', NULL, 70),
(270, '//images.igdb.com/igdb/image/upload/t_thumb/r', NULL, 71),
(271, '//images.igdb.com/igdb/image/upload/t_thumb/e', NULL, 71),
(272, '//images.igdb.com/igdb/image/upload/t_thumb/q', NULL, 71),
(273, '//images.igdb.com/igdb/image/upload/t_thumb/b', NULL, 71),
(274, '//images.igdb.com/igdb/image/upload/t_thumb/g', NULL, 71),
(275, '//images.igdb.com/igdb/image/upload/t_thumb/i', NULL, 72),
(276, '//images.igdb.com/igdb/image/upload/t_thumb/r', NULL, 72),
(277, '//images.igdb.com/igdb/image/upload/t_thumb/q', NULL, 72),
(278, '//images.igdb.com/igdb/image/upload/t_thumb/z', NULL, 72),
(279, '//images.igdb.com/igdb/image/upload/t_thumb/l', NULL, 72),
(280, '//images.igdb.com/igdb/image/upload/t_thumb/h', NULL, 73),
(281, '//images.igdb.com/igdb/image/upload/t_thumb/d', NULL, 73),
(282, '//images.igdb.com/igdb/image/upload/t_thumb/f', NULL, 73),
(283, '//images.igdb.com/igdb/image/upload/t_thumb/w', NULL, 73),
(284, '//images.igdb.com/igdb/image/upload/t_thumb/r', NULL, 73),
(285, '//images.igdb.com/igdb/image/upload/t_thumb/z', NULL, 74),
(286, '//images.igdb.com/igdb/image/upload/t_thumb/d', NULL, 74),
(287, '//images.igdb.com/igdb/image/upload/t_thumb/v', NULL, 74),
(288, '//images.igdb.com/igdb/image/upload/t_thumb/b', NULL, 74),
(289, '//images.igdb.com/igdb/image/upload/t_thumb/m', NULL, 74),
(290, '//images.igdb.com/igdb/image/upload/t_thumb/m', NULL, 75),
(291, '//images.igdb.com/igdb/image/upload/t_thumb/n', NULL, 75),
(292, '//images.igdb.com/igdb/image/upload/t_thumb/d', NULL, 75),
(293, '//images.igdb.com/igdb/image/upload/t_thumb/t', NULL, 75),
(294, '//images.igdb.com/igdb/image/upload/t_thumb/v', NULL, 75),
(295, '//images.igdb.com/igdb/image/upload/t_thumb/y', NULL, 76),
(296, '//images.igdb.com/igdb/image/upload/t_thumb/k', NULL, 76),
(297, '//images.igdb.com/igdb/image/upload/t_thumb/r', NULL, 76),
(298, '//images.igdb.com/igdb/image/upload/t_thumb/s', NULL, 76),
(299, '//images.igdb.com/igdb/image/upload/t_thumb/b', NULL, 76),
(300, '//images.igdb.com/igdb/image/upload/t_thumb/r', NULL, 77),
(301, '//images.igdb.com/igdb/image/upload/t_thumb/e', NULL, 77),
(302, '//images.igdb.com/igdb/image/upload/t_thumb/s', NULL, 77),
(303, '//images.igdb.com/igdb/image/upload/t_thumb/m', NULL, 77),
(304, '//images.igdb.com/igdb/image/upload/t_thumb/k', NULL, 77),
(305, '//images.igdb.com/igdb/image/upload/t_thumb/r', NULL, 78),
(306, '//images.igdb.com/igdb/image/upload/t_thumb/i', NULL, 78),
(307, '//images.igdb.com/igdb/image/upload/t_thumb/v', NULL, 78),
(308, '//images.igdb.com/igdb/image/upload/t_thumb/o', NULL, 78),
(309, '//images.igdb.com/igdb/image/upload/t_thumb/z', NULL, 78),
(310, '//images.igdb.com/igdb/image/upload/t_thumb/m', NULL, 79),
(311, '//images.igdb.com/igdb/image/upload/t_thumb/n', NULL, 79),
(312, '//images.igdb.com/igdb/image/upload/t_thumb/s', NULL, 79),
(313, '//images.igdb.com/igdb/image/upload/t_thumb/w', NULL, 79),
(314, '//images.igdb.com/igdb/image/upload/t_thumb/b', NULL, 79),
(315, '//images.igdb.com/igdb/image/upload/t_thumb/e', NULL, 80),
(316, '//images.igdb.com/igdb/image/upload/t_thumb/c', NULL, 80),
(317, '//images.igdb.com/igdb/image/upload/t_thumb/l', NULL, 80),
(318, '//images.igdb.com/igdb/image/upload/t_thumb/f', NULL, 80),
(319, '//images.igdb.com/igdb/image/upload/t_thumb/g', NULL, 80),
(320, '//images.igdb.com/igdb/image/upload/t_thumb/v', NULL, 81),
(321, '//images.igdb.com/igdb/image/upload/t_thumb/i', NULL, 81),
(322, '//images.igdb.com/igdb/image/upload/t_thumb/o', NULL, 81),
(323, '//images.igdb.com/igdb/image/upload/t_thumb/r', NULL, 81),
(324, '//images.igdb.com/igdb/image/upload/t_thumb/r', NULL, 81),
(325, '//images.igdb.com/igdb/image/upload/t_thumb/g', NULL, 82),
(326, '//images.igdb.com/igdb/image/upload/t_thumb/g', NULL, 82),
(327, '//images.igdb.com/igdb/image/upload/t_thumb/m', NULL, 82),
(328, '//images.igdb.com/igdb/image/upload/t_thumb/f', NULL, 82),
(329, '//images.igdb.com/igdb/image/upload/t_thumb/r', NULL, 82),
(330, '//images.igdb.com/igdb/image/upload/t_thumb/z', NULL, 83),
(331, '//images.igdb.com/igdb/image/upload/t_thumb/l', NULL, 83),
(332, '//images.igdb.com/igdb/image/upload/t_thumb/q', NULL, 83),
(333, '//images.igdb.com/igdb/image/upload/t_thumb/r', NULL, 83),
(334, '//images.igdb.com/igdb/image/upload/t_thumb/l', NULL, 83),
(335, '//images.igdb.com/igdb/image/upload/t_thumb/o', NULL, 84),
(336, '//images.igdb.com/igdb/image/upload/t_thumb/f', NULL, 84),
(337, '//images.igdb.com/igdb/image/upload/t_thumb/m', NULL, 84),
(338, '//images.igdb.com/igdb/image/upload/t_thumb/v', NULL, 84),
(339, '//images.igdb.com/igdb/image/upload/t_thumb/z', NULL, 84),
(340, '//images.igdb.com/igdb/image/upload/t_thumb/s', NULL, 85),
(341, '//images.igdb.com/igdb/image/upload/t_thumb/u', NULL, 85),
(342, '//images.igdb.com/igdb/image/upload/t_thumb/q', NULL, 85),
(343, '//images.igdb.com/igdb/image/upload/t_thumb/m', NULL, 85),
(344, '//images.igdb.com/igdb/image/upload/t_thumb/s', NULL, 85),
(345, '//images.igdb.com/igdb/image/upload/t_thumb/q', NULL, 86),
(346, '//images.igdb.com/igdb/image/upload/t_thumb/b', NULL, 86),
(347, '//images.igdb.com/igdb/image/upload/t_thumb/m', NULL, 86),
(348, '//images.igdb.com/igdb/image/upload/t_thumb/f', NULL, 86),
(349, '//images.igdb.com/igdb/image/upload/t_thumb/s', NULL, 86),
(350, '//images.igdb.com/igdb/image/upload/t_thumb/a', NULL, 87),
(351, '//images.igdb.com/igdb/image/upload/t_thumb/j', NULL, 88),
(352, '//images.igdb.com/igdb/image/upload/t_thumb/h', NULL, 88),
(353, '//images.igdb.com/igdb/image/upload/t_thumb/y', NULL, 88),
(354, '//images.igdb.com/igdb/image/upload/t_thumb/g', NULL, 89),
(355, '//images.igdb.com/igdb/image/upload/t_thumb/g', NULL, 89),
(356, '//images.igdb.com/igdb/image/upload/t_thumb/f', NULL, 89),
(357, '//images.igdb.com/igdb/image/upload/t_thumb/l', NULL, 89),
(358, '//images.igdb.com/igdb/image/upload/t_thumb/o', NULL, 89),
(359, '//images.igdb.com/igdb/image/upload/t_thumb/f', NULL, 90),
(360, '//images.igdb.com/igdb/image/upload/t_thumb/u', NULL, 90),
(361, '//images.igdb.com/igdb/image/upload/t_thumb/g', NULL, 90),
(362, '//images.igdb.com/igdb/image/upload/t_thumb/l', NULL, 90),
(363, '//images.igdb.com/igdb/image/upload/t_thumb/g', NULL, 91),
(364, '//images.igdb.com/igdb/image/upload/t_thumb/r', NULL, 91),
(365, '//images.igdb.com/igdb/image/upload/t_thumb/u', NULL, 91),
(366, '//images.igdb.com/igdb/image/upload/t_thumb/v', NULL, 91),
(367, '//images.igdb.com/igdb/image/upload/t_thumb/c', NULL, 91),
(368, '//images.igdb.com/igdb/image/upload/t_thumb/y', NULL, 93),
(369, '//images.igdb.com/igdb/image/upload/t_thumb/n', NULL, 93),
(370, '//images.igdb.com/igdb/image/upload/t_thumb/o', NULL, 94),
(371, '//images.igdb.com/igdb/image/upload/t_thumb/c', NULL, 94),
(372, '//images.igdb.com/igdb/image/upload/t_thumb/k', NULL, 94),
(373, '//images.igdb.com/igdb/image/upload/t_thumb/v', NULL, 94),
(374, '//images.igdb.com/igdb/image/upload/t_thumb/n', NULL, 94),
(375, '//images.igdb.com/igdb/image/upload/t_thumb/p', NULL, 95),
(376, '//images.igdb.com/igdb/image/upload/t_thumb/j', NULL, 95),
(377, '//images.igdb.com/igdb/image/upload/t_thumb/w', NULL, 95),
(378, '//images.igdb.com/igdb/image/upload/t_thumb/t', NULL, 95),
(379, '//images.igdb.com/igdb/image/upload/t_thumb/j', NULL, 95),
(380, '//images.igdb.com/igdb/image/upload/t_thumb/i', NULL, 96),
(381, '//images.igdb.com/igdb/image/upload/t_thumb/u', NULL, 97),
(382, '//images.igdb.com/igdb/image/upload/t_thumb/m', NULL, 97),
(383, '//images.igdb.com/igdb/image/upload/t_thumb/f', NULL, 97),
(384, '//images.igdb.com/igdb/image/upload/t_thumb/s', NULL, 97),
(385, '//images.igdb.com/igdb/image/upload/t_thumb/i', NULL, 97),
(386, '//images.igdb.com/igdb/image/upload/t_thumb/o', NULL, 98),
(387, '//images.igdb.com/igdb/image/upload/t_thumb/m', NULL, 98),
(388, '//images.igdb.com/igdb/image/upload/t_thumb/z', NULL, 98),
(389, '//images.igdb.com/igdb/image/upload/t_thumb/o', NULL, 98),
(390, '//images.igdb.com/igdb/image/upload/t_thumb/l', NULL, 98),
(391, '//images.igdb.com/igdb/image/upload/t_thumb/d', NULL, 99),
(392, '//images.igdb.com/igdb/image/upload/t_thumb/y', NULL, 99),
(393, '//images.igdb.com/igdb/image/upload/t_thumb/p', NULL, 99),
(394, '//images.igdb.com/igdb/image/upload/t_thumb/y', NULL, 99),
(395, '//images.igdb.com/igdb/image/upload/t_thumb/r', NULL, 99),
(396, '//images.igdb.com/igdb/image/upload/t_thumb/h', NULL, 100),
(397, '//images.igdb.com/igdb/image/upload/t_thumb/j', NULL, 100),
(398, '//images.igdb.com/igdb/image/upload/t_thumb/y', NULL, 100),
(399, '//images.igdb.com/igdb/image/upload/t_thumb/v', NULL, 100),
(400, '//images.igdb.com/igdb/image/upload/t_thumb/j', NULL, 100);

-- --------------------------------------------------------

--
-- Structure de la table `Users`
--

CREATE TABLE `Users` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `Users_jeux`
--

CREATE TABLE `Users_jeux` (
  `id` int(11) NOT NULL,
  `users_id` int(11) DEFAULT NULL,
  `jeux_id` int(11) DEFAULT NULL,
  `temps` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `video`
--

CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `video_id` varchar(45) DEFAULT NULL,
  `jeux_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=246 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `video`
--

INSERT INTO `video` (`id`, `name`, `video_id`, `jeux_id`) VALUES
(1, 'Gameplay video', NULL, 2),
(2, 'Gameplay video', NULL, 2),
(3, 'Trailer', NULL, 4),
(4, 'Gameplay video', NULL, 4),
(5, 'Teaser', NULL, 7),
(6, 'Gameplay video', NULL, 7),
(7, 'Gameplay video', NULL, 7),
(8, 'Trailer', NULL, 7),
(9, 'Trailer', NULL, 8),
(10, 'Gameplay video', NULL, 8),
(11, 'Trailer', NULL, 9),
(12, 'Gameplay video', NULL, 10),
(13, 'Cinematic Trailer', NULL, 11),
(14, 'Sunshine & Slaughter Gameplay Trailer', NULL, 11),
(15, 'Trailer', NULL, 13),
(16, 'Trailer', NULL, 14),
(17, 'Trailer', NULL, 15),
(18, 'Trailer', NULL, 17),
(19, 'Trailer', NULL, 18),
(20, 'Gamescom 2015 Trailer', NULL, 19),
(21, 'Reveal Trailer', NULL, 19),
(22, 'Trailer', NULL, 20),
(23, 'Trailer', NULL, 21),
(24, 'Trailer', NULL, 21),
(25, 'Trailer', NULL, 22),
(26, 'Trailer', NULL, 23),
(27, 'Trailer', NULL, 24),
(28, 'Trailer', NULL, 25),
(29, 'Trailer', NULL, 26),
(30, 'Trailer', NULL, 27),
(31, 'The Begining trailer', NULL, 28),
(32, 'Killing Monsters Cinematic Trailer', NULL, 28),
(33, 'Downwarren Gameplay Video', NULL, 28),
(34, 'Opening Cinematic: The Trail', NULL, 28),
(35, 'Elder Blood Trailer', NULL, 28),
(36, 'Recap', NULL, 28),
(37, 'TV Spot', NULL, 28),
(38, 'Rage & Steel Trailer', NULL, 28),
(39, 'A Night to Remember Trailer', NULL, 28),
(40, 'Debut Gameplay Trailer', NULL, 28),
(41, 'Epic Trailer', NULL, 28),
(42, 'Developer Diary: Creating the Sound', NULL, 28),
(43, 'Trailer', NULL, 29),
(44, 'Trailer', NULL, 31),
(45, 'Trailer', NULL, 32),
(46, 'Gameplay video', NULL, 32),
(47, 'Trailer', NULL, 32),
(48, 'Gameplay video', NULL, 32),
(49, 'PSX 2016 Trailer', NULL, 33),
(50, 'E3 2016 Trailer', NULL, 33),
(51, 'Trailer', NULL, 33),
(52, 'E3 Gameplay video', NULL, 33),
(53, 'Trailer', NULL, 34),
(54, 'Trailer', NULL, 36),
(55, 'Trailer', NULL, 38),
(56, 'Trailer', NULL, 39),
(57, 'Trailer', NULL, 39),
(58, 'Trailer', NULL, 40),
(59, 'Launch Trailer', NULL, 41),
(60, 'Gamescom 2016 Trailer', NULL, 41),
(61, 'Japan Expo Trailer', NULL, 41),
(62, 'Announcement Trailer', NULL, 41),
(63, 'Launch Trailer', NULL, 42),
(64, 'Extended Preview Trailer', NULL, 42),
(65, 'E3 2016 Teaser', NULL, 42),
(66, 'Teaser', NULL, 43),
(67, 'Gameplay video', NULL, 43),
(68, 'Teaser', NULL, 43),
(69, 'Trailer', NULL, 44),
(70, 'Trailer', NULL, 45),
(71, 'Trailer', NULL, 46),
(72, 'Trailer', NULL, 47),
(73, 'Trailer', NULL, 47),
(74, 'Teaser', NULL, 48),
(75, 'Reveal Trailer', NULL, 48),
(76, 'Gameplay Launch Trailer', NULL, 48),
(77, 'Trailer', NULL, 49),
(78, 'Trailer', NULL, 53),
(79, 'Trailer', NULL, 54),
(80, 'Teaser', NULL, 54),
(81, 'Trailer', NULL, 55),
(82, 'Trailer', NULL, 55),
(83, 'Teaser', NULL, 55),
(84, 'Omen Cinematic Trailer', NULL, 56),
(85, 'Death Spell Gameplay Trailer', NULL, 56),
(86, 'Tokyo Game Show 2016 Trailer', NULL, 56),
(87, '52 minute Gameplay video (Official)', NULL, 56),
(88, 'E3 2016 Trailer', NULL, 56),
(89, 'Trailer', NULL, 56),
(90, 'Walkthrough video', NULL, 56),
(91, 'Niflheim Base Battle Gameplay video', NULL, 56),
(92, 'Trailer', NULL, 58),
(93, 'Gameplay video', NULL, 59),
(94, 'Trailer', NULL, 59),
(95, 'Next-gen Launch Trailer', NULL, 59),
(96, 'Happy 2K Day Trailer', NULL, 60),
(97, 'Time to Assemble Trailer', NULL, 60),
(98, 'My Career Trailer', NULL, 60),
(99, 'Momentous Trailer', NULL, 60),
(100, 'Arena Authenticity Trailer', NULL, 60),
(101, 'Prelude Trailer', NULL, 60),
(102, 'Friction Trailer', NULL, 60),
(103, 'Kobe Haters vs. Players', NULL, 60),
(104, 'Trailer', NULL, 61),
(105, 'Welcome Home Trailer', NULL, 62),
(106, 'Trailer', NULL, 62),
(107, 'Gameplay Video: Part 3', NULL, 62),
(108, 'Gameplay Video: Part 2', NULL, 62),
(109, 'Gameplay Video: Part 1', NULL, 62),
(110, 'Tape-3: Resident Evil', NULL, 62),
(111, 'Trailer', NULL, 62),
(112, 'Trailer', NULL, 62),
(113, 'Tape-2: The Bakers Trailer', NULL, 62),
(114, 'Gamescom 2016 Trailer', NULL, 62),
(115, 'E3 2016 Announcement Trailer', NULL, 62),
(116, 'Survival Mode Multiplayer Trailer', NULL, 63),
(117, 'Gameplay Demo', NULL, 63),
(118, 'E3 Gameplay video', NULL, 63),
(119, 'E3 Trailer', NULL, 63),
(120, 'Story Trailer', NULL, 63),
(121, 'Trailer', NULL, 63),
(122, 'Paris Games Week 2015 Multiplayer Trailer', NULL, 63),
(123, 'Drake Meets Nadine Trailer', NULL, 63),
(124, 'Story Trailer', NULL, 63),
(125, 'Behind the Scenes: In The End', NULL, 63),
(126, 'Developer diary #2', NULL, 63),
(127, 'Behind the Scenes: Bring to Life', NULL, 63),
(128, 'Gameplay Trailer', NULL, 64),
(129, 'CTU Spotlight: GSG 9 Trailer', NULL, 64),
(130, 'CTU Spotlight: SAS Trailer', NULL, 64),
(131, 'Art of Siege', NULL, 64),
(132, 'Closed Beta Trailer', NULL, 64),
(133, 'Gamescom 2015 Trailer', NULL, 64),
(134, 'E3 White Masks Reveal Trailer', NULL, 64),
(135, 'E3 Trailer', NULL, 64),
(136, 'E3 Terrorist Hunt Co-Op Trailer', NULL, 64),
(137, 'Operators Trailer', NULL, 64),
(138, 'Accolade Trailer', NULL, 64),
(139, 'Launch Trailer', NULL, 64),
(140, 'Trailer', NULL, 65),
(141, 'Trailer', NULL, 65),
(142, 'Trailer', NULL, 65),
(143, 'Wraith Reveal Trailer', NULL, 66),
(144, 'Launch Trailer', NULL, 66),
(145, 'Hillbilly Reveal Trailer', NULL, 66),
(146, 'Trailer', NULL, 66),
(147, 'Trailer', NULL, 66),
(148, 'Trailer', NULL, 66),
(149, 'Teaser', NULL, 66),
(150, 'Trailer', NULL, 67),
(151, 'Gameplay Online Multiplayer', NULL, 68),
(152, 'Trailer', NULL, 68),
(153, 'The Vet & The n00b Official Trailer', NULL, 68),
(154, 'Trailer', NULL, 69),
(155, 'Trailer', NULL, 69),
(156, 'Trailer', NULL, 69),
(157, 'Trailer', NULL, 69),
(158, 'Trailer', NULL, 69),
(159, 'Trailer', NULL, 70),
(160, 'Trailer', NULL, 71),
(161, 'Trailer', NULL, 72),
(162, 'Trailer', NULL, 72),
(163, 'Trailer', NULL, 73),
(164, 'Behind the Scenes 3', NULL, 74),
(165, 'King of Oros', NULL, 74),
(166, '101 Trailer', NULL, 74),
(167, 'Announcement Trailer', NULL, 74),
(168, 'Behind the Scenes Trailer', NULL, 74),
(169, 'Beast Master Trailer', NULL, 74),
(170, 'Gameplay Walkthrough #1', NULL, 74),
(171, 'Wildlife Vignette', NULL, 74),
(172, 'Trailer', NULL, 75),
(173, 'Trailer', NULL, 75),
(174, 'Trailer', NULL, 75),
(175, 'Trailer', NULL, 75),
(176, 'Trailer', NULL, 76),
(177, 'Trailer', NULL, 77),
(178, 'Trailer', NULL, 77),
(179, 'Trailer', NULL, 77),
(180, 'Trailer', NULL, 77),
(181, 'Gameplay video', NULL, 78),
(182, 'Trailer', NULL, 78),
(183, 'Teaser', NULL, 78),
(184, 'Trailer', NULL, 79),
(185, 'Announcement Teaser', NULL, 79),
(186, 'Developer Walkthrough', NULL, 79),
(187, 'Trailer', NULL, 79),
(188, 'Summer Trailer', NULL, 80),
(189, 'Rise of the Terminators', NULL, 80),
(190, 'Arsenal Trailer', NULL, 80),
(191, 'Enter the Space Hulk', NULL, 80),
(192, 'Gameplay Trailer', NULL, 80),
(193, 'Solo Campaign Gameplay Trailer 2', NULL, 80),
(194, 'Launch Trailer', NULL, 80),
(195, 'Solo Campaign Gameplay Trailer', NULL, 80),
(196, 'Gamescom 2016 Trailer', NULL, 80),
(197, 'Trailer', NULL, 81),
(198, 'Trailer', NULL, 81),
(199, 'Trailer', NULL, 81),
(200, 'Trailer', NULL, 82),
(201, 'Launch Trailer', NULL, 83),
(202, 'Gamescom 2016 Trailer', NULL, 83),
(203, 'Just Dance World Cup Trailer', NULL, 83),
(204, 'Trailer', NULL, 83),
(205, 'Trailer', NULL, 84),
(206, 'Trailer', NULL, 84),
(207, 'Trailer', NULL, 84),
(208, 'Trailer', NULL, 84),
(209, 'Teaser', NULL, 84),
(210, 'Trailer', NULL, 85),
(211, 'Gamescom 2015 Gameplay Demo', NULL, 86),
(212, 'E3 Trailer', NULL, 86),
(213, 'Descent Into Legend', NULL, 86),
(214, 'PC Tech Trailer', NULL, 86),
(215, 'Woman vs Wild episode 1', NULL, 86),
(216, 'Woman vs Wild episode 2', NULL, 86),
(217, 'Baba Yaga: Curse of the Witch Trailer', NULL, 86),
(218, 'Teaser', NULL, 88),
(219, 'PSX 2016 Trailer', NULL, 89),
(220, 'PS4 Pro Demo (4K)', NULL, 89),
(221, 'E3 2016 Gameplay Trailer', NULL, 89),
(222, 'Aloys Journey Trailer', NULL, 89),
(223, 'Trailer', NULL, 89),
(224, 'E3 Reveal Trailer', NULL, 89),
(225, 'Paris Games Week 2015 Trailer', NULL, 89),
(226, 'Trailer', NULL, 90),
(227, 'Trailer', NULL, 91),
(228, 'Teaser', NULL, 93),
(229, 'The Story Continues Dev Diary', NULL, 95),
(230, 'Trailer', NULL, 95),
(231, 'Trailer', NULL, 95),
(232, 'Trailer', NULL, 97),
(233, 'Trailer', NULL, 97),
(234, 'Gameplay video', NULL, 97),
(235, 'Trailer', NULL, 97),
(236, 'Gameplay video', NULL, 97),
(237, 'Gameplay video', NULL, 97),
(238, 'Trailer', NULL, 97),
(239, 'Launch Trailer', NULL, 98),
(240, 'Trailer', NULL, 98),
(241, 'Trailer', NULL, 98),
(242, 'Trailer', NULL, 99),
(243, 'Trailer', NULL, 99),
(244, 'Announcement Trailer', NULL, 99),
(245, 'Xbox Game Preview Trailer', NULL, 100);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `Amis`
--
ALTER TABLE `Amis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_amis_users_idx` (`users_id`),
  ADD KEY `fk_amis_commu_idx` (`commu_id`);

--
-- Index pour la table `Categories`
--
ALTER TABLE `Categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Categories_jeux`
--
ALTER TABLE `Categories_jeux`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_catejeux_jeux_idx` (`jeux_id`),
  ADD KEY `fk_catejeux_categories_idx` (`categories_id`);

--
-- Index pour la table `Communaute`
--
ALTER TABLE `Communaute`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Jeux`
--
ALTER TABLE `Jeux`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Screen`
--
ALTER TABLE `Screen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_screen_jeux_idx` (`jeux_id`);

--
-- Index pour la table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Users_jeux`
--
ALTER TABLE `Users_jeux`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_usersjeux_users_idx` (`users_id`),
  ADD KEY `fk_usersjeux_jeux` (`jeux_id`);

--
-- Index pour la table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_video_jeux_idx` (`jeux_id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `Amis`
--
ALTER TABLE `Amis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `Categories`
--
ALTER TABLE `Categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT pour la table `Categories_jeux`
--
ALTER TABLE `Categories_jeux`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=164;
--
-- AUTO_INCREMENT pour la table `Communaute`
--
ALTER TABLE `Communaute`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `Jeux`
--
ALTER TABLE `Jeux`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT pour la table `Screen`
--
ALTER TABLE `Screen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=401;
--
-- AUTO_INCREMENT pour la table `Users`
--
ALTER TABLE `Users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `Users_jeux`
--
ALTER TABLE `Users_jeux`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=246;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `Amis`
--
ALTER TABLE `Amis`
  ADD CONSTRAINT `fk_amis_users` FOREIGN KEY (`users_id`) REFERENCES `Users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_amis_commu` FOREIGN KEY (`commu_id`) REFERENCES `Communaute` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `Categories_jeux`
--
ALTER TABLE `Categories_jeux`
  ADD CONSTRAINT `fk_catejeux_jeux` FOREIGN KEY (`jeux_id`) REFERENCES `Jeux` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_catejeux_categories` FOREIGN KEY (`categories_id`) REFERENCES `Categories` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `Screen`
--
ALTER TABLE `Screen`
  ADD CONSTRAINT `fk_screen_jeux` FOREIGN KEY (`jeux_id`) REFERENCES `Jeux` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `Users_jeux`
--
ALTER TABLE `Users_jeux`
  ADD CONSTRAINT `fk_usersjeux_jeux` FOREIGN KEY (`jeux_id`) REFERENCES `Jeux` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_usersjeux_users` FOREIGN KEY (`users_id`) REFERENCES `Users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `video`
--
ALTER TABLE `video`
  ADD CONSTRAINT `fk_video_jeux` FOREIGN KEY (`jeux_id`) REFERENCES `Jeux` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
