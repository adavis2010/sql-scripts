Drop Procedure Adduser ;

Delimiter //

Create Procedure adduser(IN uname varchar(30),
	In pword varchar (30), IN fname varchar(30),
    In lname varchar(30))
    
Begin
Insert into users (username, password, firstname, lastname,
isReviewer, isAdmin)
Values (uname, pword, fname, lname, false, false);
End//

Delimiter ;

CALL adduser ('rv', 'rv', 'System','Reviewer');