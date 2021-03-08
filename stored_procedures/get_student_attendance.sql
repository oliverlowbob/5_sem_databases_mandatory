USE `scool_protocol`;
DROP procedure IF EXISTS `get_student_attendance`;

DELIMITER $$
USE `scool_protocol`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_student_attendance`(user_id INT)
BEGIN
    SELECT
    CONCAT(u.first_name, " ", u.last_name) as student_name,
    present_student(user_id) as present_classes,
    absent_student(user_id) as absent_classes,
	count(l.class_idclass) as total_classes
    
	FROM user AS u, lesson as l
    WHERE u.iduser = user_id and l.user_iduser = user_id;
END$$

DELIMITER ;

