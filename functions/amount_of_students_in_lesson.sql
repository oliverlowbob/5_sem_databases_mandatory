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
    
	SELECT count(l.user_iduser)
	INTO amount_students
	FROM lesson AS l, role as r, user_role as ur
	WHERE l.class_idclass = class_id
    	AND ur.user_iduser = l.user_iduser
    	AND ur.role_idrole = r.idrole
	AND r.idrole = 2;
	RETURN amount_students;
END$$

DELIMITER ;









