USE `scool_protocol`;
DROP procedure IF EXISTS `get_all_classes`;

DELIMITER $$
USE `scool_protocol`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_all_classes`()
BEGIN
	SELECT * FROM class as c, course as co;
END$$

DELIMITER ;

