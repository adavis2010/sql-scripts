use sys;
drop database if exists prs;
create database prs;
use prs;

create table users (
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

insert into users (username, password, firstname, lastname, isReviewer, isAdmin )
	values('sa', 'sa','System', 'Admin', 1,1);
    
create table vendor (
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

Insert into vendor (code, name, address, city, state, zip)
	values ('AMAZ', 'Amazon', '123 Buystuff Street', 'Seattle', 'WA', '44444'),
		   ('WALM', 'Walmart', '4 Wally World Way', 'Little Rock', 'AR', '33333'),
           ('TARG', 'Target', '1 Bullseye Road', 'Minneapolis', 'MN', '55555');
           
create table request(
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
	foreign key (userid) references users(id)
);

Insert into requests (description, justification, dateneeded,userid)
	values ( '1st request', 'Just because', '2021-03-01',
			(select id from users where username = 'sa'));
            

