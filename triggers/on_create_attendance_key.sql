DELIMITER $$
CREATE TRIGGER on_create_attendance_key
BEFORE INSERT
	ON scool_protocol.attendance_key FOR EACH ROW
BEGIN
   SET NEW.valid_until = NEW.valid_until + INTERVAL 10 MINUTE;
END$$on_create_attendance_key
DELIMITER ;
