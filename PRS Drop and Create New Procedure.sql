
DROP PROCEDURE getallusers;
DELIMITER //

Create Procedure getallusers()
BEGIN
	select id, username, firstname, lastname, phone, email, isReviewer, isAdmin
    from users;
END//
DELIMITER ;
-- CALL getallusers();