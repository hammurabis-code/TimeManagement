DELIMITER $$
CREATE DEFINER=`admin`@`%` PROCEDURE `deletetimeentry`(IN entryId int
, IN userDetailId int)
BEGIN
	DELETE FROM timeentries 
    WHERE 
		Id = entryId
        AND UserDetailId = userDetailId;
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`admin`@`%` PROCEDURE `inserttimeentry`(
	IN userDetailId int,
    IN entryDate datetime,
    IN jobnumber longtext,
    IN comments longtext,
    IN hours decimal(4,2),
    IN hoursType int(11)
)
BEGIN
	DECLARE newid INT ;
	INSERT INTO `peakertimemanagement`.`timeentry`
	(
		`UserDetailId`,
		`Date`,
		`JobNumber`,
		`Comments`,
		`Hours`,
		`HoursType`
	)
	VALUES
	(
		userDetailId,
		entryDate,
		jobnumber,
		comments,
		hours,
		hoursType
	);
        
    SELECT LAST_INSERT_ID() INTO newid;
    
    INSERT INTO peakertimemanagement.timeentryhours
    (
		TimeEntryId
		,Duration
		,HoursTupe
	)
    VALUES
    (
		newid
        ,hours
        ,hoursType
    );
    
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`admin`@`%` PROCEDURE `getallworkcodes`()
BEGIN
SELECT `workcode`.`Id`,
    `workcode`.`BaseCode`,
    `workcode`.`Description`,
    `workcode`.`Area`,
    `workcode`.`Sub`,
    `workcode`.`IsJobNumberRequired`,
    `workcode`.`IsEngineeringCode`,
    `workcode`.`IsFieldServiceCode`,
    `workcode`.`IsGovernmentCode`,
    `workcode`.`IsOfficeCode`,
    `workcode`.`IsShopCode`,
    `workcode`.`IsActive`
FROM `peakertimemanagement`.`workcode`;
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`admin`@`%` PROCEDURE `getuserdetail`(
	IN userId longtext
)
BEGIN
	SELECT `userdetail`.`Id`,
    `userdetail`.`UserId`,
    `userdetail`.`AccountingName`,
    `userdetail`.`DefaultJobEntries`
FROM `peakertimemanagement`.`userdetail`
WHERE `userdetail`.`UserId` = userId;
END$$
DELIMITER ;

