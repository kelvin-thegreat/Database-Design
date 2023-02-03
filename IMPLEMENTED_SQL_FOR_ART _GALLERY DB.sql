-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2022 at 04:03 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `databasegallery`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `actors`
-- (See below for the actual view)
--
CREATE TABLE `actors` (
`actorsid` int(11)
,`actorsFullName` varchar(45)
,`actorsScript` varchar(50)
);

-- --------------------------------------------------------

--
-- Table structure for table `cameraequipment`
--

CREATE TABLE `cameraequipment` (
  `cameraid` int(11) NOT NULL,
  `cameraName` varchar(50) NOT NULL,
  `workType` varchar(50) NOT NULL,
  `editorid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cameraequipment`
--

INSERT INTO `cameraequipment` (`cameraid`, `cameraName`, `workType`, `editorid`) VALUES
(1, 'Myworks', 'intermediate', 1),
(2, 'Rhynoodle', 'productivity', 2),
(3, 'Dynazzy', 'Right-sized', 3),
(4, 'Cogilith', 'object-oriented', 4),
(5, 'Layo', 'impactful', 5),
(6, 'Realpoint', 'Profit-focused', 6),
(7, 'Tagcat', 'functionalities', 7),
(8, 'Flashdog', 'secured line', 8),
(9, 'DabZ', 'complexity', 9),
(10, 'Yombu', 'human-resource', 10);

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `clientid` int(11) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `NumberOfPictures` int(50) NOT NULL,
  `occassionType` varchar(50) NOT NULL,
  `photographerid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`clientid`, `fullname`, `Address`, `NumberOfPictures`, `occassionType`, `photographerid`) VALUES
(1, 'Lennie Jaquiss', '96 Meadow Vale Trail', 36, '', 1),
(2, 'Raine Barensky', '265 Northview Terrace', 10, '', 2),
(3, 'Orv De Ambrosi', '563 Del Sol Plaza', 36, '', 3),
(4, 'Mathew Medgewick', '20 Hollow Ridge Trail', 87, '', 4),
(5, 'Karly Teulier', '114 Talmadge Parkway', 78, '', 5),
(6, 'Corliss Goudie', '6 Helena Avenue', 38, '', 6),
(7, 'Osbourn Sealeaf', '63 Springview Crossing', 11, '', 7),
(8, 'Kassie Dumbrell', '20 New Castle Lane', 26, '', 8),
(9, 'Terence Spurdon', '8764 Crownhardt Drive', 61, '', 9),
(10, 'Jefferson Scotson', '3 Jenna Lane', 26, '', 10);

-- --------------------------------------------------------

--
-- Table structure for table `editor`
--

CREATE TABLE `editor` (
  `editorid` int(11) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `NumberOfPictures` int(11) NOT NULL,
  `clientid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `editor`
--

INSERT INTO `editor` (`editorid`, `fullname`, `Address`, `NumberOfPictures`, `clientid`) VALUES
(1, 'Monique', '64 Del Sol Plaza', 965, 1),
(2, 'Cristy', '2 Lindbergh Lane', 87, 2),
(3, 'Carlyle', '64554 Sycamore Street', 921, 3),
(4, 'Sibylla', '5522 Del Mar Trail', 708, 4),
(5, 'Romain', '9 Morning Circle', 759, 5),
(6, 'Breena', '91437 Hoard Drive', 681, 6),
(7, 'Benjy', '04015 Cherokee Pass', 318, 7),
(8, 'Selena', '005 Kinsman Alley', 843, 8),
(9, 'Shani', '062 Hoepker Hill', 213, 9),
(10, 'Willy', '7360 Novick Avenue', 639, 10);

-- --------------------------------------------------------

--
-- Table structure for table `filmactors`
--

CREATE TABLE `filmactors` (
  `actorsid` int(11) NOT NULL,
  `studioid` int(11) NOT NULL,
  `actorsFullName` varchar(45) NOT NULL,
  `actorsScript` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `filmactors`
--

INSERT INTO `filmactors` (`actorsid`, `studioid`, `actorsFullName`, `actorsScript`) VALUES
(1, 1, 'Quillan Bennoe', ''),
(2, 2, 'Zachary Westbrook', ''),
(3, 3, 'Ximenez Dauney', ''),
(4, 4, 'Selinda Ashall', ''),
(5, 5, 'Barbra Shakelade', ''),
(6, 6, 'Sam Hrihorovich', ''),
(7, 7, 'Millie Anderson', ''),
(8, 8, 'Zita Millichap', ''),
(9, 9, 'Ofelia Bostock', ''),
(10, 10, 'Isobel Unitt', '');

-- --------------------------------------------------------

--
-- Table structure for table `filmactorsroles`
--

CREATE TABLE `filmactorsroles` (
  `filmTitleid` int(11) NOT NULL,
  `actorsid` int(11) NOT NULL,
  `roleTypesid` int(11) NOT NULL,
  `characterName` varchar(50) NOT NULL,
  `characterDescription` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `filmactorsroles`
--

INSERT INTO `filmactorsroles` (`filmTitleid`, `actorsid`, `roleTypesid`, `characterName`, `characterDescription`) VALUES
(1, 1, 1, 'Ricca Burrows', 'Function-based object-oriented structure'),
(2, 2, 2, 'Daffi Bellee', 'Automated local access'),
(3, 3, 3, 'Dayle Chrestien', 'Realigned transitional analyzer'),
(4, 4, 4, 'Corilla Hostan', 'Sharable 3rd generation moratorium'),
(5, 5, 5, 'Tera Macek', 'Pre-emptive client-driven protocol'),
(6, 6, 6, 'Flore Mathon', 'Fundamental 24 hour alliance'),
(7, 7, 7, 'Kathie Bernaciak', 'Integrated analyzing utilisation'),
(8, 8, 8, 'Jamison Woltering', 'Function-based motivating installation'),
(9, 9, 9, 'Angeli Tregaskis', 'Public-key cohesive architecture'),
(10, 10, 10, 'Jarid Heathorn', 'Organized modular data-warehouse');

-- --------------------------------------------------------

--
-- Table structure for table `filmgenre`
--

CREATE TABLE `filmgenre` (
  `filmGenreid` int(11) NOT NULL,
  `filmGenre` varchar(45) NOT NULL,
  `producerid` int(11) NOT NULL,
  `certificateid` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `filmgenre`
--

INSERT INTO `filmgenre` (`filmGenreid`, `filmGenre`, `producerid`, `certificateid`) VALUES
(1, 'Attack of the 5 Ft. 2 Women (National Lampoon', 1, 1),
(2, 'Morning After, The', 2, 2),
(3, 'Haute Cuisine', 3, 3),
(4, 'P2', 4, 4),
(5, 'Taken 2', 5, 5),
(6, 'After.Life', 6, 6),
(7, 'Orgazmo', 7, 7),
(8, 'Frostbitten (Frostbiten)', 8, 8),
(9, 'Milk', 9, 9),
(10, 'Stranded: I\'ve Come from a Plane That Crashed', 10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `filmproducer`
--

CREATE TABLE `filmproducer` (
  `producerid` int(11) NOT NULL,
  `filmTitleid` int(11) NOT NULL,
  `Studioid` varchar(50) NOT NULL,
  `filmsProduced` int(11) DEFAULT NULL CHECK (`filmsProduced` > 10)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `filmproducer`
--

INSERT INTO `filmproducer` (`producerid`, `filmTitleid`, `Studioid`, `filmsProduced`) VALUES
(1, 1, '1', 122),
(2, 2, '2', 956),
(3, 3, '3', 813),
(4, 4, '4', 318),
(5, 5, '5', 225),
(6, 6, '6', 394),
(7, 7, '7', 302),
(8, 8, '8', 482),
(9, 9, '9', 315),
(10, 10, '10', 856);

-- --------------------------------------------------------

--
-- Table structure for table `filmtitle`
--

CREATE TABLE `filmtitle` (
  `filmTitleid` int(11) NOT NULL,
  `filmTitle` varchar(50) NOT NULL,
  `filmStory` varchar(50) NOT NULL,
  `filmReleasedDate` varchar(50) NOT NULL,
  `filmDuration` varchar(50) NOT NULL,
  `filmGenre` varchar(50) NOT NULL,
  `filmCertificate` int(11) NOT NULL,
  `filmAdditionalDetails` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `filmtitle`
--

INSERT INTO `filmtitle` (`filmTitleid`, `filmTitle`, `filmStory`, `filmReleasedDate`, `filmDuration`, `filmGenre`, `filmCertificate`, `filmAdditionalDetails`) VALUES
(1, '', '', '5/13/2021', '7238302004', 'War of the Wildcats (In Old Oklahoma)', 0, 'Mattis.mp3'),
(2, '', '', '6/2/2021', '1382826621', 'Ruby & Quentin (Tais-toi!)', 0, 'VolutpatIn.avi'),
(3, '', '', '8/25/2021', '1905637144', 'Grapes of Death, The (Raisins de la mort, Les)', 0, 'Suscipit.mpeg'),
(4, '', '', '10/15/2021', '0902913859', 'Chronicle of an Escape (Crónica de una fuga)', 0, 'NullaNunc.gif'),
(5, '', '', '10/14/2021', '3363828454', 'Amazing Grace and Chuck', 0, 'LiberoUtMassa.gif'),
(6, '', '', '5/11/2021', '9112958336', 'Young and Prodigious T.S. Spivet, The (L\'extravaga', 0, 'EgetCongue.xls'),
(7, '', '', '2/17/2022', '2239770996', 'Angels Fall', 0, 'UtNulla.mpeg'),
(8, '', '', '9/8/2021', '6502835112', 'Ladies Man, The', 0, 'SedSagittis.mp3'),
(9, '', '', '7/22/2021', '3287759981', 'South Park: Imaginationland', 0, 'DonecDiam.ppt'),
(10, '', '', '5/29/2021', '9739503527', 'Ranma ½: Nihao My Concubine (Ranma ½: Kessen Tôgen', 0, 'Turpis.doc');

-- --------------------------------------------------------

--
-- Table structure for table `legalcertificates`
--

CREATE TABLE `legalcertificates` (
  `certificateid` int(50) NOT NULL,
  `certificateName` varchar(45) NOT NULL,
  `photoid` int(11) NOT NULL,
  `studioid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `legalcertificates`
--

INSERT INTO `legalcertificates` (`certificateid`, `certificateName`, `photoid`, `studioid`) VALUES
(1, 'zallery0', 1, 1),
(2, 'rrotchell1', 2, 2),
(3, 'pstronach2', 3, 3),
(4, 'amcghee3', 4, 4),
(5, 'mcheverell4', 5, 5),
(6, 'tpioch5', 6, 6),
(7, 'lfrugier6', 7, 7),
(8, 'gcaught7', 8, 8),
(9, 'yreece8', 9, 9),
(10, 'rkunzler9', 10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `photo`
--

CREATE TABLE `photo` (
  `photoid` int(11) NOT NULL,
  `clientid` int(11) NOT NULL,
  `photoName` varchar(50) NOT NULL,
  `Studioid` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `photo`
--

INSERT INTO `photo` (`photoid`, `clientid`, `photoName`, `Studioid`) VALUES
(1, 1, 'AmetCursusId.xls', '1'),
(2, 2, 'Enim.avi', '2'),
(3, 3, 'Eget.mov', '3'),
(4, 4, 'Ac.mpeg', '4'),
(5, 5, 'At.xls', '5'),
(6, 6, 'Justo.doc', '6'),
(7, 7, 'InConsequatUt.ppt', '7'),
(8, 8, 'Vel.avi', '8'),
(9, 9, 'AugueVestibulumRutrum.xls', '9'),
(10, 10, 'Quam.png', '10');

-- --------------------------------------------------------

--
-- Table structure for table `photographer`
--

CREATE TABLE `photographer` (
  `photographerid` int(11) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `NumberOfPictures` int(11) NOT NULL,
  `studioid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `photographer`
--

INSERT INTO `photographer` (`photographerid`, `fullname`, `Address`, `NumberOfPictures`, `studioid`) VALUES
(1, 'Alessandra Iles', '201 Vermont Junction', 96, 1),
(2, 'Hercules Worthing', '35 Raven Avenue', 43, 2),
(3, 'Con Croxon', '2 Karstens Point', 41, 3),
(4, 'Cahra Priestman', '441 Straubel Pass', 68, 4),
(5, 'Giffy Fegan', '73355 Petterle Trail', 68, 5),
(6, 'Dominique MacConchie', '87 Northland Street', 10, 6),
(7, 'Luis Clementet', '784 Sutherland Way', 41, 7),
(8, 'Lani Fransseni', '9214 Kinsman Lane', 95, 8),
(9, 'Taffy McCullen', '5452 Grover Park', 68, 9),
(10, 'Patton Nugent', '41 Norway Maple Terrace', 34, 10);

-- --------------------------------------------------------

--
-- Stand-in structure for view `photography`
-- (See below for the actual view)
--
CREATE TABLE `photography` (
`photographerid` int(11)
,`fullname` varchar(50)
,`NumberOfPictures` int(11)
,`studioid` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `roletypes`
--

CREATE TABLE `roletypes` (
  `roleTypesid` int(11) NOT NULL,
  `RoleType` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roletypes`
--

INSERT INTO `roletypes` (`roleTypesid`, `RoleType`) VALUES
(1, 'Reactive incremental process improvement'),
(2, 'Networked empowering paradigm'),
(3, 'Centralized high-level budgetary management'),
(4, 'Organized coherent circuit'),
(5, 'Versatile actuating functionalities'),
(6, 'Optional 3rd generation array'),
(7, 'Intuitive multimedia project'),
(8, 'Synergistic modular algorithm'),
(9, 'Streamlined well-modulated analyzer'),
(10, 'Cross-platform responsive encoding');

-- --------------------------------------------------------

--
-- Table structure for table `studio`
--

CREATE TABLE `studio` (
  `studioid` int(11) NOT NULL,
  `studioName` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `NumberOfPictures` int(11) NOT NULL,
  `clientid` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `studio`
--

INSERT INTO `studio` (`studioid`, `studioName`, `location`, `NumberOfPictures`, `clientid`) VALUES
(1, '1', '66 Sycamore Circle', 89, 1),
(2, '2', '02 Westerfield Junction', 26, 2),
(3, '3', '10 Hoffman Hill', 13, 3),
(4, '4', '3 Ronald Regan Pass', 96, 4),
(5, '5', '91 Graedel Center', 39, 5),
(6, '6', '320 Morrow Drive', 23, 6),
(7, '7', '161 Ryan Alley', 11, 7),
(8, '8', '3604 Weeping Birch Way', 18, 8),
(9, '9', '082 Lerdahl Drive', 21, 9),
(10, '10', '61 Pine View Pass', 83, 10);

-- --------------------------------------------------------

--
-- Stand-in structure for view `videography`
-- (See below for the actual view)
--
CREATE TABLE `videography` (
`filmTitleid` int(11)
,`filmTitle` varchar(50)
,`filmStory` varchar(50)
,`filmReleasedDate` varchar(50)
,`filmDuration` varchar(50)
,`filmGenre` varchar(50)
,`filmCertificate` int(11)
);

-- --------------------------------------------------------

--
-- Structure for view `actors`
--
DROP TABLE IF EXISTS `actors`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `actors`  AS SELECT `filmactors`.`actorsid` AS `actorsid`, `filmactors`.`actorsFullName` AS `actorsFullName`, `filmactors`.`actorsScript` AS `actorsScript` FROM `filmactors` GROUP BY `filmactors`.`actorsid``actorsid`  ;

-- --------------------------------------------------------

--
-- Structure for view `photography`
--
DROP TABLE IF EXISTS `photography`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `photography`  AS SELECT `photographer`.`photographerid` AS `photographerid`, `photographer`.`fullname` AS `fullname`, `photographer`.`NumberOfPictures` AS `NumberOfPictures`, `photographer`.`studioid` AS `studioid` FROM `photographer` GROUP BY `photographer`.`fullname``fullname`  ;

-- --------------------------------------------------------

--
-- Structure for view `videography`
--
DROP TABLE IF EXISTS `videography`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `videography`  AS SELECT `filmtitle`.`filmTitleid` AS `filmTitleid`, `filmtitle`.`filmTitle` AS `filmTitle`, `filmtitle`.`filmStory` AS `filmStory`, `filmtitle`.`filmReleasedDate` AS `filmReleasedDate`, `filmtitle`.`filmDuration` AS `filmDuration`, `filmtitle`.`filmGenre` AS `filmGenre`, `filmtitle`.`filmCertificate` AS `filmCertificate` FROM `filmtitle``filmtitle`  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cameraequipment`
--
ALTER TABLE `cameraequipment`
  ADD PRIMARY KEY (`cameraid`),
  ADD KEY `editorid` (`editorid`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`clientid`),
  ADD KEY `photographerid` (`photographerid`);

--
-- Indexes for table `editor`
--
ALTER TABLE `editor`
  ADD PRIMARY KEY (`editorid`),
  ADD KEY `clientid` (`clientid`);

--
-- Indexes for table `filmactors`
--
ALTER TABLE `filmactors`
  ADD PRIMARY KEY (`actorsid`),
  ADD KEY `studioid` (`studioid`);

--
-- Indexes for table `filmactorsroles`
--
ALTER TABLE `filmactorsroles`
  ADD PRIMARY KEY (`filmTitleid`),
  ADD KEY `actorsid` (`actorsid`),
  ADD KEY `roleTypesid` (`roleTypesid`);

--
-- Indexes for table `filmgenre`
--
ALTER TABLE `filmgenre`
  ADD PRIMARY KEY (`filmGenreid`),
  ADD KEY `certificateid` (`certificateid`),
  ADD KEY `producerid` (`producerid`);

--
-- Indexes for table `filmproducer`
--
ALTER TABLE `filmproducer`
  ADD PRIMARY KEY (`producerid`),
  ADD KEY `filmTitleid` (`filmTitleid`);

--
-- Indexes for table `filmtitle`
--
ALTER TABLE `filmtitle`
  ADD PRIMARY KEY (`filmTitleid`);

--
-- Indexes for table `legalcertificates`
--
ALTER TABLE `legalcertificates`
  ADD PRIMARY KEY (`certificateid`),
  ADD KEY `photoid` (`photoid`),
  ADD KEY `studioid` (`studioid`);

--
-- Indexes for table `photo`
--
ALTER TABLE `photo`
  ADD PRIMARY KEY (`photoid`),
  ADD KEY `clientid` (`clientid`);

--
-- Indexes for table `photographer`
--
ALTER TABLE `photographer`
  ADD PRIMARY KEY (`photographerid`),
  ADD KEY `studioid` (`studioid`);

--
-- Indexes for table `roletypes`
--
ALTER TABLE `roletypes`
  ADD PRIMARY KEY (`roleTypesid`);

--
-- Indexes for table `studio`
--
ALTER TABLE `studio`
  ADD PRIMARY KEY (`studioid`),
  ADD KEY `clientid` (`clientid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cameraequipment`
--
ALTER TABLE `cameraequipment`
  MODIFY `cameraid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `clientid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `editor`
--
ALTER TABLE `editor`
  MODIFY `editorid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `filmactors`
--
ALTER TABLE `filmactors`
  MODIFY `actorsid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `filmactorsroles`
--
ALTER TABLE `filmactorsroles`
  MODIFY `filmTitleid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `filmgenre`
--
ALTER TABLE `filmgenre`
  MODIFY `filmGenreid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `filmproducer`
--
ALTER TABLE `filmproducer`
  MODIFY `producerid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `filmtitle`
--
ALTER TABLE `filmtitle`
  MODIFY `filmTitleid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `legalcertificates`
--
ALTER TABLE `legalcertificates`
  MODIFY `certificateid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `photo`
--
ALTER TABLE `photo`
  MODIFY `photoid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `photographer`
--
ALTER TABLE `photographer`
  MODIFY `photographerid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `roletypes`
--
ALTER TABLE `roletypes`
  MODIFY `roleTypesid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `studio`
--
ALTER TABLE `studio`
  MODIFY `studioid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cameraequipment`
--
ALTER TABLE `cameraequipment`
  ADD CONSTRAINT `cameraequipment_ibfk_1` FOREIGN KEY (`editorid`) REFERENCES `editor` (`editorid`);

--
-- Constraints for table `client`
--
ALTER TABLE `client`
  ADD CONSTRAINT `client_ibfk_1` FOREIGN KEY (`photographerid`) REFERENCES `photographer` (`photographerid`);

--
-- Constraints for table `editor`
--
ALTER TABLE `editor`
  ADD CONSTRAINT `editor_ibfk_1` FOREIGN KEY (`clientid`) REFERENCES `client` (`clientid`);

--
-- Constraints for table `filmactors`
--
ALTER TABLE `filmactors`
  ADD CONSTRAINT `filmactors_ibfk_1` FOREIGN KEY (`studioid`) REFERENCES `studio` (`studioid`);

--
-- Constraints for table `filmactorsroles`
--
ALTER TABLE `filmactorsroles`
  ADD CONSTRAINT `filmactorsroles_ibfk_1` FOREIGN KEY (`actorsid`) REFERENCES `filmactors` (`actorsid`),
  ADD CONSTRAINT `filmactorsroles_ibfk_2` FOREIGN KEY (`roleTypesid`) REFERENCES `roletypes` (`roleTypesid`);

--
-- Constraints for table `filmgenre`
--
ALTER TABLE `filmgenre`
  ADD CONSTRAINT `filmgenre_ibfk_1` FOREIGN KEY (`certificateid`) REFERENCES `legalcertificates` (`certificateid`),
  ADD CONSTRAINT `filmgenre_ibfk_2` FOREIGN KEY (`producerid`) REFERENCES `filmproducer` (`producerid`);

--
-- Constraints for table `filmproducer`
--
ALTER TABLE `filmproducer`
  ADD CONSTRAINT `filmproducer_ibfk_1` FOREIGN KEY (`filmTitleid`) REFERENCES `filmactorsroles` (`filmTitleid`);

--
-- Constraints for table `legalcertificates`
--
ALTER TABLE `legalcertificates`
  ADD CONSTRAINT `legalcertificates_ibfk_1` FOREIGN KEY (`photoid`) REFERENCES `photo` (`photoid`),
  ADD CONSTRAINT `legalcertificates_ibfk_2` FOREIGN KEY (`studioid`) REFERENCES `studio` (`studioid`);

--
-- Constraints for table `photo`
--
ALTER TABLE `photo`
  ADD CONSTRAINT `photo_ibfk_1` FOREIGN KEY (`clientid`) REFERENCES `client` (`clientid`);

--
-- Constraints for table `photographer`
--
ALTER TABLE `photographer`
  ADD CONSTRAINT `photographer_ibfk_1` FOREIGN KEY (`studioid`) REFERENCES `studio` (`studioid`);

--
-- Constraints for table `studio`
--
ALTER TABLE `studio`
  ADD CONSTRAINT `studio_ibfk_1` FOREIGN KEY (`clientid`) REFERENCES `client` (`clientid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
