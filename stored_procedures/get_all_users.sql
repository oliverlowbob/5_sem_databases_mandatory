USE `scool_protocol`;
DROP procedure IF EXISTS `get_all_users`;

DELIMITER $$
USE `scool_protocol`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_all_users`()
BEGIN
	SELECT * FROM user;
END$$

DELIMITER ;

