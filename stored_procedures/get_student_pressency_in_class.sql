CREATE DEFINER=`root`@`localhost` PROCEDURE `get_student_pressency_in_class`(
	class_id INT
)
BEGIN
	SELECT
	  concat(user.first_name, " ",
	  user.last_name) as student_name,
	  lesson.present,
	  course.name as course_name
	FROM lesson
	  INNER JOIN class
		ON lesson.class_idclass = class.idclass
	  INNER JOIN user
		ON lesson.user_iduser = user.iduser
	  INNER JOIN user_role
		ON user_role.user_iduser = user.iduser
	  INNER JOIN course
		ON class.course_idcourse = course.idcourse
	WHERE user_role.role_idrole = 2
	AND class_idclass = class_id;
END