USE `scool_protocol`;
DROP procedure IF EXISTS `get_attendance_key_valid`;

DELIMITER $$
USE `scool_protocol`$$
CREATE PROCEDURE `get_attendance_key_valid` (
	key_id INT
)
BEGIN
	select check_attendance_key_valid(key_id);
END$$

DELIMITER ;

