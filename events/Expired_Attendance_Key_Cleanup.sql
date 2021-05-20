DELIMITER $$
DROP EVENT IF EXISTS Expired_Attendance_Key_Cleanup;
SET GLOBAL event_scheduler = ON;
CREATE EVENT `Expired_Attendance_Key_Cleanup`
  ON SCHEDULE EVERY 60 MINUTE STARTS '2021-05-20 00:00:00'
  ON COMPLETION PRESERVE
DO BEGIN
   DELETE FROM attendance_key
   WHERE attendance_key.valid_until < NOW();
END;$$
DELIMITER ;