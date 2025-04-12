CREATE TABLE residents 
(
id int primary key,
name varchar(100),
phone varchar(20),
property_id int
)

CREATE TABLE properties
(
id int primary key,
address varchar(100),
type varchar(50),
rent int
)

CREATE TABLE payments
(
id int primary key,
resident_id int,
date DATE,
amount int
);

