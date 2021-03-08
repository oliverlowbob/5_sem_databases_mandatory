USE `scool_protocol`;
DROP procedure IF EXISTS `get_all_students_in_lesson`;

DELIMITER $$
USE `scool_protocol`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_all_students_in_lesson`(
	class_id INT
)
BEGIN
	SELECT u.first_name, u.email, co.name, r.role, amount_of_students_in_lesson(class_id) as amount_total
    FROM user AS u, CLASS AS c, lesson AS l, user_role as ur,  role as r, course as co
    WHERE u.iduser = l.user_iduser 
    AND c.idclass = class_id
    AND ur.user_iduser = u.iduser
    AND ur.role_idrole = r.idrole
    AND c.course_idcourse = co.idcourse
    AND r.idrole = 2;
END$$

DELIMITER ;

