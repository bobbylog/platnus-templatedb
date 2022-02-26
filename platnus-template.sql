-- MySQL dump 10.16  Distrib 10.1.48-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: bobbylog_budgetdb_templatev4
-- ------------------------------------------------------
-- Server version	10.1.48-MariaDB-0+deb9u2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `_tmp_mobile_session`
--

DROP TABLE IF EXISTS `_tmp_mobile_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_tmp_mobile_session` (
  `m_session_id` int(11) NOT NULL AUTO_INCREMENT,
  `m_username` varchar(50) DEFAULT NULL,
  `m_token` varchar(250) DEFAULT NULL,
  `m_profile` varchar(50) DEFAULT NULL,
  `gen_session_id` varchar(250) DEFAULT NULL,
  `m_status` varchar(25) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`m_session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_tmp_mobile_session`
--

LOCK TABLES `_tmp_mobile_session` WRITE;
/*!40000 ALTER TABLE `_tmp_mobile_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `_tmp_mobile_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `ctm_account_activities_view`
--

DROP TABLE IF EXISTS `ctm_account_activities_view`;
/*!50001 DROP VIEW IF EXISTS `ctm_account_activities_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `ctm_account_activities_view` (
  `Accountid` tinyint NOT NULL,
  `TransDate` tinyint NOT NULL,
  `AccountAlias` tinyint NOT NULL,
  `Amount` tinyint NOT NULL,
  `Notes` tinyint NOT NULL,
  `TransType` tinyint NOT NULL,
  `AccountSource` tinyint NOT NULL,
  `ref_transact_id` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `ctm_account_allocation_view`
--

DROP TABLE IF EXISTS `ctm_account_allocation_view`;
/*!50001 DROP VIEW IF EXISTS `ctm_account_allocation_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `ctm_account_allocation_view` (
  `Accountid` tinyint NOT NULL,
  `Budgetid` tinyint NOT NULL,
  `AccountNo` tinyint NOT NULL,
  `CreationDate` tinyint NOT NULL,
  `ClosingDate` tinyint NOT NULL,
  `AccountName` tinyint NOT NULL,
  `AccountType` tinyint NOT NULL,
  `InitialAmount` tinyint NOT NULL,
  `ByPercent` tinyint NOT NULL,
  `PercentRate` tinyint NOT NULL,
  `Currency` tinyint NOT NULL,
  `SourceAccount` tinyint NOT NULL,
  `Location` tinyint NOT NULL,
  `Status` tinyint NOT NULL,
  `aOrder` tinyint NOT NULL,
  `Comments` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `ctm_account_archive`
--

DROP TABLE IF EXISTS `ctm_account_archive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctm_account_archive` (
  `Accountid` int(11) NOT NULL DEFAULT '0',
  `Budgetid` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `AccountNo` varchar(350) CHARACTER SET latin1 DEFAULT NULL,
  `CreatedBy` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `CreationDate` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `ClosingDate` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `AccountName` varchar(350) CHARACTER SET latin1 DEFAULT NULL,
  `AccountType` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `InitialAmount` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `ByPercent` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `PercentRate` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `Currency` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `SourceAccount` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `Location` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `accStatus` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `aOrder` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `CostCenter` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `ModifiedDate` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `Comments` text CHARACTER SET latin1,
  `activities` varchar(25) DEFAULT NULL,
  `Balance` varchar(25) DEFAULT NULL,
  `SourceBalance` varchar(25) DEFAULT NULL,
  `aTarget` varchar(25) DEFAULT NULL,
  `aReached` varchar(2) DEFAULT NULL,
  `Pending` varchar(25) NOT NULL,
  `LastBalRefID` varchar(25) DEFAULT NULL,
  `Latest_Balance` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctm_account_archive`
--

LOCK TABLES `ctm_account_archive` WRITE;
/*!40000 ALTER TABLE `ctm_account_archive` DISABLE KEYS */;
/*!40000 ALTER TABLE `ctm_account_archive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `ctm_account_income_view`
--

DROP TABLE IF EXISTS `ctm_account_income_view`;
/*!50001 DROP VIEW IF EXISTS `ctm_account_income_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `ctm_account_income_view` (
  `accountid` tinyint NOT NULL,
  `TransDate` tinyint NOT NULL,
  `IncTotal` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `ctm_account_new`
--

DROP TABLE IF EXISTS `ctm_account_new`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctm_account_new` (
  `Accountid` int(11) NOT NULL AUTO_INCREMENT,
  `Budgetid` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `AccountNo` varchar(350) CHARACTER SET latin1 DEFAULT NULL,
  `CreatedBy` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `CreationDate` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `ClosingDate` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `AccountName` varchar(350) CHARACTER SET latin1 DEFAULT NULL,
  `AccountType` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `InitialAmount` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `ByPercent` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `PercentRate` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `Currency` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `SourceAccount` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `Location` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `accStatus` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `aOrder` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `CostCenter` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `ModifiedDate` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `Comments` text CHARACTER SET latin1,
  `activities` varchar(25) DEFAULT NULL,
  `Balance` varchar(25) DEFAULT NULL,
  `SourceBalance` varchar(25) DEFAULT NULL,
  `aTarget` varchar(25) DEFAULT NULL,
  `aReached` varchar(2) DEFAULT NULL,
  `Pending` varchar(25) NOT NULL,
  `LastBalRefID` varchar(25) DEFAULT NULL,
  `Latest_Balance` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`Accountid`),
  UNIQUE KEY `AccountNo` (`AccountNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctm_account_new`
--

LOCK TABLES `ctm_account_new` WRITE;
/*!40000 ALTER TABLE `ctm_account_new` DISABLE KEYS */;
/*!40000 ALTER TABLE `ctm_account_new` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ctm_account_old`
--

DROP TABLE IF EXISTS `ctm_account_old`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctm_account_old` (
  `Accountid` int(11) NOT NULL AUTO_INCREMENT,
  `Budgetid` varchar(50) DEFAULT NULL,
  `AccountNo` varchar(350) DEFAULT NULL,
  `CreatedBy` varchar(50) DEFAULT NULL,
  `CreationDate` varchar(50) DEFAULT NULL,
  `ClosingDate` varchar(50) DEFAULT NULL,
  `AccountName` varchar(350) DEFAULT NULL,
  `AccountType` varchar(50) DEFAULT NULL,
  `InitialAmount` varchar(50) DEFAULT NULL,
  `ByPercent` varchar(50) DEFAULT NULL,
  `PercentRate` varchar(50) DEFAULT NULL,
  `Currency` varchar(50) DEFAULT NULL,
  `SourceAccount` varchar(50) DEFAULT NULL,
  `Location` varchar(50) DEFAULT NULL,
  `accStatus` varchar(50) DEFAULT NULL,
  `aOrder` varchar(50) DEFAULT NULL,
  `CostCenter` varchar(25) DEFAULT NULL,
  `ModifiedBy` varchar(50) DEFAULT NULL,
  `ModifiedDate` varchar(25) DEFAULT NULL,
  `Comments` text,
  PRIMARY KEY (`Accountid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctm_account_old`
--

LOCK TABLES `ctm_account_old` WRITE;
/*!40000 ALTER TABLE `ctm_account_old` DISABLE KEYS */;
/*!40000 ALTER TABLE `ctm_account_old` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`setienne`@`localhost`*/ /*!50003 TRIGGER `ctm_trig_acc_update` AFTER UPDATE ON `ctm_account_old` FOR EACH ROW BEGIN
update ignore tmp_Account_Info_Result set
						AccountNo=New.AccountNo,
						AccountName=New.AccountName,
						InitialAmount=New.InitialAmount,
						ByPercent=New.ByPercent,
						PercentRate=New.PercentRate,
						Currency=New.Currency,
						
						Location=New.Location,
						accStatus=New.accStatus,
						Comments=New.Comments,
                        AccountType=New.AccountType,
                        aOrder=New.aOrder,
                        CostCenter=New.CostCenter
                        
                        where Accountid=Old.Accountid;
                        


END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `ctm_account_oldbudget`
--

DROP TABLE IF EXISTS `ctm_account_oldbudget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctm_account_oldbudget` (
  `Accountid` int(11) NOT NULL DEFAULT '0',
  `Budgetid` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `AccountNo` varchar(350) CHARACTER SET latin1 DEFAULT NULL,
  `CreatedBy` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `CreationDate` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `ClosingDate` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `AccountName` varchar(350) CHARACTER SET latin1 DEFAULT NULL,
  `AccountType` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `InitialAmount` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `ByPercent` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `PercentRate` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `Currency` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `SourceAccount` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `Location` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `accStatus` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `aOrder` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `CostCenter` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `ModifiedDate` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `Comments` text CHARACTER SET latin1,
  `activities` varchar(25) DEFAULT NULL,
  `Balance` varchar(25) DEFAULT NULL,
  `SourceBalance` varchar(25) DEFAULT NULL,
  `aTarget` varchar(25) DEFAULT NULL,
  `aReached` varchar(2) DEFAULT NULL,
  `Pending` varchar(25) NOT NULL,
  `LastBalRefID` varchar(25) DEFAULT NULL,
  `Latest_Balance` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctm_account_oldbudget`
--

LOCK TABLES `ctm_account_oldbudget` WRITE;
/*!40000 ALTER TABLE `ctm_account_oldbudget` DISABLE KEYS */;
/*!40000 ALTER TABLE `ctm_account_oldbudget` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `ctm_account_q2_balance_view`
--

DROP TABLE IF EXISTS `ctm_account_q2_balance_view`;
/*!50001 DROP VIEW IF EXISTS `ctm_account_q2_balance_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `ctm_account_q2_balance_view` (
  `Accountid` tinyint NOT NULL,
  `Budgetid` tinyint NOT NULL,
  `AccountNo` tinyint NOT NULL,
  `CreationDate` tinyint NOT NULL,
  `ClosingDate` tinyint NOT NULL,
  `AccountName` tinyint NOT NULL,
  `AccountType` tinyint NOT NULL,
  `InitialAmount` tinyint NOT NULL,
  `ByPercent` tinyint NOT NULL,
  `PercentRate` tinyint NOT NULL,
  `Currency` tinyint NOT NULL,
  `SourceAccount` tinyint NOT NULL,
  `Location` tinyint NOT NULL,
  `accStatus` tinyint NOT NULL,
  `aOrder` tinyint NOT NULL,
  `CostCenter` tinyint NOT NULL,
  `Comments` tinyint NOT NULL,
  `Income` tinyint NOT NULL,
  `Expense` tinyint NOT NULL,
  `Transfer` tinyint NOT NULL,
  `Alloc` tinyint NOT NULL,
  `Balance` tinyint NOT NULL,
  `SourceBalance` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `ctm_account_q3_balance_view`
--

DROP TABLE IF EXISTS `ctm_account_q3_balance_view`;
/*!50001 DROP VIEW IF EXISTS `ctm_account_q3_balance_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `ctm_account_q3_balance_view` (
  `Accountid` tinyint NOT NULL,
  `Budgetid` tinyint NOT NULL,
  `AccountNo` tinyint NOT NULL,
  `CreationDate` tinyint NOT NULL,
  `ClosingDate` tinyint NOT NULL,
  `AccountName` tinyint NOT NULL,
  `AccountType` tinyint NOT NULL,
  `ByPercent` tinyint NOT NULL,
  `PercentRate` tinyint NOT NULL,
  `InitialAmount` tinyint NOT NULL,
  `Currency` tinyint NOT NULL,
  `SourceAccount` tinyint NOT NULL,
  `Location` tinyint NOT NULL,
  `accStatus` tinyint NOT NULL,
  `aOrder` tinyint NOT NULL,
  `CostCenter` tinyint NOT NULL,
  `Comments` tinyint NOT NULL,
  `Income` tinyint NOT NULL,
  `Expense` tinyint NOT NULL,
  `Transfer` tinyint NOT NULL,
  `Alloc` tinyint NOT NULL,
  `Balance` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `ctm_account_q4_balance_view`
--

DROP TABLE IF EXISTS `ctm_account_q4_balance_view`;
/*!50001 DROP VIEW IF EXISTS `ctm_account_q4_balance_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `ctm_account_q4_balance_view` (
  `Accountid` tinyint NOT NULL,
  `Budgetid` tinyint NOT NULL,
  `AccountNo` tinyint NOT NULL,
  `CreationDate` tinyint NOT NULL,
  `ClosingDate` tinyint NOT NULL,
  `AccountName` tinyint NOT NULL,
  `AccountType` tinyint NOT NULL,
  `ByPercent` tinyint NOT NULL,
  `PercentRate` tinyint NOT NULL,
  `InitialAmount` tinyint NOT NULL,
  `Currency` tinyint NOT NULL,
  `SourceAccount` tinyint NOT NULL,
  `Location` tinyint NOT NULL,
  `accStatus` tinyint NOT NULL,
  `aOrder` tinyint NOT NULL,
  `CostCenter` tinyint NOT NULL,
  `Comments` tinyint NOT NULL,
  `Income` tinyint NOT NULL,
  `Expense` tinyint NOT NULL,
  `Transfer` tinyint NOT NULL,
  `Alloc` tinyint NOT NULL,
  `Balance` tinyint NOT NULL,
  `SourceBalance` tinyint NOT NULL,
  `Pending` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `ctm_account_q_balance_view`
--

DROP TABLE IF EXISTS `ctm_account_q_balance_view`;
/*!50001 DROP VIEW IF EXISTS `ctm_account_q_balance_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `ctm_account_q_balance_view` (
  `Accountid` tinyint NOT NULL,
  `Budgetid` tinyint NOT NULL,
  `AccountNo` tinyint NOT NULL,
  `CreationDate` tinyint NOT NULL,
  `ClosingDate` tinyint NOT NULL,
  `AccountName` tinyint NOT NULL,
  `AccountType` tinyint NOT NULL,
  `InitialAmount` tinyint NOT NULL,
  `ByPercent` tinyint NOT NULL,
  `PercentRate` tinyint NOT NULL,
  `Currency` tinyint NOT NULL,
  `SourceAccount` tinyint NOT NULL,
  `Location` tinyint NOT NULL,
  `accStatus` tinyint NOT NULL,
  `aOrder` tinyint NOT NULL,
  `Comments` tinyint NOT NULL,
  `Income` tinyint NOT NULL,
  `Expense` tinyint NOT NULL,
  `Transfer` tinyint NOT NULL,
  `Alloc` tinyint NOT NULL,
  `Balance` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `ctm_account_set_view`
--

DROP TABLE IF EXISTS `ctm_account_set_view`;
/*!50001 DROP VIEW IF EXISTS `ctm_account_set_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `ctm_account_set_view` (
  `Budgetid` tinyint NOT NULL,
  `Accountid` tinyint NOT NULL,
  `AccountNo` tinyint NOT NULL,
  `Accountname` tinyint NOT NULL,
  `AccountType` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `ctm_allocation`
--

DROP TABLE IF EXISTS `ctm_allocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctm_allocation` (
  `Allocid` int(11) NOT NULL AUTO_INCREMENT,
  `TransDate` varchar(50) DEFAULT NULL,
  `AccountFrom` varchar(50) DEFAULT NULL,
  `AllocCode` varchar(50) DEFAULT NULL,
  `Amount` varchar(350) DEFAULT NULL,
  `Notes` text,
  `Owner` varchar(50) DEFAULT NULL,
  `AssignedTo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Allocid`),
  UNIQUE KEY `AllocCode` (`AllocCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctm_allocation`
--

LOCK TABLES `ctm_allocation` WRITE;
/*!40000 ALTER TABLE `ctm_allocation` DISABLE KEYS */;
/*!40000 ALTER TABLE `ctm_allocation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ctm_allocation_archive`
--

DROP TABLE IF EXISTS `ctm_allocation_archive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctm_allocation_archive` (
  `Allocid` int(11) NOT NULL DEFAULT '0',
  `TransDate` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `AccountFrom` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `AllocCode` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `Amount` varchar(350) CHARACTER SET latin1 DEFAULT NULL,
  `Notes` text CHARACTER SET latin1,
  `Owner` varchar(50) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctm_allocation_archive`
--

LOCK TABLES `ctm_allocation_archive` WRITE;
/*!40000 ALTER TABLE `ctm_allocation_archive` DISABLE KEYS */;
/*!40000 ALTER TABLE `ctm_allocation_archive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `ctm_bank_account_funder_balance_view`
--

DROP TABLE IF EXISTS `ctm_bank_account_funder_balance_view`;
/*!50001 DROP VIEW IF EXISTS `ctm_bank_account_funder_balance_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `ctm_bank_account_funder_balance_view` (
  `association_id` tinyint NOT NULL,
  `association_date` tinyint NOT NULL,
  `bank_account_id` tinyint NOT NULL,
  `bank_accountname` tinyint NOT NULL,
  `bank_accountnumber` tinyint NOT NULL,
  `target_funder_id` tinyint NOT NULL,
  `bank_funder_name` tinyint NOT NULL,
  `association_status` tinyint NOT NULL,
  `bank_accountlocation` tinyint NOT NULL,
  `balance_current` tinyint NOT NULL,
  `balance_available` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `ctm_bank_funder_association`
--

DROP TABLE IF EXISTS `ctm_bank_funder_association`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctm_bank_funder_association` (
  `association_id` int(11) NOT NULL AUTO_INCREMENT,
  `association_date` datetime DEFAULT NULL,
  `bank_account_id` varchar(250) DEFAULT NULL,
  `bank_accountname` varchar(250) DEFAULT NULL,
  `bank_accountnumber` varchar(50) DEFAULT NULL,
  `target_funder_id` int(11) DEFAULT NULL,
  `target_funder_name` varchar(150) DEFAULT NULL,
  `target_funder_initial` varchar(25) DEFAULT NULL,
  `association_status` varchar(25) DEFAULT NULL,
  `bank_accountlocation` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`association_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctm_bank_funder_association`
--

LOCK TABLES `ctm_bank_funder_association` WRITE;
/*!40000 ALTER TABLE `ctm_bank_funder_association` DISABLE KEYS */;
/*!40000 ALTER TABLE `ctm_bank_funder_association` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ctm_bank_transact_validate`
--

DROP TABLE IF EXISTS `ctm_bank_transact_validate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctm_bank_transact_validate` (
  `validation_id` int(11) NOT NULL AUTO_INCREMENT,
  `batchid` int(11) DEFAULT NULL,
  `ctyearid` int(11) DEFAULT NULL,
  `bank_transact_id` varchar(250) DEFAULT NULL,
  `batchdate` varchar(25) DEFAULT NULL,
  `transacttype` varchar(25) DEFAULT NULL,
  `transactdate` varchar(25) DEFAULT NULL,
  `amount` varchar(25) DEFAULT NULL,
  `transactcategory` varchar(50) DEFAULT NULL,
  `transactaccfrom` varchar(25) DEFAULT NULL,
  `transactaccto` varchar(25) DEFAULT NULL,
  `transactdesc` text,
  `transactnote` text,
  `transactowner` varchar(50) DEFAULT NULL,
  `transactassign` varchar(50) DEFAULT NULL,
  `processedby` varchar(50) DEFAULT NULL,
  `posteddate` varchar(25) DEFAULT NULL,
  `supplier` varchar(250) DEFAULT NULL,
  `processed` varchar(2) DEFAULT NULL,
  `budgetid` int(11) DEFAULT NULL,
  `transauth` varchar(11) DEFAULT NULL,
  `exp_options` varchar(2) DEFAULT NULL,
  `validation_status` int(11) DEFAULT NULL,
  `last_updated` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`validation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctm_bank_transact_validate`
--

LOCK TABLES `ctm_bank_transact_validate` WRITE;
/*!40000 ALTER TABLE `ctm_bank_transact_validate` DISABLE KEYS */;
/*!40000 ALTER TABLE `ctm_bank_transact_validate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ctm_behavior`
--

DROP TABLE IF EXISTS `ctm_behavior`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctm_behavior` (
  `behaviorid` int(11) NOT NULL AUTO_INCREMENT,
  `behaviorcode` varchar(150) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`behaviorid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctm_behavior`
--

LOCK TABLES `ctm_behavior` WRITE;
/*!40000 ALTER TABLE `ctm_behavior` DISABLE KEYS */;
/*!40000 ALTER TABLE `ctm_behavior` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ctm_btransfer`
--

DROP TABLE IF EXISTS `ctm_btransfer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctm_btransfer` (
  `Transferid` int(11) NOT NULL AUTO_INCREMENT,
  `TransDate` varchar(50) DEFAULT NULL,
  `AccountFrom` varchar(50) DEFAULT NULL,
  `AccountTo` varchar(50) DEFAULT NULL,
  `Amount` varchar(350) DEFAULT NULL,
  `Notes` varchar(50) DEFAULT NULL,
  `Owner` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Transferid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctm_btransfer`
--

LOCK TABLES `ctm_btransfer` WRITE;
/*!40000 ALTER TABLE `ctm_btransfer` DISABLE KEYS */;
/*!40000 ALTER TABLE `ctm_btransfer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ctm_budget_archive`
--

DROP TABLE IF EXISTS `ctm_budget_archive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctm_budget_archive` (
  `Budgetid` int(11) NOT NULL DEFAULT '0',
  `BudgetCode` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `CostCenter` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `ctyearid` int(11) DEFAULT NULL,
  `title` varchar(350) CHARACTER SET latin1 DEFAULT NULL,
  `Source` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `ScrType` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `BudgType` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `FYear` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `bGroup` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `AssignedTo` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `Owner` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `Vision` text CHARACTER SET latin1,
  `accStatus` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `bNote` longtext CHARACTER SET latin1,
  `CreatedBy` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `ModifiedDate` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `StartDate` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `Approved` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `ApprovedBy` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `ApprovalDate` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `Followers` text CHARACTER SET latin1,
  `flagged` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `InitAmount` varchar(350) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `Income` double DEFAULT NULL,
  `Expenses` double DEFAULT NULL,
  `Allocs` double DEFAULT NULL,
  `bVariance` double DEFAULT NULL,
  `Available` double DEFAULT NULL,
  `AbsAvailable` double DEFAULT NULL,
  `Pending` double DEFAULT NULL,
  `budgorder` varchar(25) DEFAULT NULL,
  `bPeriod` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctm_budget_archive`
--

LOCK TABLES `ctm_budget_archive` WRITE;
/*!40000 ALTER TABLE `ctm_budget_archive` DISABLE KEYS */;
/*!40000 ALTER TABLE `ctm_budget_archive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `ctm_budget_funder_set`
--

DROP TABLE IF EXISTS `ctm_budget_funder_set`;
/*!50001 DROP VIEW IF EXISTS `ctm_budget_funder_set`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `ctm_budget_funder_set` (
  `budgetid` tinyint NOT NULL,
  `Accountid` tinyint NOT NULL,
  `AccountNo` tinyint NOT NULL,
  `AccountName` tinyint NOT NULL,
  `AccountType` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `ctm_budget_funder_set_new`
--

DROP TABLE IF EXISTS `ctm_budget_funder_set_new`;
/*!50001 DROP VIEW IF EXISTS `ctm_budget_funder_set_new`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `ctm_budget_funder_set_new` (
  `budgetid` tinyint NOT NULL,
  `Accountid` tinyint NOT NULL,
  `AccountNo` tinyint NOT NULL,
  `AccountName` tinyint NOT NULL,
  `AccountType` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `ctm_budget_info_Old_view`
--

DROP TABLE IF EXISTS `ctm_budget_info_Old_view`;
/*!50001 DROP VIEW IF EXISTS `ctm_budget_info_Old_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `ctm_budget_info_Old_view` (
  `Budgetid` tinyint NOT NULL,
  `title` tinyint NOT NULL,
  `Source` tinyint NOT NULL,
  `ScrType` tinyint NOT NULL,
  `BudgType` tinyint NOT NULL,
  `FYear` tinyint NOT NULL,
  `bGroup` tinyint NOT NULL,
  `AssignedTo` tinyint NOT NULL,
  `Vision` tinyint NOT NULL,
  `Status` tinyint NOT NULL,
  `bNote` tinyint NOT NULL,
  `InitAmount` tinyint NOT NULL,
  `Income` tinyint NOT NULL,
  `Expenses` tinyint NOT NULL,
  `Allocs` tinyint NOT NULL,
  `bVariance` tinyint NOT NULL,
  `Available` tinyint NOT NULL,
  `AbsAvailable` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `ctm_budget_info_view`
--

DROP TABLE IF EXISTS `ctm_budget_info_view`;
/*!50001 DROP VIEW IF EXISTS `ctm_budget_info_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `ctm_budget_info_view` (
  `Budgetid` tinyint NOT NULL,
  `BudgetCode` tinyint NOT NULL,
  `CostCenter` tinyint NOT NULL,
  `ctyearid` tinyint NOT NULL,
  `title` tinyint NOT NULL,
  `Source` tinyint NOT NULL,
  `ScrType` tinyint NOT NULL,
  `BudgType` tinyint NOT NULL,
  `FYear` tinyint NOT NULL,
  `bGroup` tinyint NOT NULL,
  `AssignedTo` tinyint NOT NULL,
  `Owner` tinyint NOT NULL,
  `Vision` tinyint NOT NULL,
  `accStatus` tinyint NOT NULL,
  `bNote` tinyint NOT NULL,
  `CreatedBy` tinyint NOT NULL,
  `ModifiedBy` tinyint NOT NULL,
  `ModifiedDate` tinyint NOT NULL,
  `StartDate` tinyint NOT NULL,
  `Approved` tinyint NOT NULL,
  `ApprovedBy` tinyint NOT NULL,
  `ApprovalDate` tinyint NOT NULL,
  `Followers` tinyint NOT NULL,
  `flagged` tinyint NOT NULL,
  `InitAmount` tinyint NOT NULL,
  `Income` tinyint NOT NULL,
  `Expenses` tinyint NOT NULL,
  `Allocs` tinyint NOT NULL,
  `bVariance` tinyint NOT NULL,
  `Available` tinyint NOT NULL,
  `AbsAvailable` tinyint NOT NULL,
  `Pending` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `ctm_budget_info_view_new`
--

DROP TABLE IF EXISTS `ctm_budget_info_view_new`;
/*!50001 DROP VIEW IF EXISTS `ctm_budget_info_view_new`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `ctm_budget_info_view_new` (
  `Accountid` tinyint NOT NULL,
  `Budgetid` tinyint NOT NULL,
  `SubTotal` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `ctm_budget_items_set`
--

DROP TABLE IF EXISTS `ctm_budget_items_set`;
/*!50001 DROP VIEW IF EXISTS `ctm_budget_items_set`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `ctm_budget_items_set` (
  `budgetid` tinyint NOT NULL,
  `Accountid` tinyint NOT NULL,
  `AccountNo` tinyint NOT NULL,
  `AccountName` tinyint NOT NULL,
  `AccountType` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `ctm_budget_items_set_new`
--

DROP TABLE IF EXISTS `ctm_budget_items_set_new`;
/*!50001 DROP VIEW IF EXISTS `ctm_budget_items_set_new`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `ctm_budget_items_set_new` (
  `budgetid` tinyint NOT NULL,
  `Accountid` tinyint NOT NULL,
  `AccountNo` tinyint NOT NULL,
  `AccountName` tinyint NOT NULL,
  `AccountType` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `ctm_budget_new`
--

DROP TABLE IF EXISTS `ctm_budget_new`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctm_budget_new` (
  `Budgetid` int(11) NOT NULL AUTO_INCREMENT,
  `BudgetCode` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `CostCenter` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `ctyearid` int(11) DEFAULT NULL,
  `title` varchar(350) CHARACTER SET latin1 DEFAULT NULL,
  `Source` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `ScrType` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `BudgType` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `FYear` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `bGroup` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `AssignedTo` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `Owner` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `Vision` text CHARACTER SET latin1,
  `accStatus` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `bNote` longtext CHARACTER SET latin1,
  `CreatedBy` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `ModifiedDate` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `StartDate` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `Approved` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `ApprovedBy` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `ApprovalDate` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `Followers` text CHARACTER SET latin1,
  `flagged` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `InitAmount` varchar(350) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `Income` double DEFAULT NULL,
  `Expenses` double DEFAULT NULL,
  `Allocs` double DEFAULT NULL,
  `bVariance` double DEFAULT NULL,
  `Available` double DEFAULT NULL,
  `AbsAvailable` double DEFAULT NULL,
  `Pending` double DEFAULT NULL,
  `budgorder` varchar(25) DEFAULT NULL,
  `bPeriod` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Budgetid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctm_budget_new`
--

LOCK TABLES `ctm_budget_new` WRITE;
/*!40000 ALTER TABLE `ctm_budget_new` DISABLE KEYS */;
/*!40000 ALTER TABLE `ctm_budget_new` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ctm_budget_old`
--

DROP TABLE IF EXISTS `ctm_budget_old`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctm_budget_old` (
  `Budgetid` int(11) NOT NULL DEFAULT '0',
  `ctyearid` int(11) DEFAULT NULL,
  `BudgetCode` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `CostCenter` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `title` varchar(350) CHARACTER SET latin1 DEFAULT NULL,
  `StartDate` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `ClosingDate` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `Source` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `ScrType` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `BudgType` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `accStatus` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `Vision` text CHARACTER SET latin1,
  `AssignedTo` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `Owner` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `bGroup` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `FYear` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `bNote` longtext CHARACTER SET latin1,
  `CreatedBy` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `ModifiedDate` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `Approved` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `ApprovedBy` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `ApprovalDate` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `RejectDate` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `RejectReason` text CHARACTER SET latin1,
  `Followers` text CHARACTER SET latin1,
  `flagged` varchar(11) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctm_budget_old`
--

LOCK TABLES `ctm_budget_old` WRITE;
/*!40000 ALTER TABLE `ctm_budget_old` DISABLE KEYS */;
/*!40000 ALTER TABLE `ctm_budget_old` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ctm_budget_old_12_29_19`
--

DROP TABLE IF EXISTS `ctm_budget_old_12_29_19`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctm_budget_old_12_29_19` (
  `Budgetid` int(11) NOT NULL DEFAULT '0',
  `ctyearid` int(11) DEFAULT NULL,
  `BudgetCode` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `CostCenter` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `title` varchar(350) CHARACTER SET latin1 DEFAULT NULL,
  `StartDate` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `ClosingDate` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `Source` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `ScrType` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `BudgType` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `accStatus` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `Vision` text CHARACTER SET latin1,
  `AssignedTo` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `Owner` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `bGroup` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `FYear` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `bNote` longtext CHARACTER SET latin1,
  `CreatedBy` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `ModifiedDate` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `Approved` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `ApprovedBy` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `ApprovalDate` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `RejectDate` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `RejectReason` text CHARACTER SET latin1,
  `Followers` text CHARACTER SET latin1,
  `flagged` varchar(11) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctm_budget_old_12_29_19`
--

LOCK TABLES `ctm_budget_old_12_29_19` WRITE;
/*!40000 ALTER TABLE `ctm_budget_old_12_29_19` DISABLE KEYS */;
/*!40000 ALTER TABLE `ctm_budget_old_12_29_19` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ctm_budget_old_12_31_19`
--

DROP TABLE IF EXISTS `ctm_budget_old_12_31_19`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctm_budget_old_12_31_19` (
  `Budgetid` int(11) NOT NULL AUTO_INCREMENT,
  `ctyearid` int(11) DEFAULT NULL,
  `BudgetCode` varchar(50) DEFAULT NULL,
  `CostCenter` varchar(25) DEFAULT NULL,
  `title` varchar(350) DEFAULT NULL,
  `StartDate` varchar(25) DEFAULT NULL,
  `ClosingDate` varchar(25) DEFAULT NULL,
  `Source` varchar(100) DEFAULT NULL,
  `ScrType` varchar(50) DEFAULT NULL,
  `BudgType` varchar(50) DEFAULT NULL,
  `accStatus` varchar(50) DEFAULT NULL,
  `Vision` text,
  `AssignedTo` varchar(50) DEFAULT NULL,
  `Owner` varchar(50) DEFAULT NULL,
  `bGroup` varchar(50) DEFAULT NULL,
  `FYear` varchar(25) DEFAULT NULL,
  `bNote` longtext,
  `CreatedBy` varchar(50) DEFAULT NULL,
  `ModifiedBy` varchar(50) DEFAULT NULL,
  `ModifiedDate` varchar(25) DEFAULT NULL,
  `Approved` varchar(11) DEFAULT NULL,
  `ApprovedBy` varchar(50) DEFAULT NULL,
  `ApprovalDate` varchar(25) DEFAULT NULL,
  `RejectDate` varchar(25) DEFAULT NULL,
  `RejectReason` text,
  `Followers` text,
  `flagged` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`Budgetid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctm_budget_old_12_31_19`
--

LOCK TABLES `ctm_budget_old_12_31_19` WRITE;
/*!40000 ALTER TABLE `ctm_budget_old_12_31_19` DISABLE KEYS */;
/*!40000 ALTER TABLE `ctm_budget_old_12_31_19` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`setienne`@`localhost`*/ /*!50003 TRIGGER `ctm_trig_budg_update` AFTER UPDATE ON `ctm_budget_old_12_31_19` FOR EACH ROW update tmp_Budget_Info_Result set
            			BudgetCode=New.BudgetCode,
						BudgType=New.BudgType,
						ScrType=New.ScrType,
						Source=New.Source,
						title=New.title,
						accStatus=New.accStatus,
						bNote=new.bNote,
                        AssignedTo=New.AssignedTo,
                        Vision=New.Vision,
                        FYear=New.FYear,
                        bGroup=New.bGroup,
                        Owner=New.Owner,
                        Followers=New.Followers,
                        ModifiedBy=New.ModifiedBy,
                        ModifiedDate=New.ModifiedDate
			where Budgetid=Old.Budgetid */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary table structure for view `ctm_budget_q4_info_view`
--

DROP TABLE IF EXISTS `ctm_budget_q4_info_view`;
/*!50001 DROP VIEW IF EXISTS `ctm_budget_q4_info_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `ctm_budget_q4_info_view` (
  `Budgetid` tinyint NOT NULL,
  `title` tinyint NOT NULL,
  `Source` tinyint NOT NULL,
  `ScrType` tinyint NOT NULL,
  `BudgType` tinyint NOT NULL,
  `accStatus` tinyint NOT NULL,
  `bNote` tinyint NOT NULL,
  `InitAmount` tinyint NOT NULL,
  `Income` tinyint NOT NULL,
  `Expenses` tinyint NOT NULL,
  `Allocs` tinyint NOT NULL,
  `Available` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `ctm_budget_relations_view`
--

DROP TABLE IF EXISTS `ctm_budget_relations_view`;
/*!50001 DROP VIEW IF EXISTS `ctm_budget_relations_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `ctm_budget_relations_view` (
  `originbudget` tinyint NOT NULL,
  `AllocKey` tinyint NOT NULL,
  `destbudget` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `ctm_change_history`
--

DROP TABLE IF EXISTS `ctm_change_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctm_change_history` (
  `changeid` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(25) DEFAULT NULL,
  `version` varchar(25) DEFAULT NULL,
  `buildnumber` varchar(50) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`changeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctm_change_history`
--

LOCK TABLES `ctm_change_history` WRITE;
/*!40000 ALTER TABLE `ctm_change_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `ctm_change_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ctm_dashboard_settings`
--

DROP TABLE IF EXISTS `ctm_dashboard_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctm_dashboard_settings` (
  `settings_id` int(11) NOT NULL AUTO_INCREMENT,
  `report_year` int(11) DEFAULT NULL,
  `settings_status` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`settings_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctm_dashboard_settings`
--

LOCK TABLES `ctm_dashboard_settings` WRITE;
/*!40000 ALTER TABLE `ctm_dashboard_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `ctm_dashboard_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ctm_doc_attach`
--

DROP TABLE IF EXISTS `ctm_doc_attach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctm_doc_attach` (
  `attachid` int(11) NOT NULL AUTO_INCREMENT,
  `attachdate` varchar(50) DEFAULT NULL,
  `moduleid` varchar(25) DEFAULT NULL,
  `refid` varchar(25) DEFAULT NULL,
  `fileitemname` varchar(450) DEFAULT NULL,
  `description` text,
  `attachby` varchar(350) DEFAULT NULL,
  PRIMARY KEY (`attachid`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctm_doc_attach`
--

LOCK TABLES `ctm_doc_attach` WRITE;
/*!40000 ALTER TABLE `ctm_doc_attach` DISABLE KEYS */;
/*!40000 ALTER TABLE `ctm_doc_attach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ctm_downloaded_transaction_settings`
--

DROP TABLE IF EXISTS `ctm_downloaded_transaction_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctm_downloaded_transaction_settings` (
  `settings_id` int(11) NOT NULL AUTO_INCREMENT,
  `auto_download` int(11) DEFAULT NULL,
  PRIMARY KEY (`settings_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctm_downloaded_transaction_settings`
--

LOCK TABLES `ctm_downloaded_transaction_settings` WRITE;
/*!40000 ALTER TABLE `ctm_downloaded_transaction_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `ctm_downloaded_transaction_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ctm_expense`
--

DROP TABLE IF EXISTS `ctm_expense`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctm_expense` (
  `Expenseid` int(11) NOT NULL AUTO_INCREMENT,
  `Accountid` varchar(50) DEFAULT NULL,
  `TransDate` varchar(50) DEFAULT NULL,
  `Amount` varchar(350) DEFAULT NULL,
  `Category` varchar(50) DEFAULT NULL,
  `Notes` text,
  `Owner` varchar(50) DEFAULT NULL,
  `supplier` varchar(250) DEFAULT NULL,
  `exp_options` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`Expenseid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctm_expense`
--

LOCK TABLES `ctm_expense` WRITE;
/*!40000 ALTER TABLE `ctm_expense` DISABLE KEYS */;
/*!40000 ALTER TABLE `ctm_expense` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ctm_expense_archive`
--

DROP TABLE IF EXISTS `ctm_expense_archive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctm_expense_archive` (
  `Expenseid` int(11) NOT NULL DEFAULT '0',
  `Accountid` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `TransDate` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `Amount` varchar(350) CHARACTER SET latin1 DEFAULT NULL,
  `Category` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `Notes` text CHARACTER SET latin1,
  `Owner` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `supplier` varchar(250) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctm_expense_archive`
--

LOCK TABLES `ctm_expense_archive` WRITE;
/*!40000 ALTER TABLE `ctm_expense_archive` DISABLE KEYS */;
/*!40000 ALTER TABLE `ctm_expense_archive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `ctm_expense_visual_by_category_view`
--

DROP TABLE IF EXISTS `ctm_expense_visual_by_category_view`;
/*!50001 DROP VIEW IF EXISTS `ctm_expense_visual_by_category_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `ctm_expense_visual_by_category_view` (
  `Yeart` tinyint NOT NULL,
  `Category` tinyint NOT NULL,
  `Total` tinyint NOT NULL,
  `jsontext` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `ctm_expense_visual_by_month_view`
--

DROP TABLE IF EXISTS `ctm_expense_visual_by_month_view`;
/*!50001 DROP VIEW IF EXISTS `ctm_expense_visual_by_month_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `ctm_expense_visual_by_month_view` (
  `Yeart` tinyint NOT NULL,
  `Montht` tinyint NOT NULL,
  `Total` tinyint NOT NULL,
  `jsontext` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `ctm_expense_visual_by_vendor_view`
--

DROP TABLE IF EXISTS `ctm_expense_visual_by_vendor_view`;
/*!50001 DROP VIEW IF EXISTS `ctm_expense_visual_by_vendor_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `ctm_expense_visual_by_vendor_view` (
  `Yeart` tinyint NOT NULL,
  `Supplier` tinyint NOT NULL,
  `Total` tinyint NOT NULL,
  `jsontext` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `ctm_funder_activities_view`
--

DROP TABLE IF EXISTS `ctm_funder_activities_view`;
/*!50001 DROP VIEW IF EXISTS `ctm_funder_activities_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `ctm_funder_activities_view` (
  `Total` tinyint NOT NULL,
  `TransType` tinyint NOT NULL,
  `AccountSource` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `ctm_funder_archive`
--

DROP TABLE IF EXISTS `ctm_funder_archive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctm_funder_archive` (
  `Accountid` int(11) NOT NULL DEFAULT '0',
  `Budgetid` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `ctyearid` int(11) DEFAULT NULL,
  `AccountNo` varchar(350) CHARACTER SET latin1 DEFAULT NULL,
  `CreatedBy` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `CreationDate` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `ClosingDate` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `AccountName` varchar(350) CHARACTER SET latin1 DEFAULT NULL,
  `AccountType` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `InitialAmount` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `ByPercent` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `PercentRate` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `Currency` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `SourceAccount` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `Location` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `accStatus` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `aOrder` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `CostCenter` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `AssignedTo` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `Owner` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `ModifiedDate` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `Comments` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `Balance` varchar(25) DEFAULT NULL,
  `FinalBalance` varchar(25) DEFAULT NULL,
  `LastBalRefID` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctm_funder_archive`
--

LOCK TABLES `ctm_funder_archive` WRITE;
/*!40000 ALTER TABLE `ctm_funder_archive` DISABLE KEYS */;
/*!40000 ALTER TABLE `ctm_funder_archive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `ctm_funder_details_activities_view`
--

DROP TABLE IF EXISTS `ctm_funder_details_activities_view`;
/*!50001 DROP VIEW IF EXISTS `ctm_funder_details_activities_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `ctm_funder_details_activities_view` (
  `Accountid` tinyint NOT NULL,
  `TransDate` tinyint NOT NULL,
  `Amount` tinyint NOT NULL,
  `TransType` tinyint NOT NULL,
  `AccountSource` tinyint NOT NULL,
  `Notes` tinyint NOT NULL,
  `ref_transact_id` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `ctm_funder_income_activities_view`
--

DROP TABLE IF EXISTS `ctm_funder_income_activities_view`;
/*!50001 DROP VIEW IF EXISTS `ctm_funder_income_activities_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `ctm_funder_income_activities_view` (
  `Total` tinyint NOT NULL,
  `TransType` tinyint NOT NULL,
  `AccountSource` tinyint NOT NULL,
  `Accountid` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `ctm_funder_new`
--

DROP TABLE IF EXISTS `ctm_funder_new`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctm_funder_new` (
  `Accountid` int(11) NOT NULL AUTO_INCREMENT,
  `Budgetid` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `ctyearid` int(11) DEFAULT NULL,
  `AccountNo` varchar(350) CHARACTER SET latin1 DEFAULT NULL,
  `CreatedBy` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `CreationDate` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `ClosingDate` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `AccountName` varchar(350) CHARACTER SET latin1 DEFAULT NULL,
  `AccountType` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `InitialAmount` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `ByPercent` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `PercentRate` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `Currency` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `SourceAccount` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `Location` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `accStatus` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `aOrder` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `CostCenter` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `AssignedTo` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `Owner` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `ModifiedDate` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `Comments` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `Balance` varchar(25) DEFAULT NULL,
  `FinalBalance` varchar(25) DEFAULT NULL,
  `LastBalRefID` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`Accountid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctm_funder_new`
--

LOCK TABLES `ctm_funder_new` WRITE;
/*!40000 ALTER TABLE `ctm_funder_new` DISABLE KEYS */;
/*!40000 ALTER TABLE `ctm_funder_new` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ctm_funder_old_12_29_19`
--

DROP TABLE IF EXISTS `ctm_funder_old_12_29_19`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctm_funder_old_12_29_19` (
  `Accountid` int(11) NOT NULL DEFAULT '0',
  `Budgetid` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `ctyearid` int(11) DEFAULT NULL,
  `AccountNo` varchar(350) CHARACTER SET latin1 DEFAULT NULL,
  `CreatedBy` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `CreationDate` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `ClosingDate` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `AccountName` varchar(350) CHARACTER SET latin1 DEFAULT NULL,
  `AccountType` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `InitialAmount` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `ByPercent` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `PercentRate` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `Currency` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `SourceAccount` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `Location` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `accStatus` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `aOrder` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `CostCenter` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `AssignedTo` varchar(50) CHARACTER SET latin1 NOT NULL,
  `Owner` varchar(50) CHARACTER SET latin1 NOT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `ModifiedDate` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `Comments` varchar(50) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctm_funder_old_12_29_19`
--

LOCK TABLES `ctm_funder_old_12_29_19` WRITE;
/*!40000 ALTER TABLE `ctm_funder_old_12_29_19` DISABLE KEYS */;
/*!40000 ALTER TABLE `ctm_funder_old_12_29_19` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ctm_funder_old_12_31_19`
--

DROP TABLE IF EXISTS `ctm_funder_old_12_31_19`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctm_funder_old_12_31_19` (
  `Accountid` int(11) NOT NULL AUTO_INCREMENT,
  `Budgetid` varchar(50) DEFAULT NULL,
  `ctyearid` int(11) DEFAULT NULL,
  `AccountNo` varchar(350) DEFAULT NULL,
  `CreatedBy` varchar(50) DEFAULT NULL,
  `CreationDate` varchar(50) DEFAULT NULL,
  `ClosingDate` varchar(50) DEFAULT NULL,
  `AccountName` varchar(350) DEFAULT NULL,
  `AccountType` varchar(50) DEFAULT NULL,
  `InitialAmount` varchar(50) DEFAULT NULL,
  `ByPercent` varchar(50) DEFAULT NULL,
  `PercentRate` varchar(50) DEFAULT NULL,
  `Currency` varchar(50) DEFAULT NULL,
  `SourceAccount` varchar(50) DEFAULT NULL,
  `Location` varchar(50) DEFAULT NULL,
  `accStatus` varchar(50) DEFAULT NULL,
  `aOrder` varchar(50) DEFAULT NULL,
  `CostCenter` varchar(25) DEFAULT NULL,
  `AssignedTo` varchar(50) NOT NULL,
  `Owner` varchar(50) NOT NULL,
  `ModifiedBy` varchar(50) DEFAULT NULL,
  `ModifiedDate` varchar(25) DEFAULT NULL,
  `Comments` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Accountid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctm_funder_old_12_31_19`
--

LOCK TABLES `ctm_funder_old_12_31_19` WRITE;
/*!40000 ALTER TABLE `ctm_funder_old_12_31_19` DISABLE KEYS */;
/*!40000 ALTER TABLE `ctm_funder_old_12_31_19` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`setienne`@`localhost`*/ /*!50003 TRIGGER `ctm_trig_fund_update` AFTER UPDATE ON `ctm_funder_old_12_31_19` FOR EACH ROW BEGIN
update tmp_Funder_Info_Result set
						AccountNo=New.AccountNo,
						AccountName=New.AccountName,
						
						ByPercent=New.ByPercent,
						PercentRate=New.PercentRate,
						Currency=New.Currency,
						
						Location=New.Location,
						accStatus=New.accStatus,
						Comments=New.Comments,
                        AccountType=New.AccountType,
                        aOrder=New.aOrder,
                        AssignedTo=New.AssignedTo,
                        Owner=New.Owner
                        
                        where Accountid=Old.Accountid;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary table structure for view `ctm_funder_q2_balance_view`
--

DROP TABLE IF EXISTS `ctm_funder_q2_balance_view`;
/*!50001 DROP VIEW IF EXISTS `ctm_funder_q2_balance_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `ctm_funder_q2_balance_view` (
  `Accountid` tinyint NOT NULL,
  `AccountNo` tinyint NOT NULL,
  `initialAmount` tinyint NOT NULL,
  `Income` tinyint NOT NULL,
  `Alloc` tinyint NOT NULL,
  `Expense` tinyint NOT NULL,
  `Transfer` tinyint NOT NULL,
  `Balance` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `ctm_funder_q_balance_Old_view`
--

DROP TABLE IF EXISTS `ctm_funder_q_balance_Old_view`;
/*!50001 DROP VIEW IF EXISTS `ctm_funder_q_balance_Old_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `ctm_funder_q_balance_Old_view` (
  `Accountid` tinyint NOT NULL,
  `Budgetid` tinyint NOT NULL,
  `ctyearid` tinyint NOT NULL,
  `AccountNo` tinyint NOT NULL,
  `CreationDate` tinyint NOT NULL,
  `ClosingDate` tinyint NOT NULL,
  `AccountName` tinyint NOT NULL,
  `AccountType` tinyint NOT NULL,
  `InitialAmount` tinyint NOT NULL,
  `ByPercent` tinyint NOT NULL,
  `PercentRate` tinyint NOT NULL,
  `Currency` tinyint NOT NULL,
  `SourceAccount` tinyint NOT NULL,
  `Location` tinyint NOT NULL,
  `accStatus` tinyint NOT NULL,
  `aOrder` tinyint NOT NULL,
  `AssignedTo` tinyint NOT NULL,
  `Owner` tinyint NOT NULL,
  `Comments` tinyint NOT NULL,
  `Income` tinyint NOT NULL,
  `Expense` tinyint NOT NULL,
  `Transfer` tinyint NOT NULL,
  `Alloc` tinyint NOT NULL,
  `Balance` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `ctm_funder_q_balance_view`
--

DROP TABLE IF EXISTS `ctm_funder_q_balance_view`;
/*!50001 DROP VIEW IF EXISTS `ctm_funder_q_balance_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `ctm_funder_q_balance_view` (
  `Accountid` tinyint NOT NULL,
  `Budgetid` tinyint NOT NULL,
  `ctyearid` tinyint NOT NULL,
  `AccountNo` tinyint NOT NULL,
  `CreationDate` tinyint NOT NULL,
  `ClosingDate` tinyint NOT NULL,
  `AccountName` tinyint NOT NULL,
  `AccountType` tinyint NOT NULL,
  `InitialAmount` tinyint NOT NULL,
  `ByPercent` tinyint NOT NULL,
  `PercentRate` tinyint NOT NULL,
  `Currency` tinyint NOT NULL,
  `SourceAccount` tinyint NOT NULL,
  `Location` tinyint NOT NULL,
  `accStatus` tinyint NOT NULL,
  `aOrder` tinyint NOT NULL,
  `AssignedTo` tinyint NOT NULL,
  `Owner` tinyint NOT NULL,
  `Comments` tinyint NOT NULL,
  `Balance` tinyint NOT NULL,
  `FinalBalance` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `ctm_funder_transfer_activities_view`
--

DROP TABLE IF EXISTS `ctm_funder_transfer_activities_view`;
/*!50001 DROP VIEW IF EXISTS `ctm_funder_transfer_activities_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `ctm_funder_transfer_activities_view` (
  `Accountid` tinyint NOT NULL,
  `TransDate` tinyint NOT NULL,
  `AccountAlias` tinyint NOT NULL,
  `Amount` tinyint NOT NULL,
  `Notes` tinyint NOT NULL,
  `TransType` tinyint NOT NULL,
  `AccountSource` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `ctm_fyear`
--

DROP TABLE IF EXISTS `ctm_fyear`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctm_fyear` (
  `ctyearid` int(11) NOT NULL AUTO_INCREMENT,
  `profileid` int(11) DEFAULT NULL,
  `yaccronym` varchar(25) DEFAULT NULL,
  `fyear` varchar(25) DEFAULT NULL,
  `startdate` varchar(25) DEFAULT NULL,
  `enddate` varchar(25) DEFAULT NULL,
  `status` varchar(25) NOT NULL,
  `note` text,
  PRIMARY KEY (`ctyearid`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctm_fyear`
--

LOCK TABLES `ctm_fyear` WRITE;
/*!40000 ALTER TABLE `ctm_fyear` DISABLE KEYS */;
/*!40000 ALTER TABLE `ctm_fyear` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ctm_glossary`
--

DROP TABLE IF EXISTS `ctm_glossary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctm_glossary` (
  `glossaryid` int(11) NOT NULL AUTO_INCREMENT,
  `module` varchar(11) DEFAULT NULL,
  `section` varchar(11) DEFAULT NULL,
  `glvalue` int(11) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `comments` text,
  `profileid` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`glossaryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctm_glossary`
--

LOCK TABLES `ctm_glossary` WRITE;
/*!40000 ALTER TABLE `ctm_glossary` DISABLE KEYS */;
/*!40000 ALTER TABLE `ctm_glossary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ctm_goal`
--

DROP TABLE IF EXISTS `ctm_goal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctm_goal` (
  `goalid` int(11) NOT NULL AUTO_INCREMENT,
  `budgetid` int(11) DEFAULT NULL,
  `goaltitle` varchar(350) DEFAULT NULL,
  `startdate` varchar(25) DEFAULT NULL,
  `duedate` varchar(25) DEFAULT NULL,
  `headline` varchar(350) DEFAULT NULL,
  `goaldetails` longtext,
  `costestimate` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`goalid`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctm_goal`
--

LOCK TABLES `ctm_goal` WRITE;
/*!40000 ALTER TABLE `ctm_goal` DISABLE KEYS */;
/*!40000 ALTER TABLE `ctm_goal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ctm_group`
--

DROP TABLE IF EXISTS `ctm_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctm_group` (
  `groupid` int(11) NOT NULL AUTO_INCREMENT,
  `groupname` varchar(150) DEFAULT NULL,
  `description` varchar(350) DEFAULT NULL,
  `profileid` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`groupid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctm_group`
--

LOCK TABLES `ctm_group` WRITE;
/*!40000 ALTER TABLE `ctm_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `ctm_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ctm_group_behavior`
--

DROP TABLE IF EXISTS `ctm_group_behavior`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctm_group_behavior` (
  `groupid` int(11) DEFAULT NULL,
  `behaviorid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctm_group_behavior`
--

LOCK TABLES `ctm_group_behavior` WRITE;
/*!40000 ALTER TABLE `ctm_group_behavior` DISABLE KEYS */;
/*!40000 ALTER TABLE `ctm_group_behavior` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ctm_income`
--

DROP TABLE IF EXISTS `ctm_income`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctm_income` (
  `Incomeid` int(11) NOT NULL AUTO_INCREMENT,
  `Accountid` varchar(50) DEFAULT NULL,
  `TransDate` varchar(50) DEFAULT NULL,
  `Amount` varchar(350) DEFAULT NULL,
  `Notes` text,
  `Owner` varchar(50) DEFAULT NULL,
  `exp_options` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`Incomeid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctm_income`
--

LOCK TABLES `ctm_income` WRITE;
/*!40000 ALTER TABLE `ctm_income` DISABLE KEYS */;
/*!40000 ALTER TABLE `ctm_income` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ctm_income_archive`
--

DROP TABLE IF EXISTS `ctm_income_archive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctm_income_archive` (
  `Incomeid` int(11) NOT NULL DEFAULT '0',
  `Accountid` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `TransDate` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `Amount` varchar(350) CHARACTER SET latin1 DEFAULT NULL,
  `Notes` text CHARACTER SET latin1,
  `Owner` varchar(50) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctm_income_archive`
--

LOCK TABLES `ctm_income_archive` WRITE;
/*!40000 ALTER TABLE `ctm_income_archive` DISABLE KEYS */;
/*!40000 ALTER TABLE `ctm_income_archive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `ctm_income_visual_by_month_view`
--

DROP TABLE IF EXISTS `ctm_income_visual_by_month_view`;
/*!50001 DROP VIEW IF EXISTS `ctm_income_visual_by_month_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `ctm_income_visual_by_month_view` (
  `Yeart` tinyint NOT NULL,
  `Montht` tinyint NOT NULL,
  `Total` tinyint NOT NULL,
  `jsontext` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `ctm_mail_message`
--

DROP TABLE IF EXISTS `ctm_mail_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctm_mail_message` (
  `messageid` int(11) NOT NULL AUTO_INCREMENT,
  `fromsender` varchar(250) DEFAULT NULL,
  `tosender` text,
  `subject` varchar(500) DEFAULT NULL,
  `message` text,
  `datesent` varchar(25) DEFAULT NULL,
  `mailstatus` int(11) DEFAULT NULL,
  PRIMARY KEY (`messageid`)
) ENGINE=MyISAM AUTO_INCREMENT=3539 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctm_mail_message`
--

LOCK TABLES `ctm_mail_message` WRITE;
/*!40000 ALTER TABLE `ctm_mail_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `ctm_mail_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ctm_plan`
--

DROP TABLE IF EXISTS `ctm_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctm_plan` (
  `planid` int(11) NOT NULL AUTO_INCREMENT,
  `planname` varchar(350) DEFAULT NULL,
  `cost` decimal(11,0) DEFAULT NULL,
  `plantype` varchar(25) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`planid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctm_plan`
--

LOCK TABLES `ctm_plan` WRITE;
/*!40000 ALTER TABLE `ctm_plan` DISABLE KEYS */;
/*!40000 ALTER TABLE `ctm_plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ctm_profile`
--

DROP TABLE IF EXISTS `ctm_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctm_profile` (
  `profileid` int(11) NOT NULL AUTO_INCREMENT,
  `profilename` varchar(450) DEFAULT NULL,
  `lastname` varchar(250) DEFAULT NULL,
  `firstname` varchar(250) DEFAULT NULL,
  `middleinitial` varchar(25) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `address` text,
  `city` varchar(25) DEFAULT NULL,
  `state` varchar(25) DEFAULT NULL,
  `zip` varchar(25) DEFAULT NULL,
  `phone` varchar(25) DEFAULT NULL,
  `description` longtext,
  `slogan` varchar(450) DEFAULT NULL,
  `profile_initial` varchar(50) DEFAULT NULL,
  `country` varchar(25) DEFAULT NULL,
  `custskey` varchar(50) DEFAULT NULL,
  `susckey` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`profileid`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctm_profile`
--

LOCK TABLES `ctm_profile` WRITE;
/*!40000 ALTER TABLE `ctm_profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `ctm_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ctm_recurring_transfer`
--

DROP TABLE IF EXISTS `ctm_recurring_transfer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctm_recurring_transfer` (
  `recurid` int(11) NOT NULL AUTO_INCREMENT,
  `profileid` varchar(25) DEFAULT NULL,
  `budgetid` varchar(25) DEFAULT NULL,
  `startdate` varchar(25) DEFAULT NULL,
  `enddate` varchar(25) DEFAULT NULL,
  `fromacc` varchar(25) DEFAULT NULL,
  `toacc` varchar(25) DEFAULT NULL,
  `amount` varchar(25) DEFAULT NULL,
  `status` varchar(25) DEFAULT NULL,
  `comments` text,
  `frequency` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`recurid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctm_recurring_transfer`
--

LOCK TABLES `ctm_recurring_transfer` WRITE;
/*!40000 ALTER TABLE `ctm_recurring_transfer` DISABLE KEYS */;
/*!40000 ALTER TABLE `ctm_recurring_transfer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ctm_session`
--

DROP TABLE IF EXISTS `ctm_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctm_session` (
  `sessionid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) DEFAULT NULL,
  `logindatetime` varchar(25) DEFAULT NULL,
  `logoutdatetime` varchar(25) DEFAULT NULL,
  `status` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`sessionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctm_session`
--

LOCK TABLES `ctm_session` WRITE;
/*!40000 ALTER TABLE `ctm_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `ctm_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ctm_statement_snapshot`
--

DROP TABLE IF EXISTS `ctm_statement_snapshot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctm_statement_snapshot` (
  `Transaction_Date` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `Description` text CHARACTER SET latin1,
  `Withdrawals` varchar(351) CHARACTER SET latin1 DEFAULT NULL,
  `Deposits` varchar(351) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctm_statement_snapshot`
--

LOCK TABLES `ctm_statement_snapshot` WRITE;
/*!40000 ALTER TABLE `ctm_statement_snapshot` DISABLE KEYS */;
/*!40000 ALTER TABLE `ctm_statement_snapshot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ctm_suscription`
--

DROP TABLE IF EXISTS `ctm_suscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctm_suscription` (
  `suscriptionid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `planid` int(11) DEFAULT NULL,
  `startdate` varchar(25) DEFAULT NULL,
  `enddate` varchar(25) DEFAULT NULL,
  `cccardnumber` varchar(50) DEFAULT NULL,
  `expirationdate` varchar(25) DEFAULT NULL,
  `cvv` varchar(25) DEFAULT NULL,
  `status` varchar(25) DEFAULT NULL,
  `psbridgeid` int(11) DEFAULT NULL,
  `profileid` varchar(25) DEFAULT NULL,
  `susctype` varchar(25) DEFAULT NULL,
  `suscskey` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`suscriptionid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctm_suscription`
--

LOCK TABLES `ctm_suscription` WRITE;
/*!40000 ALTER TABLE `ctm_suscription` DISABLE KEYS */;
/*!40000 ALTER TABLE `ctm_suscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ctm_tmp_account_info_archive`
--

DROP TABLE IF EXISTS `ctm_tmp_account_info_archive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctm_tmp_account_info_archive` (
  `Accountid` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `Budgetid` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `AccountNo` varchar(350) CHARACTER SET latin1 DEFAULT NULL,
  `CreationDate` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `ClosingDate` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `AccountName` varchar(350) CHARACTER SET latin1 DEFAULT NULL,
  `AccountType` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `ByPercent` varchar(53) CHARACTER SET latin1 DEFAULT NULL,
  `PercentRate` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `InitialAmount` varchar(350) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `Currency` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `SourceAccount` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `Location` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `accStatus` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `aOrder` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `CostCenter` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `Comments` text CHARACTER SET latin1,
  `Income` varchar(23) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Expense` double DEFAULT NULL,
  `Transfer` double DEFAULT NULL,
  `Alloc` double DEFAULT NULL,
  `Balance` double NOT NULL DEFAULT '0',
  `SourceBalance` decimal(10,0) NOT NULL DEFAULT '0',
  `Pending` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctm_tmp_account_info_archive`
--

LOCK TABLES `ctm_tmp_account_info_archive` WRITE;
/*!40000 ALTER TABLE `ctm_tmp_account_info_archive` DISABLE KEYS */;
/*!40000 ALTER TABLE `ctm_tmp_account_info_archive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ctm_tmp_account_q4_balance_view_shadow`
--

DROP TABLE IF EXISTS `ctm_tmp_account_q4_balance_view_shadow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctm_tmp_account_q4_balance_view_shadow` (
  `Accountid` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `Budgetid` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `AccountNo` varchar(350) CHARACTER SET latin1 DEFAULT NULL,
  `CreationDate` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `ClosingDate` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `AccountName` varchar(350) CHARACTER SET latin1 DEFAULT NULL,
  `AccountType` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `ByPercent` varchar(53) CHARACTER SET latin1 DEFAULT NULL,
  `PercentRate` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `InitialAmount` varchar(350) CHARACTER SET latin1 NOT NULL,
  `Currency` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `SourceAccount` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `Location` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `accStatus` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `aOrder` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `CostCenter` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `Comments` text CHARACTER SET latin1,
  `Income` varchar(23) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Expense` double DEFAULT NULL,
  `Transfer` double DEFAULT NULL,
  `Alloc` double DEFAULT NULL,
  `Balance` double NOT NULL,
  `SourceBalance` decimal(10,0) NOT NULL,
  `Pending` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctm_tmp_account_q4_balance_view_shadow`
--

LOCK TABLES `ctm_tmp_account_q4_balance_view_shadow` WRITE;
/*!40000 ALTER TABLE `ctm_tmp_account_q4_balance_view_shadow` DISABLE KEYS */;
/*!40000 ALTER TABLE `ctm_tmp_account_q4_balance_view_shadow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ctm_tmp_budget_info_archive`
--

DROP TABLE IF EXISTS `ctm_tmp_budget_info_archive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctm_tmp_budget_info_archive` (
  `Budgetid` int(11) NOT NULL DEFAULT '0',
  `BudgetCode` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `CostCenter` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `ctyearid` int(11) DEFAULT NULL,
  `title` varchar(350) CHARACTER SET latin1 DEFAULT NULL,
  `Source` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `ScrType` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `BudgType` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `FYear` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `bGroup` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `AssignedTo` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `Owner` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `Vision` text CHARACTER SET latin1,
  `accStatus` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `bNote` longtext CHARACTER SET latin1,
  `CreatedBy` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `ModifiedDate` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `StartDate` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `Approved` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `ApprovedBy` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `ApprovalDate` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `Followers` text CHARACTER SET latin1,
  `flagged` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `InitAmount` varchar(350) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `Income` double DEFAULT NULL,
  `Expenses` double DEFAULT NULL,
  `Allocs` double DEFAULT NULL,
  `bVariance` double DEFAULT NULL,
  `Available` double DEFAULT NULL,
  `AbsAvailable` double DEFAULT NULL,
  `Pending` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctm_tmp_budget_info_archive`
--

LOCK TABLES `ctm_tmp_budget_info_archive` WRITE;
/*!40000 ALTER TABLE `ctm_tmp_budget_info_archive` DISABLE KEYS */;
/*!40000 ALTER TABLE `ctm_tmp_budget_info_archive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ctm_tmp_budget_info_view_shadow`
--

DROP TABLE IF EXISTS `ctm_tmp_budget_info_view_shadow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctm_tmp_budget_info_view_shadow` (
  `Budgetid` int(11) NOT NULL DEFAULT '0',
  `BudgetCode` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `CostCenter` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `ctyearid` int(11) DEFAULT NULL,
  `title` varchar(350) CHARACTER SET latin1 DEFAULT NULL,
  `Source` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `ScrType` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `BudgType` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `FYear` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `bGroup` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `AssignedTo` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `Owner` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `Vision` text CHARACTER SET latin1,
  `accStatus` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `bNote` longtext CHARACTER SET latin1,
  `CreatedBy` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `ModifiedDate` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `StartDate` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `Approved` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `ApprovedBy` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `ApprovalDate` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `Followers` text CHARACTER SET latin1,
  `flagged` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `InitAmount` varchar(350) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `Income` double DEFAULT NULL,
  `Expenses` double DEFAULT NULL,
  `Allocs` double DEFAULT NULL,
  `bVariance` double DEFAULT NULL,
  `Available` double DEFAULT NULL,
  `AbsAvailable` double DEFAULT NULL,
  `Pending` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctm_tmp_budget_info_view_shadow`
--

LOCK TABLES `ctm_tmp_budget_info_view_shadow` WRITE;
/*!40000 ALTER TABLE `ctm_tmp_budget_info_view_shadow` DISABLE KEYS */;
/*!40000 ALTER TABLE `ctm_tmp_budget_info_view_shadow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ctm_tmp_funder_info_archive`
--

DROP TABLE IF EXISTS `ctm_tmp_funder_info_archive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctm_tmp_funder_info_archive` (
  `Accountid` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `Budgetid` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `ctyearid` int(11) DEFAULT NULL,
  `AccountNo` varchar(350) CHARACTER SET latin1 DEFAULT NULL,
  `CreationDate` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `ClosingDate` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `AccountName` varchar(350) CHARACTER SET latin1 DEFAULT NULL,
  `AccountType` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `InitialAmount` varchar(350) CHARACTER SET latin1 DEFAULT NULL,
  `ByPercent` varchar(53) CHARACTER SET latin1 DEFAULT NULL,
  `PercentRate` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `Currency` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `SourceAccount` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `Location` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `accStatus` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `aOrder` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `AssignedTo` varchar(50) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `Owner` varchar(50) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `Comments` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `Income` varchar(23) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Expense` char(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `Transfer` double DEFAULT NULL,
  `Alloc` double DEFAULT NULL,
  `Balance` double DEFAULT NULL,
  `FinalBalance` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctm_tmp_funder_info_archive`
--

LOCK TABLES `ctm_tmp_funder_info_archive` WRITE;
/*!40000 ALTER TABLE `ctm_tmp_funder_info_archive` DISABLE KEYS */;
/*!40000 ALTER TABLE `ctm_tmp_funder_info_archive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ctm_transact_batch`
--

DROP TABLE IF EXISTS `ctm_transact_batch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctm_transact_batch` (
  `batchid` int(11) NOT NULL AUTO_INCREMENT,
  `ctyearid` int(11) DEFAULT NULL,
  `batchdate` varchar(25) DEFAULT NULL,
  `transacttype` varchar(25) DEFAULT NULL,
  `transactdate` varchar(25) DEFAULT NULL,
  `amount` varchar(25) DEFAULT NULL,
  `transactcategory` varchar(50) DEFAULT NULL,
  `transactaccfrom` varchar(25) DEFAULT NULL,
  `transactaccto` varchar(25) DEFAULT NULL,
  `transactdesc` text,
  `transactnote` text,
  `transactowner` varchar(50) DEFAULT NULL,
  `transactassign` varchar(50) DEFAULT NULL,
  `processedby` varchar(50) DEFAULT NULL,
  `posteddate` varchar(25) DEFAULT NULL,
  `supplier` varchar(250) DEFAULT NULL,
  `processed` varchar(2) DEFAULT NULL,
  `bank_transact_id` varchar(250) DEFAULT NULL,
  `exp_options` varchar(2) DEFAULT NULL,
  `transauth` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`batchid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctm_transact_batch`
--

LOCK TABLES `ctm_transact_batch` WRITE;
/*!40000 ALTER TABLE `ctm_transact_batch` DISABLE KEYS */;
/*!40000 ALTER TABLE `ctm_transact_batch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `ctm_transact_batch_unposted_view`
--

DROP TABLE IF EXISTS `ctm_transact_batch_unposted_view`;
/*!50001 DROP VIEW IF EXISTS `ctm_transact_batch_unposted_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `ctm_transact_batch_unposted_view` (
  `batchid` tinyint NOT NULL,
  `ctyearid` tinyint NOT NULL,
  `batchdate` tinyint NOT NULL,
  `transacttype` tinyint NOT NULL,
  `transactdate` tinyint NOT NULL,
  `amount` tinyint NOT NULL,
  `transactaccfrom` tinyint NOT NULL,
  `transactaccto` tinyint NOT NULL,
  `transactdesc` tinyint NOT NULL,
  `transactnote` tinyint NOT NULL,
  `transactowner` tinyint NOT NULL,
  `processedby` tinyint NOT NULL,
  `posteddate` tinyint NOT NULL,
  `supplier` tinyint NOT NULL,
  `processed` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `ctm_transact_reject_reason`
--

DROP TABLE IF EXISTS `ctm_transact_reject_reason`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctm_transact_reject_reason` (
  `batchid` int(11) NOT NULL DEFAULT '0',
  `ctyearid` int(11) DEFAULT NULL,
  `batchdate` varchar(25) DEFAULT NULL,
  `transacttype` varchar(25) DEFAULT NULL,
  `transactdate` varchar(25) DEFAULT NULL,
  `amount` varchar(25) DEFAULT NULL,
  `transactaccfrom` varchar(25) DEFAULT NULL,
  `transactaccto` varchar(25) DEFAULT NULL,
  `transactdesc` text,
  `transactnote` text,
  `transactowner` varchar(50) DEFAULT NULL,
  `processedby` varchar(50) DEFAULT NULL,
  `posteddate` varchar(25) DEFAULT NULL,
  `supplier` varchar(250) DEFAULT NULL,
  `rejectedby` varchar(50) DEFAULT NULL,
  `rejectdate` varchar(25) DEFAULT NULL,
  `RejectReason` text,
  `processed` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctm_transact_reject_reason`
--

LOCK TABLES `ctm_transact_reject_reason` WRITE;
/*!40000 ALTER TABLE `ctm_transact_reject_reason` DISABLE KEYS */;
/*!40000 ALTER TABLE `ctm_transact_reject_reason` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ctm_transaction_history`
--

DROP TABLE IF EXISTS `ctm_transaction_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctm_transaction_history` (
  `transacthistid` int(11) NOT NULL AUTO_INCREMENT,
  `transactdate` varchar(25) DEFAULT NULL,
  `transactbatchid` varchar(11) DEFAULT NULL,
  `transactbudgetid` varchar(25) DEFAULT NULL,
  `transactacctid` varchar(25) DEFAULT NULL,
  `transactacctno` varchar(25) DEFAULT NULL,
  `transactaccount` varchar(250) DEFAULT NULL,
  `transacttype` varchar(50) DEFAULT NULL,
  `transactdescription` text,
  `transactsupplier` varchar(250) DEFAULT NULL,
  `transactprevbalance` varchar(25) DEFAULT NULL,
  `transactamount` varchar(25) DEFAULT NULL,
  `transactnewbalance` varchar(25) DEFAULT NULL,
  `transactprevrefid` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`transacthistid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctm_transaction_history`
--

LOCK TABLES `ctm_transaction_history` WRITE;
/*!40000 ALTER TABLE `ctm_transaction_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `ctm_transaction_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ctm_transfer`
--

DROP TABLE IF EXISTS `ctm_transfer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctm_transfer` (
  `Transferid` int(11) NOT NULL AUTO_INCREMENT,
  `TransDate` varchar(50) DEFAULT NULL,
  `AccountFrom` varchar(50) DEFAULT NULL,
  `AccountTo` varchar(50) DEFAULT NULL,
  `Amount` varchar(350) DEFAULT NULL,
  `Notes` text,
  `Owner` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Transferid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctm_transfer`
--

LOCK TABLES `ctm_transfer` WRITE;
/*!40000 ALTER TABLE `ctm_transfer` DISABLE KEYS */;
/*!40000 ALTER TABLE `ctm_transfer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `ctm_transfer_2way_view`
--

DROP TABLE IF EXISTS `ctm_transfer_2way_view`;
/*!50001 DROP VIEW IF EXISTS `ctm_transfer_2way_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `ctm_transfer_2way_view` (
  `Accountid` tinyint NOT NULL,
  `TransDate` tinyint NOT NULL,
  `AccountAlias` tinyint NOT NULL,
  `Amount` tinyint NOT NULL,
  `Notes` tinyint NOT NULL,
  `TransType` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `ctm_transfer_archive`
--

DROP TABLE IF EXISTS `ctm_transfer_archive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctm_transfer_archive` (
  `Transferid` int(11) NOT NULL DEFAULT '0',
  `TransDate` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `AccountFrom` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `AccountTo` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `Amount` varchar(350) CHARACTER SET latin1 DEFAULT NULL,
  `Notes` text CHARACTER SET latin1,
  `Owner` varchar(50) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctm_transfer_archive`
--

LOCK TABLES `ctm_transfer_archive` WRITE;
/*!40000 ALTER TABLE `ctm_transfer_archive` DISABLE KEYS */;
/*!40000 ALTER TABLE `ctm_transfer_archive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `ctm_transfer_funder_2way_view`
--

DROP TABLE IF EXISTS `ctm_transfer_funder_2way_view`;
/*!50001 DROP VIEW IF EXISTS `ctm_transfer_funder_2way_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `ctm_transfer_funder_2way_view` (
  `Accountid` tinyint NOT NULL,
  `TransDate` tinyint NOT NULL,
  `AccountAlias` tinyint NOT NULL,
  `Amount` tinyint NOT NULL,
  `Notes` tinyint NOT NULL,
  `TransType` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `ctm_user`
--

DROP TABLE IF EXISTS `ctm_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctm_user` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `profileid` int(11) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `uemail` varchar(150) DEFAULT NULL,
  `passphrase` varchar(500) DEFAULT NULL,
  `description` text,
  `status` varchar(25) DEFAULT NULL,
  `utoken` varchar(255) DEFAULT NULL,
  `mtoken` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctm_user`
--

LOCK TABLES `ctm_user` WRITE;
/*!40000 ALTER TABLE `ctm_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `ctm_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ctm_user_group`
--

DROP TABLE IF EXISTS `ctm_user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctm_user_group` (
  `usergroupid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `groupid` int(11) DEFAULT NULL,
  PRIMARY KEY (`usergroupid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctm_user_group`
--

LOCK TABLES `ctm_user_group` WRITE;
/*!40000 ALTER TABLE `ctm_user_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `ctm_user_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `ctm_user_group_view`
--

DROP TABLE IF EXISTS `ctm_user_group_view`;
/*!50001 DROP VIEW IF EXISTS `ctm_user_group_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `ctm_user_group_view` (
  `profileid` tinyint NOT NULL,
  `username` tinyint NOT NULL,
  `userid` tinyint NOT NULL,
  `groupid` tinyint NOT NULL,
  `groupname` tinyint NOT NULL,
  `description` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `ctm_user_set_view`
--

DROP TABLE IF EXISTS `ctm_user_set_view`;
/*!50001 DROP VIEW IF EXISTS `ctm_user_set_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `ctm_user_set_view` (
  `userid` tinyint NOT NULL,
  `username` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `log_result`
--

DROP TABLE IF EXISTS `log_result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_result` (
  `p_PAccountNo` varchar(50) DEFAULT NULL,
  `p_PAccountName` varchar(350) DEFAULT NULL,
  `p_PInitAmount` varchar(50) DEFAULT NULL,
  `p_PByPercent` varchar(25) DEFAULT NULL,
  `p_PPercentRate` varchar(25) DEFAULT NULL,
  `p_PAccCur` varchar(25) DEFAULT NULL,
  `p_PAccSource` varchar(25) DEFAULT NULL,
  `p_PLocation` varchar(25) DEFAULT NULL,
  `p_PStatus` varchar(25) DEFAULT NULL,
  `p_PComments` varchar(25) DEFAULT NULL,
  `p_PAccounttype` varchar(25) DEFAULT NULL,
  `p_POrder` bigint(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_result`
--

LOCK TABLES `log_result` WRITE;
/*!40000 ALTER TABLE `log_result` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_result1`
--

DROP TABLE IF EXISTS `log_result1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_result1` (
  `log` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_result1`
--

LOCK TABLES `log_result1` WRITE;
/*!40000 ALTER TABLE `log_result1` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_result1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_result2`
--

DROP TABLE IF EXISTS `log_result2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_result2` (
  `batchid` int(11) NOT NULL DEFAULT '0',
  `transactaccto` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `transacttype` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `amount` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `batchdate` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `transactdesc` text CHARACTER SET latin1,
  `supplier` varchar(250) CHARACTER SET latin1 DEFAULT NULL,
  `transactaccfrom` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `budgetid` varchar(25) DEFAULT NULL,
  `refid` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_result2`
--

LOCK TABLES `log_result2` WRITE;
/*!40000 ALTER TABLE `log_result2` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_result2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `flg` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tmp_Account_Info_Result`
--

DROP TABLE IF EXISTS `tmp_Account_Info_Result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tmp_Account_Info_Result` (
  `Accountid` varchar(50) DEFAULT NULL,
  `Budgetid` varchar(50) DEFAULT NULL,
  `AccountNo` varchar(350) DEFAULT NULL,
  `CreationDate` varchar(50) DEFAULT NULL,
  `ClosingDate` varchar(50) DEFAULT NULL,
  `AccountName` varchar(350) DEFAULT NULL,
  `AccountType` varchar(50) DEFAULT NULL,
  `ByPercent` varchar(53) DEFAULT NULL,
  `PercentRate` varchar(50) DEFAULT NULL,
  `InitialAmount` varchar(350) NOT NULL DEFAULT '',
  `Currency` varchar(50) DEFAULT NULL,
  `SourceAccount` varchar(50) DEFAULT NULL,
  `Location` varchar(50) DEFAULT NULL,
  `accStatus` varchar(50) DEFAULT NULL,
  `aOrder` varchar(50) DEFAULT NULL,
  `CostCenter` varchar(25) DEFAULT NULL,
  `Comments` text,
  `Income` varchar(23) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Expense` double DEFAULT NULL,
  `Transfer` double DEFAULT NULL,
  `Alloc` double DEFAULT NULL,
  `Balance` double NOT NULL DEFAULT '0',
  `SourceBalance` decimal(10,0) NOT NULL DEFAULT '0',
  `Pending` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tmp_Account_Info_Result`
--

LOCK TABLES `tmp_Account_Info_Result` WRITE;
/*!40000 ALTER TABLE `tmp_Account_Info_Result` DISABLE KEYS */;
/*!40000 ALTER TABLE `tmp_Account_Info_Result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tmp_Budget_Info_Result`
--

DROP TABLE IF EXISTS `tmp_Budget_Info_Result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tmp_Budget_Info_Result` (
  `Budgetid` int(11) NOT NULL DEFAULT '0',
  `BudgetCode` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `CostCenter` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `ctyearid` int(11) DEFAULT NULL,
  `title` varchar(350) CHARACTER SET latin1 DEFAULT NULL,
  `Source` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `ScrType` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `BudgType` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `FYear` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `bGroup` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `AssignedTo` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `Owner` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `Vision` text CHARACTER SET latin1,
  `accStatus` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `bNote` longtext CHARACTER SET latin1,
  `CreatedBy` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `ModifiedDate` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `StartDate` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `Approved` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `ApprovedBy` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `ApprovalDate` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `Followers` text CHARACTER SET latin1,
  `flagged` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `InitAmount` varchar(350) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `Income` double DEFAULT NULL,
  `Expenses` double DEFAULT NULL,
  `Allocs` double DEFAULT NULL,
  `bVariance` double DEFAULT NULL,
  `Available` double DEFAULT NULL,
  `AbsAvailable` double DEFAULT NULL,
  `Pending` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tmp_Budget_Info_Result`
--

LOCK TABLES `tmp_Budget_Info_Result` WRITE;
/*!40000 ALTER TABLE `tmp_Budget_Info_Result` DISABLE KEYS */;
/*!40000 ALTER TABLE `tmp_Budget_Info_Result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tmp_Funder_Info_Result`
--

DROP TABLE IF EXISTS `tmp_Funder_Info_Result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tmp_Funder_Info_Result` (
  `Accountid` varchar(50) DEFAULT NULL,
  `Budgetid` varchar(50) DEFAULT NULL,
  `ctyearid` int(11) DEFAULT NULL,
  `AccountNo` varchar(350) DEFAULT NULL,
  `CreationDate` varchar(50) DEFAULT NULL,
  `ClosingDate` varchar(50) DEFAULT NULL,
  `AccountName` varchar(350) DEFAULT NULL,
  `AccountType` varchar(50) DEFAULT NULL,
  `InitialAmount` varchar(350) DEFAULT NULL,
  `ByPercent` varchar(53) DEFAULT NULL,
  `PercentRate` varchar(50) DEFAULT NULL,
  `Currency` varchar(50) DEFAULT NULL,
  `SourceAccount` varchar(50) DEFAULT NULL,
  `Location` varchar(50) DEFAULT NULL,
  `accStatus` varchar(50) DEFAULT NULL,
  `aOrder` varchar(50) DEFAULT NULL,
  `AssignedTo` varchar(50) NOT NULL DEFAULT '',
  `Owner` varchar(50) NOT NULL DEFAULT '',
  `Comments` varchar(50) DEFAULT NULL,
  `Income` varchar(23) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Expense` char(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `Transfer` double DEFAULT NULL,
  `Alloc` double DEFAULT NULL,
  `Balance` double DEFAULT NULL,
  `FinalBalance` decimal(10,0) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tmp_Funder_Info_Result`
--

LOCK TABLES `tmp_Funder_Info_Result` WRITE;
/*!40000 ALTER TABLE `tmp_Funder_Info_Result` DISABLE KEYS */;
/*!40000 ALTER TABLE `tmp_Funder_Info_Result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tmp_acc`
--

DROP TABLE IF EXISTS `tmp_acc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tmp_acc` (
  `acid` int(11) NOT NULL DEFAULT '0',
  `ano` varchar(350) CHARACTER SET latin1 DEFAULT NULL,
  `accountid` int(11) NOT NULL DEFAULT '0',
  `accountno` varchar(350) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tmp_acc`
--

LOCK TABLES `tmp_acc` WRITE;
/*!40000 ALTER TABLE `tmp_acc` DISABLE KEYS */;
/*!40000 ALTER TABLE `tmp_acc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tmp_budg`
--

DROP TABLE IF EXISTS `tmp_budg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tmp_budg` (
  `bid` int(11) NOT NULL DEFAULT '0',
  `bcode` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `Budgetid` int(11) NOT NULL DEFAULT '0',
  `BudgetCode` varchar(50) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tmp_budg`
--

LOCK TABLES `tmp_budg` WRITE;
/*!40000 ALTER TABLE `tmp_budg` DISABLE KEYS */;
/*!40000 ALTER TABLE `tmp_budg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tmp_cnt_batch`
--

DROP TABLE IF EXISTS `tmp_cnt_batch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tmp_cnt_batch` (
  `numrows` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tmp_cnt_batch`
--

LOCK TABLES `tmp_cnt_batch` WRITE;
/*!40000 ALTER TABLE `tmp_cnt_batch` DISABLE KEYS */;
/*!40000 ALTER TABLE `tmp_cnt_batch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'bobbylog_budgetdb_templatev4'
--
/*!50106 SET @save_time_zone= @@TIME_ZONE */ ;
/*!50106 DROP EVENT IF EXISTS `ctm_evt_create_account_shadow` */;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8mb4 */ ;;
/*!50003 SET character_set_results = utf8mb4 */ ;;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = 'SYSTEM' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`setienne`@`localhost`*/ /*!50106 EVENT `ctm_evt_create_account_shadow` ON SCHEDULE EVERY 1 HOUR STARTS '2019-12-29 14:40:00' ON COMPLETION PRESERVE DISABLE DO BEGIN
call ctm_create_budget_info_view_shadow_tbl();
END */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
/*!50106 DROP EVENT IF EXISTS `ctm_evt_create_budget_shadow` */;;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8mb4 */ ;;
/*!50003 SET character_set_results = utf8mb4 */ ;;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = 'SYSTEM' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`setienne`@`localhost`*/ /*!50106 EVENT `ctm_evt_create_budget_shadow` ON SCHEDULE EVERY 1 HOUR STARTS '2019-12-29 15:00:00' ON COMPLETION PRESERVE DISABLE DO BEGIN
call ctm_create_budget_info_view_shadow_tbl();
END */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
/*!50106 DROP EVENT IF EXISTS `ctm_evt_download_transact` */;;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8mb4 */ ;;
/*!50003 SET character_set_results = utf8mb4 */ ;;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = 'SYSTEM' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`setienne`@`localhost`*/ /*!50106 EVENT `ctm_evt_download_transact` ON SCHEDULE EVERY 4 HOUR STARTS '2020-10-08 00:00:00' ON COMPLETION PRESERVE ENABLE DO call ctm_proc_get_downloaded_transact_from_bank_db((SELECT profilename from ctm_profile limit 1)) */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
/*!50106 DROP EVENT IF EXISTS `ctm_evt_post_transact` */;;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8mb4 */ ;;
/*!50003 SET character_set_results = utf8mb4 */ ;;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = 'SYSTEM' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`bobbylog`@`%`*/ /*!50106 EVENT `ctm_evt_post_transact` ON SCHEDULE AT '2019-12-29 05:27:35' ON COMPLETION PRESERVE DISABLE DO BEGIN
 

 
 DECLARE nbatch int;


SET nbatch=(select count(batchid) from ctm_transact_batch where processed=0 and transauth=1);

IF nbatch>0 THEN
  call ctm_postBatchTransact();
END IF;
 

END */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
/*!50106 DROP EVENT IF EXISTS `ctm_evt_purge_budget` */;;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8mb4 */ ;;
/*!50003 SET character_set_results = utf8mb4 */ ;;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = 'SYSTEM' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`setienne`@`localhost`*/ /*!50106 EVENT `ctm_evt_purge_budget` ON SCHEDULE EVERY 1 DAY STARTS '2020-01-23 19:05:00' ON COMPLETION PRESERVE DISABLE DO BEGIN
 

 
 DECLARE nbudg int;


SET nbudg=(select count(budgetid) from ctm_budget_new where flagged=1);

IF nbudg>0 THEN
  call ctm_proc_purge_flagged_budget();
END IF;
 

END */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
/*!50106 DROP EVENT IF EXISTS `ctm_evt_purge_mobile_token` */;;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8mb4 */ ;;
/*!50003 SET character_set_results = utf8mb4 */ ;;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = 'SYSTEM' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`setienne`@`localhost`*/ /*!50106 EVENT `ctm_evt_purge_mobile_token` ON SCHEDULE EVERY 1 HOUR STARTS '2020-10-08 01:00:00' ON COMPLETION PRESERVE ENABLE DO update ctm_user set mtoken='' */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
/*!50106 DROP EVENT IF EXISTS `ctm_evt_purge_pending_removal` */;;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8mb4 */ ;;
/*!50003 SET character_set_results = utf8mb4 */ ;;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = 'SYSTEM' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`setienne`@`localhost`*/ /*!50106 EVENT `ctm_evt_purge_pending_removal` ON SCHEDULE EVERY 1 DAY STARTS '2021-10-01 10:00:00' ON COMPLETION PRESERVE ENABLE DO call ctm_proc_purge_pending_removal() */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
/*!50106 DROP EVENT IF EXISTS `ctm_evt_purge_token` */;;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8mb4 */ ;;
/*!50003 SET character_set_results = utf8mb4 */ ;;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = 'SYSTEM' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`setienne`@`localhost`*/ /*!50106 EVENT `ctm_evt_purge_token` ON SCHEDULE EVERY 1 HOUR STARTS '2020-10-08 00:00:00' ON COMPLETION PRESERVE ENABLE DO call ctm_proc_purge_token() */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
/*!50106 DROP EVENT IF EXISTS `ctm_evt_recurring_transfer` */;;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8mb4 */ ;;
/*!50003 SET character_set_results = utf8mb4 */ ;;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = 'SYSTEM' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`setienne`@`localhost`*/ /*!50106 EVENT `ctm_evt_recurring_transfer` ON SCHEDULE EVERY 1 DAY STARTS '2020-07-13 05:00:00' ON COMPLETION PRESERVE ENABLE DO call ctm_proc_perform_recurring_transfer() */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
/*!50106 DROP EVENT IF EXISTS `ctm_evt_reload_budg_acc` */;;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8mb4 */ ;;
/*!50003 SET character_set_results = utf8mb4 */ ;;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = 'SYSTEM' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`bobbylog`@`%`*/ /*!50106 EVENT `ctm_evt_reload_budg_acc` ON SCHEDULE AT '2019-12-29 01:14:31' ON COMPLETION PRESERVE DISABLE DO BEGIN

call ctm_proc_reloadaccountbalance_info();
call ctm_proc_reloadbudget_info();

END */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
/*!50106 DROP EVENT IF EXISTS `ctm_evt_reload_core` */;;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8mb4 */ ;;
/*!50003 SET character_set_results = utf8mb4 */ ;;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = 'SYSTEM' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`setienne`@`localhost`*/ /*!50106 EVENT `ctm_evt_reload_core` ON SCHEDULE EVERY 1 DAY STARTS '2019-12-27 23:00:00' ON COMPLETION NOT PRESERVE DISABLE DO BEGIN

call ctm_proc_reloadfunderbalance_info();
call ctm_proc_reloadaccountbalance_info();
call ctm_proc_reloadbudget_info();

END */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
/*!50106 DROP EVENT IF EXISTS `ctm_evt_reload_test` */;;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8mb4 */ ;;
/*!50003 SET character_set_results = utf8mb4 */ ;;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = 'SYSTEM' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`bobbylog`@`%`*/ /*!50106 EVENT `ctm_evt_reload_test` ON SCHEDULE AT '2019-12-29 04:27:13' ON COMPLETION PRESERVE DISABLE DO BEGIN


call ctm_proc_reloadaccountbalance_info();
call ctm_proc_reloadbudget_info();

END */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
DELIMITER ;
/*!50106 SET TIME_ZONE= @save_time_zone */ ;

--
-- Dumping routines for database 'bobbylog_budgetdb_templatev4'
--
/*!50003 DROP FUNCTION IF EXISTS `checkGroup` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` FUNCTION `checkGroup`(`P_puid` VARCHAR(25), `P_pgid` VARCHAR(25)) RETURNS varchar(25) CHARSET latin1
BEGIN 
  DECLARE res varchar(25);
  SET res = (select count(cug.groupid) as cnt from ctm_user_group cug
where cug.userid=P_puid
and cug.groupid=P_pgid);
  RETURN res;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `checkUserGroup` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` FUNCTION `checkUserGroup`(`P_puid` VARCHAR(25), `P_pgid` VARCHAR(25)) RETURNS varchar(25) CHARSET latin1
BEGIN 
  DECLARE res varchar(25);
  SET res = (select cug.groupid as cnt from ctm_user_group cug
where cug.userid=(select a.userid from ctm_user a where a.username=
                 P_puid limit 1)
and cug.groupid=P_pgid);

  RETURN IFNULL(res,0);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `checkUserGroupByGrpName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` FUNCTION `checkUserGroupByGrpName`(`P_puid` VARCHAR(25), `P_pgid` VARCHAR(25)) RETURNS varchar(25) CHARSET latin1
BEGIN 
  DECLARE res varchar(25);
  DECLARE grp varchar(150);
    SET res = (select getGroupName(cug.groupid) as cnt from ctm_user_group cug
where cug.userid=(select a.userid from ctm_user a where a.username=
                 P_puid limit 1)
and cug.groupid=(select b.groupid from ctm_group b where b.groupname=
                 P_pgid limit 1));

  RETURN IFNULL(res,0);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getAccountName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` FUNCTION `getAccountName`(`P_pAccNum` VARCHAR(25)) RETURNS varchar(350) CHARSET latin1
BEGIN 
  DECLARE res varchar(350);
  SET res = (select AccountName from ctm_account_new where Accountid=P_pAccNum limit 1);
  RETURN res;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getAccountName_new` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` FUNCTION `getAccountName_new`(`P_pAccNum` VARCHAR(25)) RETURNS varchar(350) CHARSET latin1
BEGIN 
  DECLARE res varchar(350);
  SET res = (select AccountName from ctm_account_new where Accountid=P_pAccNum limit 1);
  RETURN res;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getAccountNo_new` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` FUNCTION `getAccountNo_new`(`P_pAccNum` VARCHAR(25)) RETURNS varchar(350) CHARSET latin1
BEGIN 
  DECLARE res varchar(350);
  SET res = (select AccountNo from ctm_account_new where Accountid=P_pAccNum limit 1);
  RETURN res;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getAccSource` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` FUNCTION `getAccSource`(`P_pAccNum` VARCHAR(25)) RETURNS varchar(25) CHARSET latin1
BEGIN 
  DECLARE res varchar(25);
  SET res = (select SourceAccount from ctm_account_new where ACcountid=P_pAccNum limit 1);
  RETURN res;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getAllocBalance` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` FUNCTION `getAllocBalance`(`P_Allock` VARCHAR(25)) RETURNS varchar(25) CHARSET utf8mb4
BEGIN 
  DECLARE res varchar(25);
  SET res =(select Available from ctm_budget_new where Budgetid=
                  (SELECT destbudget FROM ctm_budget_relations_view
                   WHERE Allockey=P_Allock limit 1));
  
  RETURN res;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getBalance` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` FUNCTION `getBalance`(`P_pAccNum` VARCHAR(25)) RETURNS decimal(10,0)
BEGIN 
  DECLARE res decimal;
  SET res = (select balance from ctm_account_new where ACcountNo=P_pAccNum limit 1);
  RETURN res;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getBalanceAvailableFromBank` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` FUNCTION `getBalanceAvailableFromBank`(`P_pfid` INT(11)) RETURNS decimal(10,2)
BEGIN 
  DECLARE res decimal(10,2);
  
  SET res = (select sum(balance_available) from ctm_bank_account_funder_balance_view
where target_funder_id=P_pfid group by target_funder_id limit 1);

  RETURN res;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getBalanceByAccId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` FUNCTION `getBalanceByAccId`(`P_pAccId` VARCHAR(25)) RETURNS decimal(10,0)
BEGIN 
  DECLARE res decimal;
  SET res = (select balance from ctm_account_new where AccountId=P_pAccId limit 1);
  RETURN res;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getBalanceCurrentFromBank` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` FUNCTION `getBalanceCurrentFromBank`(`P_pfid` INT(11)) RETURNS decimal(10,2)
BEGIN 
  DECLARE res decimal(10,2);
  
  SET res = (select sum(balance_current) from ctm_bank_account_funder_balance_view
where target_funder_id=P_pfid group by target_funder_id limit 1);

  RETURN res;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getBalance_new` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` FUNCTION `getBalance_new`(`P_pAccNum` VARCHAR(25)) RETURNS varchar(25) CHARSET utf8mb4
BEGIN 
  DECLARE res varchar(25);
  SET res = (select Balance from ctm_account_new where ACcountid=P_pAccNum limit 1);
  RETURN res;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getBudgetBalance` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` FUNCTION `getBudgetBalance`(`P_pBudid` VARCHAR(25)) RETURNS varchar(25) CHARSET utf8mb4
BEGIN 
  DECLARE res varchar(25);
  SET res = (select SubTotal from ctm_budget_info_view_new where BudgetId=P_pBudid limit 1);
  RETURN res;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getBudgetBalance_new` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` FUNCTION `getBudgetBalance_new`(`P_pBudid` VARCHAR(25)) RETURNS varchar(25) CHARSET utf8mb4
BEGIN 
  DECLARE res varchar(25);
  SET res = (select SubTotal from ctm_budget_info_view_new where BudgetId=P_pBudid limit 1);
  RETURN res;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getBudgetFollowrersFromTransID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` FUNCTION `getBudgetFollowrersFromTransID`(`P_pbtchNum` VARCHAR(25)) RETURNS text CHARSET latin1
BEGIN 
  DECLARE result text;
  DECLARE resacc varchar(25);
  DECLARE resacc1 int;
   
  SET resacc=(select transactaccto from ctm_transact_batch where batchid=P_pbtchNum limit 1);
  
  SET resacc1=(Select Budgetid from ctm_account_new where Accountid=resacc limit 1);
  
  
 SET result = (select followers from ctm_budget_new where Budgetid=resacc1 limit 1);
  
  RETURN result;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getBudgetId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` FUNCTION `getBudgetId`(`P_pAccNum` VARCHAR(25)) RETURNS varchar(25) CHARSET latin1
BEGIN 
  DECLARE res varchar(25);
  SET res = (select Budgetid from ctm_account_new where Accountid=P_pAccNum limit 1);
  RETURN res;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getBudgetId_new` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` FUNCTION `getBudgetId_new`(`P_pAccNum` VARCHAR(25)) RETURNS varchar(25) CHARSET latin1
BEGIN 
  DECLARE res varchar(25);
  SET res = (select Budgetid from ctm_account_new where Accountid=P_pAccNum limit 1);
  RETURN res;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getBudgetNameFromAccID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` FUNCTION `getBudgetNameFromAccID`(`P_pAccNum` VARCHAR(25)) RETURNS varchar(250) CHARSET latin1
    NO SQL
BEGIN 
  DECLARE res varchar(25);
  SET res = (select title from ctm_budget_new where Budgetid =(Select Budgetid from ctm_account_new where Accountid=P_pAccNum limit 1));
  RETURN res;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getBudgetTitleFromBudgetId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` FUNCTION `getBudgetTitleFromBudgetId`(`P_pBudId` VARCHAR(25)) RETURNS varchar(250) CHARSET latin1
BEGIN 
  DECLARE res varchar(250);
  SET res = (select title from ctm_budget_new where Budgetid=P_pBudId limit 1);
  RETURN res;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getDependBudgetExpense` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` FUNCTION `getDependBudgetExpense`(`P_pAccNum` VARCHAR(25)) RETURNS decimal(10,0)
BEGIN 
  DECLARE res decimal;
  SET res = (
  select IFNULL(sum(e.Expense),0) from ctm_account_q4_balance_view e where budgetid in 
(SELECT destbudget FROM `ctm_budget_relations_view`
where originbudget=P_pAccNum)
  );
  RETURN res;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getDownloadSettings` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` FUNCTION `getDownloadSettings`() RETURNS varchar(25) CHARSET latin1
BEGIN 
  DECLARE res BOOLEAN;
  SET res = (select auto_download from ctm_downloaded_transaction_settings order by settings_id  desc limit 1);
  
  RETURN res;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getEmailAddress` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` FUNCTION `getEmailAddress`(`P_profid` VARCHAR(25)) RETURNS varchar(250) CHARSET latin1
BEGIN 
  DECLARE res varchar(25);
  SET res = (select email from ctm_profile where profileid=P_profid limit 1);
  RETURN res;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getFollowers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` FUNCTION `getFollowers`(`P_pBudid` VARCHAR(25)) RETURNS text CHARSET latin1
    NO SQL
BEGIN 
  DECLARE res text;
  SET res = (select Followers from ctm_budget_new where Budgetid=P_pBudid);
  RETURN res;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getFunderAccNo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` FUNCTION `getFunderAccNo`(`P_pAccNum` VARCHAR(25)) RETURNS varchar(25) CHARSET latin1
BEGIN 
  DECLARE res varchar(25);
  SET res = (select AccountNo from ctm_budget_funder_set_new where ACcountid=P_pAccNum limit 1);
  RETURN res;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getFunderAccountNoFromAccID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` FUNCTION `getFunderAccountNoFromAccID`(`P_pAccNum` VARCHAR(25)) RETURNS varchar(350) CHARSET latin1
BEGIN 
  DECLARE res varchar(350);
  SET res = (select AccountNo from ctm_funder_new where AccountId=P_pAccNum limit 1);
  RETURN res;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getFunderAccSource` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` FUNCTION `getFunderAccSource`(`P_pAccNum` VARCHAR(25)) RETURNS varchar(25) CHARSET latin1
BEGIN 
  DECLARE res varchar(25);
  SET res = (select AccountNo from ctm_funder_new where ACcountid=P_pAccNum limit 1);
  RETURN res;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getFunderAllocByAccScr` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` FUNCTION `getFunderAllocByAccScr`(`P_pAccNum` VARCHAR(25)) RETURNS decimal(10,0)
BEGIN 
  DECLARE res decimal(10,0);
  SET res = (select Total from ctm_funder_activities_view where AccountSource=P_pAccNum and TransType='Allocation' limit 1);
  RETURN res;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getFunderBalanceByAccId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` FUNCTION `getFunderBalanceByAccId`(`P_pAccNum` VARCHAR(25)) RETURNS varchar(25) CHARSET utf8mb4
BEGIN 
  DECLARE res decimal;
  SET res = (select finalbalance from ctm_funder_new where ACcountid=P_pAccNum limit 1);
  RETURN res;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getFunderBalanceByAccNo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` FUNCTION `getFunderBalanceByAccNo`(`P_pAccNum` VARCHAR(25)) RETURNS decimal(10,0)
BEGIN 
  DECLARE res decimal;
  SET res = (select finalbalance from ctm_funder_new where ACcountNo=P_pAccNum limit 1);
  RETURN res;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getFunderExpenseByAccScr` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` FUNCTION `getFunderExpenseByAccScr`(`P_pAccNum` VARCHAR(25)) RETURNS decimal(10,0)
BEGIN 
  DECLARE res decimal(10,0);
  SET res = (select Total from ctm_funder_activities_view where AccountSource=P_pAccNum and TransType='Expense' limit 1);
  RETURN res;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getFunderIncomeByAccId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` FUNCTION `getFunderIncomeByAccId`(`P_pAccNum` VARCHAR(25)) RETURNS decimal(10,0)
BEGIN 
  DECLARE res decimal(10,0);
  SET res = (select Total from ctm_funder_income_activities_view where Accountid=P_pAccNum and TransType='Income' limit 1);
  RETURN res;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getFunderTransferByAccId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` FUNCTION `getFunderTransferByAccId`(`P_pAccNum` VARCHAR(25)) RETURNS decimal(10,0)
BEGIN 
  DECLARE res decimal(10,0);
  SET res = (select Total from ctm_funder_activities_view where AccountSource=P_pAccNum and TransType='BankTrans' limit 1);
  RETURN res;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getFunderTransferByAccScr` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` FUNCTION `getFunderTransferByAccScr`(`P_pAccNum` VARCHAR(25)) RETURNS decimal(10,0)
BEGIN 
  DECLARE res decimal(10,0);
  SET res = (select Total from ctm_funder_activities_view where AccountSource=P_pAccNum and TransType='Transfer' limit 1);
  RETURN res;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getGroupName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` FUNCTION `getGroupName`(`P_pgid` VARCHAR(25)) RETURNS varchar(150) CHARSET latin1
BEGIN 
  DECLARE res varchar(150);
  SET res = (select groupname from ctm_group
where groupid=P_pgid limit 1);
  RETURN res;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getLastBalRefId_new` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` FUNCTION `getLastBalRefId_new`(`P_pAccNum` VARCHAR(25)) RETURNS varchar(25) CHARSET utf8mb4
BEGIN 
  DECLARE res varchar(25);
  SET res = (select LastBalRefId from ctm_account_new where ACcountid=P_pAccNum limit 1);
  RETURN res;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getMonthlyExpenses` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` FUNCTION `getMonthlyExpenses`(`p_PMonth` VARCHAR(25)) RETURNS decimal(10,2)
BEGIN 
  DECLARE res decimal(10,2);
  DECLARE MoVal INT;

IF p_PMonth='jan' THEN set Moval=1;
ELSEIF p_PMonth='feb' THEN set Moval=2;
ELSEIF p_PMonth='mar' THEN set Moval=3;
ELSEIF p_PMonth='apr' THEN set Moval=4;
ELSEIF p_PMonth='may' THEN set Moval=5;
ELSEIF p_PMonth='june' THEN set Moval=6;
ELSEIF p_PMonth='july' THEN set Moval=7;
ELSEIF p_PMonth='aug' THEN set Moval=8;
ELSEIF p_PMonth='sept' THEN set Moval=9;
ELSEIF p_PMonth='oct' THEN set Moval=10;
ELSEIF p_PMonth='nov' THEN set Moval=11;
ELSEIF p_PMonth='dec' THEN set Moval=12;
     
END IF;      

  
  
  SET res = (select sum(Amount) from ctm_expense where YEAR(TransDate)=(select report_year from ctm_dashboard_settings limit 1) and MONTH(TransDate)= Moval and (exp_options is null or exp_options='') limit 1);
  RETURN res;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getMonthlyIncome` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` FUNCTION `getMonthlyIncome`(`P_pMonth` VARCHAR(25)) RETURNS decimal(10,2)
BEGIN 
  DECLARE res decimal(10,2);
  DECLARE MoVal INT;

IF p_PMonth='jan' THEN set Moval=1;
ELSEIF p_PMonth='feb' THEN set Moval=2;
ELSEIF p_PMonth='mar' THEN set Moval=3;
ELSEIF p_PMonth='apr' THEN set Moval=4;
ELSEIF p_PMonth='may' THEN set Moval=5;
ELSEIF p_PMonth='june' THEN set Moval=6;
ELSEIF p_PMonth='july' THEN set Moval=7;
ELSEIF p_PMonth='aug' THEN set Moval=8;
ELSEIF p_PMonth='sept' THEN set Moval=9;
ELSEIF p_PMonth='oct' THEN set Moval=10;
ELSEIF p_PMonth='nov' THEN set Moval=11;
ELSEIF p_PMonth='dec' THEN set Moval=12;
     
END IF;      


  SET res = (select sum(Amount) from ctm_income where YEAR(TransDate)=(select report_year from ctm_dashboard_settings limit 1) and  MONTH(TransDate)= Moval and  (exp_options is null or exp_options='') limit 1);
  RETURN res;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getMonthlyInvestments` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` FUNCTION `getMonthlyInvestments`(`P_pMonth` VARCHAR(25)) RETURNS decimal(10,2)
BEGIN 
  DECLARE res decimal(10,2);
  DECLARE MoVal INT;

IF p_PMonth='jan' THEN set Moval=1;
ELSEIF p_PMonth='feb' THEN set Moval=2;
ELSEIF p_PMonth='mar' THEN set Moval=3;
ELSEIF p_PMonth='apr' THEN set Moval=4;
ELSEIF p_PMonth='may' THEN set Moval=5;
ELSEIF p_PMonth='june' THEN set Moval=6;
ELSEIF p_PMonth='july' THEN set Moval=7;
ELSEIF p_PMonth='aug' THEN set Moval=8;
ELSEIF p_PMonth='sept' THEN set Moval=9;
ELSEIF p_PMonth='oct' THEN set Moval=10;
ELSEIF p_PMonth='nov' THEN set Moval=11;
ELSEIF p_PMonth='dec' THEN set Moval=12;
     
END IF;      

 SET res=(
       select sum(Amount) from ctm_expense 
where YEAR(TransDate)=(select report_year from ctm_dashboard_settings limit 1) 
and 
((MONTH(TransDate)=1 and (exp_options is not null and exp_options<>'')) 
 and left(exp_options,1)=1));
  
  /*SET res = (select sum(Amount) from ctm_expense where YEAR(TransDate)=(select report_year from ctm_dashboard_settings limit 1) and MONTH(TransDate)=Moval and  (exp_options is not null or exp_options<>'') limit 1);
  */
  
  RETURN res;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getRejectReasonFromBudgetId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` FUNCTION `getRejectReasonFromBudgetId`(`P_pBudId` VARCHAR(25)) RETURNS varchar(25) CHARSET latin1
BEGIN 
  DECLARE res varchar(250);
  SET res = (select RejectReason from ctm_budget_new where Budgetid=P_pBudId limit 1);
  RETURN res;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getSourceBalance` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` FUNCTION `getSourceBalance`(`P_pAccNum` VARCHAR(25)) RETURNS decimal(10,0)
BEGIN 
  DECLARE res decimal;
  SET res = (select finalbalance from ctm_funder_new where ACcountNo=P_pAccNum limit 1);
  RETURN res;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getSourceBalance_new` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` FUNCTION `getSourceBalance_new`(`P_pAccNum` VARCHAR(25)) RETURNS decimal(10,0)
BEGIN 
  DECLARE res decimal; 
  SET res = (select FinalBalance from ctm_funder_q_balance_view where ACcountNo=P_pAccNum limit 1);
  RETURN res;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getTotalExpenses` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` FUNCTION `getTotalExpenses`(`P_pYear` INT(11)) RETURNS decimal(10,2)
BEGIN 
  DECLARE res decimal(10,2);
  SET res = (select sum(Amount) from ctm_expense where YEAR(TransDate)=(select report_year from ctm_dashboard_settings limit 1) and (exp_options is null or exp_options='') limit 1);
  RETURN res;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getTotalIncome` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` FUNCTION `getTotalIncome`(`P_pYear` INT(11)) RETURNS decimal(10,2)
BEGIN 
  DECLARE res decimal(10,2);
  SET res = (select sum(Amount) from ctm_income where YEAR(TransDate)=(select report_year from ctm_dashboard_settings limit 1) and (exp_options is null or exp_options='') limit 1);
  RETURN res;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getTransactAccBudgetName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` FUNCTION `getTransactAccBudgetName`(`P_pbtchNum` VARCHAR(25)) RETURNS varchar(250) CHARSET latin1
BEGIN 
  DECLARE result varchar(250);
  DECLARE resacc varchar(25);
  DECLARE resacc1 int;
   
  SET resacc=(select transactaccto from ctm_transact_batch where batchid=P_pbtchNum limit 1);
  
  SET resacc1=(Select Budgetid from ctm_account_new where Accountid=resacc limit 1);
  
  
 SET result = (select title from ctm_budget_new where Budgetid=resacc1 limit 1);
  
  RETURN result;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getTransactAccName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` FUNCTION `getTransactAccName`(`P_pbtchNum` VARCHAR(25)) RETURNS varchar(250) CHARSET latin1
BEGIN 
  DECLARE result text;
  DECLARE resacc varchar(25);
  DECLARE resacc1 varchar(250);
   
 SET resacc=(select transactaccto from ctm_transact_batch where batchid=P_pbtchNum limit 1);
  
  SET resacc1=(Select AccountName from ctm_account_new where Accountid=resacc limit 1);
  
  
  RETURN resacc1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getTransactAmount` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` FUNCTION `getTransactAmount`(`P_pbtchNum` VARCHAR(25)) RETURNS varchar(25) CHARSET latin1
BEGIN 
  DECLARE result varchar(25);
  DECLARE resacc varchar(25);
  DECLARE resacc1 int;
   
  SET result=(select amount from ctm_transact_batch where batchid=P_pbtchNum limit 1);
  
  RETURN result;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `translate_login` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` FUNCTION `translate_login`(`P_puid` VARCHAR(250)) RETURNS varchar(250) CHARSET latin1
BEGIN 
  DECLARE res varchar(250);
  DECLARE susr varchar(250);

  SET susr = (select username from ctm_user
where username=P_puid limit 1);


  IF P_puid=susr THEN
     SET res=P_puid;
  ELSE
     SET res=(select username from ctm_user
where uemail=P_puid limit 1);
  END IF;
  
 
  RETURN res;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_authorizeBatchTransact` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` PROCEDURE `ctm_authorizeBatchTransact`()
BEGIN
 DECLARE nbatch int;

   
update ctm_transact_batch set transauth=1 WHERE
    processed=0 and transauth=0;

call ctm_postBatchTransact_new(@stat);

select @stat as transstate;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_cancelSuscription` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` PROCEDURE `ctm_cancelSuscription`(IN `p_PSuscid` VARCHAR(25))
BEGIN
			
	DECLARE v_nc int;
	DECLARE v_nc1 int;
	
	
    			update ctm_suscription set
			    	status='Cancelled'
                WHERE suscriptionid=p_PSuscid;    
				
			

set v_nc=FOUND_ROWS(); 

select v_nc as Affected;




END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_completeSignupProcess` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` PROCEDURE `ctm_completeSignupProcess`(IN `p_PLast` VARCHAR(150), IN `p_PFirst` VARCHAR(150), IN `p_PMidinitial` VARCHAR(150), IN `p_PprofName` VARCHAR(350), IN `p_PEmail` VARCHAR(250), IN `p_PAddress` VARCHAR(450), IN `p_PCity` VARCHAR(50), IN `p_PState` VARCHAR(50), IN `p_PZip` VARCHAR(50), IN `p_PPhone` VARCHAR(50), IN `p_PDesc` TEXT, IN `p_PSlogan` VARCHAR(450), IN `p_Puname` VARCHAR(100), IN `p_Ppassw` VARCHAR(350), IN `p_Ppassphrase` VARCHAR(450), IN `p_PUserDesc` VARCHAR(450), IN `p_PYear` VARCHAR(50), IN `p_Puserid` VARCHAR(25), IN `p_PPlanid` VARCHAR(25), IN `p_PStart` VARCHAR(25), IN `p_PEnd` VARCHAR(25), IN `p_PCCNumber` VARCHAR(50), IN `p_PExpDt` VARCHAR(25), IN `p_PCvv` VARCHAR(25), IN `p_PStatus` VARCHAR(25), IN `p_PBridgeid` VARCHAR(25))
BEGIN
			
	DECLARE v_nc int;
	DECLARE v_nc1 int;
	DECLARE lid bigint;
	DECLARE uid bigint;
    
    	  START TRANSACTION; 
       CALL ctm_insertProfile(
						p_PLast,
						p_PFirst,
						p_PMidinitial,
                        p_PprofName,
                        p_PEmail,
                        p_PAddress,
                        p_PCity,
                        p_PState,
                        p_PZip,
                        p_PPhone,
                        p_PDesc,
                        p_PSlogan
					);
                    



set lid=LAST_INSERT_ID();

CALL ctm_insertUser

  (    
						p_Puname,
						p_Ppassw,
						p_Ppassphrase,
                        LAST_INSERT_ID(),
                        p_PUserDesc,
                       'Active'
					);
                    
set uid=LAST_INSERT_ID();                   

CALL ctm_insertBFYear (lid,p_PYear, '01/01/2018', '12/31/2018');

CALL ctm_insertSuscription(
				uid, 
				p_PPlanid, 
				p_PStart, 
				p_PEnd, 
				p_PCCNumber, 
				p_PExpDt, 
				p_PCvv, 
				p_PStatus, 
				p_PBridgeid);



COMMIT;

set v_nc=FOUND_ROWS(); 

select v_nc as Affected;




END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_create_account_info_view_shadow_tbl` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`setienne`@`localhost` PROCEDURE `ctm_create_account_info_view_shadow_tbl`()
    NO SQL
BEGIN
  START TRANSACTION;
   DELETE from ctm_tmp_account_q4_balance_view_shadow;
   insert into ctm_tmp_account_q4_balance_view_shadow
select * from ctm_account_q4_balance_view;
   COMMIT;
   
   END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_create_budget_info_view_shadow_tbl` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`setienne`@`localhost` PROCEDURE `ctm_create_budget_info_view_shadow_tbl`()
    NO SQL
BEGIN
  START TRANSACTION;
   DELETE from ctm_tmp_budget_info_view_shadow;
   insert into ctm_tmp_budget_info_view_shadow
select * from ctm_budget_info_view;
   COMMIT;
   
   END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_deleteAttachment` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` PROCEDURE `ctm_deleteAttachment`(IN `p_PAttachid` VARCHAR(50))
BEGIN
			
	DECLARE v_nc int;
	DECLARE v_nc1 int;
	
	
    	
    		DELETE from ctm_doc_attach
			WHERE attachid=p_PAttachid;
            

set v_nc=FOUND_ROWS(); 

select v_nc as Affected;




END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_deleteGoal` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` PROCEDURE `ctm_deleteGoal`(IN `p_PGoalid` VARCHAR(50))
BEGIN
			
	DECLARE v_nc int;
	DECLARE v_nc1 int;
	
	
    	
    		DELETE from ctm_goal 
			WHERE goalid=p_PGoalid;
            

set v_nc=FOUND_ROWS(); 

select v_nc as Affected;




END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_duplicatebudget` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` PROCEDURE `ctm_duplicatebudget`(IN `p_Pbudid` VARCHAR(25))
BEGIN

DECLARE LID int;
DECLARE v_nc int;

START TRANSACTION;

INSERT INTO ctm_budget_new
(
  `CostCenter`
  ,`ctyearid`
  ,`title`
  ,`Source`
  ,`ScrType`
  ,`BudgType`
  ,`FYear`
  ,`bGroup`
  ,`AssignedTo`
  ,`Owner`
  ,`Vision`
  ,`accStatus`
  ,`bNote`
  ,`CreatedBy`
  ,`ModifiedBy`
  ,`ModifiedDate`
  ,`StartDate`
  ,`Approved`
  ,`ApprovedBy`
  ,`ApprovalDate`
  ,`Followers`
  ,`flagged`
  ,`InitAmount`
  ,`Income`
  ,`Expenses`
  ,`Allocs`
  ,`bVariance`
  ,`Available`
  ,`AbsAvailable`
  ,`Pending`
  ,`budgorder`
  ,`bPeriod`)
SELECT 
  `CostCenter`
  ,`ctyearid`
  ,`title`
  ,`Source`
  ,`ScrType`
  ,`BudgType`
  ,`FYear`
  ,`bGroup`
  ,`AssignedTo`
  ,`Owner`
  ,`Vision`
  ,`accStatus`
  ,`bNote`
  ,`CreatedBy`
  ,`ModifiedBy`
  ,`ModifiedDate`
  ,`StartDate`
  ,`Approved`
  ,`ApprovedBy`
  ,`ApprovalDate`
  ,`Followers`
  ,`flagged`
  ,`InitAmount`
  ,`Income`
  ,`Expenses`
  ,`Allocs`
  ,`bVariance`
  ,`Available`
  ,`AbsAvailable`
  ,`Pending`
  ,`budgorder`
  ,`bPeriod`
FROM `ctm_budget_new` WHERE Budgetid=p_Pbudid;



set LID=LAST_INSERT_ID();


insert into ctm_account_new(
  `Budgetid`
  ,`CreatedBy`
  ,`CreationDate`
  ,`ClosingDate` 
  ,`AccountName` 
  ,`AccountType` 
  ,`InitialAmount`
  ,`ByPercent`
  ,`PercentRate`
  ,`Currency`
  ,`SourceAccount`
  ,`Location`
  ,`accStatus`
  ,`aOrder`
  ,`CostCenter`
  ,`ModifiedBy`
  ,`ModifiedDate`
  ,`Comments`
  ,`activities`
  ,`Balance`
  ,`SourceBalance`
  ,`aTarget`
  ,`aReached`
  ,`Pending`
  ,`LastBalRefID`
  ,`Latest_Balance`)
  select
  LID
  ,`CreatedBy`
  ,`CreationDate`
  ,`ClosingDate` 
  ,`AccountName` 
  ,`AccountType` 
  ,`InitialAmount`
  ,`ByPercent`
  ,`PercentRate`
  ,`Currency`
  ,`SourceAccount`
  ,`Location`
  ,`accStatus`
  ,`aOrder`
  ,`CostCenter`
  ,`ModifiedBy`
  ,`ModifiedDate`
  ,`Comments`
  ,`activities`
  ,`Balance`
  ,`SourceBalance`
  ,`aTarget`
  ,`aReached`
  ,`Pending`
  ,`LastBalRefID`
  ,`Latest_Balance`
  from ctm_account_new where Budgetid=p_Pbudid;

COMMIT;

 
set v_nc=FOUND_ROWS(); 

select v_nc as Affected;




END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_insertAccount` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` PROCEDURE `ctm_insertAccount`(IN `p_PBudgetid` VARCHAR(50), IN `p_PAccountNo` VARCHAR(50), IN `p_PCreationDate` VARCHAR(50), IN `p_PAccountName` VARCHAR(350), IN `p_PInitAmount` VARCHAR(50), IN `p_PByPercent` VARCHAR(25), IN `p_PPercentRate` VARCHAR(25), IN `p_PAccCur` VARCHAR(25), IN `p_PAccSource` VARCHAR(25), IN `p_PLocation` VARCHAR(25), IN `p_PStatus` VARCHAR(25), IN `p_PComments` TEXT, IN `p_PAccounttype` VARCHAR(25), IN `p_POrder` VARCHAR(11), IN `p_PCC` VARCHAR(25), IN `p_PUser` VARCHAR(25))
BEGIN
			
	DECLARE v_nc int;
	DECLARE v_nc1 int;
	
	
    	
    		INSERT INTO ctm_account (
						Budgetid,
						AccountNo,
                        CreatedBy,
						CreationDate,
						AccountName,
						InitialAmount,
						ByPercent,
						PercentRate,
						Currency,
						SourceAccount,
						Location,
						accStatus,
						Comments,
                        AccountType,
                        aOrder,
                		CostCenter
                
				   )
			 VALUES
				   (    
						p_PBudgetid,
						p_PAccountNo,
                        p_PUser,
						CURRENT_TIMESTAMP(),
						p_PAccountName,
						p_PInitAmount,
						p_PByPercent,
						p_PPercentRate,
						p_PAccCur,
						p_PAccSource,
						p_PLocation,
						p_PStatus,
						p_PComments,
                       p_PAccounttype,
                       p_POrder,
                       p_PCC
						
					);


INSERT INTO tmp_Account_Info_Result (
						Budgetid,
						AccountNo,
						CreationDate,
						AccountName,
						InitialAmount,
						ByPercent,
						PercentRate,
						Currency,
						SourceAccount,
						Location,
						accStatus,
						Comments,
                        AccountType,
                        aOrder,
                		CostCenter
                
				   )
			 VALUES
				   (    
						p_PBudgetid,
						p_PAccountNo,
						CURRENT_TIMESTAMP(),
						concat(p_PAccountName,'-','(Generating ...)'),
						p_PInitAmount,
						p_PByPercent,
						p_PPercentRate,
						p_PAccCur,
						p_PAccSource,
						p_PLocation,
						p_PStatus,
						p_PComments,
                       p_PAccounttype,
                       p_POrder,
                       p_PCC
						
					);


set v_nc=FOUND_ROWS(); 



select v_nc as Affected;




END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_insertAccount_new` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` PROCEDURE `ctm_insertAccount_new`(IN `p_PBudgetid` VARCHAR(50), IN `p_PAccountNo` VARCHAR(50), IN `p_PCreationDate` VARCHAR(50), IN `p_PAccountName` VARCHAR(350), IN `p_PInitAmount` VARCHAR(50), IN `p_PByPercent` VARCHAR(25), IN `p_PPercentRate` VARCHAR(25), IN `p_PAccCur` VARCHAR(25), IN `p_PAccSource` VARCHAR(25), IN `p_PLocation` VARCHAR(25), IN `p_PStatus` VARCHAR(25), IN `p_PComments` TEXT, IN `p_PAccounttype` VARCHAR(25), IN `p_POrder` VARCHAR(11), IN `p_PCC` VARCHAR(25), IN `p_PUser` VARCHAR(25), IN `p_PTarget` VARCHAR(25), IN `p_PReached` VARCHAR(2))
BEGIN
			
	DECLARE v_nc int;
	DECLARE v_nc1 int;
	DECLARE BalScr VARCHAR(25);
    DECLARE BudBal Varchar(25);
     DECLARE aerr varchar(25);
  
 DECLARE EXIT HANDLER FOR 1062
 BEGIN
   ROLLBACK;
    set aerr='1062';
    select 0, aerr as statusc;
 END;
 
    IF p_PByPercent='Yes' THEN
    	SET BalScr= (p_PPercentRate*getSourceBalance_new(p_PAccSource)/100);
    ELSE
        SET BalScr= p_PInitAmount;
    END IF;
    
	START TRANSACTION;
    	

	INSERT INTO ctm_account_new (
						Budgetid,
						AccountNo,
                        CreatedBy,
						CreationDate,
						AccountName,
						InitialAmount,
						ByPercent,
						PercentRate,
						Currency,
						SourceAccount,
						Location,
						accStatus,
						Comments,
                        AccountType,
                        aOrder,
                		CostCenter,
                        Balance,
    					SourceBalance,
                        Pending,
                        aTarget,
                        aReached,
                        activities
                
				   )
			 VALUES
				   (    
						p_PBudgetid,
						p_PAccountNo,
                        p_PUser,
						CURRENT_TIMESTAMP(),
						p_PAccountName,
						p_PInitAmount,
						p_PByPercent,
						p_PPercentRate,
						p_PAccCur,
						p_PAccSource,
						p_PLocation,
						p_PStatus,
						p_PComments,
                       p_PAccounttype,
                       p_POrder,
                       p_PCC,
                       IFNULL(BalScr,0),
                       getSourceBalance_new(p_PAccSource),
					   '0',
                       p_PTarget,
                       p_Preached,
                       '0'
					);


update ctm_budget_new set 
Available=getBudgetBalance_new(p_PBudgetid)
where budgetid=p_PBudgetid;

INSERT INTO `ctm_transaction_history` (`transactdate`, `transactbatchid`, `transactbudgetid`,`transactacctid`,`transactacctno`, `transactaccount`, `transacttype`, `transactdescription`, `transactsupplier`, `transactprevbalance`, `transactamount`, `transactnewbalance`, `transactprevrefid`) VALUES (CURRENT_TIMESTAMP(), '0', p_PBudgetid ,LAST_INSERT_ID(), p_PAccountNo , p_PAccountName, 'AcctOpen', 'Account Opening', '', IFNULL(BalScr,0), '0',  IFNULL(BalScr,0), '0');


 COMMIT;

set v_nc=FOUND_ROWS(); 



select v_nc as Affected;




END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_insertAllocation` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` PROCEDURE `ctm_insertAllocation`(IN `p_PAccountFrom` VARCHAR(50), IN `p_PAllocCode` VARCHAR(50), IN `p_PAmount` VARCHAR(50), IN `p_PNote` VARCHAR(25))
BEGIN
			
	DECLARE v_nc int;
	DECLARE v_nc1 int;
	
	
    	
    		INSERT INTO ctm_allocation (
						
						TransDate,
						AccountFrom,
						AllocCode,
						Amount,
						Notes
				   )
			 VALUES
				   (    
						CURRENT_TIMESTAMP(),
						p_PAccountFrom,
						p_PAllocCode,
						p_PAmount,
						'NA'
					);


set v_nc=FOUND_ROWS(); 

select v_nc as Affected;




END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_insertBatchTransact` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` PROCEDURE `ctm_insertBatchTransact`(IN `p_PAccountFrom` VARCHAR(50), IN `p_PAccountTo` VARCHAR(50), IN `p_PAmount` VARCHAR(50), IN `p_PNote` VARCHAR(2500), IN `p_PTransType` VARCHAR(25), IN `p_PYearid` VARCHAR(25), IN `p_POwner` VARCHAR(50), IN `p_PSupplier` VARCHAR(250), IN `p_Pcat` VARCHAR(50), IN `p_PAssign` VARCHAR(50), IN `p_POpt` VARCHAR(2))
BEGIN
			
	DECLARE v_nc int;
	DECLARE v_nc1 int;
	
	START TRANSACTION;
    	
    		INSERT INTO ctm_transact_batch (
						batchdate,
						transacttype,
						transactdate,
						amount,
                        transactcategory,
						transactaccfrom,
						transactaccto,
						transactdesc,
                        ctyearid,
                        transactnote,
                        transactowner,
                        transactassign,
                        supplier,
                        processed,
                        transauth,
                        exp_options
				   )
			 VALUES
				   (    
						CURRENT_TIMESTAMP(),
						p_PTransType,
						CURRENT_TIMESTAMP(),
						p_PAmount,
                        p_Pcat,
						p_PAccountFrom,
						p_PAccountTo,
						p_PNote,
                        p_PYearid,
						'NA',
                        p_POwner,
                        p_PAssign,
                        p_PSupplier,
                       '0',
                       '0',
                       p_POpt
					);

INSERT INTO `ctm_mail_message` (`fromsender`, `tosender`, `subject`, `message`, `datesent`, `mailstatus`) VALUES ('noreply@serpaone.com', getFollowers(getBudgetid(p_PAccountTo)),'New Transaction Notification',
Concat('A transaction of type ', p_PTransType,' in the amount of  $',p_PAmount, ' has been submitted for approval. Please, review and approve')                    
                                                                              ,CURRENT_TIMESTAMP(), '0');

select count(batchid) into @trowb from ctm_transact_batch where processed=0 and transauth=0;
delete from tmp_cnt_batch;
INSERT into tmp_cnt_batch (numrows) VALUES (@trowb);

COMMIT;

set v_nc=FOUND_ROWS(); 

select v_nc as Affected;



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_insertBFYear` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` PROCEDURE `ctm_insertBFYear`(IN `p_PProfid` VARCHAR(50), IN `p_PYear` VARCHAR(50), IN `p_PStart` VARCHAR(50), IN `p_PEnd` VARCHAR(50))
BEGIN
			
	DECLARE v_nc int;
	DECLARE v_nc1 int;
	
	
    	
    	INSERT INTO `ctm_fyear` 
        (`profileid`, `yaccronym`, `fyear`, `startdate`, `enddate`, `status`, `note`) 
        VALUES (p_PProfid, 'FY', p_PYear, '01/01/2018', '12/31/2018', 'Active', 'NA');

set v_nc=FOUND_ROWS(); 

select v_nc as Affected;




END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_insertBudget` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` PROCEDURE `ctm_insertBudget`(IN `p_PSource` VARCHAR(50), IN `p_PScrType` VARCHAR(50), IN `p_PTitle` VARCHAR(350), IN `p_PType` VARCHAR(25), IN `p_PStatus` VARCHAR(25), IN `p_PPlan` VARCHAR(25), IN `p_PAssign` VARCHAR(50), IN `p_Pvision` TEXT, IN `p_PFyear` VARCHAR(50), IN `p_PGroup` VARCHAR(50), IN `p_PCode` VARCHAR(25), IN `p_PYearid` VARCHAR(25), IN `p_POwner` VARCHAR(50), IN `p_PStartd` VARCHAR(25), IN `p_PFollow` TEXT, IN `p_PUser` VARCHAR(50))
BEGIN
			
	DECLARE v_nc int;
	DECLARE v_nc1 int;
    DECLARE budgetident int;
	
	
        
 	  START TRANSACTION; 
	
    		INSERT INTO ctm_budget (
						BudgType,
						ScrType,
						Source,
						title,
                        BudgetCode,
						accStatus,
						bNote,
                        AssignedTo,
                        Vision,
                        FYear,
                        bGroup,
                        ctyearid,
                        Owner,
                        CreatedBy,
                		StartDate,
                        Approved,
                        Followers,
                        flagged
				   )
			 VALUES
				   (    
						p_PType,
						p_PScrType,
						p_PSource,
						p_PTitle,
                        p_PCode,
						p_PStatus,
						'NA',
                       p_PAssign,
                       p_Pvision,
                       p_PFyear,
                       p_PGroup,
                       p_PYearid,
                       p_POwner,
                       p_PUser,
                      CURRENT_TIMESTAMP(),
                       2,
                       p_PFollow,
                       '0'
					);

set budgetident=LAST_INSERT_ID();

INSERT INTO tmp_Budget_Info_Result (
                        Budgetid,
						BudgType,
						ScrType,
						Source,
						title,
                        BudgetCode,
						accStatus,
						bNote,
                        AssignedTo,
                        Vision,
                        FYear,
                        bGroup,
                        ctyearid,
                        Owner,
                        CreatedBy,
                		StartDate,
                        Approved,
                        Followers,
                        flagged
				   )
			 VALUES
				   (    
						budgetident,
                        p_PType,
						p_PScrType,
						p_PSource,
						p_PTitle,
                        p_PCode,
						p_PStatus,
						'NA',
                       p_PAssign,
                       p_Pvision,
                       p_PFyear,
                       p_PGroup,
                       p_PYearid,
                       p_POwner,
                       p_PUser,
                      CURRENT_TIMESTAMP(),
                       2,
                       p_PFollow,
                       '0'
					);



INSERT INTO ctm_account (
						Budgetid,
						AccountNo,
                        CreatedBy,
						CreationDate,
						AccountName,
						InitialAmount,
						ByPercent,
						PercentRate,
						Currency,
						SourceAccount,
						Location,
						accStatus,
						Comments,
                        AccountType,
                        aOrder
                
				   )
			 VALUES
				   (    
						budgetident,
						concat('ASS-',LAST_INSERT_ID()),
                        p_PUser,
						CURRENT_TIMESTAMP(),
						'Assets',
						'0',
						'Yes',
						'100',
						'',
						p_PSource,
						'',
						'Active',
						'NA',
                       'Budget',
                       '1'
						
					);

INSERT INTO tmp_Account_Info_Result (
                        Accountid,
						Budgetid,
						AccountNo,
                        CreatedBy,
						CreationDate,
						AccountName,
						InitialAmount,
						ByPercent,
						PercentRate,
						Currency,
						SourceAccount,
						Location,
						accStatus,
						Comments,
                        AccountType,
                        aOrder
                
				   )
			 VALUES
				   (    
						LAST_INSERT_ID(),
                        budgetident,
						concat('ASS-',LAST_INSERT_ID()),
                        p_PUser,
						CURRENT_TIMESTAMP(),
						'Assets',
						'0',
						'Yes',
						'100',
						'',
						p_PSource,
						'',
						'Active',
						'NA',
                       'Budget',
                       '1'
						
					);


 COMMIT;

set v_nc=FOUND_ROWS(); 




  
select v_nc as Affected;



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_insertBudget_new` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` PROCEDURE `ctm_insertBudget_new`(IN `p_PSource` VARCHAR(50), IN `p_PScrType` VARCHAR(50), IN `p_PTitle` VARCHAR(350), IN `p_PType` VARCHAR(25), IN `p_PStatus` VARCHAR(25), IN `p_PPlan` VARCHAR(25), IN `p_PAssign` VARCHAR(50), IN `p_Pvision` TEXT, IN `p_PFyear` VARCHAR(50), IN `p_PGroup` VARCHAR(50), IN `p_PCode` VARCHAR(25), IN `p_PYearid` VARCHAR(25), IN `p_POwner` VARCHAR(50), IN `p_PStartd` VARCHAR(25), IN `p_PFollow` TEXT, IN `p_PUser` VARCHAR(50))
BEGIN
			
	DECLARE v_nc int;
	DECLARE v_nc1 int;
    DECLARE budgetident int;
	DECLARE BalScr varchar(25);
	
    SET BalScr= getSourceBalance_new(p_PSource);
        
 	  START TRANSACTION; 
	
    		INSERT INTO ctm_budget_new (
						BudgType,
						ScrType,
						Source,
						title,
                        BudgetCode,
						accStatus,
						bNote,
                        AssignedTo,
                        Vision,
                        FYear,
                        bGroup,
                        ctyearid,
                        Owner,
                        CreatedBy,
                		StartDate,
                        Approved,
                        Followers,
                        flagged,
                        Available,
                        AbsAvailable
				   )
			 VALUES
				   (    
						p_PType,
						p_PScrType,
						p_PSource,
						p_PTitle,
                        p_PCode,
						p_PStatus,
						'NA',
                       p_PAssign,
                       p_Pvision,
                       p_PFyear,
                       p_PGroup,
                       p_PYearid,
                       p_POwner,
                       p_PUser,
                      CURRENT_TIMESTAMP(),
                       2,
                       p_PFollow,
                       '0',
                       BalScr,
                       BalScr
					);
                    
SET budgetident=LAST_INSERT_ID();
 
      INSERT INTO ctm_account_new (
						Budgetid,
						AccountNo,
                        CreatedBy,
						CreationDate,
						AccountName,
						InitialAmount,
						ByPercent,
						PercentRate,
						Currency,
						SourceAccount,
						Location,
						accStatus,
						Comments,
                        AccountType,
                        aOrder,
                        Balance,
    					SourceBalance,
                        Pending
				   )
			 VALUES
				   (    
						budgetident,
						concat('ASS-',LAST_INSERT_ID(),'1'),
                        p_PUser,
						CURRENT_TIMESTAMP(),
						'Assets',
						'0',
						'Yes',
						'100',
						'',
						p_PSource,
						'',
						'Active',
						'NA',
                       'Budget',
                       '1',
                       BalScr,
                       BalScr,
                       '0'
					);

 
INSERT INTO `ctm_transaction_history` (`transactdate`, `transactbatchid`, `transactbudgetid`,`transactacctid`,`transactacctno`, `transactaccount`, `transacttype`, `transactdescription`, `transactsupplier`, `transactprevbalance`, `transactamount`, `transactnewbalance`, `transactprevrefid`) VALUES (CURRENT_TIMESTAMP(), '0', budgetident ,LAST_INSERT_ID(), 'ASS-1' ,'Assets', 'AcctOpen', 'Account Opening', '',BalScr, '0', BalScr, '0');


 COMMIT;

set v_nc=FOUND_ROWS(); 




  
select v_nc as Affected;



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_insertDocItem` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` PROCEDURE `ctm_insertDocItem`(IN `p_PRefid` VARCHAR(50), IN `p_PDesc` TEXT, IN `p_PModuleID` VARCHAR(50), IN `p_PAttachBy` VARCHAR(50), IN `p_PFileName` VARCHAR(450))
BEGIN
			
	DECLARE v_nc int;
	DECLARE v_nc1 int;
	
	
    	
    		INSERT INTO ctm_doc_attach (
						refid,
						fileitemname,
						description,
						moduleid,
                        attachby
				   )
			 VALUES
				   (    
						p_PRefid,
						p_PFileName,
						p_PDesc,
                        p_PModuleID,
                        p_PAttachBy
					);


set v_nc=FOUND_ROWS(); 

select v_nc as Affected;




END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_insertExpense` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` PROCEDURE `ctm_insertExpense`(IN `p_PAccountid` VARCHAR(50), IN `p_PAmount` VARCHAR(50), IN `p_PNote` VARCHAR(25))
BEGIN
			
	DECLARE v_nc int;
	DECLARE v_nc1 int;
	
	
    	
    		INSERT INTO ctm_expense (
						Accountid,
						TransDate,
						Amount,
						Notes
				   )
			 VALUES
				   (    
						p_PAccountid,
						CURRENT_TIMESTAMP(),
						p_PAmount,
						'NA'
					);


set v_nc=FOUND_ROWS(); 

select v_nc as Affected;




END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_insertFunder` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` PROCEDURE `ctm_insertFunder`(IN `p_PBudgetid` VARCHAR(50), IN `p_PYear` VARCHAR(50), IN `p_PAccountNo` VARCHAR(50), IN `p_PCreationDate` VARCHAR(50), IN `p_PAccountName` VARCHAR(350), IN `p_PInitAmount` VARCHAR(50), IN `p_PByPercent` VARCHAR(25), IN `p_PPercentRate` VARCHAR(25), IN `p_PAccCur` VARCHAR(25), IN `p_PAccSource` VARCHAR(25), IN `p_PLocation` VARCHAR(25), IN `p_PStatus` VARCHAR(25), IN `p_PComments` VARCHAR(350), IN `p_PAccounttype` VARCHAR(25), IN `p_POrder` VARCHAR(11), IN `p_POwner` VARCHAR(50), IN `p_PAssign` VARCHAR(50), IN `p_PUser` VARCHAR(50))
BEGIN
			
	DECLARE v_nc int;
	DECLARE v_nc1 int;
	
	
    	START TRANSACTION;
        
    		INSERT INTO ctm_funder_new (
						Budgetid,
                        ctyearid,
						AccountNo,
                        CreatedBy,
						CreationDate,
						AccountName,
						InitialAmount,
						ByPercent,
						PercentRate,
						Currency,
						SourceAccount,
						Location,
						accStatus,
						Comments,
                        AccountType,
                        aOrder,
                        AssignedTo,
                        Owner, 
                        Balance,
                        FinalBalance
                                
				   )
			 VALUES
				   (    
						p_PBudgetid,
                        p_PYear,
						p_PAccountNo,
                        p_PUser,
						CURRENT_TIMESTAMP(),
						p_PAccountName,
						p_PInitAmount,
						p_PByPercent,
						p_PPercentRate,
						p_PAccCur,
						p_PAccSource,
						p_PLocation,
						p_PStatus,
						p_PComments,
                       p_PAccounttype,
                       p_POrder,
                       p_PAssign,
                       p_POwner,
                       0,
					   p_PInitAmount
					);



INSERT INTO `ctm_transaction_history` (`transactdate`, `transactbatchid`, `transactbudgetid`, `transactaccount`, `transacttype`, `transactdescription`, `transactsupplier`, `transactprevbalance`, `transactamount`, `transactnewbalance`, `transactprevrefid`) VALUES (CURRENT_TIMESTAMP(), '0', '0', p_PAccountName, 'BankOpen', 'Account Opening', '', p_PInitAmount, '0', p_PInitAmount, '0');

COMMIT;

set v_nc=FOUND_ROWS(); 
select v_nc as Affected;




END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_insertFunder_new` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` PROCEDURE `ctm_insertFunder_new`(IN `p_PBudgetid` VARCHAR(50), IN `p_PYear` VARCHAR(50), IN `p_PAccountNo` VARCHAR(50), IN `p_PCreationDate` VARCHAR(50), IN `p_PAccountName` VARCHAR(350), IN `p_PInitAmount` VARCHAR(50), IN `p_PByPercent` VARCHAR(25), IN `p_PPercentRate` VARCHAR(25), IN `p_PAccCur` VARCHAR(25), IN `p_PAccSource` VARCHAR(25), IN `p_PLocation` VARCHAR(25), IN `p_PStatus` VARCHAR(25), IN `p_PComments` VARCHAR(350), IN `p_PAccounttype` VARCHAR(25), IN `p_POrder` VARCHAR(11), IN `p_POwner` VARCHAR(50), IN `p_PAssign` VARCHAR(50), IN `p_PUser` VARCHAR(50))
BEGIN
			
	DECLARE v_nc int;
	DECLARE v_nc1 int;
	
	
    	START TRANSACTION;
        
    		INSERT INTO ctm_funder_new (
						Budgetid,
                        ctyearid,
						AccountNo,
                        CreatedBy,
						CreationDate,
						AccountName,
						InitialAmount,
						ByPercent,
						PercentRate,
						Currency,
						SourceAccount,
						Location,
						accStatus,
						Comments,
                        AccountType,
                        aOrder,
                        AssignedTo,
                        Owner, 
                        Balance,
                        FinalBalance
                                
				   )
			 VALUES
				   (    
						p_PBudgetid,
                        p_PYear,
						p_PAccountNo,
                        p_PUser,
						CURRENT_TIMESTAMP(),
						p_PAccountName,
						p_PInitAmount,
						'No',
						'0',
						p_PAccCur,
						p_PAccSource,
						p_PLocation,
						p_PStatus,
						p_PComments,
                       p_PAccounttype,
                       p_POrder,
                       p_PAssign,
                       p_POwner,
                       0,
					   IFNULL(p_PInitAmount,0)
					);



INSERT INTO `ctm_transaction_history` (`transactdate`, `transactbatchid`, `transactbudgetid`,`transactacctid`,`transactacctno` ,`transactaccount`, `transacttype`, `transactdescription`, `transactsupplier`, `transactprevbalance`, `transactamount`, `transactnewbalance`, `transactprevrefid`) VALUES (CURRENT_TIMESTAMP(), '0', '0',LAST_INSERT_ID(), p_PAccountNo, p_PAccountName, 'BankOpen', 'Account Opening', '', IFNULL(p_PInitAmount,0), '0', IFNULL(p_PInitAmount,0), '0');

COMMIT;

set v_nc=FOUND_ROWS(); 
select v_nc as Affected;




END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_insertGlossary` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` PROCEDURE `ctm_insertGlossary`(IN `p_Pmodule` VARCHAR(25), IN `p_Psection` VARCHAR(25), IN `p_Ptitle` VARCHAR(25), IN `p_Pvalue` VARCHAR(25), IN `p_Pprofile` VARCHAR(50), IN `p_PComments` VARCHAR(25))
BEGIN
			
	DECLARE v_nc int;
	DECLARE v_nc1 int;
	
	
    			INSERT INTO ctm_glossary
				(
				module, 
				section, 
				title, 
				glvalue, 
				profileid, 
				comments) 
			VALUES 
				(
				p_Pmodule, 
				p_Psection, 
				p_Ptitle, 
				p_Pvalue, 
				p_Pprofile, 
				p_Pcomments 
				);
			

set v_nc=FOUND_ROWS(); 

select v_nc as Affected, LAST_INSERT_ID() as idrec;




END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_insertGoal` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` PROCEDURE `ctm_insertGoal`(IN `p_PBudgetid` VARCHAR(50), IN `p_PTitle` VARCHAR(50), IN `p_PHeadline` TEXT, IN `p_PDetails` LONGTEXT, IN `p_PDuedate` VARCHAR(50), IN `p_PCostEst` VARCHAR(50))
BEGIN
			
	DECLARE v_nc int;
	DECLARE v_nc1 int;
	
	
    	
    		INSERT INTO ctm_goal (
						budgetid,
						goaltitle,
						headline,
						goaldetails,
                        duedate,
                        costestimate
				   )
			 VALUES
				   (    
						p_PBudgetid,
						p_PTitle,
						p_PHeadline,
                        p_PDetails,
                        p_PDuedate,
                        p_PCostEst
					);


set v_nc=FOUND_ROWS(); 

select v_nc as Affected;




END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_insertIncome` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` PROCEDURE `ctm_insertIncome`(IN `p_PAccountid` VARCHAR(50), IN `p_PAmount` VARCHAR(50), IN `p_PNote` VARCHAR(25))
BEGIN
			
	DECLARE v_nc int;
	DECLARE v_nc1 int;
	
	
    	
    		INSERT INTO ctm_income (
						Accountid,
						TransDate,
						Amount,
						Notes
				   )
			 VALUES
				   (    
						p_PAccountid,
						CURRENT_TIMESTAMP(),
						p_PAmount,
						'NA'
					);


set v_nc=FOUND_ROWS(); 

select v_nc as Affected;




END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_insertProfile` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` PROCEDURE `ctm_insertProfile`(IN `p_PLast` VARCHAR(150), IN `p_PFirst` VARCHAR(150), IN `p_PMidinitial` VARCHAR(150), IN `p_PprofName` VARCHAR(350), IN `p_PEmail` VARCHAR(250), IN `p_PAddress` VARCHAR(450), IN `p_PCity` VARCHAR(50), `p_PState` VARCHAR(50), `p_PZip` VARCHAR(50), `p_PPhone` VARCHAR(50), `p_PDesc` TEXT, `p_PSlogan` VARCHAR(450))
BEGIN
			
	DECLARE v_nc int;
	DECLARE v_nc1 int;
	
	
    	
    		INSERT INTO ctm_profile (
                        lastname,
                        firstname,
                        middleinitial,
						profilename,
						email,
						address,
                        city,
                        state,
                        zip,
                        phone,
                        description,
                        slogan
                
				   )
			 VALUES
				   (    
						p_PLast,
						p_PFirst,
						p_PMidinitial,
                        p_PprofName,
                        p_PEmail,
                        p_PAddress,
                        p_PCity,
                        p_PState,
                        p_PZip,
                        p_PPhone,
                        p_PDesc,
                        p_PSlogan
					);


set v_nc=FOUND_ROWS(); 

select v_nc as Affected;




END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_insertRecurring` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` PROCEDURE `ctm_insertRecurring`(IN `p_PStartDt` VARCHAR(25), IN `p_Pfreq` VARCHAR(25), IN `p_Pbudget` VARCHAR(25), IN `p_Paccfr` VARCHAR(25), IN `p_Paccto` VARCHAR(50), IN `p_Pamount` VARCHAR(25), IN `p_Pstatus` VARCHAR(25), IN `p_Pcomments` VARCHAR(25), IN `p_Pprof` VARCHAR(25), IN `p_PEndDt` VARCHAR(25))
BEGIN
			
	DECLARE v_nc int;
	DECLARE v_nc1 int;
   
    
    		
                
                   
	
	
    		INSERT INTO `ctm_recurring_transfer` (`profileid`, `budgetid`, `startdate`, `fromacc`, `toacc`, `amount`, `status`, `comments`, `frequency`,`enddate`) VALUES (p_Pprof, p_Pbudget, p_PStartDt, p_Paccfr, p_Paccto, p_Pamount, p_Pstatus, p_Pcomments, p_Pfreq, p_PEndDt);
			



set v_nc=FOUND_ROWS(); 
select v_nc as Affected,  LAST_INSERT_ID() as idrec;




END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_insertSuscription` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` PROCEDURE `ctm_insertSuscription`(IN `p_Puserid` VARCHAR(25), IN `p_PPlanid` VARCHAR(25), IN `p_PStart` VARCHAR(25), IN `p_PEnd` VARCHAR(25), IN `p_PCCNumber` VARCHAR(50), IN `p_PExpDt` VARCHAR(25), IN `p_PCvv` VARCHAR(25), IN `p_PStatus` VARCHAR(25), IN `p_PBridgeid` VARCHAR(25), IN `p_PProfile` VARCHAR(25), IN `p_PKey` VARCHAR(50))
BEGIN
			
	DECLARE v_nc int;
	DECLARE v_nc1 int;
    DECLARE stype varchar(25);
    DECLARE Csusc int;
    DECLARE cmsg int;
    
    			IF p_PPlanid=0 THEN
                   set stype='Demo';
                ELSEIF p_PPlanid=1 THEN
                   set stype='Monthly';
                ELSEIF p_PPlanid=2 THEN
                   set stype='Yearly';   
                ELSE
                   set stype='';
                END IF;
                
                set cmsg=0;
                set csusc=0;
         set csusc=(Select count(suscriptionid) from ctm_suscription where status='Active');
	
	      IF (csusc=0) then 
    			INSERT INTO ctm_suscription
				(
				userid, 
				planid, 
				startdate, 
				enddate, 
				cccardnumber, 
				expirationdate, 
				cvv, 
				status, 
				psbridgeid,
                profileid,
                susctype,
                suscskey) 
			VALUES 
				(
				p_Puserid, 
				p_PPlanid, 
				CURRENT_DATE(), 
				null, 
				p_PCCNumber, 
				null, 
				p_PCvv, 
				p_PStatus, 
				p_PBridgeid,
                p_PProfile,
                stype,
                p_PKey);
         ELSE        
		 
         set cmsg=1;
         END IF;

set v_nc=FOUND_ROWS(); 

select v_nc, cmsg as Affected;




END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_insertTransfer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` PROCEDURE `ctm_insertTransfer`(IN `p_PAccountFrom` VARCHAR(50), IN `p_PAccountTo` VARCHAR(50), IN `p_PAmount` VARCHAR(50), IN `p_PNote` VARCHAR(25))
BEGIN
			
	DECLARE v_nc int;
	DECLARE v_nc1 int;
	
	
    	
    		INSERT INTO ctm_transfer (
						AccountFrom,
						AccountTo,
						TransDate,
						Amount,
						Notes
				   )
			 VALUES
				   (    
						p_PAccountFrom,
						p_PAccountTo,
						CURRENT_TIMESTAMP(),
						p_PAmount,
						'NA'
					);


set v_nc=FOUND_ROWS(); 

select v_nc as Affected;




END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_insertUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` PROCEDURE `ctm_insertUser`(IN `p_Puname` VARCHAR(150), IN `p_Ppassw` VARCHAR(450), IN `p_Ppassphrase` VARCHAR(450), IN `p_Pprofid` VARCHAR(25), IN `p_PUserDesc` VARCHAR(450), IN `p_PStatus` VARCHAR(25))
BEGIN
			
	DECLARE v_nc int;
	DECLARE v_nc1 int;
	
	
    	
    		INSERT INTO ctm_user (
                        username,
                        password,
                        passphrase,
						profileid,
                		description,
						status
				   )
			 VALUES
				   (    
						p_Puname,
						p_Ppassw,
						p_Ppassphrase,
                        p_Pprofid,
                        p_PUserDesc,
                        p_PStatus
					);


set v_nc=FOUND_ROWS(); 

select v_nc as Affected;




END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_postBatchTransact` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` PROCEDURE `ctm_postBatchTransact`()
BEGIN
  DECLARE v_nc int;
  DECLARE nexp int;
  DECLARE nalloc int;
  DECLARE ntrans int;
  DECLARE nbtrans int;
  DECLARE ninc int;
  
  SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

START TRANSACTION;

set nexp=(select count(batchid) from ctm_transact_batch where transacttype='Expense' and processed=0 and transauth=1);

set nalloc=(select count(batchid) from ctm_transact_batch where transacttype='Allocation'  and processed=0 and transauth=1);

set ntrans=(select count(batchid) from ctm_transact_batch where transacttype='Transfer'  and processed=0 and transauth=1);

set nbtrans=(select count(batchid) from ctm_transact_batch where transacttype='BankTrans'  and processed=0 and transauth=1);

set ninc=(select count(batchid) from ctm_transact_batch where transacttype='Income'  and processed=0 and transauth=1);


IF nexp >0 THEN
   insert into ctm_expense(Accountid,TransDate,Amount,Category, Notes,supplier,Owner)
   SELECT transactaccto,transactdate,amount,transactcategory, transactdesc,supplier,transactowner from ctm_transact_batch where transacttype='Expense'  and processed=0 and transauth=1;
END IF;
set v_nc=FOUND_ROWS(); 
IF  v_nc=nexp THEN
	
    update ctm_transact_batch set processed=1 WHERE transacttype='Expense'  and processed=0 and transauth=1;
    END IF;


IF nalloc >0 THEN
   insert into ctm_allocation(AccountFrom,AllocCode,TransDate,Amount,Notes,Owner)
   SELECT transactaccfrom, transactaccto,transactdate,amount,transactdesc, transactowner from ctm_transact_batch where transacttype='Allocation'  and processed=0 and transauth=1;
END IF;
set v_nc=FOUND_ROWS(); 
IF  v_nc=nalloc THEN
	
    update ctm_transact_batch set processed=1 WHERE transacttype='Allocation'  and processed=0 and transauth=1;
    END IF;


IF ntrans >0 THEN
   insert into ctm_transfer(AccountFrom, AccountTo,TransDate,Amount,Notes, Owner)
   SELECT Transactaccfrom, transactaccto,transactdate,amount,transactdesc,transactowner from ctm_transact_batch where transacttype='Transfer'  and processed=0 and transauth=1;
END IF;
set v_nc=FOUND_ROWS(); 
IF  v_nc=ntrans THEN
	
    update ctm_transact_batch set processed=1 WHERE transacttype='Transfer'  and processed=0 and transauth=1;
   END IF;
   
IF nbtrans >0 THEN
   insert into ctm_btransfer(AccountFrom, AccountTo,TransDate,Amount,Notes, Owner)
   SELECT Transactaccfrom, transactaccto,transactdate,amount,transactdesc,transactowner from ctm_transact_batch where transacttype='BankTrans'  and processed=0 and transauth=1;
END IF;
set v_nc=FOUND_ROWS(); 
IF  v_nc=nbtrans THEN
	
    update ctm_transact_batch set processed=1 WHERE transacttype='BankTrans'  and processed=0 and transauth=1;
   END IF;   


IF ninc>0 THEN
   insert into ctm_income(Accountid,TransDate,Amount,Notes,Owner)
   SELECT transactaccto,transactdate,amount,transactdesc,transactowner from ctm_transact_batch where transacttype='Income' and processed=0 and transauth=1;
END IF;
set v_nc=FOUND_ROWS(); 
IF  v_nc=ninc THEN
	
    update ctm_transact_batch set processed=1 WHERE transacttype='income'  and processed=0 and transauth=1;
    END IF;

if nexp>0 or nalloc>0 or ntrans>0 or nbtrans>0 or ninc>0 THEN
    call ctm_proc_reloadfunderbalance_info();
	call ctm_proc_reloadaccountbalance_info();
	call ctm_proc_reloadbudget_info();
END IF;

COMMIT;

   
   END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_postBatchTransact_new` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` PROCEDURE `ctm_postBatchTransact_new`(OUT `pstatus` VARCHAR(150))
BEGIN
 
  DECLARE v_nc int;
  DECLARE nexp int;
  DECLARE nalloc int;
  DECLARE ntrans int;
  DECLARE nbtrans int;
  DECLARE ninc int;
  DECLARE finished INTEGER DEFAULT 0;
  DECLARE trid int;
  DECLARE trtype varchar(25) DEFAULT "";
  DECLARE trto varchar(25) DEFAULT "";
  DECLARE tramt varchar(25) DEFAULT "";
  DECLARE trdate varchar(25) DEFAULT "";
  DECLARe CurBal varchar(25);
  DECLARe trfrom varchar(25);
  DECLARE Budgetident varchar(25);
  DECLARe actname varchar(350);
  DECLARe actno varchar(350);
  DECLARe trdesc text;
  DECLARe trsup varchar(350);
  DECLARE Lstid varchar(25);
  DECLARE idtrfr int;
  DECLARE idtrto int;
  DECLARe CurBal_f varchar(25);
  DECLARe CurFBal varchar(25);
  DECLARE Budgetident_f varchar(25);
  DECLARe actname_f varchar(350);
  DECLARe actno_f varchar(350);
  DECLARE Lstid_f varchar(25);
  DECLARE trassign varchar(50);
    
DECLARE curTrans 
  CURSOR FOR 
            SELECT batchid, transactaccto, transacttype, amount, batchdate, transactdesc, supplier, transactaccfrom FROM ctm_transact_batch where transauth=1 and processed=0;
 
 	    DECLARE CONTINUE HANDLER 
        FOR NOT FOUND SET finished = 1;
  
   OPEN curTrans;
 
    getTrans: LOOP
        FETCH curTrans INTO trid, trto, trtype, tramt, trdate, trdesc, trsup, trfrom;
        IF finished = 1 THEN 
            LEAVE getTrans;
        END IF;
                 
        
        set CurBal=getBalance_new(trto);
        set Budgetident=getBudgetid_new(trto);
                        set Lstid=getLastBalRefId_new(trto);
        
        set CurBal_f=getBalance_new(trfrom);
        set Budgetident_f=getBudgetid_new(trfrom);
                        set Lstid_f=getLastBalRefId_new(trfrom);
        
        set CurFBal=getFunderBalanceByAccId(trto);
        
        
   IF (trtype='Expense' or trtype='*Void*') THEN
		call ctm_proc_withdraw_funds_for_expenses(trto,tramt,Lstid,Budgetident, trid);
         
    END IF;  
   
    
    IF trtype='Allocation' THEN
              call ctm_proc_withdraw_funds_for_allocation(trfrom,tramt,Lstid_f,Budgetident_f, trid, trassign, @outv);
       
      set pstatus=@outv;
            
    END IF;  
  
    IF trtype='Transfer' THEN

call ctm_proc_withdraw_funds_for_transfer(trfrom, trto,tramt,Lstid,Budgetident, trid);
  
    END IF;  
  
    IF trtype='Income' or trtype='***Void***' THEN

call ctm_proc_add_funds_for_income(trto,tramt,Lstid,Budgetident, trid);
 
    END IF;  
  
    IF trtype='BankTrans' THEN

       call ctm_proc_withdraw_funds_for_bank_transfer(trfrom, trto,tramt,Lstid,Budgetident, trid);
                   
    END IF;  
  
    END LOOP getTrans;
    CLOSE curTrans;

 
    

   END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_postBatchTransact_new_for_allocation` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` PROCEDURE `ctm_postBatchTransact_new_for_allocation`()
BEGIN
 
  DECLARE v_nc int;
  DECLARE nexp int;
  DECLARE nalloc int;
  DECLARE ntrans int;
  DECLARE nbtrans int;
  DECLARE ninc int;
  DECLARE finished INTEGER DEFAULT 0;
  DECLARE trid int;
  DECLARE trtype varchar(25) DEFAULT "";
  DECLARE trto varchar(25) DEFAULT "";
  DECLARE tramt varchar(25) DEFAULT "";
  DECLARE trdate varchar(25) DEFAULT "";
  DECLARe CurBal varchar(25);
  DECLARe trfrom varchar(25);
  DECLARE Budgetident varchar(25);
  DECLARe actname varchar(350);
  DECLARe actno varchar(350);
  DECLARe trdesc text;
  DECLARe trsup varchar(350);
  DECLARE Lstid varchar(25);
  DECLARE idtrfr int;
  DECLARE idtrto int;
  DECLARe CurBal_f varchar(25);
  DECLARe CurFBal varchar(25);
  DECLARE Budgetident_f varchar(25);
  DECLARe actname_f varchar(350);
  DECLARe actno_f varchar(350);
  DECLARE Lstid_f varchar(25);
  DECLARE trassign varchar(50);
  DECLARE resbatch int;
  
  
     
DECLARE curTrans 
  CURSOR FOR 
            SELECT batchid, transactaccto, transacttype, amount, batchdate, transactdesc, supplier, transactaccfrom FROM ctm_transact_batch where transauth=1 and processed=0 order by batchid desc limit 1;
 
 	    DECLARE CONTINUE HANDLER 
        FOR NOT FOUND SET finished = 1;
  
   OPEN curTrans;
 
    getTrans: LOOP
        FETCH curTrans INTO trid, trto, trtype, tramt, trdate, trdesc, trsup, trfrom;
        IF finished = 1 THEN 
            LEAVE getTrans;
        END IF;
                 
        
        set CurBal=getBalance_new(trto);
        set Budgetident=getBudgetid_new(trto);
                        set Lstid=getLastBalRefId_new(trto);
        
        set CurBal_f=getBalance_new(trfrom);
        set Budgetident_f=getBudgetid_new(trfrom);
                        set Lstid_f=getLastBalRefId_new(trfrom);
        
        set CurFBal=getFunderBalanceByAccId(trto);
        
        
   IF (trtype='*Void*') THEN
		call ctm_proc_withdraw_funds_for_expenses(trto,tramt,Lstid,Budgetident, trid);
         
    END IF;  
   
  
    END LOOP getTrans;
    CLOSE curTrans;

 
    

   END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_postBatchTransact_new_old01092020` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` PROCEDURE `ctm_postBatchTransact_new_old01092020`()
BEGIN
 
  DECLARE v_nc int;
  DECLARE nexp int;
  DECLARE nalloc int;
  DECLARE ntrans int;
  DECLARE nbtrans int;
  DECLARE ninc int;
  DECLARE finished INTEGER DEFAULT 0;
  DECLARE trid int;
  DECLARE trtype varchar(25) DEFAULT "";
  DECLARE trto varchar(25) DEFAULT "";
  DECLARE tramt varchar(25) DEFAULT "";
  DECLARE trdate varchar(25) DEFAULT "";
  DECLARe CurBal varchar(25);
  DECLARe trfrom varchar(25);
  DECLARE Budgetident varchar(25);
  DECLARe actname varchar(350);
  DECLARe actno varchar(350);
  DECLARe trdesc text;
  DECLARe trsup varchar(350);
  DECLARE Lstid varchar(25);
  DECLARE idtrfr int;
  DECLARE idtrto int;
  DECLARe CurBal_f varchar(25);
  DECLARe CurFBal varchar(25);
  DECLARE Budgetident_f varchar(25);
  DECLARe actname_f varchar(350);
  DECLARe actno_f varchar(350);
  DECLARE Lstid_f varchar(25);
  
DECLARE curTrans 
  CURSOR FOR 
            SELECT batchid, transactaccto, transacttype, amount, batchdate, transactdesc, supplier, transactaccfrom FROM ctm_transact_batch where transauth=1 and processed=0;
 
 	    DECLARE CONTINUE HANDLER 
        FOR NOT FOUND SET finished = 1;
  
   OPEN curTrans;
 
    getTrans: LOOP
        FETCH curTrans INTO trid, trto, trtype, tramt, trdate, trdesc, trsup, trfrom;
        IF finished = 1 THEN 
            LEAVE getTrans;
        END IF;
                 
        
         set CurBal=getBalance_new(trto);
        set Budgetident=getBudgetid_new(trto);
        set actname=getAccountName_new(trto);
        set actno=getAccountNo_new(trto);
        set Lstid=getLastBalRefId_new(trto);
        
        set CurBal_f=getBalance_new(trfrom);
        set Budgetident_f=getBudgetid_new(trfrom);
        set actname_f=getAccountName_new(trfrom);
        set actno_f=getAccountNo_new(trfrom);
        set Lstid_f=getLastBalRefId_new(trfrom);
        
        set CurFBal=getFunderBalanceByAccId(trto);
        
        
        
        IF trtype='Expense' THEN
        
        
        
 		call ctm_proc_withdraw_funds_for_expenses(trto,tramt,Lstid,Budgetident, trid);
            
            
             
             
   
                  
                        

                      

                    
                      
                                        
         
         
    END IF;  
    
   
  
    IF trtype='Allocation' THEN
    
   
     
       call ctm_proc_withdraw_funds_for_allocation(trfrom,tramt,Lstid,Budgetident_f, trid);
                 
                   
                     
              
                                   

                    

                                     
         
          
               
          
          
    END IF;  
  
    IF trtype='Transfer' THEN

                  START TRANSACTION;  

                            insert into ctm_transfer(AccountFrom, AccountTo,TransDate,Amount,Notes, Owner)
   SELECT Transactaccfrom, transactaccto,transactdate,amount,transactdesc,transactowner from ctm_transact_batch where transacttype='Transfer'  and processed=0 and transauth=1 and batchid=trid;

                        INSERT INTO `ctm_transaction_history` (`transactdate`, `transactbatchid`, `transactbudgetid`,`transactacctid`,`transactacctno`, `transactaccount`, `transacttype`, `transactdescription`, `transactsupplier`, `transactprevbalance`, `transactamount`, `transactnewbalance`, `transactprevrefid`) VALUES (trdate, trid, Budgetident ,trfrom, actno_f ,actname_f, 'Outbound Transfer', trdesc, trsup, CurBal_f, -tramt,  (CurBal_f-tramt), Lstid_f);
 
 set idtrfr=LAST_INSERT_ID();
                        
                        INSERT INTO `ctm_transaction_history` (`transactdate`, `transactbatchid`, `transactbudgetid`,`transactacctid`,`transactacctno`, `transactaccount`, `transacttype`, `transactdescription`, `transactsupplier`, `transactprevbalance`, `transactamount`, `transactnewbalance`, `transactprevrefid`) VALUES (trdate, trid, Budgetident ,trto, actno ,actname, 'Inbound Transfer', trdesc, trsup, CurBal, tramt,  (CurBal+tramt), Lstid);

set idtrto=LAST_INSERT_ID();
    
             update ctm_account_new set 
                        Balance=Balance-tramt,
                        LastBalRefID=idtrfr
                     where accountid=trfrom;

                     update ctm_account_new set 
                        Balance=Balance+tramt,
                        LastBalRefID=idtrto
                     where accountid=trto;

                      update ctm_budget_new set available=getBudgetBalance_new(Budgetident)
                      where budgetid=Budgetident;

                    COMMIT;
          set v_nc=FOUND_ROWS(); 
                IF  v_nc>0 THEN
                    update ctm_transact_batch set processed=1 WHERE transacttype='Transfer'  and processed=0 and transauth=1 and batchid=trid;
                END IF;

    END IF;  
  
      IF trtype='Income' THEN

                  START TRANSACTION;  

                            insert into ctm_income(Accountid,TransDate,Amount, Notes,Owner)
                       SELECT transactaccto,transactdate,amount, transactdesc,transactowner from ctm_transact_batch where transacttype='Income' and processed=0 and transauth=1 and batchid=trid;

                        INSERT INTO `ctm_transaction_history` (`transactdate`, `transactbatchid`, `transactbudgetid`,`transactacctid`,`transactacctno`, `transactaccount`, `transacttype`, `transactdescription`, `transactsupplier`, `transactprevbalance`, `transactamount`, `transactnewbalance`, `transactprevrefid`) VALUES (trdate, trid, Budgetident ,trto, actno ,actname, 'Income', trdesc, trsup, CurFBal, tramt,  (CurFBal+tramt), Lstid);

                     update ctm_funder_new set 
                        FinalBalance=FinalBalance+tramt,
                        LastBalRefID=LAST_INSERT_ID()
                     where accountno=getFunderAccountNoFromAccID(trto);
				  
                  set v_nc=FOUND_ROWS(); 
                  
                  
                  
                  call  ctm_proc_rebalance_accountsource(trim(getFunderAccountNoFromAccID(trto)), tramt,LAST_INSERT_ID());

call ctm_proc_rebalance_budget_ByAccSource(trim(getFunderAccountNoFromAccID(trto)));
                  

                     

                    COMMIT;
                          IF  v_nc>0 THEN
                    update ctm_transact_batch set processed=1 WHERE transacttype='Income'  and processed=0 and transauth=1 and batchid=trid;
                END IF;

    END IF;  
  
      IF trtype='BankTrans' THEN

                  START TRANSACTION;  

                        insert into ctm_btransfer(AccountFrom, AccountTo,TransDate,Amount,Notes, Owner)
   SELECT Transactaccfrom, transactaccto,transactdate,amount,transactdesc,transactowner from ctm_transact_batch where transacttype='BankTrans'  and processed=0 and transauth=1 and batchid=trid;

                        INSERT INTO `ctm_transaction_history` (`transactdate`, `transactbatchid`, `transactbudgetid`,`transactacctid`,`transactacctno`, `transactaccount`, `transacttype`, `transactdescription`, `transactsupplier`, `transactprevbalance`, `transactamount`, `transactnewbalance`, `transactprevrefid`) VALUES (trdate, trid, Budgetident ,trto, actno ,actname, 'BankTrans', trdesc, trsup, CurBal, tramt,  (CurBal-tramt), Lstid);


                   update ctm_account_new set 
                        Balance=Balance-tramt,
                        LastBalRefID=idtrfr
                     where accountid=trfrom;

                     update ctm_account_new set 
                        Balance=Balance+tramt,
                        LastBalRefID=idtrto
                     where accountid=trto;

                      update ctm_budget_new set available=getBudgetBalance_new(Budgetident)
                      where budgetid=Budgetident;

                    COMMIT;
          set v_nc=FOUND_ROWS(); 
                IF  v_nc>0 THEN
                    update ctm_transact_batch set processed=1 WHERE transacttype='BankTrans'  and processed=0 and transauth=1 and batchid=trid;
                END IF;

    END IF;  
  
    END LOOP getTrans;
    CLOSE curTrans;

 
    

   END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_proc_add_funds_for_income` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`setienne`@`localhost` PROCEDURE `ctm_proc_add_funds_for_income`(IN `p_accid` VARCHAR(25), IN `p_amt` VARCHAR(25), IN `p_ref` VARCHAR(25), IN `p_budid` VARCHAR(25), IN `p_batchid` VARCHAR(25))
BEGIN
DECLARE AccScr varchar(25);
DECLARE v_nc int;
DECLARE PrevBal varchar(25);
                
                  START TRANSACTION;  

set PrevBal=getBalance_new(p_accid);

                            insert into ctm_income(Accountid,TransDate,Amount, Notes,Owner,exp_options)
                       SELECT transactaccto,transactdate,amount, transactdesc,transactowner, exp_options from ctm_transact_batch where (transacttype='Income' or transacttype='***Void***') and processed=0 and transauth=1 and batchid=p_batchid;

set v_nc=FOUND_ROWS(); 
 
 INSERT INTO `ctm_transaction_history` (`transactdate`, `transactbatchid`, `transactbudgetid`,`transactacctid`,`transactacctno`, `transactaccount`, `transacttype`, `transactdescription`, `transactsupplier`, `transactprevbalance`, `transactamount`, `transactnewbalance`, `transactprevrefid`) 
     select batchdate, batchid, p_budid, p_accid, getAccountNo_new(p_accid), getAccountName_new(p_accid),transacttype, transactdesc, supplier, PrevBal, p_amt, (PrevBal+p_amt), p_ref from ctm_transact_batch where batchid=p_batchid;
     

                     update ctm_funder_new set 
                        FinalBalance=FinalBalance+p_amt,
                        LastBalRefID=LAST_INSERT_ID()
                     where accountid=p_accid;
				  
                  
                
                  
set AccScr=(select AccountNo from ctm_funder_new where accountid= p_accid);                   
                  
                  call  ctm_proc_rebalance_accountsource(AccScr, p_amt,LAST_INSERT_ID());
                                                         
call ctm_proc_rebalance_budget_ByAccSource(AccScr);


                    
                    COMMIT;
          
               IF  v_nc>0 THEN
                    update ctm_transact_batch set processed=1 WHERE (transacttype='Income' or transacttype='***Void***')  and processed=0 and transauth=1 and batchid=p_batchid;
                END IF;
               
                
                
                
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_proc_approvebudget` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` PROCEDURE `ctm_proc_approvebudget`(IN `p_budid` VARCHAR(25), IN `p_PUser` VARCHAR(25))
    NO SQL
BEGIN
	
    START TRANSACTION;
     UPDATE ctm_budget_new SET
     		Approved=1,
            ApprovedBy=p_PUser,
            ApprovalDate=CURRENT_TIMESTAMP()
     WHERE Budgetid=p_budid;
     
      UPDATE tmp_Budget_Info_Result SET
     		Approved=1,
            ApprovedBy=p_PUser,
            ApprovalDate=CURRENT_TIMESTAMP()
     WHERE Budgetid=p_budid;
     
     INSERT INTO `ctm_mail_message` (`fromsender`, `tosender`, `subject`, `message`, `datesent`, `mailstatus`) VALUES ('noreply@serpaone.com', getFollowers(p_budid),'Budget is approved',
concat('Your submitted Budget ',GetBudgetTitleFromBudgetid(p_budid), ' has been approved by the budget administrator.') ,CURRENT_TIMESTAMP(), '0');
     
COMMIT;


ALTER EVENT ctm_evt_reload_test
    ON SCHEDULE AT DATE_ADD(CURRENT_TIMESTAMP(), INTERVAL 5 SECOND)
    ENABLE;
 
     
    

    
    

    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_proc_approvebudget_new` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` PROCEDURE `ctm_proc_approvebudget_new`(IN `p_budid` VARCHAR(25), IN `p_PUser` VARCHAR(25))
    NO SQL
BEGIN
	
    START TRANSACTION;
    
     UPDATE ctm_budget_new SET
     		Approved=1,
            ApprovedBy=p_PUser,
            ApprovalDate=CURRENT_TIMESTAMP()
     WHERE Budgetid=p_budid;
     
     INSERT INTO `ctm_mail_message` (`fromsender`, `tosender`, `subject`, `message`, `datesent`, `mailstatus`) VALUES ('noreply@serpaone.com', getFollowers(p_budid),'Budget is approved',
concat('Your submitted Budget ',GetBudgetTitleFromBudgetid(p_budid), ' has been approved by the budget administrator.') ,CURRENT_TIMESTAMP(), '0');
     
COMMIT;


    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_proc_clearmsgstatus` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` PROCEDURE `ctm_proc_clearmsgstatus`()
BEGIN
			
	DECLARE v_nc int;
	DECLARE v_nc1 int;
	
	
    	
    		update ctm_mail_message set mailstatus='1'; 

set v_nc=FOUND_ROWS(); 

select v_nc as Affected;




END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_proc_clear_mobile_session` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`setienne`@`localhost` PROCEDURE `ctm_proc_clear_mobile_session`(IN `p_PgenSession` VARCHAR(250))
    NO SQL
BEGIN

DECLARE res int;
DECLARE v_nc int;

DECLARE tk varchar(250);

set tk =(SELECT m_token from _tmp_mobile_session WHERE gen_session_id=p_PgenSession limit 1);

DELETE FROM _tmp_mobile_session WHERE gen_session_id=p_PgenSession;
UPDATE ctm_user set mtoken='' WHERE mtoken=tk;


SET v_nc=ROW_COUNT();

SELECT v_nc as affected;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_proc_create_user_family_plan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ctm_proc_create_user_family_plan`()
    NO SQL
BEGIN

DECLARE i INT;
DECLARE MaxUser INT;
DECLARE UserGap INT;
DECLARE CurUserCnt INT;

SET i=1;

SET MaxUser=3;

   SET CurUserCnt=(select count(userid) from ctm_user where username like 'budgetuser%');

  SET UserGap=MaxUser-CurUserCnt;
  SET i=CurUserCnt+1;
  
  WHILE i <= MaxUser DO
  
        INSERT INTO `ctm_user` (`profileid`, `username`, `password`, `passphrase`, `description`, `status`) VALUES 
('1', concat('budgetuser',i),'Password@', '', 'budgetuser', 'Enabled');
       
       SET  i = i + 1;
  
 END WHILE;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_proc_create_user_individual_plan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ctm_proc_create_user_individual_plan`()
BEGIN

DECLARE i INT;
DECLARE MaxUser INT;
DECLARE UserGap INT;
DECLARE CurUserCnt INT;

SET i=1;

SET MaxUser=1;

   SET CurUserCnt=(select count(userid) from ctm_user where username like 'budgetuser%');

  SET UserGap=MaxUser-CurUserCnt;
  SET i=CurUserCnt+1;
  
  WHILE i <= MaxUser DO
  
        INSERT INTO `ctm_user` (`profileid`, `username`, `password`, `passphrase`, `description`, `status`) VALUES 
('1', concat('budgetuser',i),'Password@', '', 'budgetuser', 'Enabled');
       
       SET  i = i + 1;
  
 END WHILE;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_proc_create_user_smallgroup_plan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ctm_proc_create_user_smallgroup_plan`()
BEGIN

DECLARE i INT;
DECLARE MaxUser INT;
DECLARE UserGap INT;
DECLARE CurUserCnt INT;

SET i=1;

SET MaxUser=9;

   SET CurUserCnt=(select count(userid) from ctm_user where username like 'budgetuser%');

  SET UserGap=MaxUser-CurUserCnt;
  SET i=CurUserCnt+1;
  
  WHILE i <= MaxUser DO
  
        INSERT INTO `ctm_user` (`profileid`, `username`, `password`, `passphrase`, `description`, `status`) VALUES 
('1', concat('budgetuser',i),'Password@', '', 'budgetuser', 'Enabled');
       
       SET  i = i + 1;
  
 END WHILE;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_proc_display_downloaded_transact_from_bank_db` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`setienne`@`localhost` PROCEDURE `ctm_proc_display_downloaded_transact_from_bank_db`(IN `profid` VARCHAR(25))
    NO SQL
BEGIN

DECLARE autod INT;

SEt autod=(SELECT auto_download from ctm_downloaded_transaction_settings order by settings_id desc limit 1);

START TRANSACTION;

IF autod=1 THEN
	BEGIN
        INSERT INTO `ctm_bank_transact_validate`(`bank_transact_id`, `transacttype`, `transactdate`, `amount`, `transactdesc`, `transactowner`, `transactassign`, `budgetid`,`supplier`, `validation_status`,`last_updated`) 
        SELECT dt.bank_transact_id,
        CASE
        when dt.transact_type in ('in store','online') then 'Expense'
        when dt.transact_type='other' and dt.transact_amount<0 and dt.transact_desc not like '%XFER%' then 'Income'
        when dt.transact_type='other' and dt.transact_desc like '%XFER%' then 'Transfer'
        when dt.transact_type='other' and dt.transact_amount>=0 and dt.transact_desc not like '%XFER%' then 'Expense'
        ELSE 'Undetermined'

        END,
        dt.transact_date,
        CASE 
        when dt.transact_type='other' and dt.transact_amount<0 and dt.transact_desc not like '%XFER%' THEN -dt.transact_amount
        ELSE dt.transact_amount
        END,
        dt.transact_desc,'budgetadmin','budgetadmin', ba.budgetid, dt.transact_merchant,0,
        dt.last_updated
        FROM
        bobbylog_bank_transaction_db.downloaded_transaction dt
        INNER JOIN bobbylog_bank_transaction_db.downloaded_bank_account ba
        ON dt.bank_account_id=ba.bank_account_id
       WHERE dt.transact_status='U' and dt.transact_profile=profid;


        UPDATE bobbylog_bank_transaction_db.downloaded_transaction SET
        transact_status='P'
        WHERE transact_status='U' and transact_profile=profid;

       END; 
END IF;

COMMIT;
SELECT *, getBudgetTitleFromBudgetId(budgetid) as budgettitle, bobbylog_bank_transaction_db.isPosted(bank_transact_id) as posted,
bobbylog_bank_transaction_db.getPostedAmount(bank_transact_id) as post_amount,
DATEDIFF(CURRENT_TIMESTAMP, last_updated) as pduration from ctm_bank_transact_validate order by date_format(str_to_date(transactdate, '%m/%d/%Y'), '%Y-%m-%d') desc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_proc_display_month_statement` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` PROCEDURE `ctm_proc_display_month_statement`(IN `p_PMonth` VARCHAR(25))
BEGIN

DECLARE MoVal INT;

IF p_PMonth='jan' THEN set Moval=1;
ELSEIF p_PMonth='feb' THEN set Moval=2;
ELSEIF p_PMonth='mar' THEN set Moval=3;
ELSEIF p_PMonth='apr' THEN set Moval=4;
ELSEIF p_PMonth='may' THEN set Moval=5;
ELSEIF p_PMonth='june' THEN set Moval=6;
ELSEIF p_PMonth='july' THEN set Moval=7;
ELSEIF p_PMonth='aug' THEN set Moval=8;
ELSEIF p_PMonth='sept' THEN set Moval=9;
ELSEIF p_PMonth='oct' THEN set Moval=10;
ELSEIF p_PMonth='nov' THEN set Moval=11;
ELSEIF p_PMonth='dec' THEN set Moval=12;
     
END IF;      

SELECT TransDate as 'Transaction_Date', Notes as Description, case when TransType='Expense' or TransType='*Void*' ThEN Amount ELSE NULL END as Withdrawals, Case when TransType='Income' or TransType='***Void***' Then Amount ELSE NULL END as Deposits
from ctm_account_activities_view WHERE year(TransDate)=(SELECT report_year from ctm_dashboard_settings limit 1) and TransType <>'Transfer' and MONTH(TransDate)=Moval
 order by TransDate DESC;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_proc_drop_all_bank_transact` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` PROCEDURE `ctm_proc_drop_all_bank_transact`()
    NO SQL
BEGIN

DECLARE v_nc int;
DECLARE v_nc1 int;

DELETE FROM ctm_bank_transact_validate;

set v_nc=FOUND_ROWS(); 
select v_nc as Affected;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_proc_drop_bank_transact` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` PROCEDURE `ctm_proc_drop_bank_transact`(IN `p_valid` INT(25))
    NO SQL
BEGIN

DECLARE v_nc int;
DECLARE v_nc1 int;
   
DELETE FROM ctm_bank_transact_validate
 WHERE validation_id=p_valid;

set v_nc=FOUND_ROWS(); 
select v_nc as Affected;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_proc_flag_budget_for_trash` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ctm_proc_flag_budget_for_trash`(IN `p_budid` VARCHAR(25))
BEGIN

update ctm_budget set flagged=1 where budgetid=p_budid;
update tmp_Budget_Info_Result set flagged=1 where budgetid=p_budid;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_proc_flag_budget_for_trash_new` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ctm_proc_flag_budget_for_trash_new`(IN `p_budid` VARCHAR(25))
BEGIN

update ctm_budget_new set flagged=1 where budgetid=p_budid;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_proc_generate_monthly_statement_snapshot` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` PROCEDURE `ctm_proc_generate_monthly_statement_snapshot`(IN `p_PMonth` VARCHAR(25))
BEGIN

DECLARE MoVal INT;

IF p_PMonth='jan' THEN set Moval=1;
ELSEIF p_PMonth='feb' THEN set Moval=2;
ELSEIF p_PMonth='mar' THEN set Moval=3;
ELSEIF p_PMonth='apr' THEN set Moval=4;
ELSEIF p_PMonth='may' THEN set Moval=5;
ELSEIF p_PMonth='june' THEN set Moval=6;
ELSEIF p_PMonth='july' THEN set Moval=7;
ELSEIF p_PMonth='aug' THEN set Moval=8;
ELSEIF p_PMonth='sept' THEN set Moval=9;
ELSEIF p_PMonth='oct' THEN set Moval=10;
ELSEIF p_PMonth='nov' THEN set Moval=11;
ELSEIF p_PMonth='dec' THEN set Moval=12;
     
END IF;      

        
create table ctm_statement_snapshot as
SELECT TransDate as 'Transaction_Date', Notes as Description, case when TransType='Expense' or TransType='*Void*' ThEN Amount ELSE NULL END as Withdrawals, Case when TransType='Income' or TransType='***Void***' Then Amount ELSE NULL END as Deposits
from ctm_account_activities_view WHERE year(TransDate)=(SELECT report_year from ctm_dashboard_settings limit 1) and TransType <>'Transfer' and MONTH(TransDate)=Moval
 order by TransDate DESC;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_proc_get_downloaded_transact_from_bank_db` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`setienne`@`localhost` PROCEDURE `ctm_proc_get_downloaded_transact_from_bank_db`(IN `profid` VARCHAR(25))
    NO SQL
BEGIN

DECLARE v_nc int;
DECLARE autod int;

SEt autod=(SELECT auto_download from ctm_downloaded_transaction_settings order by settings_id desc limit 1);

    
START TRANSACTION;
IF autod=1 THEN
	BEGIN
        INSERT INTO `ctm_bank_transact_validate`(`bank_transact_id`, `transacttype`, `transactdate`, `amount`, `transactdesc`, `transactowner`, `transactassign`, `budgetid`,`supplier`, `validation_status`,`last_updated`) 
        SELECT dt.bank_transact_id,
        CASE
        when dt.transact_type in ('in store','online') then 'Expense'
        when dt.transact_type='other' and dt.transact_amount<0 and dt.transact_desc not like '%XFER%' then 'Income'
        when dt.transact_type='other' and dt.transact_desc like '%XFER%' then 'Transfer'
        when dt.transact_type='other' and dt.transact_amount>=0 and dt.transact_desc not like '%XFER%' then 'Expense'
        ELSE 'Undetermined'

        END,
        dt.transact_date,
        CASE 
        when dt.transact_type='other' and dt.transact_amount<0 and dt.transact_desc not like '%XFER%' THEN -dt.transact_amount
        ELSE dt.transact_amount
        END,
        dt.transact_desc,'budgetadmin','budgetadmin', ba.budgetid, dt.transact_merchant,0,
        dt.last_updated
        FROM
        bobbylog_bank_transaction_db.downloaded_transaction dt
        INNER JOIN bobbylog_bank_transaction_db.downloaded_bank_account ba
        ON dt.bank_account_id=ba.bank_account_id
        WHERE dt.transact_status='U' and dt.transact_profile=profid;


        UPDATE bobbylog_bank_transaction_db.downloaded_transaction SET
        transact_status='P'
        WHERE transact_status='U' and transact_profile=profid;

	END;
END IF;

COMMIT;

set v_nc=FOUND_ROWS(); 
select v_nc as Affected;



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_proc_global_reset` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` PROCEDURE `ctm_proc_global_reset`()
    NO SQL
BEGIN
	
delete from ctm_income;
delete from ctm_expense;
delete from ctm_transfer;
delete from ctm_btransfer;
delete from ctm_allocation;
delete from ctm_transaction_history;
delete from ctm_transact_batch;

UPDATE ctm_funder_new SET
finalbalance=initialamount;

call ctm_proc_rebalance_all_account_from_funder();
call ctm_proc_rebalance_all_budget();

    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_proc_initiateProfile` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ctm_proc_initiateProfile`(IN `p_init` VARCHAR(50))
    NO SQL
BEGIN

DECLARE v_nc int;
	DECLARE v_nc1 int;
	DECLARE l_prof int;
  START TRANSACTION; 
  
insert into ctm_profile(address,city, state, zip, description, email, firstname, lastname, middleinitial, phone, profilename, profile_initial, custskey, susckey)
select 
address, 
city, 
state,
zip,
description, 
email, 
firstname, 
lastname, 
middleinitial, 
phone, 
profilename, 
profile_initial,
custskey,
susckey
from bobbylog_budget_customerdb.customer_profile where profile_initial=p_init;

set l_prof=LAST_INSERT_ID();

insert into ctm_user(username, password, description,status,profileid,uemail)
select 
'budgetadmin', 
submit_pwd,
'Budget Administrator',
'Enabled',
(select profileid from ctm_profile where profile_initial=p_init limit 1),
submit_email
from bobbylog_budget_customerdb.ctm_submission
where profile_initial=p_init limit 1;

insert into ctm_user(username, password, description,status,profileid,uemail)
select 
'budgetuser', 
submit_pwd,
'Budget User',
'Enabled',
(select profileid from ctm_profile where profile_initial=p_init limit 1),
''
from bobbylog_budget_customerdb.ctm_submission
where profile_initial=p_init;

INSERT INTO `ctm_fyear` (`profileid`, `yaccronym`, `fyear`, `startdate`, `enddate`, `status`, `note`) VALUES (
    (select profileid from ctm_profile where profile_initial=p_init limit 1),
    '',
    YEAR(CURRENT_DATE()), 
    CONCAT('01','01',YEAR(CURRENT_DATE())), 
    CONCAT('12','31',YEAR(CURRENT_DATE())), 
    'Active', '');

INSERT INTO `ctm_group` (`groupid`, `groupname`, `description`, `profileid`) VALUES
(1, 'budgetadmins', 'Power Users',(select profileid from ctm_profile where profile_initial=p_init limit 1)),
(2, 'budgetusers', 'Budget Users',  (select profileid from ctm_profile where profile_initial=p_init limit 1));

INSERT INTO `ctm_user_group` (`userid`, `groupid`) VALUES
((select userid from ctm_user where username='budgetadmin' limit 1) ,1);

INSERT INTO `ctm_user_group` (`userid`, `groupid`) VALUES
((select userid from ctm_user where username='budgetuser' limit 1),2);



INSERT INTO `ctm_suscription`(`userid`, `planid`, `startdate`, `enddate`, `status`, `psbridgeid`, `profileid`, `susctype`, `suscskey`) 
SELECT 'budgetadmin', submit_planid,CURRENT_TIMESTAMP,
CASE 
WHEN submit_planid='Plan30' THEN ''
-- CURRENT_TIMESTAMP+INTERVAL 30 DAY 
WHEN submit_planid='PlanMonthly' THEN ''
WHEN submit_planid='PlanYearly' THEN ''
END
,'Active',1,l_prof,
CASE 
WHEN submit_planid='Plan30' THEN '30-Day Demo'
WHEN submit_planid='PlanMonthly' THEN 'Monthly'
WHEN submit_planid='PlanYearly' THEN 'Yearly'
END
,
submit_simplespc from bobbylog_budget_customerdb.ctm_submission where profile_initial=p_init limit 1;
COMMIT;

set v_nc=FOUND_ROWS(); 
select v_nc as Affected;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_proc_initiate_mobile_session` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`setienne`@`localhost` PROCEDURE `ctm_proc_initiate_mobile_session`(IN `p_PUname` VARCHAR(50), IN `p_PToken` VARCHAR(250), IN `p_Pprof` VARCHAR(50), IN `p_PgenSession` VARCHAR(250), IN `p_Pstatus` VARCHAR(25))
    NO SQL
BEGIN

DECLARE res int;
DECLARE v_nc int;



insert into _tmp_mobile_session (m_username, m_token, m_profile, gen_session_id, m_status)
VALUES (p_PUname, p_PToken,p_Pprof,p_PgenSession,p_Pstatus);



SET v_nc=ROW_COUNT();

SELECT v_nc as affected;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_proc_insert_funderassoc` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` PROCEDURE `ctm_proc_insert_funderassoc`(IN `p_Paccid` VARCHAR(250), IN `p_Ptargetfunder` INT(11), IN `p_Pastatus` VARCHAR(25), IN `p_Pprof` VARCHAR(25))
BEGIN
			
	DECLARE v_nc int;
	DECLARE v_nc1 int;
       
    START TRANSACTION;
    
    		INSERT INTO `ctm_bank_funder_association` (`association_date`, `bank_account_id`, `bank_accountname`, `bank_accountnumber`, `target_funder_id`, `target_funder_name`, `target_funder_initial`, `association_status`)  VALUES (CURRENT_DATE, 
                    p_Paccid, 
                    (select accountnickname from bobbylog_bank_transaction_db.downloaded_bank_account where bank_account_id =p_Paccid limit 1), 
                    (select accountlast4num from bobbylog_bank_transaction_db.downloaded_bank_account where bank_account_id =p_Paccid limit 1), 
                    p_Ptargetfunder, 
                    (select AccountName from ctm_funder_new where Accountid=p_Ptargetfunder limit 1),
                    (select AccountNo from ctm_funder_new where Accountid=p_Ptargetfunder limit 1),
                    p_Pastatus);


Update bobbylog_bank_transaction_db.downloaded_bank_account SET
       relatedfunder= (select AccountNo from ctm_funder_new where Accountid=p_Ptargetfunder limit 1),
       profile_initial=p_Pprof
       where bank_account_id=p_Paccid;

COMMIT;

set v_nc=FOUND_ROWS(); 
select v_nc as Affected,  LAST_INSERT_ID() as idrec;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_proc_perform_recurring_transfer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`setienne`@`localhost` PROCEDURE `ctm_proc_perform_recurring_transfer`()
BEGIN
		
	DECLARE v_nc int;
	DECLARE v_nc1 int;
	DECLARE rid int;
    DECLARE rtdate varchar(25);
    DECLARE rstat varchar(25);
    DECLARE finished INTEGER DEFAULT 0;
    DECLARE rfreq varchar(25);
    DECLARE edate varchar(25);

    DECLARE curTrans 
  CURSOR FOR 
            SELECT recurid, startdate, enddate, status, frequency FROM ctm_recurring_transfer where status='Active';
 
 	    DECLARE CONTINUE HANDLER 
        FOR NOT FOUND SET finished = 1;
  
   OPEN curTrans;
 
    getTrans: LOOP
        FETCH curTrans INTO rid, rtdate, edate,  rstat, rfreq ;
        IF finished = 1 THEN 
            LEAVE getTrans;
        END IF;
     
     
       IF rfreq ='Once' THEN
              IF (month(STR_TO_DATE(rtdate,'%Y-%m-%d')) = MONTH(CURRENT_DATE)) AND (DAY(STR_TO_DATE(rtdate,'%Y-%m-%d'))=DAY(CURRENT_DATE)) AND (YEAR(STR_TO_DATE(rtdate,'%Y-%m-%d'))=YEAR(CURRENT_DATE))   THEN

            INSERT INTO `ctm_transact_batch` (`ctyearid`, `batchdate`, `transacttype`, `transactdate`, `amount`, `transactaccfrom`, `transactaccto`, `transactdesc`, `transactowner`, `processed`, `transauth`) 
        Select (SELECT ctyearid FROM `ctm_fyear` order by ctyearid DESC LIMIT 1), CURRENT_TIMESTAMP,'Transfer',CURRENT_TIMESTAMP, amount, fromacc , toacc , comments ,'budgetadmin','0','0' from ctm_recurring_transfer where recurid=rid;  

   END IF;
   
    ELSEIF rfreq ='Daily' THEN
   
   IF ((month(CURRENT_DATE) <= MONTH(STR_TO_DATE(edate,'%Y-%m-%d'))) AND (DAY(CURRENT_DATE)<=DAY(STR_TO_DATE(edate,'%Y-%m-%d'))) AND (YEAR(CURRENT_DATE)<=YEAR(STR_TO_DATE(edate,'%Y-%m-%d'))))   THEN

            INSERT INTO `ctm_transact_batch` (`ctyearid`, `batchdate`, `transacttype`, `transactdate`, `amount`, `transactaccfrom`, `transactaccto`, `transactdesc`, `transactowner`, `processed`, `transauth`) 
        Select (SELECT ctyearid FROM `ctm_fyear` order by ctyearid DESC LIMIT 1), CURRENT_TIMESTAMP,'Transfer',CURRENT_TIMESTAMP, amount, fromacc , toacc , comments ,'budgetadmin','0','0' from ctm_recurring_transfer where recurid=rid;  

   END IF;
   
     ELSEIF rfreq ='Bi-Weekly' THEN
   
    IF  ((month(CURRENT_DATE) <= MONTH(STR_TO_DATE(edate,'%Y-%m-%d'))) AND (DAY(CURRENT_DATE)<=DAY(STR_TO_DATE(edate,'%Y-%m-%d'))) AND (YEAR(CURRENT_DATE)<=YEAR(STR_TO_DATE(edate,'%Y-%m-%d')))) and (month(STR_TO_DATE(rtdate,'%Y-%m-%d')) = MONTH(CURRENT_DATE)) AND (DAY(STR_TO_DATE(rtdate,'%Y-%m-%d'))=DAY(CURRENT_DATE)) AND (YEAR(STR_TO_DATE(rtdate,'%Y-%m-%d'))=YEAR(CURRENT_DATE))   THEN

            INSERT INTO `ctm_transact_batch` (`ctyearid`, `batchdate`, `transacttype`, `transactdate`, `amount`, `transactaccfrom`, `transactaccto`, `transactdesc`, `transactowner`, `processed`, `transauth`) 
        Select (SELECT ctyearid FROM `ctm_fyear` order by ctyearid DESC LIMIT 1), CURRENT_TIMESTAMP,'Transfer',CURRENT_TIMESTAMP, amount, fromacc , toacc , comments ,'budgetadmin','0','0' from ctm_recurring_transfer where recurid=rid;  
              update ctm_recurring_transfer set startdate=DATE_FORMAT(DATE_ADD(STR_TO_DATE(startdate, '%Y-%m-%d'), INTERVAL 2 WEEK),'%Y-%m-%d') where recurid=rid;
            
   END IF;
 
     
      ELSEIF rfreq ='Monthly' THEN
              IF  ((month(CURRENT_DATE) <= MONTH(STR_TO_DATE(edate,'%Y-%m-%d'))) AND (DAY(CURRENT_DATE)<=DAY(STR_TO_DATE(edate,'%Y-%m-%d'))) AND (YEAR(CURRENT_DATE)<=YEAR(STR_TO_DATE(edate,'%Y-%m-%d')))) and (month(STR_TO_DATE(rtdate,'%Y-%m-%d')) = MONTH(CURRENT_DATE)) AND (DAY(STR_TO_DATE(rtdate,'%Y-%m-%d'))=DAY(CURRENT_DATE)) AND (YEAR(STR_TO_DATE(rtdate,'%Y-%m-%d'))=YEAR(CURRENT_DATE))   THEN

            INSERT INTO `ctm_transact_batch` (`ctyearid`, `batchdate`, `transacttype`, `transactdate`, `amount`, `transactaccfrom`, `transactaccto`, `transactdesc`, `transactowner`, `processed`, `transauth`) 
        Select (SELECT ctyearid FROM `ctm_fyear` order by ctyearid DESC LIMIT 1), CURRENT_TIMESTAMP,'Transfer',CURRENT_TIMESTAMP, amount, fromacc , toacc , comments ,'budgetadmin','0','0' from ctm_recurring_transfer where recurid=rid;  
          update ctm_recurring_transfer set startdate=DATE_FORMAT(DATE_ADD(STR_TO_DATE(startdate, '%Y-%m-%d'), INTERVAL 1 MONTH),'%Y-%m-%d') where recurid=rid;
   
   END IF;
   
  ELSEIF rfreq ='Yearly' THEN
    
    IF   ((month(CURRENT_DATE) <= MONTH(STR_TO_DATE(edate,'%Y-%m-%d'))) AND (DAY(CURRENT_DATE)<=DAY(STR_TO_DATE(edate,'%Y-%m-%d'))) AND (YEAR(CURRENT_DATE)<=YEAR(STR_TO_DATE(edate,'%Y-%m-%d')))) and (month(STR_TO_DATE(rtdate,'%Y-%m-%d')) = MONTH(CURRENT_DATE)) AND (DAY(STR_TO_DATE(rtdate,'%Y-%m-%d'))=DAY(CURRENT_DATE)) AND (YEAR(STR_TO_DATE(rtdate,'%Y-%m-%d'))=YEAR(CURRENT_DATE))   THEN

            INSERT INTO `ctm_transact_batch` (`ctyearid`, `batchdate`, `transacttype`, `transactdate`, `amount`, `transactaccfrom`, `transactaccto`, `transactdesc`, `transactowner`, `processed`, `transauth`) 
        Select (SELECT ctyearid FROM `ctm_fyear` order by ctyearid DESC LIMIT 1), CURRENT_TIMESTAMP,'Transfer',CURRENT_TIMESTAMP, amount, fromacc , toacc , comments ,'budgetadmin','0','0' from ctm_recurring_transfer where recurid=rid;  
          update ctm_recurring_transfer set startdate=DATE_FORMAT(DATE_ADD(STR_TO_DATE(startdate, '%Y-%m-%d'), INTERVAL 1 YEAR),'%Y-%m-%d') where recurid=rid;
   
   END IF;
   
   
   
   END IF;
   
    END LOOP getTrans;
    CLOSE curTrans;

 				
			







END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_proc_prepare_recent_batch` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`setienne`@`localhost` PROCEDURE `ctm_proc_prepare_recent_batch`()
    NO SQL
BEGIN

DECLARE resbatch int;

set resbatch=(SELECT batchid from ctm_transact_batch where transauth=0 and processed=0 order by batchid desc limit 1);
                
  update ctm_transact_batch set transauth=1 WHERE
    processed=0 and transauth=0
     and batchid=resbatch;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_proc_profile_tmp_Account_Info_Result` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` PROCEDURE `ctm_proc_profile_tmp_Account_Info_Result`(IN `P_pBudId` VARCHAR(25))
BEGIN
     select a.* from ctm_account_new a 
     inner join ctm_budget_new b on a.Budgetid=b.Budgetid
     inner join  ctm_fyear c on b.ctyearid=c.ctyearid
     inner join ctm_profile p on p.profileid=c.profileid
     where
     a.accStatus='Active' AND
     b.Budgetid=P_pBudId
     order by aOrder asc;
          
   
   END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_proc_profile_tmp_Budget_Info_Approval` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` PROCEDURE `ctm_proc_profile_tmp_Budget_Info_Approval`(IN `profid` VARCHAR(25), IN `p_PYear` VARCHAR(25), IN `p_PUser` VARCHAR(25))
BEGIN
    
     
     IF p_PUser='budgetadmin' THEN
     
         select b.* from ctm_budget_new b 
         inner join  ctm_fyear c on b.ctyearid=c.ctyearid
         inner join ctm_profile p on p.profileid=c.profileid
         where p.profileid=profid and 
         b.ctyearid=p_PYear and
         b.Approved=0 and flagged=0 AND
         b.accStatus='Active';
         
      
        
     END IF;
     
         
   
   END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_proc_profile_tmp_Budget_Info_Draft` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` PROCEDURE `ctm_proc_profile_tmp_Budget_Info_Draft`(IN `profid` VARCHAR(25), IN `p_PYear` VARCHAR(25), IN `p_PUser` VARCHAR(25))
BEGIN
    
     
     
        
         select b.* from ctm_budget_new b 
         inner join  ctm_fyear c on b.ctyearid=c.ctyearid
         inner join ctm_profile p on p.profileid=c.profileid
         where p.profileid=profid and 
         b.ctyearid=p_PYear and
         (b.AssignedTo=p_PUser or b.Owner=p_PUser) and
         b.Approved=2 AND 
         b.flagged=0 AND
         b.accStatus='Active';
         
     
     
     
   END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_proc_profile_tmp_Budget_Info_Result` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` PROCEDURE `ctm_proc_profile_tmp_Budget_Info_Result`(IN `profid` VARCHAR(25), IN `p_PYear` VARCHAR(25), IN `p_PUser` VARCHAR(25))
BEGIN
    DECLARE CheckAdminStatus varchar(25);
    
    set CheckAdminStatus=checkUserGroupByGrpName(p_PUser,'budgetadmins');
         
     IF p_PUser='budgetadmin' or CheckAdminStatus='budgetadmins' THEN
     
         select b.* from ctm_budget_new b 
         inner join  ctm_fyear c on b.ctyearid=c.ctyearid
         inner join ctm_profile p on p.profileid=c.profileid
         where p.profileid=profid and 
         b.ctyearid=p_PYear and
         b.Approved=1 AND
         b.flagged=0 AND
         b.accStatus='Active'
         order by b.bGroup, b.budgorder asc;
         
        ELSE 
        
         select b.* from ctm_budget_new b 
         inner join  ctm_fyear c on b.ctyearid=c.ctyearid
         inner join ctm_profile p on p.profileid=c.profileid
         where p.profileid=profid and 
         b.ctyearid=p_PYear and
         (b.AssignedTo=checkUserGroup(p_PUser, b.AssignedTo) or b.Owner=p_PUser) and
         b.Approved=1 AND
         b.flagged=0 AND
         b.accStatus='Active'
         order by b.bGroup, b.budgorder asc;
         
         
     END IF;
     
   
   END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_proc_profile_tmp_Funder` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` PROCEDURE `ctm_proc_profile_tmp_Funder`(IN `p_PYear` VARCHAR(25), IN `p_PUser` VARCHAR(50))
BEGIN
    DECLARE CheckAdminStatus varchar(25);
    set CheckAdminStatus=checkUserGroupByGrpName(p_PUser,'budgetadmins');
     
      IF p_PUser='budgetadmin' or CheckAdminStatus='budgetadmins' THEN
         select *, IFNULL(getAllocBalance(AccountNo),0) as AllocBalance, getBalanceAvailableFromBank(Accountid) as bank_bal_avail, getBalanceCurrentFromBank(Accountid) as bank_bal_current 
         from ctm_funder_q_balance_view
         where ctyearid=p_PYear;
      
       ELSE 
        
             select *, IFNULL(getAllocBalance(AccountNo),0) as AllocBalance, getBalanceAvailableFromBank(Accountid) as bank_bal_avail, getBalanceCurrentFromBank(Accountid) as bank_bal_current
           from ctm_funder_q_balance_view
         where ctyearid=p_PYear
         and
          Owner=p_PUser;
         
         
     END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_proc_profile_tmp_Funder_For_Reconciliation` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` PROCEDURE `ctm_proc_profile_tmp_Funder_For_Reconciliation`(IN `p_PYear` VARCHAR(25), IN `p_PUser` VARCHAR(50))
BEGIN
    DECLARE CheckAdminStatus varchar(25);
     DECLARE CurProf varchar(25);
   
    set CheckAdminStatus=checkUserGroupByGrpName(p_PUser,'budgetadmins');
      
      set CurProf=(SELECT profile_initial from ctm_profile limit 1);
     
     
      IF p_PUser='budgetadmin' or CheckAdminStatus='budgetadmins' THEN
         select *, IFNULL(getAllocBalance(AccountNo),0) as AllocBalance, getBalanceAvailableFromBank(Accountid) as bank_bal_avail, getBalanceCurrentFromBank(Accountid) as bank_bal_current 
         from ctm_funder_q_balance_view
         where ctyearid=p_PYear and AccountNo in ( select relatedfunder 
FROM bobbylog_bank_transaction_db.downloaded_bank_account 
where profile_initial=CurProf);
      
       ELSE 
        
             select *, IFNULL(getAllocBalance(AccountNo),0) as AllocBalance, getBalanceAvailableFromBank(Accountid) as bank_bal_avail, getBalanceCurrentFromBank(Accountid) as bank_bal_current
           from ctm_funder_q_balance_view
         where ctyearid=p_PYear
         and
          Owner=p_PUser and AccountNo in ( select relatedfunder 
FROM bobbylog_bank_transaction_db.downloaded_bank_account 
where profile_initial=CurProf);
         
         
     END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_proc_profile_tmp_Transact_Batch_Result` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` PROCEDURE `ctm_proc_profile_tmp_Transact_Batch_Result`(IN `p_PYear` VARCHAR(25))
BEGIN
 select t.*, getBudgetNameFromAccID(t.transactaccto) as budgettitle, getBudgetId(t.transactaccto) as budgetid from (select * from ctm_transact_batch where processed=0) t where t.ctyearid=p_PYear;
     
     
   
   END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_proc_purge_flagged_budget` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`setienne`@`localhost` PROCEDURE `ctm_proc_purge_flagged_budget`()
BEGIN
    DECLARE finished INTEGER DEFAULT 0;
    DECLARE budgetident int(11) DEFAULT 0;
 
        DEClARE curBudget
        CURSOR FOR 
            SELECT budgetid from ctm_budget_new where flagged=1;
 
        DECLARE CONTINUE HANDLER 
        FOR NOT FOUND SET finished = 1;
 
    OPEN curBudget;
 
    getBudget: LOOP
        FETCH curBudget INTO budgetident;
        IF finished = 1 THEN 
            LEAVE getBudget;
        END IF;
                call ctm_proc_trash_budget_new(budgetident);
    END LOOP getBudget;
    CLOSE curBudget;
 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_proc_purge_pending_removal` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`setienne`@`localhost` PROCEDURE `ctm_proc_purge_pending_removal`()
    NO SQL
BEGIN

-- START TRANSACTION;

/*delete from ctm_bank_transact_validate
WHERE bank_transact_id  in (select bank_transact_id from bobbylog_bank_transaction_db.ctm_pending_removal WHERE t_status='U');
*/

delete from ctm_bank_transact_validate
where datediff(CURRENT_DATE,transactdate)>7 AND validation_status=0;

-- COMMIT;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_proc_purge_token` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`setienne`@`localhost` PROCEDURE `ctm_proc_purge_token`()
    NO SQL
BEGIN
update ctm_user set utoken=null;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_proc_rebalance_accountsource` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` PROCEDURE `ctm_proc_rebalance_accountsource`(IN `p_accscr` VARCHAR(25), IN `p_amt` VARCHAR(25), IN `p_ref` VARCHAR(25))
BEGIN

DECLARE accid varchar(25); 
DECLARE pperc varchar(25);
DECLARE prate varchar(25); 
DECLARE scrbal varchar(25);
DECLARE scracc varchar(25);
DECLARE accno varchar(25);
DECLARE finished integer default 0;
DECLARE FinalBalScr varchar(25);




DECLARE curAcct
  CURSOR FOR 
            select distinct Accountid, AccountNo, ByPercent, PercentRate, SourceBalance, SourceAccount from ctm_account_new WHERE SourceAccount=p_accscr;
 
 	
    DECLARE CONTINUE HANDLER 
        FOR NOT FOUND SET finished = 1;
 
  set FinalBalScr=(select FinalBalance from ctm_funder_new where accountno=p_accscr limit 1);

 
   OPEN curAcct;
 
    getAcct: LOOP
        FETCH curAcct INTO  accid,accno, pperc, prate, scrbal, scracc;
        IF finished = 1 THEN 
            LEAVE getAcct;
        END IF;

                 if pperc='No' THEN
                
                     START TRANSACTION;
     
                     update ctm_account_new set 
                        SourceBalance=SourceBalance+p_amt,
                        LastBalRefID=p_ref
                     where SourceAccount=accid;
                     
                     COMMIT;
                     
                     ELSE
                  
                
                     START TRANSACTION;
                     
                    
                     
                     
                    
                    update ctm_account_new set 
                        activities=ifnull(activities,0)+p_amt,
                        Balance=(SourceBalance*PercentRate/100)+
                                 +ifnull(activities,0),
                        Latest_Balance=FinalBalScr,        
                        LastBalRefID=p_ref
                     where Accountid=accid;
                    
                    
                    
                    
                    COMMIT;
                   
                   
                   
                   END IF;
                    
 
    END LOOP getAcct;
    CLOSE curAcct;

   

 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_proc_rebalance_all_account_from_funder` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` PROCEDURE `ctm_proc_rebalance_all_account_from_funder`()
BEGIN

DECLARE accid varchar(25); 
DECLARE pperc varchar(25);
DECLARE prate varchar(25); 
DECLARE scrbal varchar(25);
DECLARE scracc varchar(25);
DECLARE accno varchar(25);
DECLARE finished integer default 0;


DECLARE curAcct
  CURSOR FOR 
            select distinct Accountid, AccountNo, ByPercent, FinalBalance from ctm_funder_q_balance_view;
 
 	    DECLARE CONTINUE HANDLER 
        FOR NOT FOUND SET finished = 1;
  
   OPEN curAcct;
 
    getAcct: LOOP
        FETCH curAcct INTO  accid, accno, pperc, scrbal;
        IF finished = 1 THEN 
            LEAVE getAcct;
        END IF;

                 
                     
                    
                     START TRANSACTION;
                     
                     update ctm_account_new set 
                        SourceBalance=scrbal,
                        activities=0
                     where SourceAccount=accno;
                     
                     update ctm_account_new set 
                        Balance= 
                        CASE when ByPercent='No' then initialAmount
                        ELSE (PercentRate*SourceBalance)/100 END
                     where SourceAccount=accno;
                     
                     COMMIT;
                    

                
                    
                
                 
    END LOOP getAcct;
    CLOSE curAcct;

   

 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_proc_rebalance_all_account_from_funder_for_bank_transfer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` PROCEDURE `ctm_proc_rebalance_all_account_from_funder_for_bank_transfer`()
BEGIN

DECLARE accid varchar(25); 
DECLARE pperc varchar(25);
DECLARE prate varchar(25); 
DECLARE scrbal varchar(25);
DECLARE scracc varchar(25);
DECLARE accno varchar(25);
DECLARE finished integer default 0;


DECLARE curAcct
  CURSOR FOR 
            select distinct Accountid, AccountNo, ByPercent, FinalBalance from ctm_funder_q_balance_view;
 
 	    DECLARE CONTINUE HANDLER 
        FOR NOT FOUND SET finished = 1;
  
   OPEN curAcct;
 
    getAcct: LOOP
        FETCH curAcct INTO  accid, accno, pperc, scrbal;
        IF finished = 1 THEN 
            LEAVE getAcct;
        END IF;

                 
                     
                    
                     START TRANSACTION;
                     
                     update ctm_account_new set 
                        SourceBalance=scrbal
                                             where SourceAccount=accno;
                     
                     
                     update ctm_account_new set 
                    balance= case when ByPercent='Yes' THEN 							(IFNULL(activities,0)+(PercentRate*SourceBalance/100)) ELSE Balance END
                     where SourceAccount=accno;
                     
                                                                                                                                      
                     COMMIT;
                    

                
                    
                
                 
    END LOOP getAcct;
    CLOSE curAcct;

   

 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_proc_rebalance_all_budget` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` PROCEDURE `ctm_proc_rebalance_all_budget`()
BEGIN
DECLARE budid varchar(25);
DECLARE subt varchar(25);
DECLARE finished integer default 0;

DECLARE curBudg 
  CURSOR FOR 
            SELECT budgetid, SubTotal FROM ctm_budget_info_view_new;
 
 	    DECLARE CONTINUE HANDLER 
        FOR NOT FOUND SET finished = 1;
  
   OPEN curBudg;
 
    getBudg: LOOP
        FETCH curBudg INTO budid, subt;
        IF finished = 1 THEN 
            LEAVE getBudg;
        END IF;

        update ctm_budget_new set
               available=subt
        where budgetid=budid;        
        
 
    END LOOP getBudg;
    CLOSE curBudg;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_proc_rebalance_budget_ByAccSource` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` PROCEDURE `ctm_proc_rebalance_budget_ByAccSource`(IN `p_accscr` VARCHAR(25))
BEGIN
DECLARE budid varchar(25);
DECLARE subt varchar(25);
DECLARE finished integer default 0;


DECLARE curBudg 
  CURSOR FOR 
             SELECT budgetid, SubTotal FROM ctm_budget_info_view_new
            where budgetid in (select distinct budgetid from ctm_account_new where SourceAccount=p_accscr);
 
 	    DECLARE CONTINUE HANDLER 
        FOR NOT FOUND SET finished = 1;
  
   OPEN curBudg;
 
    getBudg: LOOP
        FETCH curBudg INTO budid, subt;
        IF finished = 1 THEN 
            LEAVE getBudg;
        END IF;

        update ctm_budget_new set
               available=subt
        where budgetid=budid;        
        
 
    END LOOP getBudg;
    CLOSE curBudg;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_proc_rejectbudget` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` PROCEDURE `ctm_proc_rejectbudget`(IN `p_budid` VARCHAR(25), IN `p_PUser` VARCHAR(25), IN `p_PReason` TEXT)
    NO SQL
BEGIN
	
START TRANSACTION;

     UPDATE ctm_budget_new SET
     		Approved=2,
            ApprovedBy=''
            
            
     WHERE Budgetid=p_budid;
     
       INSERT INTO `ctm_mail_message` (`fromsender`, `tosender`, `subject`, `message`, `datesent`, `mailstatus`) VALUES ('noreply@serpaone.com', getFollowers(p_budid),'Budget is rejected',
concat('Your submitted Budget ',GetBudgetTitleFromBudgetid(p_budid), ' has been rejected by the budget administrator for the following reason: ',p_PReason, '. Please, check the draft section to review and resubmit the budget.') ,CURRENT_TIMESTAMP(), '0');
     
COMMIT;
     
     
    

    
    

    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_proc_rejecttransact` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` PROCEDURE `ctm_proc_rejecttransact`(IN `p_transid` VARCHAR(25), IN `p_PReason` TEXT, IN `p_POwner` VARCHAR(50))
BEGIN
	
START TRANSACTION;
     
    INSERT INTO `ctm_transact_reject_reason` (`ctyearid`, `batchdate`, `transacttype`, `transactdate`, `amount`, `transactaccfrom`, `transactaccto`, `transactdesc`, `transactnote`, `rejectdate`, `rejectreason`, `rejectedby`)
    SELECT `ctyearid`, `batchdate`, `transacttype`, `transactdate`, `amount`, `transactaccfrom`, `transactaccto`, `transactdesc`, `transactnote`, CURRENT_TIMESTAMP(), p_PReason, p_POwner from ctm_transact_batch
    where batchid=p_transid;
    
      INSERT INTO `ctm_mail_message` (`fromsender`, `tosender`, `subject`, `message`, `datesent`, `mailstatus`) VALUES ('noreply@serpaone.com', getBudgetFollowrersFromTransID(p_transid),'Transaction is rejected',
concat('Your transaction in the amount of ', getTransactAmount(p_transid), ' from account ',getTransactAccName(p_transid),' of budget ', getTransactAccBudgetName(p_transid), ' has been rejected by the budget administrator for the following reason: ',p_PReason, '.') ,CURRENT_TIMESTAMP(), '0');

 
    update ctm_transact_batch set processed=2 WHERE batchid=p_transid;
    
     
COMMIT;
     
        

    
    

    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_proc_reloadaccountbalance_info` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` PROCEDURE `ctm_proc_reloadaccountbalance_info`()
BEGIN
   
   START TRANSACTION;
   DELETE from tmp_Account_Info_Result;
   insert into tmp_Account_Info_Result
select * from ctm_tmp_account_q4_balance_view_shadow;
   COMMIT;
   
   END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_proc_reloadbudget_info` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` PROCEDURE `ctm_proc_reloadbudget_info`()
BEGIN
  START TRANSACTION;
   DELETE from tmp_Budget_Info_Result;
   insert into tmp_Budget_Info_Result
select * from ctm_tmp_budget_info_view_shadow;
   COMMIT;
   
   END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_proc_reloadfunderbalance_info` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` PROCEDURE `ctm_proc_reloadfunderbalance_info`()
BEGIN
   
   START TRANSACTION;
   DELETE from tmp_Funder_Info_Result;
   insert into tmp_Funder_Info_Result
select *, getFunderBalanceByAccNo(AccountNo) as FinalBalance from ctm_funder_q_balance_view;
   COMMIT;
   
   END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_proc_reload_budget_and_account` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`setienne`@`localhost` PROCEDURE `ctm_proc_reload_budget_and_account`(IN `p_budid` VARCHAR(25))
    NO SQL
BEGIN

 START TRANSACTION;
 
   DELETE from tmp_Budget_Info_Result where budgetid=p_budid;
   insert into tmp_Budget_Info_Result
select * from ctm_tmp_budget_info_view_shadow where budgetid=p_budid;

DELETE from tmp_Account_Info_Result  where budgetid=p_budid;
   insert into tmp_Account_Info_Result
select * from ctm_tmp_account_q4_balance_view_shadow where budgetid=p_budid;

   COMMIT;
   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_proc_reload_single_budget_info` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` PROCEDURE `ctm_proc_reload_single_budget_info`(IN `p_budid` VARCHAR(25))
BEGIN
  START TRANSACTION;
   DELETE from tmp_Budget_Info_Result where budgetid=p_budid;
   insert into tmp_Budget_Info_Result
select * from ctm_tmp_budget_info_view_shadow where budgetid=p_budid;
   COMMIT;
   
   END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_proc_removeassoc` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` PROCEDURE `ctm_proc_removeassoc`(IN `p_Passocid` INT(11))
BEGIN
			
	DECLARE v_nc int;
	DECLARE v_nc1 int;
    		
            START TRANSACTION;
    		delete from `ctm_bank_funder_association`
            WHERE association_id=p_Passocid;
          
          Update bobbylog_bank_transaction_db.downloaded_bank_account SET
       relatedfunder= '', 
       profile_initial=''
       where bank_account_id= (SELECT bank_account_id from `ctm_bank_funder_association` WHERE association_id=p_Passocid limit 1);
       COMMIT;
			

set v_nc=FOUND_ROWS(); 

select v_nc as Affected;




END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_proc_removeGlossary` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` PROCEDURE `ctm_proc_removeGlossary`(IN `p_PGlossid` VARCHAR(25))
BEGIN
			
	DECLARE v_nc int;
	DECLARE v_nc1 int;
	
	
    			delete from ctm_glossary 
                where glossaryid=p_PGlossid;
			

set v_nc=FOUND_ROWS(); 

select v_nc as Affected;




END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_proc_retireaccount` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` PROCEDURE `ctm_proc_retireaccount`(IN `p_acctid` VARCHAR(25))
    NO SQL
BEGIN

  
    START TRANSACTION;
        insert into ctm_account_archive 
    select * from ctm_account_new where Accountid=p_acctid;
    
   
    
    delete from ctm_account_new where Accountid=p_acctid;
   
    COMMIT;
    
  

    
    

    
    

    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_proc_retirebudget` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` PROCEDURE `ctm_proc_retirebudget`(IN `p_budid` VARCHAR(25))
    NO SQL
BEGIN

   START TRANSACTION;
      insert into ctm_budget_archive 
    select * from ctm_budget_new where Budgetid=p_budid;

    
   
    
        insert into ctm_account_archive 
    select * from ctm_account_new where Budgetid=p_budid;
    
    

    
    delete from ctm_account_new where Budgetid=p_budid;
     
     delete from ctm_budget_new where Budgetid=p_budid;
     
     COMMIT;
   
    
      

    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_proc_retirefunder` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` PROCEDURE `ctm_proc_retirefunder`(IN `p_acctid` VARCHAR(25), IN `p_atyp` VARCHAR(25))
    NO SQL
BEGIN

  
    START TRANSACTION;
        insert into ctm_funder_archive 
    select * from ctm_funder_new where Accountid=p_acctid;
    
    
    
    IF p_atyp='Bank' or p_atyp='Funder' THEN
    	delete from ctm_funder_new where Accountid=p_acctid;
    ELSE
       delete from ctm_allocation where AllocCode=p_acctid;
    END IF;
   
    COMMIT;
    
  

    
    

    
    

    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_proc_set_autodownload_flag` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` PROCEDURE `ctm_proc_set_autodownload_flag`(IN `p_Pflag` INT(11))
BEGIN
			
	DECLARE v_nc int;
	DECLARE v_nc1 int;
    DECLARE res int;
    
      set res=(SELECT count(settings_id) from ctm_downloaded_transaction_settings);
    
    IF (res>0) THEN
     
UPDATE `ctm_downloaded_transaction_settings` SET 
       auto_download=p_Pflag;
      
    ELSE
    	INSERT INTO `ctm_downloaded_transaction_settings`(`auto_download`) VALUES (p_Pflag);
    END IF;

set v_nc=FOUND_ROWS(); 

select v_nc as Affected;
    
    


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_proc_set_current_reportyear` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` PROCEDURE `ctm_proc_set_current_reportyear`(IN `p_PYear` VARCHAR(25))
BEGIN
			
	DECLARE v_nc int;
	DECLARE v_nc1 int;
    DECLARE res int;
    
    set res=(SELECT count(settings_id) from ctm_dashboard_settings limit 1);
    
    IF (res>0) THEN
     
UPDATE `ctm_dashboard_settings` SET 
       `report_year`=p_PYear,
       `settings_status`='Active';
    ELSE
    	INSERT INTO `ctm_dashboard_settings`(`report_year`, `settings_status`) VALUES (p_PYear,'Active');
    END IF;

set v_nc=FOUND_ROWS(); 

select v_nc as Affected;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_proc_source_set` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`setienne`@`localhost` PROCEDURE `ctm_proc_source_set`(IN `p_PUser` VARCHAR(50))
BEGIN
 DECLARE CheckAdminStatus varchar(25);
    set CheckAdminStatus=checkUserGroupByGrpName(p_PUser,'budgetadmins');
 
 IF p_PUser='budgetadmin' or CheckAdminStatus='budgetadmins' THEN

select `ctm_funder_new`.`Budgetid` AS `budgetid`,`ctm_funder_new`.`Accountid` AS `Accountid`,`ctm_funder_new`.`AccountNo` AS `AccountNo`,`ctm_funder_new`.`AccountName` AS `AccountName`,`ctm_funder_new`.`AccountType` AS `AccountType`,
`ctm_funder_new`.`Owner` AS `Owner`,
`ctm_funder_new`.`AssignedTo` AS `AssignedTo`
from `ctm_funder_new` union all select '' AS `Budgetid`,`ctm_allocation`.`AllocCode` AS `Accountid`,`ctm_allocation`.`AllocCode` AS `AccountNo`,`ctm_allocation`.`AllocCode` AS `AccountName`,'Allocation' AS `AccounType`
,`ctm_allocation`.`Owner` as Owner
,`ctm_allocation`.`AssignedTo` as AssignedTo
from `ctm_allocation`;

ELSE


select a.* from (select `ctm_funder_new`.`Budgetid` AS `budgetid`,`ctm_funder_new`.`Accountid` AS `Accountid`,`ctm_funder_new`.`AccountNo` AS `AccountNo`,`ctm_funder_new`.`AccountName` AS `AccountName`,`ctm_funder_new`.`AccountType` AS `AccountType`,
`ctm_funder_new`.`Owner` AS `Owner`,
`ctm_funder_new`.`AssignedTo` AS `AssignedTo`
from `ctm_funder_new` union all select '' AS `Budgetid`,`ctm_allocation`.`AllocCode` AS `Accountid`,`ctm_allocation`.`AllocCode` AS `AccountNo`,`ctm_allocation`.`AllocCode` AS `AccountName`,'Allocation' AS `AccounType`
,`ctm_allocation`.`Owner` as Owner
,`ctm_allocation`.`AssignedTo` as AssignedTo
from `ctm_allocation`) a
where a.AssignedTo=p_PUser or a.Owner=p_PUser;

END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_proc_source_set_wo_alloc_for_funder` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`setienne`@`localhost` PROCEDURE `ctm_proc_source_set_wo_alloc_for_funder`(IN `p_PUser` VARCHAR(50))
BEGIN
 DECLARE CheckAdminStatus varchar(25);
    set CheckAdminStatus=checkUserGroupByGrpName(p_PUser,'budgetadmins');
 
 IF p_PUser='budgetadmin' or CheckAdminStatus='budgetadmins' THEN

select `ctm_funder_new`.`Budgetid` AS `budgetid`,`ctm_funder_new`.`Accountid` AS `Accountid`,`ctm_funder_new`.`AccountNo` AS `AccountNo`,`ctm_funder_new`.`AccountName` AS `AccountName`,`ctm_funder_new`.`AccountType` AS `AccountType`,
`ctm_funder_new`.`Owner` AS `Owner`,
`ctm_funder_new`.`AssignedTo` AS `AssignedTo`
from `ctm_funder_new`;

ELSE


select a.* from (select `ctm_funder_new`.`Budgetid` AS `budgetid`,`ctm_funder_new`.`Accountid` AS `Accountid`,`ctm_funder_new`.`AccountNo` AS `AccountNo`,`ctm_funder_new`.`AccountName` AS `AccountName`,`ctm_funder_new`.`AccountType` AS `AccountType`,
`ctm_funder_new`.`Owner` AS `Owner`,
`ctm_funder_new`.`AssignedTo` AS `AssignedTo`
from `ctm_funder_new`) a
where a.AssignedTo=p_PUser or a.Owner=p_PUser;

END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_proc_submitbudget` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` PROCEDURE `ctm_proc_submitbudget`(IN `p_budid` VARCHAR(25), IN `p_PUser` VARCHAR(25))
    NO SQL
BEGIN
	
START TRANSACTION;

     UPDATE ctm_budget_new SET
     		Approved=0
     WHERE Budgetid=p_budid;
     
     
INSERT INTO `ctm_mail_message` (`fromsender`, `tosender`, `subject`, `message`, `datesent`, `mailstatus`) VALUES ('noreply@serpaone.com', getFollowers(p_budid),'Budget Resubmission',
Concat('The budget ',' _ ',getBudgetTitleFromBudgetId(p_budid), ' has been resubmitted for approval. Please, review and approve')                                                                       ,CURRENT_TIMESTAMP(), '0');

    

COMMIT;
     
     
    

    
    

    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_proc_submitbudget_new` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` PROCEDURE `ctm_proc_submitbudget_new`(IN `p_budid` VARCHAR(25), IN `p_PUser` VARCHAR(25))
BEGIN
	
START TRANSACTION;

     UPDATE ctm_budget_new SET
     		Approved=0
     WHERE Budgetid=p_budid;
     
     
INSERT INTO `ctm_mail_message` (`fromsender`, `tosender`, `subject`, `message`, `datesent`, `mailstatus`) VALUES ('noreply@serpaone.com', getFollowers(p_budid),'Budget Resubmission',
Concat('The budget ',' _ ',getBudgetTitleFromBudgetId(p_budid), ' has been resubmitted for approval. Please, review and approve')                                                                       ,CURRENT_TIMESTAMP(), '0');

    

COMMIT;
     
     
    

    
    

    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_proc_transactions_log` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`setienne`@`localhost` PROCEDURE `ctm_proc_transactions_log`()
    NO SQL
BEGIN

select a. status
from (Select case 
        when transacttype='Expense' then concat('An Expense in the amount of ','$',-transactamount,' was posted in ',transactacctno, ' on ', transactdate) 
      when transacttype='*Void*' then concat('An Expense Void has been issued for the amount of ','$',-transactamount,' in  account ',transactacctno, ' on ', transactdate) 
        when transacttype='Outbound Transfer' then concat('An Outbound Transfer in the amount of ','$',-transactamount,' occured in ',transactacctno, ' on ', transactdate) 
        when transacttype='Inbound Transfer' then concat('An Inbound Transfer in the amount of ','$',transactamount,' Occured in ',transactacctno, ' on ', transactdate) 
        when transacttype='Income' then concat('An Income transaction in the amount of ','$',transactamount,' was posted in ',transactacctno, ' on ', transactdate) 
      when transacttype='***Void***' then concat('An Income Void has been issued for the amount of ','$',transactamount,' in account ',transactacctno, ' on ', transactdate) 
        when transacttype='Allocation' then concat('An allocation in the amount of ','$',transactamount,' was created in ',transactacctno, ' on ', transactdate) 
        when transacttype='Outbound BankTrans' then concat('A Outbound Bank Transfer in the amount of ','$',-transactamount,' Occured in ',transactacctno, ' on ', transactdate) 
        when transacttype='Inbound BankTrans' then concat('A Inbound Bank Transfer in the amount of ','$',transactamount,' Occurred in ',transactacctno, ' on ', transactdate) 
        when transacttype='BankOpen' then concat('A new Bank Account ',transactacctno,' with the initial amount ','$',transactamount, ' was created on ', transactdate) 
        when transacttype='AcctOpen' then concat('A new Budget Account ',transactacctno,' with the initial amount ','$',transactamount, 'was created on ', transactdate) 
        else 'NA' end as status
 from ctm_transaction_history 
 
 order by transactdate desc limit 200) as a
 where status is not null;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_proc_transfer_bank_transact_to_batch` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` PROCEDURE `ctm_proc_transfer_bank_transact_to_batch`()
BEGIN
DECLARE v_nc INT;

START TRANSACTION;

INSERT INTO ctm_transact_batch
(`ctyearid`, `bank_transact_id`, `batchdate`, `transacttype`, `transactdate`, `amount`, `transactcategory`, `transactaccfrom`, `transactaccto`, `transactdesc`, `transactnote`, `transactowner`, `transactassign`, `processedby`, `posteddate`, `supplier`, `processed`,  `transauth`, `exp_options`)
SELECT 
 `ctyearid`, `bank_transact_id`, `batchdate`, `transacttype`, `transactdate`, bobbylog_bank_transaction_db.getPostedAmount(`bank_transact_id`), `transactcategory`, `transactaccfrom`, `transactaccto`, `transactdesc`, `transactnote`, `transactowner`, `transactassign`, `processedby`, `posteddate`, `supplier`, `processed`,  `transauth`,  `exp_options`
 FROM `ctm_bank_transact_validate`
 WHERE `validation_status`=1;

DELETE FROM ctm_bank_transact_validate 
WHERE validation_status=1;

set v_nc=FOUND_ROWS(); 
select v_nc as Affected;

COMMIT;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_proc_trash_budget` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ctm_proc_trash_budget`(IN `p_budid` VARCHAR(25))
BEGIN

START TRANSACTION;

delete from ctm_expense where accountid in (select accountid from ctm_account_new where budgetid=p_budid);
delete from ctm_income where accountid in (select accountid from ctm_account_new where budgetid=p_budid);
delete from ctm_allocation where accountfrom in (select accountid from ctm_account_new where budgetid=p_budid);
delete from ctm_transfer where accountfrom in (select accountid from ctm_account_new where budgetid=p_budid);
delete from ctm_transfer where accountto in (select accountid from ctm_account_new where budgetid=p_budid);


delete from ctm_account_new where budgetid=p_budid;
delete from ctm_budget_new where budgetid=p_budid;

COMMIT;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_proc_trash_budget_new` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ctm_proc_trash_budget_new`(IN `p_budid` VARCHAR(25))
BEGIN

START TRANSACTION;

delete from ctm_expense where accountid in (select accountid from ctm_account_new where budgetid=p_budid);
delete from ctm_income where accountid in (select accountid from ctm_account_new where budgetid=p_budid);
delete from ctm_allocation where accountfrom in (select accountid from ctm_account_new where budgetid=p_budid);
delete from ctm_transfer where accountfrom in (select accountid from ctm_account_new where budgetid=p_budid);
delete from ctm_transfer where accountto in (select accountid from ctm_account_new where budgetid=p_budid);


delete from ctm_account_new where budgetid=p_budid;
delete from ctm_budget_new where budgetid=p_budid;

COMMIT;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_proc_validate_bank_transact` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` PROCEDURE `ctm_proc_validate_bank_transact`(IN `p_valid` INT(25), IN `p_PActto` VARCHAR(25), IN `p_PDesc` TEXT, IN `p_PSupplier` VARCHAR(50), IN `p_PCat` VARCHAR(50), IN `p_PType` VARCHAR(25), IN `p_POpt` VARCHAR(2))
    NO SQL
BEGIN
      
UPDATE ctm_bank_transact_validate SET
`ctyearid`=1,
`batchdate`=CURRENT_TIMESTAMP,
`transactcategory`=p_PCat, 
`transactaccto`=p_PActto,
`budgetid`=getBudgetId_new(p_PActto), 
`transactdesc`=p_PDesc, 
`transacttype`=p_PType, 
`transactnote`='', 
`processedby`='budgetadmin', 
`supplier`=p_PSupplier, 
`processed`=0, 
`transauth`=0,
`exp_options`=p_POpt,
 validation_status=1
 WHERE validation_id=p_valid;

    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_proc_withdraw_funds_for_allocation` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`setienne`@`localhost` PROCEDURE `ctm_proc_withdraw_funds_for_allocation`(IN `p_accid` VARCHAR(25), IN `p_amt` VARCHAR(25), IN `p_ref` VARCHAR(25), IN `p_budid` VARCHAR(25), IN `p_batchid` VARCHAR(25), IN `p_assign` VARCHAR(50), OUT `aerr` VARCHAR(150))
    NO SQL
BEGIN
DECLARE AccScr varchar(25);
DECLARE v_nc int;
DECLARE PrevBal varchar(25);

DECLARE EXIT HANDLER FOR 1062
 BEGIN
   ROLLBACK;
    set aerr='Duplicate Allocation Key Found';
 END;

START TRANSACTION;
  
  set PrevBal=getBalance_new(p_accid);
  
  set AccScr=(select sourceaccount from ctm_account_new where accountid= p_accid); 
  
 
          
     update ctm_account_new set 
                        activities=ifnull(activities,0)-p_amt,
                        Balance=Balance-p_amt,
                        aTarget=ifnull(aTarget,0)-p_amt,
                        LastBalRefID=p_ref
                     where accountid=p_accid;
           
               update ctm_account_new set 
                    SourceBalance=SourceBalance-p_amt,
                    balance= case when ByPercent='Yes' THEN (IFNULL(activities,0)+(PercentRate*SourceBalance/100)) ELSE balance END
               where SourceAccount=trim(AccScr) and  accountid<>p_accid ;
               
                                
      insert into ctm_allocation(AccountFrom,AllocCode,TransDate,Amount,Notes,Owner, AssignedTo)
   SELECT transactaccfrom, transactaccto,transactdate,amount,transactdesc, transactowner, transactassign from ctm_transact_batch where transacttype='Allocation'  and processed=0 and transauth=1 and batchid=p_batchid;
                       
                       
          
set v_nc=FOUND_ROWS(); 

set AccScr=(select sourceaccount from ctm_account_new where accountid= p_accid);                    


             update ctm_funder_new set 
                        FinalBalance=FinalBalance-p_amt
             where accountno=trim(AccScr);
             
                      update ctm_budget_new set 
                             available=getBudgetBalance_new(p_budid),
                             allocs=IFNULL(allocs,0)+p_amt
                      where budgetid=p_budid;
      
      call ctm_proc_rebalance_budget_ByAccSource(AccScr);
                 
       
         INSERT INTO `ctm_transaction_history` (`transactdate`, `transactbatchid`, `transactbudgetid`,`transactacctid`,`transactacctno`, `transactaccount`, `transacttype`, `transactdescription`, `transactsupplier`, `transactprevbalance`, `transactamount`, `transactnewbalance`, `transactprevrefid`) 
     select batchdate, batchid, p_budid, p_accid, getAccountNo_new(p_accid), getAccountName_new(p_accid),transacttype, transactdesc, supplier, PrevBal, -p_amt, (PrevBal-p_amt), p_ref from ctm_transact_batch where batchid=p_batchid;
    
   
       
  COMMIT;                      

               IF  v_nc>0 THEN
                    update ctm_transact_batch set processed=1 WHERE transacttype='Allocation'  and processed=0 and transauth=1 and batchid=p_batchid;
                END IF;
      
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_proc_withdraw_funds_for_allocationOld` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`setienne`@`localhost` PROCEDURE `ctm_proc_withdraw_funds_for_allocationOld`(IN `p_accid` VARCHAR(25), IN `p_amt` VARCHAR(25), IN `p_ref` VARCHAR(25), IN `p_budid` VARCHAR(25), IN `p_batchid` VARCHAR(25))
BEGIN
DECLARE AccScr varchar(25);
DECLARE v_nc int;
DECLARE PrevBal varchar(25);


START TRANSACTION;
  
  set PrevBal=getBalance_new(p_accid);
  
 update ctm_account_new set 
                        Balance=Balance-p_amt,
                        activities=ifnull(activities,0)-p_amt,
                        LastBalRefID=p_ref
                     where accountid=p_accid;
                     
                                
      insert into ctm_allocation(AccountFrom,AllocCode,TransDate,Amount,Notes,Owner, AssignedTo)
   SELECT transactaccfrom, transactaccto,transactdate,amount,transactdesc, transactowner, transactassign from ctm_transact_batch where transacttype='Allocation'  and processed=0 and transauth=1 and batchid=p_batchid;
                       
                       
          
set v_nc=FOUND_ROWS(); 

set AccScr=(select sourceaccount from ctm_account_new where accountid= p_accid);                    


             update ctm_funder_new set 
                        FinalBalance=FinalBalance-p_amt
             where accountno=trim(AccScr);
             

                      update ctm_budget_new set              
                             available=getBudgetBalance_new(p_budid),
                             allocs=IFNULL(allocs,0)+p_amt
                      where budgetid=p_budid;
     
       
         INSERT INTO `ctm_transaction_history` (`transactdate`, `transactbatchid`, `transactbudgetid`,`transactacctid`,`transactacctno`, `transactaccount`, `transacttype`, `transactdescription`, `transactsupplier`, `transactprevbalance`, `transactamount`, `transactnewbalance`, `transactprevrefid`) 
     select batchdate, batchid, p_budid, p_accid, getAccountNo_new(p_accid), getAccountName_new(p_accid),transacttype, transactdesc, supplier, PrevBal, -p_amt, (PrevBal-p_amt), p_ref from ctm_transact_batch where batchid=p_batchid;
    
   
       
  COMMIT;                      

               IF  v_nc>0 THEN
                    update ctm_transact_batch set processed=1 WHERE transacttype='Allocation'  and processed=0 and transauth=1 and batchid=p_batchid;
                END IF;
      
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_proc_withdraw_funds_for_allocationold1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`setienne`@`localhost` PROCEDURE `ctm_proc_withdraw_funds_for_allocationold1`(IN `p_accid` VARCHAR(25), IN `p_amt` VARCHAR(25), IN `p_ref` VARCHAR(25), IN `p_budid` VARCHAR(25), IN `p_batchid` VARCHAR(25), IN `p_assign` VARCHAR(50))
    NO SQL
BEGIN
DECLARE AccScr varchar(25);
DECLARE v_nc int;
DECLARE PrevBal varchar(25);


START TRANSACTION;
  
  set PrevBal=getBalance_new(p_accid);
  
  set AccScr=(select sourceaccount from ctm_account_new where accountid= p_accid); 
  
 
          
     update ctm_account_new set 
                        Balance=Balance-p_amt,
                        SourceBalance=ifnull(SourceBalance,0)-p_amt,
                        activities=ifnull(activities,0)-p_amt,
                        aTarget=ifnull(aTarget,0)-p_amt,
                        LastBalRefID=p_ref
                     where accountid=p_accid;
           
               update ctm_account_new set 
                    SourceBalance=ifnull(SourceBalance,0)-p_amt,
                    balance= case when ByPercent='Yes' THEN (IFNULL(activities,0)+(PercentRate*SourceBalance/100)) ELSE balance END
               where SourceAccount=trim(AccScr) and  accountid<>p_accid ;
               
            
          
          
                                
      insert into ctm_allocation(AccountFrom,AllocCode,TransDate,Amount,Notes,Owner, AssignedTo)
   SELECT transactaccfrom, transactaccto,transactdate,amount,transactdesc, transactowner, transactassign from ctm_transact_batch where transacttype='Allocation'  and processed=0 and transauth=1 and batchid=p_batchid;
                       
                       
          
set v_nc=FOUND_ROWS(); 

set AccScr=(select sourceaccount from ctm_account_new where accountid= p_accid);                    


             update ctm_funder_new set 
                        FinalBalance=FinalBalance-p_amt
             where accountno=trim(AccScr);
             
                      update ctm_budget_new set 
                             available=getBudgetBalance_new(p_budid),
                             allocs=IFNULL(allocs,0)+p_amt
                      where budgetid=p_budid;
      
      call ctm_proc_rebalance_budget_ByAccSource(AccScr);
                 
       
         INSERT INTO `ctm_transaction_history` (`transactdate`, `transactbatchid`, `transactbudgetid`,`transactacctid`,`transactacctno`, `transactaccount`, `transacttype`, `transactdescription`, `transactsupplier`, `transactprevbalance`, `transactamount`, `transactnewbalance`, `transactprevrefid`) 
     select batchdate, batchid, p_budid, p_accid, getAccountNo_new(p_accid), getAccountName_new(p_accid),transacttype, transactdesc, supplier, PrevBal, -p_amt, (PrevBal-p_amt), p_ref from ctm_transact_batch where batchid=p_batchid;
    
   
       
  COMMIT;                      

               IF  v_nc>0 THEN
                    update ctm_transact_batch set processed=1 WHERE transacttype='Allocation'  and processed=0 and transauth=1 and batchid=p_batchid;
                END IF;
      
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_proc_withdraw_funds_for_bank_transfer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`setienne`@`localhost` PROCEDURE `ctm_proc_withdraw_funds_for_bank_transfer`(IN `p_accidfr` VARCHAR(25), IN `p_accid` VARCHAR(25), IN `p_amt` VARCHAR(25), IN `p_ref` VARCHAR(25), IN `p_budid` VARCHAR(25), IN `p_batchid` VARCHAR(25))
    NO SQL
BEGIN
DECLARE AccScrfr varchar(25);
DECLARE AccScrto varchar(25);
DECLARE v_nc int;
DECLARE idtrfr int;
DECLARE idtrto int;
DECLARE PrevBalFr varchar(25);
DECLARE PrevBalTo varchar(25);


START TRANSACTION;

 set PrevBalFr=getBalance_new(p_accidfr);
 set PrevBalTo=getBalance_new(p_accid);
 
        insert into ctm_btransfer(AccountFrom, AccountTo,TransDate,Amount,Notes, Owner)
   SELECT Transactaccfrom, transactaccto,transactdate,amount,transactdesc,transactowner from ctm_transact_batch where transacttype='BankTrans'  and processed=0 and transauth=1 and batchid=p_batchid;

  INSERT INTO `ctm_transaction_history` (`transactdate`, `transactbatchid`, `transactbudgetid`,`transactacctid`,`transactacctno`, `transactaccount`, `transacttype`, `transactdescription`, `transactsupplier`, `transactprevbalance`, `transactamount`, `transactnewbalance`, `transactprevrefid`) 
       select batchdate, batchid, p_budid, p_accidfr, getAccountNo_new(p_accidfr), getAccountName_new(p_accidfr),'Outbound BankTrans', transactdesc, supplier, PrevBalFr, -p_amt, (PrevBalFr-p_amt), p_ref from ctm_transact_batch where batchid=p_batchid;
       
     set idtrfr=LAST_INSERT_ID(); 
     
          INSERT INTO `ctm_transaction_history` (`transactdate`, `transactbatchid`, `transactbudgetid`,`transactacctid`,`transactacctno`, `transactaccount`, `transacttype`, `transactdescription`, `transactsupplier`, `transactprevbalance`, `transactamount`, `transactnewbalance`, `transactprevrefid`) 
     select batchdate, batchid, p_budid, p_accid, getAccountNo_new(p_accid), getAccountName_new(p_accid),'Inbound BankTrans', transactdesc, supplier, PrevBalTo, p_amt, (PrevBalTo+p_amt), p_ref from ctm_transact_batch where batchid=p_batchid;
	             
     set idtrto=LAST_INSERT_ID();  
  
             update ctm_funder_new set 
                        FinalBalance=FinalBalance-p_amt,
                        LastBalRefID=idtrfr
                     where accountid=p_accidfr;

                     update ctm_funder_new set 
                        FinalBalance=FinalBalance+p_amt,
                        LastBalRefID=idtrto
                     where accountid=p_accid;
                     
                     set v_nc=FOUND_ROWS(); 
                     
set AccScrfr=(select AccountNo from ctm_funder_new where accountid= p_accidfr);                   

set AccScrto=(select AccountNo from ctm_funder_new where accountid= p_accid);                   


                  call  ctm_proc_rebalance_accountsource(AccScrfr, -p_amt,LAST_INSERT_ID());
                  
                  call  ctm_proc_rebalance_accountsource(AccScrto, p_amt,LAST_INSERT_ID());
                                                         
call ctm_proc_rebalance_budget_ByAccSource(AccScrfr);
call ctm_proc_rebalance_budget_ByAccSource(AccScrto);


                     

                    COMMIT;
          
                IF  v_nc>0 THEN
                    update ctm_transact_batch set processed=1 WHERE transacttype='BankTrans'  and processed=0 and transauth=1 and batchid=p_batchid;
                END IF;

       
       
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_proc_withdraw_funds_for_expenses` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`setienne`@`localhost` PROCEDURE `ctm_proc_withdraw_funds_for_expenses`(IN `p_accid` VARCHAR(25), IN `p_amt` VARCHAR(25), IN `p_ref` VARCHAR(25), IN `p_budid` VARCHAR(25), IN `p_batchid` VARCHAR(25))
    NO SQL
BEGIN
DECLARE AccScr varchar(25);
DECLARE v_nc int;
DECLARE PrevBal varchar(25);



START TRANSACTION;

  set PrevBal=getBalance_new(p_accid);
  set AccScr=(select sourceaccount from ctm_account_new where accountid= p_accid);                    

             update ctm_account_new set 
                        activities=ifnull(activities,0)-p_amt,
                        Balance=Balance-p_amt,
                        aTarget=ifnull(aTarget,0)-p_amt,
                        LastBalRefID=p_ref
                     where accountid=p_accid;
           
               update ctm_account_new set 
                    SourceBalance= case when budgetid <> p_budid THEN SourceBalance-p_amt ELSE SourceBalance END,
                    balance= case when ByPercent='Yes' THEN (IFNULL(activities,0)+(PercentRate*SourceBalance/100)) ELSE balance END
               where SourceAccount=trim(AccScr) and  accountid<>p_accid ;
                     
            insert into ctm_expense(Accountid,TransDate,Amount,Category, Notes,supplier,Owner,exp_options)
                       SELECT transactaccto,transactdate,amount,transactcategory, transactdesc,supplier,transactowner, exp_options from ctm_transact_batch where (transacttype='Expense' or transacttype='*Void*') and processed=0 and transauth=1 and batchid=p_batchid;
          
set v_nc=FOUND_ROWS(); 


             update ctm_funder_new set 
                        FinalBalance=FinalBalance-p_amt
             where accountno=trim(AccScr);
             
                call ctm_proc_rebalance_budget_ByAccSource(AccScr);
                      
                      
                      

   INSERT INTO `ctm_transaction_history` (`transactdate`, `transactbatchid`, `transactbudgetid`,`transactacctid`,`transactacctno`, `transactaccount`, `transacttype`, `transactdescription`, `transactsupplier`, `transactprevbalance`, `transactamount`, `transactnewbalance`, `transactprevrefid`) 
     select batchdate, batchid, p_budid, p_accid, getAccountNo_new(p_accid), getAccountName_new(p_accid),transacttype, transactdesc, supplier, PrevBal, -p_amt, (PrevBal-p_amt), p_ref from ctm_transact_batch where batchid=p_batchid;
     
 
     
  COMMIT;                      

                IF  v_nc>0 THEN
                    update ctm_transact_batch set processed=1 WHERE (transacttype='Expense' or transacttype='*Void*')  and processed=0 and transauth=1 and batchid=p_batchid;
                END IF;
                
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_proc_withdraw_funds_for_expensesOld` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`setienne`@`localhost` PROCEDURE `ctm_proc_withdraw_funds_for_expensesOld`(IN `p_accid` VARCHAR(25), IN `p_amt` VARCHAR(25), IN `p_ref` VARCHAR(25), IN `p_budid` VARCHAR(25), IN `p_batchid` VARCHAR(25))
    NO SQL
BEGIN
DECLARE AccScr varchar(25);
DECLARE v_nc int;
DECLARE PrevBal varchar(25);



START TRANSACTION;

  set PrevBal=getBalance_new(p_accid);
  set AccScr=(select sourceaccount from ctm_account_new where accountid= p_accid);                    

 update ctm_account_new set 
                        Balance=Balance-p_amt,
                        SourceBalance=ifnull(SourceBalance,0)-p_amt,
                        activities=ifnull(activities,0)-p_amt,
                        aTarget=ifnull(aTarget,0)-p_amt,
                        LastBalRefID=p_ref
                     where accountid=p_accid;
    
    update ctm_account_new set 
                    SourceBalance=ifnull(SourceBalance,0)-p_amt,
                    balance= case when ByPercent='Yes' THEN (IFNULL(activities,0)+(PercentRate*SourceBalance/100)) ELSE balance END
               where SourceAccount=trim(AccScr) and  accountid<>p_accid ;
               

          
            insert into ctm_expense(Accountid,TransDate,Amount,Category, Notes,supplier,Owner)
                       SELECT transactaccto,transactdate,amount,transactcategory, transactdesc,supplier,transactowner from ctm_transact_batch where transacttype='Expense' and processed=0 and transauth=1 and batchid=p_batchid;
          
set v_nc=FOUND_ROWS(); 


             update ctm_funder_new set 
                        FinalBalance=FinalBalance-p_amt
             where accountno=trim(AccScr);
                      update ctm_budget_new set available=getBudgetBalance_new(p_budid)
                      where budgetid=p_budid;


   INSERT INTO `ctm_transaction_history` (`transactdate`, `transactbatchid`, `transactbudgetid`,`transactacctid`,`transactacctno`, `transactaccount`, `transacttype`, `transactdescription`, `transactsupplier`, `transactprevbalance`, `transactamount`, `transactnewbalance`, `transactprevrefid`) 
     select batchdate, batchid, p_budid, p_accid, getAccountNo_new(p_accid), getAccountName_new(p_accid),transacttype, transactdesc, supplier, PrevBal, -p_amt, (PrevBal-p_amt), p_ref from ctm_transact_batch where batchid=p_batchid;
     
 
     
  COMMIT;                      

                IF  v_nc>0 THEN
                    update ctm_transact_batch set processed=1 WHERE transacttype='Expense'  and processed=0 and transauth=1 and batchid=p_batchid;
                END IF;
                
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_proc_withdraw_funds_for_expensesold1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`setienne`@`localhost` PROCEDURE `ctm_proc_withdraw_funds_for_expensesold1`(IN `p_accid` VARCHAR(25), IN `p_amt` VARCHAR(25), IN `p_ref` VARCHAR(25), IN `p_budid` VARCHAR(25), IN `p_batchid` VARCHAR(25))
    NO SQL
BEGIN
DECLARE AccScr varchar(25);
DECLARE v_nc int;
DECLARE PrevBal varchar(25);



START TRANSACTION;

  set PrevBal=getBalance_new(p_accid);
  set AccScr=(select sourceaccount from ctm_account_new where accountid= p_accid);                    

update ctm_account_new set 
                        Balance=Balance-p_amt,
                        SourceBalance=ifnull(SourceBalance,0)-p_amt,
                        activities=ifnull(activities,0)-p_amt,
                        aTarget=ifnull(aTarget,0)-p_amt,
                        LastBalRefID=p_ref
                     where accountid=p_accid;
           
               update ctm_account_new set 
                    SourceBalance=ifnull(SourceBalance,0)-p_amt,
                    balance= case when ByPercent='Yes' THEN (IFNULL(activities,0)+(PercentRate*SourceBalance/100)) ELSE balance END
               where SourceAccount=trim(AccScr) and  accountid<>p_accid ;
               
       
                     
            insert into ctm_expense(Accountid,TransDate,Amount,Category, Notes,supplier,Owner)
                       SELECT transactaccto,transactdate,amount,transactcategory, transactdesc,supplier,transactowner from ctm_transact_batch where transacttype='Expense' and processed=0 and transauth=1 and batchid=p_batchid;
          
set v_nc=FOUND_ROWS(); 


             update ctm_funder_new set 
                        FinalBalance=FinalBalance-p_amt
             where accountno=trim(AccScr);
             
                call ctm_proc_rebalance_budget_ByAccSource(AccScr);
                      
                      
                      

   INSERT INTO `ctm_transaction_history` (`transactdate`, `transactbatchid`, `transactbudgetid`,`transactacctid`,`transactacctno`, `transactaccount`, `transacttype`, `transactdescription`, `transactsupplier`, `transactprevbalance`, `transactamount`, `transactnewbalance`, `transactprevrefid`) 
     select batchdate, batchid, p_budid, p_accid, getAccountNo_new(p_accid), getAccountName_new(p_accid),transacttype, transactdesc, supplier, PrevBal, -p_amt, (PrevBal-p_amt), p_ref from ctm_transact_batch where batchid=p_batchid;
     
 
     
  COMMIT;                      

                IF  v_nc>0 THEN
                    update ctm_transact_batch set processed=1 WHERE transacttype='Expense'  and processed=0 and transauth=1 and batchid=p_batchid;
                END IF;
                
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_proc_withdraw_funds_for_transfer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`setienne`@`localhost` PROCEDURE `ctm_proc_withdraw_funds_for_transfer`(IN `p_accidfr` VARCHAR(25), IN `p_accid` VARCHAR(25), IN `p_amt` VARCHAR(25), IN `p_ref` VARCHAR(25), IN `p_budid` VARCHAR(25), IN `p_batchid` VARCHAR(25))
    NO SQL
BEGIN
DECLARE AccScr1 varchar(25);
DECLARE AccScr2 varchar(25);
DECLARE budiddest varchar(25);
DECLARE v_nc int;
DECLARE idtrfr int;
DECLARE idtrto int;
DECLARE PrevBalFr varchar(25);
DECLARE PrevBalTo varchar(25);
  
START TRANSACTION;
 
 set PrevBalFr=getBalance_new(p_accidfr);
 set PrevBalTo=getBalance_new(p_accid);
 set AccScr1=(select sourceaccount from ctm_account_new where accountid= p_accidfr);
 set AccScr2=(select sourceaccount from ctm_account_new where accountid= p_accid);
 
 set budiddest=(select budgetid from ctm_account_new where accountid= p_accid);
 
        insert into ctm_transfer(AccountFrom, AccountTo,TransDate,Amount,Notes, Owner)
   SELECT Transactaccfrom, transactaccto,transactdate,amount,transactdesc,transactowner from ctm_transact_batch where transacttype='Transfer'  and processed=0 and transauth=1 and batchid=p_batchid;

          
                     
         INSERT INTO `ctm_transaction_history` (`transactdate`, `transactbatchid`, `transactbudgetid`,`transactacctid`,`transactacctno`, `transactaccount`, `transacttype`, `transactdescription`, `transactsupplier`, `transactprevbalance`, `transactamount`, `transactnewbalance`, `transactprevrefid`) 
       select batchdate, batchid, p_budid, p_accidfr, getAccountNo_new(p_accidfr), getAccountName_new(p_accidfr),'Outbound Transfer', transactdesc, supplier, PrevBalFr, -p_amt, (PrevBalFr-p_amt), p_ref from ctm_transact_batch where batchid=p_batchid;
       
     set idtrfr=LAST_INSERT_ID(); 
     
          INSERT INTO `ctm_transaction_history` (`transactdate`, `transactbatchid`, `transactbudgetid`,`transactacctid`,`transactacctno`, `transactaccount`, `transacttype`, `transactdescription`, `transactsupplier`, `transactprevbalance`, `transactamount`, `transactnewbalance`, `transactprevrefid`) 
     select batchdate, batchid, p_budid, p_accid, getAccountNo_new(p_accid), getAccountName_new(p_accid),'Inbound Transfer', transactdesc, supplier, PrevBalTo, p_amt, (PrevBalTo+p_amt), p_ref from ctm_transact_batch where batchid=p_batchid;
	             
     set idtrto=LAST_INSERT_ID();       
                    
                                        update ctm_account_new set 
                        activities=ifnull(activities,0)-p_amt,
                        Balance=Balance-p_amt,
                        aTarget=ifnull(aTarget,0)-p_amt,
                        LastBalRefID=idtrfr
                     where accountid=p_accidfr;

					update ctm_account_new set 
                  SourceBalance=SourceBalance-p_amt,
                    balance= 
                    case when ByPercent='Yes' THEN 							        (IFNULL(activities,0)+(PercentRate*SourceBalance/100)) 
                    ELSE Balance END
               where SourceAccount=trim(AccScr1) and      (accountid<>p_accidfr  and  accountid<>p_accid);
              

                    update ctm_funder_new set 
                                FinalBalance=FinalBalance-p_amt
                     where accountno=trim(AccScr1);
                     
                      				
                    update ctm_account_new set 
                         activities=ifnull(activities,0)+p_amt,
                         Balance=Balance+p_amt,
                        LastBalRefID=idtrto
                     where accountid=p_accid;
                 
                 update ctm_account_new set 
                     SourceBalance=SourceBalance+p_amt,
                    balance= case when ByPercent='Yes' THEN 							(IFNULL(activities,0)+(PercentRate*SourceBalance/100)) ELSE Balance END
                    
               where SourceAccount=trim(AccScr2) and  (accountid<>p_accidfr and  accountid<>p_accid);
            
                 update ctm_funder_new set 
                        FinalBalance=FinalBalance+p_amt
             where accountno=trim(AccScr2);
             
             
             
   
                    call ctm_proc_rebalance_budget_ByAccSource(AccScr1);
                    call ctm_proc_rebalance_budget_ByAccSource(AccScr2);
                    
                 
                       
                     insert into log_result1(log) values(concat(p_accidfr,'|',p_accid));
                     
                     set v_nc=FOUND_ROWS(); 
                     

                    COMMIT;
          
                IF  v_nc>0 THEN
                    update ctm_transact_batch set processed=1 WHERE transacttype='Transfer'  and processed=0 and transauth=1 and batchid=p_batchid;
                END IF;

       
       
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_proc_withdraw_funds_for_transferold` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`setienne`@`localhost` PROCEDURE `ctm_proc_withdraw_funds_for_transferold`(IN `p_accidfr` VARCHAR(25), IN `p_accid` VARCHAR(25), IN `p_amt` VARCHAR(25), IN `p_ref` VARCHAR(25), IN `p_budid` VARCHAR(25), IN `p_batchid` VARCHAR(25))
    NO SQL
BEGIN
DECLARE AccScr varchar(25);
DECLARE v_nc int;
DECLARE idtrfr int;
DECLARE idtrto int;
DECLARE PrevBalFr varchar(25);
DECLARE PrevBalTo varchar(25);
  
START TRANSACTION;
 
 set PrevBalFr=getBalance_new(p_accidfr);
 set PrevBalTo=getBalance_new(p_accid);
 
        insert into ctm_transfer(AccountFrom, AccountTo,TransDate,Amount,Notes, Owner)
   SELECT Transactaccfrom, transactaccto,transactdate,amount,transactdesc,transactowner from ctm_transact_batch where transacttype='Transfer'  and processed=0 and transauth=1 and batchid=p_batchid;

          
                     
         INSERT INTO `ctm_transaction_history` (`transactdate`, `transactbatchid`, `transactbudgetid`,`transactacctid`,`transactacctno`, `transactaccount`, `transacttype`, `transactdescription`, `transactsupplier`, `transactprevbalance`, `transactamount`, `transactnewbalance`, `transactprevrefid`) 
       select batchdate, batchid, p_budid, p_accidfr, getAccountNo_new(p_accidfr), getAccountName_new(p_accidfr),'Outbound Transfer', transactdesc, supplier, PrevBalFr, -p_amt, (PrevBalFr-p_amt), p_ref from ctm_transact_batch where batchid=p_batchid;
       
     set idtrfr=LAST_INSERT_ID(); 
     
          INSERT INTO `ctm_transaction_history` (`transactdate`, `transactbatchid`, `transactbudgetid`,`transactacctid`,`transactacctno`, `transactaccount`, `transacttype`, `transactdescription`, `transactsupplier`, `transactprevbalance`, `transactamount`, `transactnewbalance`, `transactprevrefid`) 
     select batchdate, batchid, p_budid, p_accid, getAccountNo_new(p_accid), getAccountName_new(p_accid),'Inbound Transfer', transactdesc, supplier, PrevBalTo, p_amt, (PrevBalTo+p_amt), p_ref from ctm_transact_batch where batchid=p_batchid;
	             
     set idtrto=LAST_INSERT_ID();       

                    update ctm_account_new set 
                        Balance=Balance-p_amt,
                        activities=ifnull(activities,0)-p_amt,
                        aTarget=ifnull(aTarget,0)-p_amt,
                        LastBalRefID=idtrfr
                     where accountid=p_accidfr;

                     update ctm_account_new set 
                        Balance=Balance+p_amt,
                         activities=ifnull(activities,0)+p_amt,
                        LastBalRefID=idtrto
                     where accountid=p_accid;
                     
                     set v_nc=FOUND_ROWS(); 
                     

                    COMMIT;
          
                IF  v_nc>0 THEN
                    update ctm_transact_batch set processed=1 WHERE transacttype='Transfer'  and processed=0 and transauth=1 and batchid=p_batchid;
                END IF;

       
       
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_proc_withdraw_funds_for_transferold1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`setienne`@`localhost` PROCEDURE `ctm_proc_withdraw_funds_for_transferold1`(IN `p_accidfr` VARCHAR(25), IN `p_accid` VARCHAR(25), IN `p_amt` VARCHAR(25), IN `p_ref` VARCHAR(25), IN `p_budid` VARCHAR(25), IN `p_batchid` VARCHAR(25))
    NO SQL
BEGIN
DECLARE AccScr1 varchar(25);
DECLARE AccScr2 varchar(25);
DECLARE budiddest varchar(25);
DECLARE v_nc int;
DECLARE idtrfr int;
DECLARE idtrto int;
DECLARE PrevBalFr varchar(25);
DECLARE PrevBalTo varchar(25);
  
START TRANSACTION;
 
 set PrevBalFr=getBalance_new(p_accidfr);
 set PrevBalTo=getBalance_new(p_accid);
 set AccScr1=(select sourceaccount from ctm_account_new where accountid= p_accidfr);
 set AccScr2=(select sourceaccount from ctm_account_new where accountid= p_accid);
 
 set budiddest=(select budgetid from ctm_account_new where accountid= p_accid);
 
        insert into ctm_transfer(AccountFrom, AccountTo,TransDate,Amount,Notes, Owner)
   SELECT Transactaccfrom, transactaccto,transactdate,amount,transactdesc,transactowner from ctm_transact_batch where transacttype='Transfer'  and processed=0 and transauth=1 and batchid=p_batchid;

          
                     
         INSERT INTO `ctm_transaction_history` (`transactdate`, `transactbatchid`, `transactbudgetid`,`transactacctid`,`transactacctno`, `transactaccount`, `transacttype`, `transactdescription`, `transactsupplier`, `transactprevbalance`, `transactamount`, `transactnewbalance`, `transactprevrefid`) 
       select batchdate, batchid, p_budid, p_accidfr, getAccountNo_new(p_accidfr), getAccountName_new(p_accidfr),'Outbound Transfer', transactdesc, supplier, PrevBalFr, -p_amt, (PrevBalFr-p_amt), p_ref from ctm_transact_batch where batchid=p_batchid;
       
     set idtrfr=LAST_INSERT_ID(); 
     
          INSERT INTO `ctm_transaction_history` (`transactdate`, `transactbatchid`, `transactbudgetid`,`transactacctid`,`transactacctno`, `transactaccount`, `transacttype`, `transactdescription`, `transactsupplier`, `transactprevbalance`, `transactamount`, `transactnewbalance`, `transactprevrefid`) 
     select batchdate, batchid, p_budid, p_accid, getAccountNo_new(p_accid), getAccountName_new(p_accid),'Inbound Transfer', transactdesc, supplier, PrevBalTo, p_amt, (PrevBalTo+p_amt), p_ref from ctm_transact_batch where batchid=p_batchid;
	             
     set idtrto=LAST_INSERT_ID();       

                    
                    update ctm_account_new set 
                        Balance=Balance-p_amt,
                        SourceBalance=ifnull(SourceBalance,0)-p_amt,
                        activities=ifnull(activities,0)-p_amt,
                        aTarget=ifnull(aTarget,0)-p_amt,
                        LastBalRefID=idtrfr
                     where accountid=p_accidfr;

					update ctm_account_new set 
                    SourceBalance=ifnull(SourceBalance,0)-p_amt,
                    balance= case when ByPercent='Yes' THEN 							(IFNULL(activities,0)+(PercentRate*SourceBalance/100)) ELSE balance END
               where SourceAccount=trim(AccScr1) and  accountid<>p_accidfr;

                    update ctm_funder_new set 
                                FinalBalance=FinalBalance-p_amt
                     where accountno=trim(AccScr1);

 				
                     update ctm_account_new set 
                        Balance=Balance+p_amt,
                        SourceBalance=ifnull(SourceBalance,0)+p_amt,
                         activities=ifnull(activities,0)+p_amt,
                        LastBalRefID=idtrto
                     where accountid=p_accid;
                 
                 update ctm_account_new set 
                    SourceBalance=ifnull(SourceBalance,0)+p_amt,
                    balance= case when ByPercent='Yes' THEN 							(IFNULL(activities,0)+(PercentRate*SourceBalance/100)) ELSE balance END
               where SourceAccount=trim(AccScr2) and  accountid<>p_accid;
               
                 update ctm_funder_new set 
                        FinalBalance=FinalBalance+p_amt
             where accountno=trim(AccScr2);
             
             
             
   
                    call ctm_proc_rebalance_budget_ByAccSource(AccScr1);
                    call ctm_proc_rebalance_budget_ByAccSource(AccScr2);
                    
                 
                       
                     insert into log_result1(log) values(concat(p_accidfr,'|',p_accid));
                     
                     set v_nc=FOUND_ROWS(); 
                     

                    COMMIT;
          
                IF  v_nc>0 THEN
                    update ctm_transact_batch set processed=1 WHERE transacttype='Transfer'  and processed=0 and transauth=1 and batchid=p_batchid;
                END IF;

       
       
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_removeRecurring` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` PROCEDURE `ctm_removeRecurring`(IN `p_Precurid` VARCHAR(25))
BEGIN
			
	DECLARE v_nc int;
	DECLARE v_nc1 int;
    		
    		delete from `ctm_recurring_transfer`
            WHERE recurid=p_Precurid ;
			

set v_nc=FOUND_ROWS(); 

select v_nc as Affected;




END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_updateAccount` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` PROCEDURE `ctm_updateAccount`(IN `p_PAccountNo` VARCHAR(50), IN `p_PAccountName` VARCHAR(350), IN `p_PInitAmount` VARCHAR(50), IN `p_PByPercent` VARCHAR(25), IN `p_PPercentRate` VARCHAR(25), IN `p_PAccCur` VARCHAR(25), IN `p_PAccSource` VARCHAR(25), IN `p_PLocation` VARCHAR(25), IN `p_PStatus` VARCHAR(25), IN `p_PComments` TEXT, IN `p_PAccounttype` VARCHAR(25), IN `p_POrder` VARCHAR(11), IN `p_PAccid` VARCHAR(11), IN `p_PCC` VARCHAR(25), IN `p_PUser` VARCHAR(25), IN `p_PTarget` VARCHAR(25), IN `p_PReached` VARCHAR(2))
BEGIN
			
	DECLARE v_nc int;
	DECLARE v_nc1 int;
	DECLARE PrevScr varchar(25);
    
	
    	START TRANSACTION;
        
         set PrevScr=(select SourceAccount from ctm_account_new where accountid=p_PAccid);
         
           	update ctm_account_new set
						AccountNo=p_PAccountNo,
						AccountName=p_PAccountName,
						InitialAmount=p_PInitAmount,
						ByPercent=p_PByPercent,
						PercentRate=p_PPercentRate,
						Currency=p_PAccCur,
						SourceAccount=p_PAccSource,
						Location=p_PLocation,
						accStatus=p_PStatus,
						Comments=p_PComments,
                        AccountType=p_PAccounttype,
                        aOrder=p_POrder,
                        CostCenter=p_PCC,
                        ModifiedBy=p_PUser,
                        ModifiedDate=CURRENT_TIMESTAMP(),
                        aTarget=p_PTarget,
                        aReached=p_PReached
                        where Accountid=p_PAccid;
        
           
           set v_nc=FOUND_ROWS(); 
                  
                  iF p_PAccSource<>PrevScr THEN
                  	call ctm_proc_rebalance_accountsource(p_PAccSource,0,getLastBalRefId_new(p_PAccid));
             
             
             END IF;

            
             update ctm_account_new SET
                   balance= case when ByPercent='Yes' THEN (IFNULL(activities,0)+(PercentRate*SourceBalance/100)) ELSE IFNULL(activities,0) END
             where Accountid=p_PAccid;
            
              	call ctm_proc_rebalance_budget_ByAccSource(p_PAccSource);
            
             

            COMMIT; 
                



select v_nc as Affected;




END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_updateBudget` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` PROCEDURE `ctm_updateBudget`(IN `p_PBudid` VARCHAR(50), IN `p_PSource` VARCHAR(50), IN `p_PScrType` VARCHAR(50), IN `p_PTitle` VARCHAR(350), IN `p_PType` VARCHAR(25), IN `p_PStatus` VARCHAR(25), IN `p_PPlan` VARCHAR(25), IN `p_PAssign` VARCHAR(50), IN `p_PVision` TEXT, IN `p_PFYear` VARCHAR(25), IN `p_PGroup` VARCHAR(50), IN `p_PCode` VARCHAR(50), IN `p_POwner` VARCHAR(50), IN `p_PStartd` VARCHAR(25), IN `p_PFollow` TEXT, IN `p_PUser` VARCHAR(50))
BEGIN
			
	DECLARE v_nc int;
	DECLARE v_nc1 int;
	
	
    	
    		update ctm_budget_new set
            			BudgetCode=p_PCode,
						BudgType=p_PType,
						ScrType=p_PScrType,
						Source=p_PSource,
						title=p_PTitle,
						accStatus=p_PStatus,
						bNote='NA',
                        AssignedTo=p_PAssign,
                        Vision=p_PVision,
                        FYear=p_PFYear,
                        bGroup=p_PGroup,
                        Owner=p_POwner,
                        StartDate=p_PStartd,
                        Followers=p_PFollow,
                        ModifiedBy=p_PUser,
                        ModifiedDate=CURRENT_TIMESTAMP()
			where Budgetid=p_PBudid;
				
				


set v_nc=FOUND_ROWS(); 



select v_nc as Affected;




END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_updateFunder` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` PROCEDURE `ctm_updateFunder`(IN `p_PAccountNo` VARCHAR(50), IN `p_PAccountName` VARCHAR(350), IN `p_PInitAmount` VARCHAR(50), IN `p_PByPercent` VARCHAR(25), IN `p_PPercentRate` VARCHAR(25), IN `p_PAccCur` VARCHAR(25), IN `p_PAccSource` VARCHAR(25), IN `p_PLocation` VARCHAR(25), IN `p_PStatus` VARCHAR(25), IN `p_PComments` VARCHAR(25), IN `p_PAccounttype` VARCHAR(25), IN `p_POrder` INT(11), IN `p_PAccid` INT(11), IN `p_POwner` VARCHAR(50), IN `p_PAssign` VARCHAR(50), IN `p_PUser` VARCHAR(50))
BEGIN
			
	DECLARE v_nc int;
	DECLARE v_nc1 int;
	
	
    	
    		update ctm_funder_new set
						AccountNo=p_PAccountNo,
						AccountName=p_PAccountName,
						InitialAmount=p_PInitAmount,
						ByPercent=p_PByPercent,
						PercentRate=p_PPercentRate,
						Currency=p_PAccCur,
						SourceAccount=p_PAccSource,
						Location=p_PLocation,
						accStatus=p_PStatus,
						Comments=p_PComments,
                        AccountType=p_PAccounttype,
                        aOrder=p_POrder,
                        AssignedTo=p_PAssign,
                        Owner=p_POwner,
                        ModifiedBy=p_PUser,
                        ModifiedDate=CURRENT_TIMESTAMP()
                        where Accountid=p_PAccid;


set v_nc=FOUND_ROWS(); 





select v_nc as Affected;




END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_updateGlossary` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` PROCEDURE `ctm_updateGlossary`(IN `p_PGlossid` VARCHAR(25), IN `p_Pmodule` VARCHAR(25), IN `p_Psection` VARCHAR(25), IN `p_Ptitle` VARCHAR(25), IN `p_Pvalue` VARCHAR(25), IN `p_Pprofile` VARCHAR(50), IN `p_PComments` VARCHAR(25))
BEGIN
			
	DECLARE v_nc int;
	DECLARE v_nc1 int;
	
	
    			update ctm_glossary set 
					module=p_Pmodule, 
					section=p_Psection, 
					title=p_Ptitle, 
					glvalue=p_Pvalue, 
					profileid=p_Pprofile, 
					comments=p_Pcomments 
                where glossaryid=p_PGlossid;
			

set v_nc=FOUND_ROWS(); 

select v_nc as Affected;




END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_updateGoal` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` PROCEDURE `ctm_updateGoal`(IN `p_PGoalid` VARCHAR(50), IN `p_PBudgetid` VARCHAR(50), IN `p_PTitle` VARCHAR(50), IN `p_PHeadline` TEXT, IN `p_PDetails` LONGTEXT, IN `p_PDuedate` VARCHAR(50), IN `p_PCostEst` VARCHAR(50))
BEGIN
			
	DECLARE v_nc int;
	DECLARE v_nc1 int;
	
	
    	
    		UPDATE ctm_goal SET
						budgetid=p_PBudgetid,
						goaltitle=p_PTitle,
						headline=p_PHeadline,
						goaldetails=p_PDetails,
                        duedate=p_PDuedate,
                        costestimate=p_PCostEst
				   
			WHERE goalid=p_PGoalid;
            

set v_nc=FOUND_ROWS(); 

select v_nc as Affected;




END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_updateGroupAssignment` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` PROCEDURE `ctm_updateGroupAssignment`(IN `p_PUID` VARCHAR(25), IN `p_PGID` VARCHAR(50), IN `p_Pprofile` VARCHAR(250))
BEGIN
			
	DECLARE v_nc int;
	DECLARE v_nc1 int;
	
	
    	
    		UPDATE ctm_user_group SET
						userid=p_PUID,
						groupid=p_PGID
                       --  profileid=p_Pprofile
			WHERE userid=p_PUID;
            

set v_nc=FOUND_ROWS(); 

select v_nc as Affected;




END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_updateRecurring` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` PROCEDURE `ctm_updateRecurring`(IN `p_Precurid` VARCHAR(25), IN `p_PStartDt` VARCHAR(25), IN `p_Pfreq` VARCHAR(25), IN `p_Pbudget` VARCHAR(25), IN `p_Paccfr` VARCHAR(25), IN `p_Paccto` VARCHAR(50), IN `p_Pamount` VARCHAR(25), IN `p_Pstatus` VARCHAR(25), IN `p_Pcomments` VARCHAR(25), IN `p_Pprof` VARCHAR(25), IN `p_PEndDt` VARCHAR(25))
BEGIN
			
	DECLARE v_nc int;
	DECLARE v_nc1 int;
    		
    		UPDATE `ctm_recurring_transfer`SET
            `profileid`=p_Pprof,
            `budgetid`=p_Pbudget, 
            `startdate`=p_PStartDt, 
            `fromacc`=p_Paccfr, 
            `toacc`=p_Paccto, 
            `amount`=p_Pamount, 
            `status`=p_Pstatus, 
            `comments`=p_Pcomments, 
            `frequency`=p_Pfreq,
            `enddate`=p_PEndDt
            WHERE recurid=p_Precurid ;
			

set v_nc=FOUND_ROWS(); 

select v_nc as Affected;




END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_updateUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` PROCEDURE `ctm_updateUser`(IN `p_PUID` VARCHAR(25), IN `p_PUname` VARCHAR(50), IN `p_PPassword` VARCHAR(250), IN `p_PPassPhrase` VARCHAR(50), IN `p_PDesc` VARCHAR(250), IN `p_Pprofile` VARCHAR(25), IN `p_PStatus` VARCHAR(25), IN `p_PEmail` VARCHAR(150), IN `p_PPrev` VARCHAR(50))
BEGIN
			
	DECLARE v_nc int;
	DECLARE v_nc1 int;
	
	
    	
    		 IF p_PPrev='budgetadmin' THEN
    	
    		UPDATE ctm_user SET
						username=p_PPrev,
						password=p_PPassword,
						passphrase=p_PPassPhrase,
						description=p_PDesc,
                        profileid=p_Pprofile,
                        status=p_PStatus,
                        uemail=p_PEmail
			WHERE userid=p_PUID;
            
            ELSE
            
            UPDATE ctm_user SET
						username=p_PUname,
						password=p_PPassword,
						passphrase=p_PPassPhrase,
						description=p_PDesc,
                        profileid=p_Pprofile,
                        status=p_PStatus,
                        uemail=p_PEmail
			WHERE userid=p_PUID;
            
            END IF;
            

set v_nc=FOUND_ROWS(); 

select v_nc as Affected;




END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ctm_update_profile` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`bobbylog`@`localhost` PROCEDURE `ctm_update_profile`(IN `p_PProfId` VARCHAR(50), IN `p_PProfName` VARCHAR(350), IN `p_PProfSlogan` VARCHAR(350), IN `p_PProfRole` VARCHAR(25), IN `p_PProfInitial` VARCHAR(25), IN `p_PFirstName` VARCHAR(25), IN `p_PLastName` VARCHAR(25), IN `p_PMiddle` VARCHAR(25), IN `p_PEmail` VARCHAR(50), IN `p_PAddress` VARCHAR(350), IN `p_PCity` VARCHAR(25), IN `p_PState` VARCHAR(25), IN `p_PZip` VARCHAR(25), IN `p_PPhone` VARCHAR(50), IN `p_PCountry` VARCHAR(50))
BEGIN
			
	DECLARE v_nc int;
	DECLARE v_nc1 int;
	
	
    	
    		update ctm_profile set
						profilename=p_PProfName,
						slogan=p_PProfSlogan,
						description=p_PProfRole,
						
						firstname=p_PFirstName,
						lastname=p_PLastName,
						middleinitial=p_PMiddle,
						email=p_PEmail,
						address=p_PAddress,
                        city=p_PCity,
                        state=p_PState,
                        zip=p_PZip,
                        phone=p_PPhone,
                        country=p_PCountry
                        where profileid=p_PProfId;


set v_nc=FOUND_ROWS(); 





select v_nc as Affected;




END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `ctm_account_activities_view`
--

/*!50001 DROP TABLE IF EXISTS `ctm_account_activities_view`*/;
/*!50001 DROP VIEW IF EXISTS `ctm_account_activities_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`bobbylog`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ctm_account_activities_view` AS (select `ctm_expense`.`Accountid` AS `Accountid`,`ctm_expense`.`TransDate` AS `TransDate`,`getAccountName`(`ctm_expense`.`Accountid`) AS `AccountAlias`,`ctm_expense`.`Amount` AS `Amount`,`ctm_expense`.`Notes` AS `Notes`,(case when (`ctm_expense`.`Amount` > 0) then 'Expense' else '*Void*' end) AS `TransType`,`getAccSource`(`ctm_expense`.`Accountid`) AS `AccountSource`,`ctm_expense`.`Expenseid` AS `ref_transact_id` from `ctm_expense`) union all (select `ctm_income`.`Accountid` AS `Accountid`,`ctm_income`.`TransDate` AS `TransDate`,`getAccountName`(`ctm_income`.`Accountid`) AS `AccountAlias`,`ctm_income`.`Amount` AS `Amount`,`ctm_income`.`Notes` AS `Notes`,(case when (`ctm_income`.`Amount` > 0) then 'Income' else '***Void***' end) AS `TransType`,`getFunderAccSource`(`ctm_income`.`Accountid`) AS `AccountSource`,`ctm_income`.`Incomeid` AS `ref_transact_id` from `ctm_income`) union all (select `ctm_allocation`.`AccountFrom` AS `Accountid`,`ctm_allocation`.`TransDate` AS `TransDate`,`getAccountName`(`ctm_allocation`.`AccountFrom`) AS `AccountAlias`,`ctm_allocation`.`Amount` AS `Amount`,`ctm_allocation`.`Notes` AS `Notes`,'Allocation' AS `TransType`,`getAccSource`(`ctm_allocation`.`AccountFrom`) AS `AccountSource`,`ctm_allocation`.`Allocid` AS `ref_transact_id` from `ctm_allocation`) union all (select `ctm_transfer_2way_view`.`Accountid` AS `Accountid`,`ctm_transfer_2way_view`.`TransDate` AS `TransDate`,`ctm_transfer_2way_view`.`AccountAlias` AS `AccountAlias`,`ctm_transfer_2way_view`.`Amount` AS `Amount`,`ctm_transfer_2way_view`.`Notes` AS `Notes`,'Transfer' AS `TransType`,`getAccSource`(`ctm_transfer_2way_view`.`Accountid`) AS `AccountSource`,'' AS `ref_transact_id` from `ctm_transfer_2way_view`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ctm_account_allocation_view`
--

/*!50001 DROP TABLE IF EXISTS `ctm_account_allocation_view`*/;
/*!50001 DROP VIEW IF EXISTS `ctm_account_allocation_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`bobbylog`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ctm_account_allocation_view` AS select `ctm_allocation`.`AllocCode` AS `Accountid`,'' AS `Budgetid`,`ctm_allocation`.`AllocCode` AS `AccountNo`,'' AS `CreationDate`,'' AS `ClosingDate`,`ctm_allocation`.`AllocCode` AS `AccountName`,'Allocation' AS `AccountType`,`ctm_allocation`.`Amount` AS `InitialAmount`,'' AS `ByPercent`,'' AS `PercentRate`,'' AS `Currency`,'' AS `SourceAccount`,'' AS `Location`,'' AS `Status`,'' AS `aOrder`,'' AS `Comments` from `ctm_allocation` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ctm_account_income_view`
--

/*!50001 DROP TABLE IF EXISTS `ctm_account_income_view`*/;
/*!50001 DROP VIEW IF EXISTS `ctm_account_income_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`bobbylog`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ctm_account_income_view` AS select `a`.`Accountid` AS `accountid`,`i`.`TransDate` AS `TransDate`,sum(`i`.`Amount`) AS `IncTotal` from (`ctm_funder_new` `a` join `ctm_income` `i` on((`a`.`Accountid` = `i`.`Accountid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ctm_account_q2_balance_view`
--

/*!50001 DROP TABLE IF EXISTS `ctm_account_q2_balance_view`*/;
/*!50001 DROP VIEW IF EXISTS `ctm_account_q2_balance_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`bobbylog`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ctm_account_q2_balance_view` AS select `a`.`Accountid` AS `Accountid`,`a`.`Budgetid` AS `Budgetid`,`a`.`AccountNo` AS `AccountNo`,`a`.`CreationDate` AS `CreationDate`,`a`.`ClosingDate` AS `ClosingDate`,`a`.`AccountName` AS `AccountName`,`a`.`AccountType` AS `AccountType`,`a`.`InitialAmount` AS `InitialAmount`,`a`.`ByPercent` AS `ByPercent`,`a`.`PercentRate` AS `PercentRate`,`a`.`Currency` AS `Currency`,`a`.`SourceAccount` AS `SourceAccount`,`a`.`Location` AS `Location`,`a`.`accStatus` AS `accStatus`,`a`.`aOrder` AS `aOrder`,`a`.`CostCenter` AS `CostCenter`,`a`.`Comments` AS `Comments`,(select ifnull(sum(`i`.`Amount`),0) from `ctm_income` `i` where (`i`.`Accountid` = `a`.`Accountid`)) AS `Income`,(select ifnull(sum(`e`.`Amount`),0) from `ctm_expense` `e` where (`e`.`Accountid` = `a`.`Accountid`)) AS `Expense`,(-((select ifnull(sum(`t`.`Amount`),0) from `ctm_transfer` `t` where (`t`.`AccountFrom` = `a`.`Accountid`))) + (select ifnull(sum(`t`.`Amount`),0) from `ctm_transfer` `t` where (`t`.`AccountTo` = `a`.`Accountid`))) AS `Transfer`,(select ifnull(sum(`lc`.`Amount`),0) from `ctm_allocation` `lc` where (`lc`.`AccountFrom` = `a`.`Accountid`)) AS `Alloc`,(((ifnull(`a`.`InitialAmount`,0) + ((select ifnull(sum(`i`.`Amount`),0) from `ctm_income` `i` where (`i`.`Accountid` = `a`.`Accountid`)) - (select ifnull(sum(`e`.`Amount`),0) from `ctm_expense` `e` where (`e`.`Accountid` = `a`.`Accountid`)))) + (-((select ifnull(sum(`t`.`Amount`),0) from `ctm_transfer` `t` where (`t`.`AccountFrom` = `a`.`Accountid`))) + (select ifnull(sum(`t`.`Amount`),0) from `ctm_transfer` `t` where (`t`.`AccountTo` = `a`.`Accountid`)))) - (select ifnull(sum(`lc`.`Amount`),0) from `ctm_allocation` `lc` where (`lc`.`AccountFrom` = `a`.`Accountid`))) AS `Balance`,`getSourceBalance`(`a`.`SourceAccount`) AS `SourceBalance` from `ctm_account_old` `a` union all select `lcc`.`AllocCode` AS `Accountid`,'' AS `Budgetid`,`lcc`.`AllocCode` AS `AccountNo`,'' AS `CreationDate`,'' AS `ClosingDate`,`lcc`.`AllocCode` AS `AccountName`,'Allocation' AS `AccountType`,`lcc`.`Amount` AS `InitialAmount`,(select ifnull(sum(`i`.`Amount`),0) from `ctm_income` `i` where (`i`.`Accountid` = `lcc`.`AllocCode`)) AS `Income`,'No' AS `ByPercent`,'' AS `PercentRate`,'' AS `Currency`,'' AS `SourceAccount`,'Virtual' AS `Location`,'Active' AS `Status`,999 AS `aOrder`,'' AS `CostCenter`,'' AS `Comments`,(select ifnull(sum(`e`.`Amount`),0) from `ctm_expense` `e` where (`e`.`Accountid` = `lcc`.`AllocCode`)) AS `Expense`,(-((select ifnull(sum(`t`.`Amount`),0) from `ctm_transfer` `t` where (`t`.`AccountFrom` = `lcc`.`AllocCode`))) + (select ifnull(sum(`t`.`Amount`),0) from `ctm_transfer` `t` where (`t`.`AccountTo` = `lcc`.`AllocCode`))) AS `Transfer`,(select ifnull(sum(`lca`.`Amount`),0) from `ctm_allocation` `lca` where (`lca`.`AccountFrom` = `lcc`.`AllocCode`)) AS `Alloc`,(((ifnull(`lcc`.`Amount`,0) + ((select ifnull(sum(`i`.`Amount`),0) from `ctm_income` `i` where (`i`.`Accountid` = `lcc`.`AllocCode`)) - (select ifnull(sum(`e`.`Amount`),0) from `ctm_expense` `e` where (`e`.`Accountid` = `lcc`.`AllocCode`)))) + (-((select ifnull(sum(`t`.`Amount`),0) from `ctm_transfer` `t` where (`t`.`AccountFrom` = `lcc`.`AllocCode`))) + (select ifnull(sum(`t`.`Amount`),0) from `ctm_transfer` `t` where (`t`.`AccountTo` = `lcc`.`AllocCode`)))) - (select ifnull(sum(`lca`.`Amount`),0) from `ctm_allocation` `lca` where (`lca`.`AccountFrom` = `lcc`.`AllocCode`))) AS `Balance`,0 AS `SourceBalance` from `ctm_allocation` `lcc` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ctm_account_q3_balance_view`
--

/*!50001 DROP TABLE IF EXISTS `ctm_account_q3_balance_view`*/;
/*!50001 DROP VIEW IF EXISTS `ctm_account_q3_balance_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`bobbylog`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ctm_account_q3_balance_view` AS select `ctm_account_q2_balance_view`.`Accountid` AS `Accountid`,`ctm_account_q2_balance_view`.`Budgetid` AS `Budgetid`,`ctm_account_q2_balance_view`.`AccountNo` AS `AccountNo`,`ctm_account_q2_balance_view`.`CreationDate` AS `CreationDate`,`ctm_account_q2_balance_view`.`ClosingDate` AS `ClosingDate`,`ctm_account_q2_balance_view`.`AccountName` AS `AccountName`,`ctm_account_q2_balance_view`.`AccountType` AS `AccountType`,`ctm_account_q2_balance_view`.`ByPercent` AS `ByPercent`,`ctm_account_q2_balance_view`.`PercentRate` AS `PercentRate`,ifnull((case when (`ctm_account_q2_balance_view`.`ByPercent` = 'Yes') then ((`ctm_account_q2_balance_view`.`SourceBalance` * `ctm_account_q2_balance_view`.`PercentRate`) / 100) else `ctm_account_q2_balance_view`.`InitialAmount` end),0) AS `InitialAmount`,`ctm_account_q2_balance_view`.`Currency` AS `Currency`,`ctm_account_q2_balance_view`.`SourceAccount` AS `SourceAccount`,`ctm_account_q2_balance_view`.`Location` AS `Location`,`ctm_account_q2_balance_view`.`accStatus` AS `accStatus`,`ctm_account_q2_balance_view`.`aOrder` AS `aOrder`,`ctm_account_q2_balance_view`.`CostCenter` AS `CostCenter`,`ctm_account_q2_balance_view`.`Comments` AS `Comments`,`ctm_account_q2_balance_view`.`Income` AS `Income`,`ctm_account_q2_balance_view`.`Expense` AS `Expense`,`ctm_account_q2_balance_view`.`Transfer` AS `Transfer`,`ctm_account_q2_balance_view`.`Alloc` AS `Alloc`,ifnull((case when (`ctm_account_q2_balance_view`.`ByPercent` = 'Yes') then ((((((`ctm_account_q2_balance_view`.`SourceBalance` * `ctm_account_q2_balance_view`.`PercentRate`) / 100) + `ctm_account_q2_balance_view`.`Income`) - `ctm_account_q2_balance_view`.`Expense`) + `ctm_account_q2_balance_view`.`Transfer`) - `ctm_account_q2_balance_view`.`Alloc`) else `ctm_account_q2_balance_view`.`Balance` end),0) AS `Balance` from `ctm_account_q2_balance_view` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ctm_account_q4_balance_view`
--

/*!50001 DROP TABLE IF EXISTS `ctm_account_q4_balance_view`*/;
/*!50001 DROP VIEW IF EXISTS `ctm_account_q4_balance_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`bobbylog`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ctm_account_q4_balance_view` AS select `ctm_account_q2_balance_view`.`Accountid` AS `Accountid`,`ctm_account_q2_balance_view`.`Budgetid` AS `Budgetid`,`ctm_account_q2_balance_view`.`AccountNo` AS `AccountNo`,`ctm_account_q2_balance_view`.`CreationDate` AS `CreationDate`,`ctm_account_q2_balance_view`.`ClosingDate` AS `ClosingDate`,`ctm_account_q2_balance_view`.`AccountName` AS `AccountName`,`ctm_account_q2_balance_view`.`AccountType` AS `AccountType`,`ctm_account_q2_balance_view`.`ByPercent` AS `ByPercent`,`ctm_account_q2_balance_view`.`PercentRate` AS `PercentRate`,ifnull((case when (`ctm_account_q2_balance_view`.`ByPercent` = 'Yes') then ((`ctm_account_q2_balance_view`.`SourceBalance` * `ctm_account_q2_balance_view`.`PercentRate`) / 100) else `ctm_account_q2_balance_view`.`InitialAmount` end),0) AS `InitialAmount`,`ctm_account_q2_balance_view`.`Currency` AS `Currency`,`ctm_account_q2_balance_view`.`SourceAccount` AS `SourceAccount`,`ctm_account_q2_balance_view`.`Location` AS `Location`,`ctm_account_q2_balance_view`.`accStatus` AS `accStatus`,`ctm_account_q2_balance_view`.`aOrder` AS `aOrder`,`ctm_account_q2_balance_view`.`CostCenter` AS `CostCenter`,`ctm_account_q2_balance_view`.`Comments` AS `Comments`,`ctm_account_q2_balance_view`.`Income` AS `Income`,`ctm_account_q2_balance_view`.`Expense` AS `Expense`,`ctm_account_q2_balance_view`.`Transfer` AS `Transfer`,`ctm_account_q2_balance_view`.`Alloc` AS `Alloc`,ifnull((case when (`ctm_account_q2_balance_view`.`ByPercent` = 'Yes') then ((((((`ctm_account_q2_balance_view`.`SourceBalance` * `ctm_account_q2_balance_view`.`PercentRate`) / 100) + `ctm_account_q2_balance_view`.`Income`) - `ctm_account_q2_balance_view`.`Expense`) + `ctm_account_q2_balance_view`.`Transfer`) - `ctm_account_q2_balance_view`.`Alloc`) else `ctm_account_q2_balance_view`.`Balance` end),0) AS `Balance`,ifnull(`getSourceBalance`(`ctm_account_q2_balance_view`.`SourceAccount`),0) AS `SourceBalance`,(select ifnull(sum(`bt`.`amount`),0) from `ctm_transact_batch` `bt` where (`bt`.`transactaccto` = `ctm_account_q2_balance_view`.`Accountid`)) AS `Pending` from `ctm_account_q2_balance_view` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ctm_account_q_balance_view`
--

/*!50001 DROP TABLE IF EXISTS `ctm_account_q_balance_view`*/;
/*!50001 DROP VIEW IF EXISTS `ctm_account_q_balance_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`bobbylog`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ctm_account_q_balance_view` AS select `a`.`Accountid` AS `Accountid`,`a`.`Budgetid` AS `Budgetid`,`a`.`AccountNo` AS `AccountNo`,`a`.`CreationDate` AS `CreationDate`,`a`.`ClosingDate` AS `ClosingDate`,`a`.`AccountName` AS `AccountName`,`a`.`AccountType` AS `AccountType`,`a`.`InitialAmount` AS `InitialAmount`,`a`.`ByPercent` AS `ByPercent`,`a`.`PercentRate` AS `PercentRate`,`a`.`Currency` AS `Currency`,`a`.`SourceAccount` AS `SourceAccount`,`a`.`Location` AS `Location`,`a`.`accStatus` AS `accStatus`,`a`.`aOrder` AS `aOrder`,`a`.`Comments` AS `Comments`,(select ifnull(sum(`i`.`Amount`),0) from `ctm_income` `i` where (`i`.`Accountid` = `a`.`Accountid`)) AS `Income`,(select ifnull(sum(`e`.`Amount`),0) from `ctm_expense` `e` where (`e`.`Accountid` = `a`.`Accountid`)) AS `Expense`,(-((select ifnull(sum(`t`.`Amount`),0) from `ctm_transfer` `t` where (`t`.`AccountFrom` = `a`.`Accountid`))) + (select ifnull(sum(`t`.`Amount`),0) from `ctm_transfer` `t` where (`t`.`AccountTo` = `a`.`Accountid`))) AS `Transfer`,(select ifnull(sum(`lc`.`Amount`),0) from `ctm_allocation` `lc` where (`lc`.`AccountFrom` = `a`.`Accountid`)) AS `Alloc`,(((ifnull(`a`.`InitialAmount`,0) + ((select ifnull(sum(`i`.`Amount`),0) from `ctm_income` `i` where (`i`.`Accountid` = `a`.`Accountid`)) - (select ifnull(sum(`e`.`Amount`),0) from `ctm_expense` `e` where (`e`.`Accountid` = `a`.`Accountid`)))) + (-((select ifnull(sum(`t`.`Amount`),0) from `ctm_transfer` `t` where (`t`.`AccountFrom` = `a`.`Accountid`))) + (select ifnull(sum(`t`.`Amount`),0) from `ctm_transfer` `t` where (`t`.`AccountTo` = `a`.`Accountid`)))) - (select ifnull(sum(`lc`.`Amount`),0) from `ctm_allocation` `lc` where (`lc`.`AccountFrom` = `a`.`Accountid`))) AS `Balance` from `ctm_account_old` `a` union all select `lcc`.`AllocCode` AS `Accountid`,'' AS `Budgetid`,`lcc`.`AllocCode` AS `AccountNo`,'' AS `CreationDate`,'' AS `ClosingDate`,`lcc`.`AllocCode` AS `AccountName`,'Allocation' AS `AccountType`,`lcc`.`Amount` AS `InitialAmount`,(select ifnull(sum(`i`.`Amount`),0) from `ctm_income` `i` where (`i`.`Accountid` = `lcc`.`AllocCode`)) AS `Income`,'No' AS `ByPercent`,'' AS `PercentRate`,'' AS `Currency`,'' AS `SourceAccount`,'Virtual' AS `Location`,'Active' AS `accStatus`,999 AS `aOrder`,'' AS `Comments`,(select ifnull(sum(`e`.`Amount`),0) from `ctm_expense` `e` where (`e`.`Accountid` = `lcc`.`AllocCode`)) AS `Expense`,(-((select ifnull(sum(`t`.`Amount`),0) from `ctm_transfer` `t` where (`t`.`AccountFrom` = `lcc`.`AllocCode`))) + (select ifnull(sum(`t`.`Amount`),0) from `ctm_transfer` `t` where (`t`.`AccountTo` = `lcc`.`AllocCode`))) AS `Transfer`,(select ifnull(sum(`lca`.`Amount`),0) from `ctm_allocation` `lca` where (`lca`.`AccountFrom` = `lcc`.`AllocCode`)) AS `Alloc`,(((ifnull(`lcc`.`Amount`,0) + ((select ifnull(sum(`i`.`Amount`),0) from `ctm_income` `i` where (`i`.`Accountid` = `lcc`.`AllocCode`)) - (select ifnull(sum(`e`.`Amount`),0) from `ctm_expense` `e` where (`e`.`Accountid` = `lcc`.`AllocCode`)))) + (-((select ifnull(sum(`t`.`Amount`),0) from `ctm_transfer` `t` where (`t`.`AccountFrom` = `lcc`.`AllocCode`))) + (select ifnull(sum(`t`.`Amount`),0) from `ctm_transfer` `t` where (`t`.`AccountTo` = `lcc`.`AllocCode`)))) - (select ifnull(sum(`lca`.`Amount`),0) from `ctm_allocation` `lca` where (`lca`.`AccountFrom` = `lcc`.`AllocCode`))) AS `Balance` from `ctm_allocation` `lcc` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ctm_account_set_view`
--

/*!50001 DROP TABLE IF EXISTS `ctm_account_set_view`*/;
/*!50001 DROP VIEW IF EXISTS `ctm_account_set_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`bobbylog`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ctm_account_set_view` AS select `ctm_funder_new`.`Budgetid` AS `Budgetid`,`ctm_funder_new`.`Accountid` AS `Accountid`,`ctm_funder_new`.`AccountNo` AS `AccountNo`,`ctm_funder_new`.`AccountName` AS `Accountname`,`ctm_funder_new`.`AccountType` AS `AccountType` from `ctm_funder_new` where (`ctm_funder_new`.`AccountType` in ('Funder','Bank','Allocation')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ctm_bank_account_funder_balance_view`
--

/*!50001 DROP TABLE IF EXISTS `ctm_bank_account_funder_balance_view`*/;
/*!50001 DROP VIEW IF EXISTS `ctm_bank_account_funder_balance_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`setienne`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ctm_bank_account_funder_balance_view` AS select `a`.`association_id` AS `association_id`,`a`.`association_date` AS `association_date`,`a`.`bank_account_id` AS `bank_account_id`,`a`.`bank_accountname` AS `bank_accountname`,`a`.`bank_accountnumber` AS `bank_accountnumber`,`a`.`target_funder_id` AS `target_funder_id`,`a`.`target_funder_name` AS `bank_funder_name`,`a`.`association_status` AS `association_status`,`a`.`bank_accountlocation` AS `bank_accountlocation`,`b`.`balance_current` AS `balance_current`,`b`.`balance_available` AS `balance_available` from (`bobbylog_budgetdb_templatev4`.`ctm_bank_funder_association` `a` join `bobbylog_bank_transaction_db`.`downloaded_bank_account` `b` on((`a`.`bank_account_id` = `b`.`bank_account_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ctm_budget_funder_set`
--

/*!50001 DROP TABLE IF EXISTS `ctm_budget_funder_set`*/;
/*!50001 DROP VIEW IF EXISTS `ctm_budget_funder_set`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`bobbylog`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ctm_budget_funder_set` AS select `ctm_funder_new`.`Budgetid` AS `budgetid`,`ctm_funder_new`.`Accountid` AS `Accountid`,`ctm_funder_new`.`AccountNo` AS `AccountNo`,`ctm_funder_new`.`AccountName` AS `AccountName`,`ctm_funder_new`.`AccountType` AS `AccountType` from `ctm_funder_new` union all select '' AS `Budgetid`,`ctm_allocation`.`AllocCode` AS `Accountid`,`ctm_allocation`.`AllocCode` AS `AccountNo`,`ctm_allocation`.`AllocCode` AS `AccountName`,'Allocation' AS `AccounType` from `ctm_allocation` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ctm_budget_funder_set_new`
--

/*!50001 DROP TABLE IF EXISTS `ctm_budget_funder_set_new`*/;
/*!50001 DROP VIEW IF EXISTS `ctm_budget_funder_set_new`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`bobbylog`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ctm_budget_funder_set_new` AS select `ctm_funder_new`.`Budgetid` AS `budgetid`,`ctm_funder_new`.`Accountid` AS `Accountid`,`ctm_funder_new`.`AccountNo` AS `AccountNo`,`ctm_funder_new`.`AccountName` AS `AccountName`,`ctm_funder_new`.`AccountType` AS `AccountType` from `ctm_funder_new` union all select '' AS `Budgetid`,`ctm_allocation`.`AllocCode` AS `Accountid`,`ctm_allocation`.`AllocCode` AS `AccountNo`,`ctm_allocation`.`AllocCode` AS `AccountName`,'Allocation' AS `AccounType` from `ctm_allocation` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ctm_budget_info_Old_view`
--

/*!50001 DROP TABLE IF EXISTS `ctm_budget_info_Old_view`*/;
/*!50001 DROP VIEW IF EXISTS `ctm_budget_info_Old_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`bobbylog`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ctm_budget_info_Old_view` AS select `b`.`Budgetid` AS `Budgetid`,`b`.`title` AS `title`,`b`.`Source` AS `Source`,`b`.`ScrType` AS `ScrType`,`b`.`BudgType` AS `BudgType`,`b`.`FYear` AS `FYear`,`b`.`bGroup` AS `bGroup`,`b`.`AssignedTo` AS `AssignedTo`,`b`.`Vision` AS `Vision`,`b`.`accStatus` AS `Status`,`b`.`bNote` AS `bNote`,ifnull(`a`.`InitialAmount`,0) AS `InitAmount`,(select ifnull(sum(`bv`.`Income`),0) from `ctm_account_q4_balance_view` `bv` where (`b`.`Budgetid` = `bv`.`Budgetid`)) AS `Income`,(select ifnull(sum(`bv`.`Expense`),0) from `ctm_account_q4_balance_view` `bv` where (`b`.`Budgetid` = `bv`.`Budgetid`)) AS `Expenses`,(select ifnull(sum(`bv`.`Alloc`),0) from `ctm_account_q4_balance_view` `bv` where (`b`.`Budgetid` = `bv`.`Budgetid`)) AS `Allocs`,((select ifnull(sum(`bv`.`Alloc`),0) from `ctm_account_q4_balance_view` `bv` where (`b`.`Budgetid` = `bv`.`Budgetid`)) - `getDependBudgetExpense`(`b`.`Budgetid`)) AS `bVariance`,(((ifnull(`a`.`InitialAmount`,0) + (select ifnull(sum(`bv`.`Income`),0) from `ctm_account_q4_balance_view` `bv` where (`b`.`Budgetid` = `bv`.`Budgetid`))) - (select ifnull(sum(`bv`.`Expense`),0) from `ctm_account_q4_balance_view` `bv` where (`b`.`Budgetid` = `bv`.`Budgetid`))) - (select ifnull(sum(`bv`.`Alloc`),0) from `ctm_account_q4_balance_view` `bv` where (`b`.`Budgetid` = `bv`.`Budgetid`))) AS `Available`,((((ifnull(`a`.`InitialAmount`,0) + (select ifnull(sum(`bv`.`Income`),0) from `ctm_account_q4_balance_view` `bv` where (`b`.`Budgetid` = `bv`.`Budgetid`))) - (select ifnull(sum(`bv`.`Expense`),0) from `ctm_account_q4_balance_view` `bv` where (`b`.`Budgetid` = `bv`.`Budgetid`))) - (select ifnull(sum(`bv`.`Alloc`),0) from `ctm_account_q4_balance_view` `bv` where (`b`.`Budgetid` = `bv`.`Budgetid`))) + ((select ifnull(sum(`bv`.`Alloc`),0) from `ctm_account_q4_balance_view` `bv` where (`b`.`Budgetid` = `bv`.`Budgetid`)) - `getDependBudgetExpense`(`b`.`Budgetid`))) AS `AbsAvailable` from (`ctm_budget_old` `b` left join `ctm_account_q4_balance_view` `a` on((`b`.`Source` = `a`.`AccountNo`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ctm_budget_info_view`
--

/*!50001 DROP TABLE IF EXISTS `ctm_budget_info_view`*/;
/*!50001 DROP VIEW IF EXISTS `ctm_budget_info_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`bobbylog`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ctm_budget_info_view` AS select `b`.`Budgetid` AS `Budgetid`,`b`.`BudgetCode` AS `BudgetCode`,`b`.`CostCenter` AS `CostCenter`,`b`.`ctyearid` AS `ctyearid`,`b`.`title` AS `title`,`b`.`Source` AS `Source`,`b`.`ScrType` AS `ScrType`,`b`.`BudgType` AS `BudgType`,`b`.`FYear` AS `FYear`,`b`.`bGroup` AS `bGroup`,`b`.`AssignedTo` AS `AssignedTo`,`b`.`Owner` AS `Owner`,`b`.`Vision` AS `Vision`,`b`.`accStatus` AS `accStatus`,`b`.`bNote` AS `bNote`,`b`.`CreatedBy` AS `CreatedBy`,`b`.`ModifiedBy` AS `ModifiedBy`,`b`.`ModifiedDate` AS `ModifiedDate`,`b`.`StartDate` AS `StartDate`,`b`.`Approved` AS `Approved`,`b`.`ApprovedBy` AS `ApprovedBy`,`b`.`ApprovalDate` AS `ApprovalDate`,`b`.`Followers` AS `Followers`,`b`.`flagged` AS `flagged`,ifnull(`a`.`InitialAmount`,0) AS `InitAmount`,(select ifnull(sum(`bv`.`Income`),0) from `ctm_account_q4_balance_view` `bv` where (`b`.`Budgetid` = `bv`.`Budgetid`)) AS `Income`,(select ifnull(sum(`bv`.`Expense`),0) from `ctm_account_q4_balance_view` `bv` where (`b`.`Budgetid` = `bv`.`Budgetid`)) AS `Expenses`,(select ifnull(sum(`bv`.`Alloc`),0) from `ctm_account_q4_balance_view` `bv` where (`b`.`Budgetid` = `bv`.`Budgetid`)) AS `Allocs`,((select ifnull(sum(`bv`.`Alloc`),0) from `ctm_account_q4_balance_view` `bv` where (`b`.`Budgetid` = `bv`.`Budgetid`)) - `getDependBudgetExpense`(`b`.`Budgetid`)) AS `bVariance`,(((select ifnull(sum(`bv`.`InitialAmount`),0) from `ctm_account_q4_balance_view` `bv` where ((`b`.`Budgetid` = `bv`.`Budgetid`) + (select ifnull(sum(`bv`.`Income`),0) from `ctm_account_q4_balance_view` `bv` where (`b`.`Budgetid` = `bv`.`Budgetid`)))) - (select ifnull(sum(`bv`.`Expense`),0) from `ctm_account_q4_balance_view` `bv` where (`b`.`Budgetid` = `bv`.`Budgetid`))) - (select ifnull(sum(`bv`.`Alloc`),0) from `ctm_account_q4_balance_view` `bv` where (`b`.`Budgetid` = `bv`.`Budgetid`))) AS `Available`,(((((select ifnull(sum(`bv`.`InitialAmount`),0) from `ctm_account_q4_balance_view` `bv` where (`b`.`Budgetid` = `bv`.`Budgetid`)) + (select ifnull(sum(`bv`.`Income`),0) from `ctm_account_q4_balance_view` `bv` where (`b`.`Budgetid` = `bv`.`Budgetid`))) - (select ifnull(sum(`bv`.`Expense`),0) from `ctm_account_q4_balance_view` `bv` where (`b`.`Budgetid` = `bv`.`Budgetid`))) - (select ifnull(sum(`bv`.`Alloc`),0) from `ctm_account_q4_balance_view` `bv` where (`b`.`Budgetid` = `bv`.`Budgetid`))) + ((select ifnull(sum(`bv`.`Alloc`),0) from `ctm_account_q4_balance_view` `bv` where (`b`.`Budgetid` = `bv`.`Budgetid`)) - `getDependBudgetExpense`(`b`.`Budgetid`))) AS `AbsAvailable`,(select ifnull(sum(`bt`.`amount`),0) from `ctm_transact_batch` `bt` where (`getBudgetId`(`bt`.`transactaccto`) = `b`.`Budgetid`)) AS `Pending` from (`ctm_budget_old` `b` left join `ctm_account_q4_balance_view` `a` on((`b`.`Source` = `a`.`AccountNo`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ctm_budget_info_view_new`
--

/*!50001 DROP TABLE IF EXISTS `ctm_budget_info_view_new`*/;
/*!50001 DROP VIEW IF EXISTS `ctm_budget_info_view_new`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`bobbylog`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ctm_budget_info_view_new` AS select `ctm_account_new`.`Accountid` AS `Accountid`,`ctm_account_new`.`Budgetid` AS `Budgetid`,sum(`ctm_account_new`.`Balance`) AS `SubTotal` from `ctm_account_new` group by `ctm_account_new`.`Budgetid` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ctm_budget_items_set`
--

/*!50001 DROP TABLE IF EXISTS `ctm_budget_items_set`*/;
/*!50001 DROP VIEW IF EXISTS `ctm_budget_items_set`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`bobbylog`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ctm_budget_items_set` AS select `ctm_account_new`.`Budgetid` AS `budgetid`,`ctm_account_new`.`Accountid` AS `Accountid`,`ctm_account_new`.`AccountNo` AS `AccountNo`,`ctm_account_new`.`AccountName` AS `AccountName`,`ctm_account_new`.`AccountType` AS `AccountType` from `ctm_account_new` where ((`ctm_account_new`.`AccountType` not in ('Funder','Bank')) or isnull(`ctm_account_new`.`AccountType`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ctm_budget_items_set_new`
--

/*!50001 DROP TABLE IF EXISTS `ctm_budget_items_set_new`*/;
/*!50001 DROP VIEW IF EXISTS `ctm_budget_items_set_new`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`bobbylog`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ctm_budget_items_set_new` AS select `ctm_account_new`.`Budgetid` AS `budgetid`,`ctm_account_new`.`Accountid` AS `Accountid`,`ctm_account_new`.`AccountNo` AS `AccountNo`,`ctm_account_new`.`AccountName` AS `AccountName`,`ctm_account_new`.`AccountType` AS `AccountType` from `ctm_account_new` where ((`ctm_account_new`.`AccountType` not in ('Funder','Bank')) or isnull(`ctm_account_new`.`AccountType`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ctm_budget_q4_info_view`
--

/*!50001 DROP TABLE IF EXISTS `ctm_budget_q4_info_view`*/;
/*!50001 DROP VIEW IF EXISTS `ctm_budget_q4_info_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`bobbylog`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ctm_budget_q4_info_view` AS select `b`.`Budgetid` AS `Budgetid`,`b`.`title` AS `title`,`b`.`Source` AS `Source`,`b`.`ScrType` AS `ScrType`,`b`.`BudgType` AS `BudgType`,`b`.`accStatus` AS `accStatus`,`b`.`bNote` AS `bNote`,ifnull(`a`.`InitialAmount`,0) AS `InitAmount`,(select ifnull(sum(`bv`.`Income`),0) from `ctm_account_q4_balance_view` `bv` where (`b`.`Budgetid` = `bv`.`Budgetid`)) AS `Income`,(select ifnull(sum(`bv`.`Expense`),0) from `ctm_account_q4_balance_view` `bv` where (`b`.`Budgetid` = `bv`.`Budgetid`)) AS `Expenses`,(select ifnull(sum(`bv`.`Alloc`),0) from `ctm_account_q4_balance_view` `bv` where (`b`.`Budgetid` = `bv`.`Budgetid`)) AS `Allocs`,(((ifnull(`a`.`InitialAmount`,0) + (select ifnull(sum(`bv`.`Income`),0) from `ctm_account_q4_balance_view` `bv` where (`b`.`Budgetid` = `bv`.`Budgetid`))) - (select ifnull(sum(`bv`.`Expense`),0) from `ctm_account_q4_balance_view` `bv` where (`b`.`Budgetid` = `bv`.`Budgetid`))) - (select ifnull(sum(`bv`.`Alloc`),0) from `ctm_account_q4_balance_view` `bv` where (`b`.`Budgetid` = `bv`.`Budgetid`))) AS `Available` from (`ctm_budget_old` `b` left join `ctm_account_old` `a` on((`b`.`Source` = `a`.`AccountNo`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ctm_budget_relations_view`
--

/*!50001 DROP TABLE IF EXISTS `ctm_budget_relations_view`*/;
/*!50001 DROP VIEW IF EXISTS `ctm_budget_relations_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`bobbylog`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ctm_budget_relations_view` AS select `a`.`Budgetid` AS `originbudget`,`lc`.`AllocCode` AS `AllocKey`,`b`.`Budgetid` AS `destbudget` from ((`ctm_budget_new` `b` join `ctm_allocation` `lc` on((`b`.`Source` = `lc`.`AllocCode`))) join `ctm_account_new` `a` on((`lc`.`AccountFrom` = `a`.`Accountid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ctm_expense_visual_by_category_view`
--

/*!50001 DROP TABLE IF EXISTS `ctm_expense_visual_by_category_view`*/;
/*!50001 DROP VIEW IF EXISTS `ctm_expense_visual_by_category_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`setienne`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ctm_expense_visual_by_category_view` AS select year(`ctm_expense`.`TransDate`) AS `Yeart`,`ctm_expense`.`Category` AS `Category`,sum(`ctm_expense`.`Amount`) AS `Total`,concat('{','value: ',cast(sum(`ctm_expense`.`Amount`) as decimal(12,2)),' ,','name: \'',`ctm_expense`.`Category`,'\' }') AS `jsontext` from `ctm_expense` where (isnull(`ctm_expense`.`exp_options`) or (`ctm_expense`.`exp_options` = '')) group by year(`ctm_expense`.`TransDate`),`ctm_expense`.`Category` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ctm_expense_visual_by_month_view`
--

/*!50001 DROP TABLE IF EXISTS `ctm_expense_visual_by_month_view`*/;
/*!50001 DROP VIEW IF EXISTS `ctm_expense_visual_by_month_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`setienne`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ctm_expense_visual_by_month_view` AS select year(`ctm_expense`.`TransDate`) AS `Yeart`,month(`ctm_expense`.`TransDate`) AS `Montht`,sum(`ctm_expense`.`Amount`) AS `Total`,concat('{','Year:',year(`ctm_expense`.`TransDate`),',','MONTH:',month(`ctm_expense`.`TransDate`),',','Amount:',sum(`ctm_expense`.`Amount`),'}') AS `jsontext` from `ctm_expense` where (isnull(`ctm_expense`.`exp_options`) or (`ctm_expense`.`exp_options` = '')) group by year(`ctm_expense`.`TransDate`),month(`ctm_expense`.`TransDate`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ctm_expense_visual_by_vendor_view`
--

/*!50001 DROP TABLE IF EXISTS `ctm_expense_visual_by_vendor_view`*/;
/*!50001 DROP VIEW IF EXISTS `ctm_expense_visual_by_vendor_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`setienne`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ctm_expense_visual_by_vendor_view` AS select year(`ctm_expense`.`TransDate`) AS `Yeart`,`ctm_expense`.`supplier` AS `Supplier`,sum(`ctm_expense`.`Amount`) AS `Total`,concat('{','label: \'',replace(`ctm_expense`.`supplier`,'\'',' '),'\' ,','value:',sum(`ctm_expense`.`Amount`),'}') AS `jsontext` from `ctm_expense` where (isnull(`ctm_expense`.`exp_options`) or (`ctm_expense`.`exp_options` = '')) group by year(`ctm_expense`.`TransDate`),`ctm_expense`.`supplier` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ctm_funder_activities_view`
--

/*!50001 DROP TABLE IF EXISTS `ctm_funder_activities_view`*/;
/*!50001 DROP VIEW IF EXISTS `ctm_funder_activities_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`bobbylog`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ctm_funder_activities_view` AS select sum(`ctm_account_activities_view`.`Amount`) AS `Total`,`ctm_account_activities_view`.`TransType` AS `TransType`,`ctm_account_activities_view`.`AccountSource` AS `AccountSource` from `bobbylog_budgetdb_v2`.`ctm_account_activities_view` where (`ctm_account_activities_view`.`TransType` <> 'income') group by `ctm_account_activities_view`.`TransType`,`ctm_account_activities_view`.`AccountSource` union all select sum(`ctm_funder_transfer_activities_view`.`Amount`) AS `Total`,'BankTrans' AS `TransType`,`ctm_funder_transfer_activities_view`.`Accountid` AS `AccountSource` from `bobbylog_budgetdb_v2`.`ctm_funder_transfer_activities_view` group by `ctm_funder_transfer_activities_view`.`TransType`,`ctm_funder_transfer_activities_view`.`Accountid` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ctm_funder_details_activities_view`
--

/*!50001 DROP TABLE IF EXISTS `ctm_funder_details_activities_view`*/;
/*!50001 DROP VIEW IF EXISTS `ctm_funder_details_activities_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`bobbylog`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ctm_funder_details_activities_view` AS select `ctm_account_activities_view`.`Accountid` AS `Accountid`,`ctm_account_activities_view`.`TransDate` AS `TransDate`,`ctm_account_activities_view`.`Amount` AS `Amount`,`ctm_account_activities_view`.`TransType` AS `TransType`,`ctm_account_activities_view`.`AccountSource` AS `AccountSource`,`ctm_account_activities_view`.`Notes` AS `Notes`,`ctm_account_activities_view`.`ref_transact_id` AS `ref_transact_id` from `ctm_account_activities_view` where (`ctm_account_activities_view`.`TransType` <> 'income') union all select `ctm_account_activities_view`.`Accountid` AS `Accountid`,`ctm_account_activities_view`.`TransDate` AS `TransDate`,`ctm_account_activities_view`.`Amount` AS `Amount`,`ctm_account_activities_view`.`TransType` AS `TransType`,`getFunderAccNo`(`ctm_account_activities_view`.`Accountid`) AS `AccountSource`,`ctm_account_activities_view`.`Notes` AS `Notes`,`ctm_account_activities_view`.`ref_transact_id` AS `ref_transact_id` from `ctm_account_activities_view` where (`ctm_account_activities_view`.`TransType` = 'income') union all select `ctm_funder_transfer_activities_view`.`Accountid` AS `Accountid`,`ctm_funder_transfer_activities_view`.`TransDate` AS `TransDate`,`ctm_funder_transfer_activities_view`.`Amount` AS `Amount`,'BankTrans' AS `TransType`,`getFunderAccNo`(`ctm_funder_transfer_activities_view`.`Accountid`) AS `AccountSource`,`ctm_funder_transfer_activities_view`.`Notes` AS `Notes`,'' AS `ref_transact_id` from `ctm_funder_transfer_activities_view` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ctm_funder_income_activities_view`
--

/*!50001 DROP TABLE IF EXISTS `ctm_funder_income_activities_view`*/;
/*!50001 DROP VIEW IF EXISTS `ctm_funder_income_activities_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`bobbylog`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ctm_funder_income_activities_view` AS select sum(`ctm_account_activities_view`.`Amount`) AS `Total`,`ctm_account_activities_view`.`TransType` AS `TransType`,`ctm_account_activities_view`.`AccountSource` AS `AccountSource`,`ctm_account_activities_view`.`Accountid` AS `Accountid` from `bobbylog_budgetdb_v2`.`ctm_account_activities_view` where (`ctm_account_activities_view`.`TransType` = 'income') group by `ctm_account_activities_view`.`Accountid`,`ctm_account_activities_view`.`TransType`,`ctm_account_activities_view`.`AccountSource` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ctm_funder_q2_balance_view`
--

/*!50001 DROP TABLE IF EXISTS `ctm_funder_q2_balance_view`*/;
/*!50001 DROP VIEW IF EXISTS `ctm_funder_q2_balance_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ctm_funder_q2_balance_view` AS select `bobbylog_budgetdb_prod`.`ctm_funder_old_12_29_19`.`Accountid` AS `Accountid`,`bobbylog_budgetdb_prod`.`ctm_funder_old_12_29_19`.`AccountNo` AS `AccountNo`,`bobbylog_budgetdb_prod`.`ctm_funder_old_12_29_19`.`InitialAmount` AS `initialAmount`,ifnull(`getFunderIncomeByAccId`(`bobbylog_budgetdb_prod`.`ctm_funder_old_12_29_19`.`Accountid`),0) AS `Income`,ifnull(`getFunderAllocByAccScr`(`bobbylog_budgetdb_prod`.`ctm_funder_old_12_29_19`.`AccountNo`),0) AS `Alloc`,ifnull(`getFunderExpenseByAccScr`(`bobbylog_budgetdb_prod`.`ctm_funder_old_12_29_19`.`AccountNo`),0) AS `Expense`,ifnull(`getFunderTransferByAccId`(`bobbylog_budgetdb_prod`.`ctm_funder_old_12_29_19`.`Accountid`),0) AS `Transfer`,((((`bobbylog_budgetdb_prod`.`ctm_funder_old_12_29_19`.`InitialAmount` + ifnull(`getFunderIncomeByAccId`(`bobbylog_budgetdb_prod`.`ctm_funder_old_12_29_19`.`Accountid`),0)) - ifnull(`getFunderAllocByAccScr`(`bobbylog_budgetdb_prod`.`ctm_funder_old_12_29_19`.`AccountNo`),0)) - ifnull(`getFunderExpenseByAccScr`(`bobbylog_budgetdb_prod`.`ctm_funder_old_12_29_19`.`AccountNo`),0)) + ifnull(`getFunderTransferByAccId`(`bobbylog_budgetdb_prod`.`ctm_funder_old_12_29_19`.`Accountid`),0)) AS `Balance` from `bobbylog_budgetdb_prod`.`ctm_funder_old_12_29_19` union all select `lcc`.`AllocCode` AS `Accountid`,`lcc`.`AllocCode` AS `AccountNo`,`lcc`.`Amount` AS `InitialAmount`,ifnull(`getFunderIncomeByAccId`(`lcc`.`AllocCode`),0) AS `Income`,ifnull(`getFunderAllocByAccScr`(`lcc`.`AllocCode`),0) AS `Alloc`,ifnull(`getFunderExpenseByAccScr`(`lcc`.`AllocCode`),0) AS `Expense`,ifnull(`getFunderTransferByAccScr`(`lcc`.`AllocCode`),0) AS `Transfer`,((((`lcc`.`Amount` + ifnull(`getFunderIncomeByAccId`(`lcc`.`AllocCode`),0)) - ifnull(`getFunderAllocByAccScr`(`lcc`.`AllocCode`),0)) - ifnull(`getFunderExpenseByAccScr`(`lcc`.`AllocCode`),0)) + ifnull(`getFunderTransferByAccScr`(`lcc`.`AllocCode`),0)) AS `Balance` from ((`bobbylog_budgetdb_prod`.`ctm_allocation` `lcc` join `bobbylog_budgetdb_prod`.`ctm_account_old` `ac` on((`ac`.`Accountid` = `lcc`.`AccountFrom`))) join `bobbylog_budgetdb_prod`.`ctm_budget_old` `bg` on((`ac`.`Budgetid` = `bg`.`Budgetid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ctm_funder_q_balance_Old_view`
--

/*!50001 DROP TABLE IF EXISTS `ctm_funder_q_balance_Old_view`*/;
/*!50001 DROP VIEW IF EXISTS `ctm_funder_q_balance_Old_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`bobbylog`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ctm_funder_q_balance_Old_view` AS select `a`.`Accountid` AS `Accountid`,`a`.`Budgetid` AS `Budgetid`,`a`.`ctyearid` AS `ctyearid`,`a`.`AccountNo` AS `AccountNo`,`a`.`CreationDate` AS `CreationDate`,`a`.`ClosingDate` AS `ClosingDate`,`a`.`AccountName` AS `AccountName`,`a`.`AccountType` AS `AccountType`,`a`.`InitialAmount` AS `InitialAmount`,`a`.`ByPercent` AS `ByPercent`,`a`.`PercentRate` AS `PercentRate`,`a`.`Currency` AS `Currency`,`a`.`SourceAccount` AS `SourceAccount`,`a`.`Location` AS `Location`,`a`.`accStatus` AS `accStatus`,`a`.`aOrder` AS `aOrder`,`a`.`AssignedTo` AS `AssignedTo`,`a`.`Owner` AS `Owner`,`a`.`Comments` AS `Comments`,(select ifnull(sum(`i`.`Amount`),0) from `ctm_income` `i` where (`i`.`Accountid` = `a`.`Accountid`)) AS `Income`,'' AS `Expense`,(-((select ifnull(sum(`t`.`Amount`),0) from `ctm_btransfer` `t` where (`t`.`AccountFrom` = `a`.`Accountid`))) + (select ifnull(sum(`t`.`Amount`),0) from `ctm_btransfer` `t` where (`t`.`AccountTo` = `a`.`Accountid`))) AS `Transfer`,(select ifnull(sum(`lc`.`Amount`),0) from `ctm_allocation` `lc` where (`lc`.`AccountFrom` = `a`.`Accountid`)) AS `Alloc`,(((ifnull(`a`.`InitialAmount`,0) + ((select ifnull(sum(`i`.`Amount`),0) from `ctm_income` `i` where (`i`.`Accountid` = `a`.`Accountid`)) - (select ifnull(sum(`e`.`Amount`),0) from `ctm_expense` `e` where (`e`.`Accountid` = `a`.`Accountid`)))) + (-((select ifnull(sum(`t`.`Amount`),0) from `ctm_btransfer` `t` where (`t`.`AccountFrom` = `a`.`Accountid`))) + (select ifnull(sum(`t`.`Amount`),0) from `ctm_btransfer` `t` where (`t`.`AccountTo` = `a`.`Accountid`)))) - (select ifnull(sum(`lc`.`Amount`),0) from `ctm_allocation` `lc` where (`lc`.`AccountFrom` = `a`.`Accountid`))) AS `Balance` from `ctm_funder_old_12_29_19` `a` union all select `lcc`.`AllocCode` AS `Accountid`,'' AS `Budgetid`,`bg`.`ctyearid` AS `ctyearid`,`lcc`.`AllocCode` AS `AccountNo`,'' AS `CreationDate`,'' AS `ClosingDate`,`lcc`.`AllocCode` AS `AccountName`,'Allocation' AS `AccountType`,`lcc`.`Amount` AS `InitialAmount`,(select ifnull(sum(`i`.`Amount`),0) from `ctm_income` `i` where (`i`.`Accountid` = `lcc`.`AllocCode`)) AS `Income`,'No' AS `ByPercent`,'' AS `PercentRate`,'' AS `Currency`,'' AS `SourceAccount`,'Virtual' AS `Location`,'Active' AS `Status`,999 AS `aOrder`,'' AS `AssignedTo`,'' AS `Owner`,'' AS `Comments`,'' AS `Expense`,(-((select ifnull(sum(`t`.`Amount`),0) from `ctm_transfer` `t` where (`t`.`AccountFrom` = `lcc`.`AllocCode`))) + (select ifnull(sum(`t`.`Amount`),0) from `ctm_transfer` `t` where (`t`.`AccountTo` = `lcc`.`AllocCode`))) AS `Transfer`,(select ifnull(sum(`lca`.`Amount`),0) from `ctm_allocation` `lca` where (`lca`.`AccountFrom` = `lcc`.`AllocCode`)) AS `Alloc`,(((ifnull(`lcc`.`Amount`,0) + ((select ifnull(sum(`i`.`Amount`),0) from `ctm_income` `i` where (`i`.`Accountid` = `lcc`.`AllocCode`)) - (select ifnull(sum(`e`.`Amount`),0) from `ctm_expense` `e` where (`e`.`Accountid` = `lcc`.`AllocCode`)))) + (-((select ifnull(sum(`t`.`Amount`),0) from `ctm_transfer` `t` where (`t`.`AccountFrom` = `lcc`.`AllocCode`))) + (select ifnull(sum(`t`.`Amount`),0) from `ctm_transfer` `t` where (`t`.`AccountTo` = `lcc`.`AllocCode`)))) - (select ifnull(sum(`lca`.`Amount`),0) from `ctm_allocation` `lca` where (`lca`.`AccountFrom` = `lcc`.`AllocCode`))) AS `Balance` from ((`ctm_allocation` `lcc` join `ctm_account_old` `ac` on((`ac`.`Accountid` = `lcc`.`AccountFrom`))) join `ctm_budget_old` `bg` on((`ac`.`Budgetid` = `bg`.`Budgetid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ctm_funder_q_balance_view`
--

/*!50001 DROP TABLE IF EXISTS `ctm_funder_q_balance_view`*/;
/*!50001 DROP VIEW IF EXISTS `ctm_funder_q_balance_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`bobbylog`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ctm_funder_q_balance_view` AS select `a`.`Accountid` AS `Accountid`,`a`.`Budgetid` AS `Budgetid`,`a`.`ctyearid` AS `ctyearid`,`a`.`AccountNo` AS `AccountNo`,`a`.`CreationDate` AS `CreationDate`,`a`.`ClosingDate` AS `ClosingDate`,`a`.`AccountName` AS `AccountName`,`a`.`AccountType` AS `AccountType`,`a`.`InitialAmount` AS `InitialAmount`,`a`.`ByPercent` AS `ByPercent`,`a`.`PercentRate` AS `PercentRate`,`a`.`Currency` AS `Currency`,`a`.`SourceAccount` AS `SourceAccount`,`a`.`Location` AS `Location`,`a`.`accStatus` AS `accStatus`,`a`.`aOrder` AS `aOrder`,`a`.`AssignedTo` AS `AssignedTo`,`a`.`Owner` AS `Owner`,`a`.`Comments` AS `Comments`,'' AS `Balance`,`a`.`FinalBalance` AS `FinalBalance` from `ctm_funder_new` `a` union all select `lcc`.`AllocCode` AS `Accountid`,'' AS `Budgetid`,`bg`.`ctyearid` AS `ctyearid`,`lcc`.`AllocCode` AS `AccountNo`,'' AS `CreationDate`,'' AS `ClosingDate`,`lcc`.`AllocCode` AS `AccountName`,'Allocation' AS `AccountType`,`lcc`.`Amount` AS `InitialAmount`,'No' AS `ByPercent`,'' AS `PercentRate`,'' AS `Currency`,'' AS `SourceAccount`,'Virtual' AS `Location`,'Active' AS `Status`,999 AS `aOrder`,`lcc`.`AssignedTo` AS `AssignedTo`,`lcc`.`Owner` AS `Owner`,'' AS `Comments`,'' AS `Balance`,`lcc`.`Amount` AS `FinalBalance` from ((`ctm_allocation` `lcc` join `ctm_account_new` `ac` on((`ac`.`Accountid` = `lcc`.`AccountFrom`))) join `ctm_budget_new` `bg` on((`ac`.`Budgetid` = `bg`.`Budgetid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ctm_funder_transfer_activities_view`
--

/*!50001 DROP TABLE IF EXISTS `ctm_funder_transfer_activities_view`*/;
/*!50001 DROP VIEW IF EXISTS `ctm_funder_transfer_activities_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`bobbylog`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ctm_funder_transfer_activities_view` AS (select `ctm_transfer_funder_2way_view`.`Accountid` AS `Accountid`,`ctm_transfer_funder_2way_view`.`TransDate` AS `TransDate`,`ctm_transfer_funder_2way_view`.`AccountAlias` AS `AccountAlias`,`ctm_transfer_funder_2way_view`.`Amount` AS `Amount`,`ctm_transfer_funder_2way_view`.`Notes` AS `Notes`,'BankTrans' AS `TransType`,`getAccSource`(`ctm_transfer_funder_2way_view`.`Accountid`) AS `AccountSource` from `ctm_transfer_funder_2way_view`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ctm_income_visual_by_month_view`
--

/*!50001 DROP TABLE IF EXISTS `ctm_income_visual_by_month_view`*/;
/*!50001 DROP VIEW IF EXISTS `ctm_income_visual_by_month_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`setienne`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ctm_income_visual_by_month_view` AS select year(`ctm_income`.`TransDate`) AS `Yeart`,month(`ctm_income`.`TransDate`) AS `Montht`,sum(`ctm_income`.`Amount`) AS `Total`,concat('{','Year:',year(`ctm_income`.`TransDate`),',','MONTH:',month(`ctm_income`.`TransDate`),',','Amount:',sum(`ctm_income`.`Amount`),'}') AS `jsontext` from `ctm_income` where (isnull(`ctm_income`.`exp_options`) or (`ctm_income`.`exp_options` = '')) group by year(`ctm_income`.`TransDate`),month(`ctm_income`.`TransDate`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ctm_transact_batch_unposted_view`
--

/*!50001 DROP TABLE IF EXISTS `ctm_transact_batch_unposted_view`*/;
/*!50001 DROP VIEW IF EXISTS `ctm_transact_batch_unposted_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`bobbylog`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ctm_transact_batch_unposted_view` AS select `ctm_transact_batch`.`batchid` AS `batchid`,`ctm_transact_batch`.`ctyearid` AS `ctyearid`,`ctm_transact_batch`.`batchdate` AS `batchdate`,`ctm_transact_batch`.`transacttype` AS `transacttype`,`ctm_transact_batch`.`transactdate` AS `transactdate`,`ctm_transact_batch`.`amount` AS `amount`,`ctm_transact_batch`.`transactaccfrom` AS `transactaccfrom`,`ctm_transact_batch`.`transactaccto` AS `transactaccto`,`ctm_transact_batch`.`transactdesc` AS `transactdesc`,`ctm_transact_batch`.`transactnote` AS `transactnote`,`ctm_transact_batch`.`transactowner` AS `transactowner`,`ctm_transact_batch`.`processedby` AS `processedby`,`ctm_transact_batch`.`posteddate` AS `posteddate`,`ctm_transact_batch`.`supplier` AS `supplier`,`ctm_transact_batch`.`processed` AS `processed` from `ctm_transact_batch` where (`ctm_transact_batch`.`processed` = 0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ctm_transfer_2way_view`
--

/*!50001 DROP TABLE IF EXISTS `ctm_transfer_2way_view`*/;
/*!50001 DROP VIEW IF EXISTS `ctm_transfer_2way_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`bobbylog`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ctm_transfer_2way_view` AS (select `ctm_transfer`.`AccountFrom` AS `Accountid`,`ctm_transfer`.`TransDate` AS `TransDate`,concat('To ',convert(`getAccountName`(`ctm_transfer`.`AccountTo`) using utf8mb4)) AS `AccountAlias`,-(`ctm_transfer`.`Amount`) AS `Amount`,`ctm_transfer`.`Notes` AS `Notes`,'Transfer' AS `TransType` from `ctm_transfer`) union all (select `ctm_transfer`.`AccountTo` AS `Accountid`,`ctm_transfer`.`TransDate` AS `TransDate`,concat('From ',convert(`getAccountName`(`ctm_transfer`.`AccountFrom`) using utf8mb4)) AS `AccountAlias`,`ctm_transfer`.`Amount` AS `Amount`,`ctm_transfer`.`Notes` AS `Notes`,'Transfer' AS `TransType` from `ctm_transfer`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ctm_transfer_funder_2way_view`
--

/*!50001 DROP TABLE IF EXISTS `ctm_transfer_funder_2way_view`*/;
/*!50001 DROP VIEW IF EXISTS `ctm_transfer_funder_2way_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`bobbylog`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ctm_transfer_funder_2way_view` AS (select `ctm_btransfer`.`AccountFrom` AS `Accountid`,`ctm_btransfer`.`TransDate` AS `TransDate`,concat('To ',convert(`getAccountName`(`ctm_btransfer`.`AccountTo`) using utf8mb4)) AS `AccountAlias`,-(`ctm_btransfer`.`Amount`) AS `Amount`,`ctm_btransfer`.`Notes` AS `Notes`,'BankTrans' AS `TransType` from `ctm_btransfer`) union all (select `ctm_btransfer`.`AccountTo` AS `Accountid`,`ctm_btransfer`.`TransDate` AS `TransDate`,concat('From ',convert(`getAccountName`(`ctm_btransfer`.`AccountFrom`) using utf8mb4)) AS `AccountAlias`,`ctm_btransfer`.`Amount` AS `Amount`,`ctm_btransfer`.`Notes` AS `Notes`,'BankTrans' AS `TransType` from `ctm_btransfer`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ctm_user_group_view`
--

/*!50001 DROP TABLE IF EXISTS `ctm_user_group_view`*/;
/*!50001 DROP VIEW IF EXISTS `ctm_user_group_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`bobbylog`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ctm_user_group_view` AS select `u`.`profileid` AS `profileid`,`u`.`username` AS `username`,`ug`.`userid` AS `userid`,`ug`.`groupid` AS `groupid`,`g`.`groupname` AS `groupname`,`g`.`description` AS `description` from ((`ctm_user` `u` join `ctm_user_group` `ug` on((`u`.`userid` = `ug`.`userid`))) join `ctm_group` `g` on((`g`.`groupid` = `ug`.`groupid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ctm_user_set_view`
--

/*!50001 DROP TABLE IF EXISTS `ctm_user_set_view`*/;
/*!50001 DROP VIEW IF EXISTS `ctm_user_set_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`bobbylog`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ctm_user_set_view` AS select distinct `ctm_user`.`userid` AS `userid`,`ctm_user`.`username` AS `username` from `ctm_user` where (`ctm_user`.`status` = 'Enabled') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-26  0:26:49
