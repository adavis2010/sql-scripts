use sys;
drop database if exists prs;
create database prs;
use prs;

create table Users (
id int not null primary key auto_increment,
username varchar(30) not null unique,
password varchar (30) not null,
firstname varchar (30) not null,
lastname varchar (30) not null,
phone varchar (12) null,
email varchar (255),
isReviewer tinyint not null default 0,
isAdmin tinyint not null default 0
);

insert into Users (username, password, firstname, lastname, isReviewer, isAdmin )
	values('sa', 'sa','System', 'Admin', 1,1);
    
create table Vendors (
id int not null primary key auto_increment,
code varchar (30) not null unique,
name varchar(30) not null, 
address varchar (30) not null,
city varchar (30) not null,
state varchar (2) not null,
zip varchar (5) not null,
phone varchar (12) null,
email varchar (255) null 
);

Insert into Vendors (code, name, address, city, state, zip)
	values ('AMAZ', 'Amazon', '123 Buystuff Street', 'Seattle', 'WA', '44444'),
		   ('WALM', 'Walmart', '4 Wally World Way', 'Little Rock', 'AR', '33333'),
           ('TARG', 'Target', '1 Bullseye Road', 'Minneapolis', 'MN', '55555');
           
create table Requests(
id int not null primary key auto_increment,
description varchar (80) not null,
justification varchar (80) not null,
rejectionreason varchar (80) null, 
deliverymode varchar (20) not null default 'Pickup',
status varchar (10) not null default 'New',
total dec (11,2) not null default 0,
dateneeded date not null,
submitteddate datetime not null default current_timestamp,
userid int not null,
	foreign key (userid) references Users(id)
);

insert into Requests (description, justification, dateneeded,userid)
	values ( '1st request', 'Just because', '2021-03-01',
			(select id from users where username = 'sa'));
            
create table Products(
id int not null primary key auto_increment, 
partnumber varchar(30) not null unique,
name varchar (30) not null,
price dec(11,2) not null,
unit varchar(30) not null,
photopath varchar(255) null,
vendorid int not null,
	foreign key (vendorid) references Vendors(id)
);

Insert into Products (partnumber, name, price, unit, vendorid)
	Values ('NEST12','google', 100,'each', (select id from vendors where code = 'AMAZ')),
		   ('HPLAPTOP','laptop',1000,'each', (select id from vendors where code = 'AMAZ')),
           ('DESK55','desk', 200, 'each',(select id from vendors where code = 'AMAZ')),
           ('TABLET','amazonfire', 50, 'each',(select id from vendors where code = 'AMAZ')
);

create table Lineitems(
id int not null primary key auto_increment,
requestid int not null,
productid int not null,
quantity int not null default 1,
	foreign key (requestid) references Requests(id),
    foreign key (productid) references Products(id),
    constraint requestid_productid unique (requestid, productid)
    );
    
    insert into Lineitems(requestid, productid,quantity)
    values ((select id from requests where id =1), (select id from products where partnumber = 'NEST12'), 2),
           ((select id from requests where id =1), (select id from products where partnumber ='TABLET'), 1);
    
    



