SET GLOBAL log_bin_trust_function_creators = 1;

USE `scool_protocol`;
DROP function IF EXISTS `amount_of_students_in_lesson`;

DELIMITER $$
USE `scool_protocol`$$
CREATE DEFINER=`root`@`localhost` FUNCTION `amount_of_students_in_lesson`(
	class_id INT
) RETURNS int
BEGIN
	DECLARE amount_students INT;
    SET amount_students = 0;
    
	SELECT COUNT(lesson.user_iduser)
	INTO amount_students
	FROM lesson
	WHERE class_idclass = class_id;
	RETURN amount_students;
END$$

DELIMITER ;

