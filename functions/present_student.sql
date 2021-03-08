CREATE DEFINER=`root`@`localhost` FUNCTION `present_student`(user_id INT) RETURNS int(11)
BEGIN
	DECLARE present_classes_total INT;
    
    SELECT count(l.present)
    INTO present_classes_total
    FROM lesson AS l
    WHERE l.user_iduser = user_id
	AND l.present = 1;

RETURN present_classes_total;
END