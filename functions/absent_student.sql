SET GLOBAL log_bin_trust_function_creators = 1;
USE `scool_protocol`;
DROP function IF EXISTS `absent_student`;

DELIMITER $$
USE `scool_protocol`$$
CREATE DEFINER=`root`@`localhost` FUNCTION `absent_student`(user_id int) RETURNS int(11)
BEGIN
	DECLARE absent_classes_total INT;

    SELECT count(l.present)
    INTO absent_classes_total
    FROM lesson AS l
    WHERE l.user_iduser = user_id
	AND l.present = 0;

RETURN absent_classes_total;
END$$

DELIMITER ;

