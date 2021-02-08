DELIMITER //
CREATE PROCEDURE getallusers()

BEGIN
	select * from users;
END//
DELIMITER ;
CALL getallusers();