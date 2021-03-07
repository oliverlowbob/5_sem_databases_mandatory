CREATE DEFINER=`root`@`localhost` PROCEDURE `get_all_classes`()
BEGIN
	SELECT * FROM class;
END