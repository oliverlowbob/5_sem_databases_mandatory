CREATE DEFINER=`root`@`localhost` FUNCTION `amount_of_students_in_lesson`(
	lesson_id INT
) RETURNS int
BEGIN
	DECLARE amount_students INT;
    SET amount_students = 0;
    
	SELECT COUNT(lesson.user_iduser)
	INTO amount_students
	FROM lesson
	WHERE class_idclass = lesson_id;
	RETURN amount_students;
END