USE `scool_protocol`;
DROP procedure IF EXISTS `scool_protocol`.`get_all_students_in_lesson`;

DELIMITER $$
USE `scool_protocol`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_all_students_in_lesson`(
	class_id INT
)
BEGIN
	SELECT u.first_name, u.email, c.name, r.role
    FROM user AS u, CLASS AS c, lesson AS l, user_role as ur,  role as r
    WHERE u.iduser = l.user_iduser 
    AND c.idclass = class_id
    AND ur.user_iduser = u.iduser
    AND ur.role_idrole = r.idrole;
END$$

DELIMITER ;
;
