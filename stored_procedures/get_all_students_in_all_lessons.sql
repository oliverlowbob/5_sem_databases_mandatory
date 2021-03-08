USE `scool_protocol`;
DROP procedure IF EXISTS `get_all_students_in_all_lessons`;

DELIMITER $$
USE `scool_protocol`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_all_students_in_all_lessons`()
BEGIN
	SELECT u.first_name, u.email, co.name, r.role
    FROM user AS u, CLASS AS c, lesson AS l, user_role as ur,  role as r, course AS co
    WHERE u.iduser = l.user_iduser 
    AND c.idclass = l.class_idclass
    AND ur.user_iduser = u.iduser
    AND ur.role_idrole = r.idrole
    AND co.idcourse = c.course_idcourse;
END$$

DELIMITER ;

