-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: db_bris_vts
-- ------------------------------------------------------
-- Server version	5.5.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `persons`
--

DROP TABLE IF EXISTS `persons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persons` (
  `PersonID` int(11) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_busstoplatlong`
--

DROP TABLE IF EXISTS `tbl_busstoplatlong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_busstoplatlong` (
  `StopName` varchar(50) NOT NULL,
  `StopId` varchar(50) NOT NULL,
  `Latitude` varchar(30) NOT NULL,
  `LatitudeDir` varchar(10) DEFAULT NULL,
  `Longitude` varchar(30) NOT NULL,
  `LogitudeDir` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_codeddetails`
--

DROP TABLE IF EXISTS `tbl_codeddetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_codeddetails` (
  `CodedNo` int(11) NOT NULL,
  `CodedMsg` varchar(150) DEFAULT NULL,
  `CodedMsgReg1` varchar(150) DEFAULT NULL,
  `CodedMsgReg2` varchar(150) DEFAULT '""',
  PRIMARY KEY (`CodedNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_conductor_details`
--

DROP TABLE IF EXISTS `tbl_conductor_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_conductor_details` (
  `Id` varchar(10) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_defcurnxtarrstops`
--

DROP TABLE IF EXISTS `tbl_defcurnxtarrstops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_defcurnxtarrstops` (
  `EngCurStop` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `Reg1CurStop` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `Reg2CurStop` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `EngNxtStop` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `Reg1NxtStop` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Reg2NxtStop` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EngArrStop` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Reg1ArrStop` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Reg2ArrStop` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_displaybrdaddr`
--

DROP TABLE IF EXISTS `tbl_displaybrdaddr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_displaybrdaddr` (
  `FdAddr` varchar(500) CHARACTER SET latin1 DEFAULT '2',
  `SdAddr` varchar(500) CHARACTER SET latin1 DEFAULT '3',
  `RdAddr` varchar(500) CHARACTER SET latin1 DEFAULT '4',
  `IdAddr` varchar(500) CHARACTER SET latin1 DEFAULT '5',
  `BusType` tinyint(3) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_driver_details`
--

DROP TABLE IF EXISTS `tbl_driver_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_driver_details` (
  `Id` varchar(10) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `DPassword` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_driversplmsgs`
--

DROP TABLE IF EXISTS `tbl_driversplmsgs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_driversplmsgs` (
  `CodedNo` int(11) NOT NULL,
  `CodedMsg` varchar(100) DEFAULT NULL,
  `CodedMsgReg1` varchar(100) DEFAULT NULL,
  `CodedMsgReg2` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`CodedNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_frontdisplayboarddetails`
--

DROP TABLE IF EXISTS `tbl_frontdisplayboarddetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_frontdisplayboarddetails` (
  `ChkRoute` bit(1) DEFAULT NULL,
  `ChkSrc` bit(1) DEFAULT b'1',
  `ChkDes` bit(1) DEFAULT b'1',
  `ChkVia` bit(1) DEFAULT b'1',
  `ChkSrcScroll` bit(1) DEFAULT b'1',
  `ChkDesScroll` bit(1) DEFAULT b'1',
  `ChkViaScroll` bit(1) DEFAULT b'1',
  `RoutePos` smallint(6) DEFAULT '0',
  `RouteFont` smallint(6) DEFAULT '1',
  `RouteSpeed` smallint(6) DEFAULT '1',
  `SrcPos` smallint(6) DEFAULT '1',
  `SrcFont` smallint(6) DEFAULT '1',
  `SrcSpeed` smallint(6) DEFAULT '1',
  `DesPos` smallint(6) DEFAULT '0',
  `DesFont` smallint(6) DEFAULT '0',
  `DesSpeed` smallint(6) DEFAULT '0',
  `ViaPos` smallint(6) DEFAULT '0',
  `ViaFont` smallint(6) DEFAULT '0',
  `ViaSpeed` smallint(6) DEFAULT '0',
  `RouteNo` varchar(100) DEFAULT NULL,
  `DefaultSettings` bit(1) DEFAULT b'0',
  `GroupId` varchar(100) DEFAULT NULL,
  `ChkReg1Route` bit(1) DEFAULT b'1',
  `ChkReg1Src` bit(1) DEFAULT b'0',
  `ChkReg1Des` bit(1) DEFAULT b'0',
  `ChkReg1Via` bit(1) DEFAULT b'0',
  `ChkReg1SrcScroll` bit(1) DEFAULT b'0',
  `ChkReg1DesScroll` bit(1) DEFAULT b'0',
  `ChkReg1ViaScroll` bit(1) DEFAULT b'0',
  `Reg1RoutePos` smallint(6) DEFAULT '0',
  `Reg1RouteFont` smallint(6) DEFAULT '0',
  `Reg1RouteSpeed` smallint(6) DEFAULT '0',
  `Reg1SrcPos` smallint(6) DEFAULT '0',
  `Reg1SrcFont` smallint(6) DEFAULT '0',
  `Reg1SrcSpeed` smallint(6) DEFAULT '0',
  `Reg1DesPos` smallint(6) DEFAULT '0',
  `Reg1DesFont` smallint(6) DEFAULT '0',
  `Reg1DesSpeed` smallint(6) DEFAULT '0',
  `Reg1ViaPos` smallint(6) DEFAULT '0',
  `Reg1ViaFont` smallint(6) DEFAULT '0',
  `Reg1ViaSpeed` smallint(6) DEFAULT '0',
  `ChkReg2Route` bit(1) DEFAULT b'0',
  `ChkReg2Src` bit(1) DEFAULT b'0',
  `ChkReg2Des` bit(1) DEFAULT b'0',
  `ChkReg2Via` bit(1) DEFAULT b'0',
  `ChkReg2SrcScroll` bit(1) DEFAULT b'0',
  `ChkReg2DesScroll` bit(1) DEFAULT b'0',
  `ChkReg2ViaScroll` bit(1) DEFAULT b'0',
  `Reg2RoutePos` smallint(6) DEFAULT '0',
  `Reg2RouteFont` smallint(6) DEFAULT '0',
  `Reg2RouteSpeed` smallint(6) DEFAULT '0',
  `Reg2SrcPos` smallint(6) DEFAULT '0',
  `Reg2SrcFont` smallint(6) DEFAULT '0',
  `Reg2SrcSpeed` smallint(6) DEFAULT '0',
  `Reg2DesPos` smallint(6) DEFAULT '0',
  `Reg2DesFont` smallint(6) DEFAULT '0',
  `Reg2DesSpeed` smallint(6) DEFAULT '0',
  `Reg2ViaPos` smallint(6) DEFAULT '0',
  `Reg2ViaFont` smallint(6) DEFAULT '0',
  `Reg2ViaSpeed` smallint(6) DEFAULT '0',
  `BoardType` smallint(6) DEFAULT '0',
  `DataSave` bit(1) DEFAULT b'0',
  `chkEnglish` bit(1) DEFAULT b'1',
  `chkReg1` bit(1) DEFAULT b'1',
  `chkReg2` bit(1) DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_gpsdatainfo`
--

DROP TABLE IF EXISTS `tbl_gpsdatainfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_gpsdatainfo` (
  `RouteName` varchar(200) DEFAULT NULL,
  `StopName` varchar(200) DEFAULT NULL,
  `NextStopDistance` bigint(20) DEFAULT NULL,
  `CurrentStopDistance` bigint(20) DEFAULT NULL,
  `ArrivingStopDistance` bigint(20) DEFAULT NULL,
  `StopIdNames` varchar(500) DEFAULT NULL,
  `StoptoStopDistance` bigint(20) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_groupdetails`
--

DROP TABLE IF EXISTS `tbl_groupdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_groupdetails` (
  `GroupName` varchar(100) NOT NULL,
  `RouteNames` varchar(8000) DEFAULT NULL,
  `VersionNo` varchar(50) DEFAULT NULL,
  `SideSloganIds` varchar(500) DEFAULT NULL,
  `RearSloganIds` varchar(500) DEFAULT NULL,
  `InternalSloganIds` varchar(3000) DEFAULT NULL,
  `FrontSloganIds` varchar(500) DEFAULT NULL,
  `PreInternalSloganIds` varchar(2000) DEFAULT NULL,
  `PhoneDetails` varchar(500) DEFAULT NULL,
  `CodedMessages` varchar(500) DEFAULT NULL,
  `SpecialMessages` varchar(500) DEFAULT NULL,
  `DriverSplMessages` varchar(500) DEFAULT NULL,
  `PreDefLoc` varchar(500) DEFAULT NULL,
  `TrafficSignalPoints` varchar(500) DEFAULT NULL,
  `DriverIds` varchar(500) DEFAULT NULL,
  `ConductorIds` varchar(500) DEFAULT NULL,
  `LocationAds` varchar(1500) DEFAULT NULL,
  PRIMARY KEY (`GroupName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_internaldisplayboarddetails`
--

DROP TABLE IF EXISTS `tbl_internaldisplayboarddetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_internaldisplayboarddetails` (
  `ChkLang1` bit(1) DEFAULT b'1',
  `ChkLang2` bit(1) DEFAULT b'1',
  `ChkLang3` bit(1) DEFAULT NULL,
  `ChkLine1` bit(1) DEFAULT b'1',
  `ChkLine2` bit(1) DEFAULT b'1',
  `Line1Pos` smallint(6) DEFAULT '0',
  `Line1Font` smallint(6) DEFAULT '0',
  `Line1Speed` smallint(6) DEFAULT '0',
  `Line2Pos` smallint(6) DEFAULT '0',
  `Line2Font` smallint(6) DEFAULT '0',
  `Line2Speed` smallint(6) DEFAULT '0',
  `Reg1Pos` smallint(6) DEFAULT '0',
  `Reg1Font` smallint(6) DEFAULT '0',
  `Reg1Speed` smallint(6) DEFAULT '0',
  `Reg2Pos` smallint(6) DEFAULT '0',
  `Reg2Font` smallint(6) DEFAULT '0',
  `Reg2Speed` smallint(6) DEFAULT '0',
  `DefaultSettings` bit(1) DEFAULT b'0',
  `GroupId` varchar(100) DEFAULT NULL,
  `StopName` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_languagedetails`
--

DROP TABLE IF EXISTS `tbl_languagedetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_languagedetails` (
  `chkLang1` tinyint(4) DEFAULT '0',
  `lang1Name` varchar(20) DEFAULT NULL,
  `chkLang2` tinyint(4) DEFAULT '0',
  `lang2Name` varchar(20) DEFAULT NULL,
  `lang1FullBoldFont` varchar(20) DEFAULT NULL,
  `lang1FullBoldSize` smallint(6) DEFAULT NULL,
  `lang1FullBoldHeight` smallint(6) DEFAULT NULL,
  `lang1FullRegFont` varchar(20) DEFAULT NULL,
  `lang1FullRegSize` smallint(6) DEFAULT NULL,
  `lang1FullRegHeight` smallint(6) DEFAULT NULL,
  `lang1HalfBoldFont` varchar(20) DEFAULT NULL,
  `lang1HalfBoldSize` smallint(6) DEFAULT NULL,
  `lang1HalfBoldHeight` smallint(6) DEFAULT NULL,
  `lang1HalfRegFont` varchar(20) DEFAULT NULL,
  `lang1HalfRegSize` smallint(6) DEFAULT NULL,
  `lang1HalfRegHeight` smallint(6) DEFAULT NULL,
  `lang2FullBoldFont` varchar(20) DEFAULT NULL,
  `lang2FullBoldSize` smallint(6) DEFAULT NULL,
  `lang2FullBoldHeight` smallint(6) DEFAULT NULL,
  `lang2FullRegFont` varchar(20) DEFAULT NULL,
  `lang2FullRegSize` smallint(6) DEFAULT NULL,
  `lang2FullRegHeight` smallint(6) DEFAULT NULL,
  `lang2HalfBoldFont` varchar(20) DEFAULT NULL,
  `lang2HalfBoldSize` smallint(6) DEFAULT NULL,
  `lang2HalfBoldHeight` smallint(6) DEFAULT NULL,
  `lang2HalfRegFont` varchar(20) DEFAULT NULL,
  `lang2HalfRegSize` smallint(6) DEFAULT NULL,
  `lang2HalfRegHeight` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_phonedetails`
--

DROP TABLE IF EXISTS `tbl_phonedetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_phonedetails` (
  `Sno` int(11) NOT NULL AUTO_INCREMENT,
  `PhoneNo` varchar(15) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `RegName1` varchar(100) DEFAULT NULL,
  `RegName2` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Sno`,`PhoneNo`,`Name`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_predef_locations`
--

DROP TABLE IF EXISTS `tbl_predef_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_predef_locations` (
  `Id` varchar(10) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Latitude` double DEFAULT NULL,
  `Longitude` double DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_routedetails`
--

DROP TABLE IF EXISTS `tbl_routedetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_routedetails` (
  `RouteName` varchar(100) NOT NULL,
  `Reg1RouteName` varchar(100) DEFAULT NULL,
  `Reg2RouteName` varchar(100) DEFAULT NULL,
  `SrcName` varchar(200) DEFAULT NULL,
  `DesName` varchar(200) DEFAULT NULL,
  `ViaName` varchar(1200) DEFAULT NULL,
  `Reg1SrcName` varchar(200) DEFAULT NULL,
  `Reg1DesName` varchar(200) DEFAULT NULL,
  `Reg1ViaName` varchar(1200) DEFAULT NULL,
  `Reg2SrcName` varchar(200) DEFAULT NULL,
  `Reg2DesName` varchar(200) DEFAULT NULL,
  `Reg2ViaName` varchar(1200) DEFAULT NULL,
  `ChkReg1Lang` bit(1) DEFAULT b'1',
  `ChkReg2Lang` bit(1) DEFAULT b'1',
  `Lang1Name` varchar(20) DEFAULT NULL,
  `Lang2Name` varchar(20) DEFAULT NULL,
  `SrcDesCasing` varchar(10) DEFAULT 'Normal',
  `ViaCasing` varchar(10) DEFAULT 'Normal',
  `ChkEnglish` bit(1) DEFAULT b'1',
  `FileName` varchar(200) DEFAULT NULL,
  `InternalSloganDetails` varchar(1000) DEFAULT NULL,
  `InternalPreSloganDetails` varchar(1000) DEFAULT NULL,
  `Extra` varchar(300) DEFAULT NULL,
  `chkRegRouteLang1` bit(1) DEFAULT b'0',
  `chkRegRouteLang2` bit(1) DEFAULT b'0',
  `chkEnglishLang` bit(1) DEFAULT b'1',
  `LocationAds` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`RouteName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_sloganinternaldetails`
--

DROP TABLE IF EXISTS `tbl_sloganinternaldetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_sloganinternaldetails` (
  `SloganIDName` varchar(100) NOT NULL,
  `chkEnglish` bit(1) DEFAULT b'1',
  `ChkReg1` bit(1) DEFAULT b'1',
  `ChkReg2` bit(1) DEFAULT b'1',
  `ChkLine1` bit(1) DEFAULT b'1',
  `ChkImageLine1` bit(1) DEFAULT b'0',
  `Line1Data` varchar(500) DEFAULT NULL,
  `Line1Imagepath` varchar(100) DEFAULT NULL,
  `Line1Pos` smallint(6) DEFAULT '0',
  `Line1Font` smallint(6) DEFAULT '0',
  `Line1Speed` smallint(6) DEFAULT '3',
  `chkLine2` bit(1) DEFAULT b'1',
  `ChkImageLine2` bit(1) DEFAULT b'0',
  `Line2data` varchar(500) DEFAULT NULL,
  `Line2ImagePath` varchar(100) DEFAULT NULL,
  `Line2Pos` smallint(6) DEFAULT '0',
  `Line2Font` smallint(6) DEFAULT '0',
  `Line2Speed` smallint(6) DEFAULT '3',
  `ChkImageReg1` bit(1) DEFAULT b'0',
  `Reg1data` varchar(500) DEFAULT NULL,
  `Reg1ImagePath` varchar(100) DEFAULT NULL,
  `Reg1Pos` smallint(6) DEFAULT '0',
  `Reg1Font` smallint(6) DEFAULT '0',
  `Reg1Speed` smallint(6) DEFAULT '3',
  `ChkImageReg2` bit(1) DEFAULT b'0',
  `Reg2Data` varchar(500) DEFAULT NULL,
  `Reg2ImagePath` varchar(100) DEFAULT NULL,
  `Reg2Pos` smallint(6) DEFAULT '0',
  `Reg2Font` smallint(6) DEFAULT '0',
  `Reg2Speed` smallint(6) DEFAULT '3',
  `EngImageSide` smallint(6) DEFAULT '0',
  `Reg1ImageSide` smallint(6) DEFAULT '0',
  `Reg2ImageSide` smallint(6) DEFAULT NULL,
  `SloganSave` bit(1) DEFAULT b'0',
  `MsgNo` smallint(6) DEFAULT '1',
  `DisplayBoardType` smallint(6) DEFAULT '1',
  `AudioFile` varchar(50) DEFAULT NULL,
  `Extra` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_special_msg`
--

DROP TABLE IF EXISTS `tbl_special_msg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_special_msg` (
  `eng_msg` varchar(75) NOT NULL,
  `reg1_msg` varchar(75) NOT NULL DEFAULT '""',
  `reg2_msg` varchar(75) NOT NULL DEFAULT '""',
  PRIMARY KEY (`eng_msg`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_stopdetails`
--

DROP TABLE IF EXISTS `tbl_stopdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_stopdetails` (
  `StopName` varchar(50) NOT NULL,
  `Reg1StopName` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Reg2StopName` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `CurrentStopEngLine1` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `CurrentStopEngLine2` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `CurrentStopReg1` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `CurrentStopReg2` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `NextStopEngLine1` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `NextStopEngLine2` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `NextStopReg1` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `NextStopReg2` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `AppStopEngLine1` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `AppStopEngLine2` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `AppStopReg1` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `AppStopReg2` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `CurrentStopAudioFile` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `NextStopAudioFile` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `AppStopAudioFile` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `CurrentStopReg1AudioFile` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `NextStopReg1AudioFile` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `AppStopReg1AudioFile` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `CurrentStopReg2AudioFile` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `NextStopReg2AudioFile` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `AppStopReg2AudioFile` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `NoStopIds` smallint(6) DEFAULT NULL,
  `LatLongId` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Latitude` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Longitude` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `chkCurEngLine1` bit(1) DEFAULT b'1',
  `chkCurEngLine2` bit(1) DEFAULT b'1',
  `chkNextEngLine1` bit(1) DEFAULT b'1',
  `chkNextEngLine2` bit(1) DEFAULT b'1',
  `chkArrEngLine1` bit(1) DEFAULT b'1',
  `chkArrEngLine2` bit(1) DEFAULT b'1',
  `StopFileName` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `RawLatInfo` varchar(500) DEFAULT NULL,
  `RawLongInfo` varchar(500) DEFAULT NULL,
  `chkRaw` bit(1) DEFAULT b'0',
  `chkMp3` bit(1) DEFAULT b'0',
  PRIMARY KEY (`StopName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_traffic_signal_points`
--

DROP TABLE IF EXISTS `tbl_traffic_signal_points`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_traffic_signal_points` (
  `Id` varchar(10) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Latitude` double DEFAULT NULL,
  `Longitude` double DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-25 16:17:19
