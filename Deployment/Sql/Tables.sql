CREATE TABLE `userdetail` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` longtext NOT NULL,
  `AccountingName` longtext NOT NULL,
  `DefaultJobEntries` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;


CREATE TABLE `department` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Description` longtext NOT NULL,
  `BaseCode` longtext NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

CREATE TABLE `userdepartment` (
  `UserDetailId` int(11) NOT NULL,
  `DepartmentId` int(11) NOT NULL,
  PRIMARY KEY (`UserDetailId`,`DepartmentId`),
  KEY `IX_UserDetailId` (`UserDetailId`) USING HASH,
  KEY `IX_DepartmentId` (`DepartmentId`) USING HASH,
  CONSTRAINT `FK_UserDepartment_Departments_DepartmentId` FOREIGN KEY (`DepartmentId`) REFERENCES `department` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_UserDepartment_UserDetails_UserDetailId` FOREIGN KEY (`UserDetailId`) REFERENCES `userdetail` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `workcode` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `BaseCode` longtext NOT NULL,
  `Description` longtext NOT NULL,
  `Area` longtext NOT NULL,
  `Sub` longtext NOT NULL,
  `IsJobNumberRequired` tinyint(1) NOT NULL,
  `IsEngineeringCode` tinyint(1) NOT NULL,
  `IsFieldServiceCode` tinyint(1) NOT NULL,
  `IsGovernmentCode` tinyint(1) NOT NULL,
  `IsOfficeCode` tinyint(1) NOT NULL,
  `IsShopCode` tinyint(1) NOT NULL,
  `IsActive` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;

CREATE TABLE `userworkcode` (
  `UserDetailId` int(11) NOT NULL,
  `WorkCodeId` int(11) NOT NULL,
  PRIMARY KEY (`UserDetailId`,`WorkCodeId`),
  KEY `IX_UserDetailId` (`UserDetailId`) USING HASH,
  KEY `IX_WorkCodeId` (`WorkCodeId`) USING HASH,
  CONSTRAINT `FK_UserWorkCode_UserDetails` FOREIGN KEY (`UserDetailId`) REFERENCES `userdetail` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_UserWorkCode_WorkCodes` FOREIGN KEY (`WorkCodeId`) REFERENCES `workcode` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `timeentry` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `UserDetailId` int(11) NOT NULL,
  `EntryDate` date NOT NULL,
  `JobNumber` longtext,
  `Comments` longtext,
  `ExportedToNavision` tinyint(1) NOT NULL DEFAULT '0',
  `ExportedToPayroll` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`),
  KEY `IX_UserDetailId` (`UserDetailId`) USING HASH,
  CONSTRAINT `FK_TimeEntries_UserDetails_UserDetailId` FOREIGN KEY (`UserDetailId`) REFERENCES `userdetail` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `timeentryhours` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `TimeEntryId` int(11) NOT NULL,
  `Duration` decimal(4,2) NOT NULL,
  `HoursType` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Id_UNIQUE` (`Id`),
  KEY `FK_timeentryhours_timeentry_idx` (`TimeEntryId`),
  CONSTRAINT `FK_timeentryhours_timeentry` FOREIGN KEY (`TimeEntryId`) REFERENCES `timeentry` (`Id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `jobnumber` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `UserDetailId` int(11) NOT NULL,
  `JobNumberValue` longtext NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_UserDetailId` (`UserDetailId`) USING HASH,
  CONSTRAINT `FK_JobNumbers_UserDetails_UserDetailId` FOREIGN KEY (`UserDetailId`) REFERENCES `userdetail` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




