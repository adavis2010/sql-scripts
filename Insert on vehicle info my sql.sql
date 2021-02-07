Insert into user (name, address, city, state, zipcode, email, phone, role)
values ('Andrea', '492 Mason Road', 'South Lebanon', 'OH', '45065', 'andreandavis2010@yahoo.com', '513-304-5420','student');

Insert into vehicle (year, model, make, vin, trim, ownerid)
values
('2015', 'Escape', 'Ford', 1111111, 'Titanium', 7 (select Id from user where name = 'Andrea'));

select v.*, u.name
from vehicle v
left join user u on v.ownerid =u.id; 

update vehicle set ownerid = 999 where id =7;