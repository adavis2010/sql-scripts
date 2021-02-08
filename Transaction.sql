use prs;

start transaction;
update users set phone = '888' where id = 1;

rollback transaction;
select * from users;