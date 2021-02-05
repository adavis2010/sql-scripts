create table user (
id int not null primary key auto_increment,
name varchar(50) not null,
address varchar (50) not null,
city varchar (50) not null,
state varchar (2) not null,
zipcode varchar(5) not null,
email varchar(100),
phone varchar(20),
role varchar (50) 
);