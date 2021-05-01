USE `scool_protocol`;
DROP function IF EXISTS `check_attendance_key_valid`;

DELIMITER $$
USE `scool_protocol`$$
CREATE DEFINER=`root`@`localhost` FUNCTION `check_attendance_key_valid`(
	attendance_key_id VARCHAR(255)
) RETURNS int
BEGIN
	DECLARE valid INT;
    DECLARE valid_time DATETIME;
    
    SELECT valid_until INTO valid_time
    FROM attendance_key
    WHERE idattendance_key = attendance_key_id;
    
	IF  NOW() <= valid_time THEN
		SET valid = 1;

	ELSE SET valid = 0;
    END IF;
RETURN valid;
END$$

DELIMITER ;

