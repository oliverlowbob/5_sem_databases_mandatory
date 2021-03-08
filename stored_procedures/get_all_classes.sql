CREATE DEFINER=`root`@`localhost` PROCEDURE `get_all_classes`()
BEGIN
	SELECT * FROM class as c, course as co
    WHERE c.course_idcourse = co.idcourse;
END