use prs;

start transaction;
update lineitems set quantity = quantity + 1 where id > 0;

rollback;
select * from lineitems;