INSERT INTO `scool_protocol`.`school` (`idschool`, `name`) VALUES ('1', 'KEA');

INSERT INTO `scool_protocol`.`address` (`idaddress`, `school_idschool`, `street`, `postal_code`, `country`, `number`) VALUES ('1', '1', 'Guldbergsgade', '2200', 'Denmark', '20');

INSERT INTO `scool_protocol`.`user` (`iduser`, `school_idschool`, `first_name`, `last_name`, `email`, `password`) VALUES ('1', '1', 'Oliver', 'Dehnfjeld', 'test1', 'test');
INSERT INTO `scool_protocol`.`user` (`iduser`, `school_idschool`, `first_name`, `last_name`, `email`, `password`) VALUES ('2', '1', 'Jonas', 'Hansen', 'test2', 'test');
INSERT INTO `scool_protocol`.`user` (`iduser`, `school_idschool`, `first_name`, `last_name`, `email`, `password`) VALUES ('3', '1', 'Kim', 'Madsen', 'test3', 'test');
INSERT INTO `scool_protocol`.`user` (`iduser`, `school_idschool`, `first_name`, `last_name`, `email`, `password`) VALUES ('4', '1', 'Duktur', 'Mufti', 'test4', 'test');
INSERT INTO `scool_protocol`.`user` (`iduser`, `school_idschool`, `first_name`, `last_name`, `email`, `password`) VALUES ('5', '1', 'Tomas', 'Kongen', 'test5', 'test');

INSERT INTO `scool_protocol`.`role` (`idrole`, `role`) VALUES ('1', 'ADMIN');
INSERT INTO `scool_protocol`.`role` (`idrole`, `role`) VALUES ('2', 'STUDENT');
INSERT INTO `scool_protocol`.`role` (`idrole`, `role`) VALUES ('3', 'TEACHER');

INSERT INTO `scool_protocol`.`user_role` (`user_iduser`, `role_idrole`) VALUES ('1', '1');
INSERT INTO `scool_protocol`.`user_role` (`user_iduser`, `role_idrole`) VALUES ('2', '3');
INSERT INTO `scool_protocol`.`user_role` (`user_iduser`, `role_idrole`) VALUES ('3', '2');
INSERT INTO `scool_protocol`.`user_role` (`user_iduser`, `role_idrole`) VALUES ('4', '3');
INSERT INTO `scool_protocol`.`user_role` (`user_iduser`, `role_idrole`) VALUES ('5', '2');

INSERT INTO `scool_protocol`.`course` (`idcourse`, `name`) VALUES ('1', 'Software Development');
INSERT INTO `scool_protocol`.`course` (`idcourse`, `name`) VALUES ('2', 'Design');

INSERT INTO `scool_protocol`.`class` (`idclass`, `course_idcourse`, `start`, `end`) VALUES ('1', '1', '2021-10-10', '2021-10-10');

INSERT INTO `scool_protocol`.`lesson` (`user_iduser`, `class_idclass`) VALUES ('2', '1');
INSERT INTO `scool_protocol`.`lesson` (`user_iduser`, `class_idclass`) VALUES ('3', '1');
INSERT INTO `scool_protocol`.`lesson` (`user_iduser`, `class_idclass`) VALUES ('4', '1');
INSERT INTO `scool_protocol`.`lesson` (`user_iduser`, `class_idclass`) VALUES ('5', '1');

INSERT INTO `scool_protocol`.`attendance_key` (`idattendance_key`, `lesson_user_iduser`, `lesson_class_idclass`) VALUES ('"1"', '2', '1');
