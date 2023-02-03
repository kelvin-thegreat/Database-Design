

--
--sql script to create geotrack database
--
CREATE DATABASE artDB;

--
-- Database: `artDB` will be creaated
--

-- --------------------------------------------------------
--
--SQL SCRIPT TO CREATE TABLES in ArtDB DATABASE TABLES
--
-- Table structure for table `Client`
--

CREATE TABLE IF NOT EXISTS `client` (
  `clientid` INT(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(50) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `NumberOfPictures` INT(50) NOT NULL,
  `occassionType` varchar(50) NOT NULL,
  `photographerid` INT NOT NULL,
  PRIMARY KEY (`clientid`)
) ;

--
--adding foreign key to client relation
--
ALTER TABLE client
ADD FOREIGN KEY (photographerid) REFERENCES photographer(photographerid);

--
-- --------------------------------------------------------

--
-- Table structure for table `photo`
--

CREATE TABLE IF NOT EXISTS `photo` (
  `photoid` int NOT NULL AUTO_INCREMENT,
  `clientid` int NOT NULL,
  `photoName` varchar(50) NOT NULL,
  `Studioid` varchar(50) NOT NULL,
  PRIMARY KEY (`photoid`)
);
--
--adding foerign key to photo relation
--
ALTER TABLE photo
ADD FOREIGN KEY (clientid) REFERENCES client(clientid);

--
--
--
-- --------------------------------------------------------

--
-- Table structure for table `studio`
--

CREATE TABLE IF NOT EXISTS `studio` (
  `studioid` int NOT NULL AUTO_INCREMENT,
  `studioName` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `NumberOfPictures` INT NOT NULL,
  `clientid` INT(50) NOT NULL,
  PRIMARY KEY (`studioid`)
);
--
--adding foreign key to studio relation<<
--
ALTER TABLE studio
ADD FOREIGN KEY (clientid) REFERENCES client(clientid);

--
--
--
-- --------------------------------------------------------
--
-- Table structure for table `photographer`
--

CREATE TABLE IF NOT EXISTS `photographer` (
  `photographerid` INT(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(50) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `NumberOfPictures` INT NOT NULL,
  `studioid` INT NOT NULL,
  PRIMARY KEY (`photographerid`)
) ;

--
--adding foreign key constraints 
--

ALTER TABLE photographer
ADD FOREIGN KEY (studioid) REFERENCES studio(studioid);


-- --------------------------------------------------------

--
-- Table structure for table `persondetails`
--

CREATE TABLE IF NOT EXISTS `editor` (
  `editorid` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(50) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `NumberOfPictures` INT NOT NULL,
  `clientid` INT NOT NULL,
  PRIMARY KEY (`editorid`)
);
--
--adding foreign key constraint to persondetails table
--
ALTER TABLE editor
ADD FOREIGN KEY (clientid) REFERENCES client(clientid);

-- --------------------------------------------------------

-- Table structure for table camera equipment
--

CREATE TABLE IF NOT EXISTS `cameraEquipment` (
  `cameraid` int(11) NOT NULL AUTO_INCREMENT,
  `cameraName` varchar(50) NOT NULL,
  `workType` varchar(50) NOT NULL,
  `editorid` INT NOT NULL,
  PRIMARY KEY (`cameraid`)
);

--
--adding constraints
--
ALTER TABLE cameraEquipment
ADD FOREIGN KEY (editorid) REFERENCES editor(editorid);

--
-- Table structure for table `film Actors`
--

CREATE TABLE IF NOT EXISTS `filmActors` (
  `actorsid` int(11) NOT NULL AUTO_INCREMENT,
  `studioid` INT NOT NULL,
  `actorsFullName` varchar(45) NOT NULL,
  `actorsScript` varchar(50) NOT NULL,
  PRIMARY KEY (`actorsid`)
);

--
--
ALTER TABLE filmActors
ADD FOREIGN KEY (studioid) REFERENCES studio(studioid);
--
--
--
--------------------------------------------------------------
--
--
-- Table structure for table `Film Title`
--

CREATE TABLE IF NOT EXISTS `filmTitle` (
  `filmTitleid` INT NOT NULL AUTO_INCREMENT,
  `filmTitle` varchar(50) NOT NULL,
  `filmStory` varchar(50) NOT NULL,
  `filmReleasedDate` varchar(50) NOT NULL,
  `filmDuration` varchar(50) NOT NULL,
  `filmGenre` varchar(50) NOT NULL,
  `filmCertificate` int(11) NOT NULL,
  `filmAdditionalDetails` varchar(11) NOT NULL,
  PRIMARY KEY (`filmTitleid`)
);
--
--
-----------------------------------------------------------
--
-- Table structure for table `role types`
--
--
CREATE TABLE IF NOT EXISTS `RoleTypes` (
  `roleTypesid` int(11) NOT NULL AUTO_INCREMENT,
  `RoleType` varchar(45) NOT NULL,
  PRIMARY KEY (`roleTypesid`)
);

---
---
----------------------------------------------------------
-- Table structure for table filActorsRoles.
--

CREATE TABLE IF NOT EXISTS `filmActorsRoles` (
  `filmTitleid` int(11) NOT NULL AUTO_INCREMENT,
  `actorsid` int(11) NOT NULL,
  `roleTypesid` int(11) NOT NULL,
  `characterName` varchar(50) NOT NULL,
  `characterDescription` varchar(50) NOT NULL,
  PRIMARY KEY (`filmTitleid`)
);

--
--adding foregn key constraints to film actors roles relation.
--

ALTER TABLE filmActorsRoles
ADD FOREIGN KEY (actorsid) REFERENCES filmActors(actorsid);

ALTER TABLE filmActorsRoles
ADD FOREIGN KEY (RoleTypesid) REFERENCES RoleTypes(roleTypesid);

---------------------------------------------------------
--
--
--
--
-- Table structure for table `filmProducer`
--

CREATE TABLE IF NOT EXISTS `filmProducer` (
  `producerid` int(11) NOT NULL AUTO_INCREMENT,
  `filmTitleid` int(11) NOT NULL,
  `Studioid` varchar(50) NOT NULL,
  `filmsProduced` INT CHECK (filmsProduced>10),
  PRIMARY KEY (`producerid`)
);
--
--adding foregn key constraint
--
ALTER TABLE filmProducer
ADD FOREIGN KEY (filmTitleid) REFERENCES filmActorsRoles(filmTitleid);

--
--
------------------------------------------------------------------------
--
--
--
-- Table structure for table `legalCertificates`
--

CREATE TABLE IF NOT EXISTS `legalCertificates` (
  `certificateid` int(50) NOT NULL AUTO_INCREMENT,
  `certificateName` varchar(45) NOT NULL,
  `photoid` INT NOT NULL,
  `studioid` int(11) NOT NULL,
  PRIMARY KEY (`certificateid`)
);


--adding foregn key constraint
--
ALTER TABLE legalCertificates
ADD FOREIGN KEY (photoid) REFERENCES photo(photoid);

ALTER TABLE legalCertificates
ADD FOREIGN KEY (studioid) REFERENCES studio(studioid);

--
--
---------------------------------------------------------------
--
-- Table structure for table `film Genre`
--

CREATE TABLE IF NOT EXISTS `filmGenre` (
  `filmGenreid` int(11) NOT NULL AUTO_INCREMENT,
  `filmGenre` varchar(45) NOT NULL,
  `producerid` int(11) NOT NULL,
  `certificateid` int(50) NOT NULL,
  PRIMARY KEY (`filmGenreid`)
);


--
--Foreign Keys
--
ALTER TABLE filmGenre
ADD FOREIGN KEY (producerid) REFERENCES filmProducer(producerid);

ALTER TABLE filmGenre
ADD FOREIGN KEY (certificateid) REFERENCES legalCertificates(certificateid);


--
-------------------------------------------------------------
--
--
--SQL scriptS for creating views in DatabaseGallery
--
--A1-shows detailed view of information about photographers
CREATE VIEW photography AS
SELECT
    photographerid,
    fullname,
    NumberOfPictures,
    studioid
FROM
photographer
GROUP BY fullname;

--A2-view of the film and the film descriptions with the repsective legal documents
CREATE VIEW videography AS
SELECT 
      filmTitleid, 
      filmTitle, 
      filmStory, 
      filmReleasedDate,
      filmDuration,
      filmGenre,
      filmCertificate

FROM filmTitle;


---A3-view to Actors In the Database

CREATE VIEW Actors AS
SELECT 
      actorsid, 
      actorsFullName, 
      actorsScript 
FROM filmActors
GROUP BY actorsid;

