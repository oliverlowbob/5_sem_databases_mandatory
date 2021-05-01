USE `scool_protocol`;
DROP procedure IF EXISTS `get_attendance_key_valid`;

DELIMITER $$
USE `scool_protocol`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_attendance_key_valid`(
	key_id VARCHAR(255), out isValid INT(1)
)
BEGIN
	select check_attendance_key_valid(key_id) into isValid;
END$$

DELIMITER ;

