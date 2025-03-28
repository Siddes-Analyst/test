create database Project_Approach_1;
use Project_Approach_1;
show tables;
describe pop_1;
drop table pop_1;
select * from pop_1;

create table created_pop_1(
SNO varchar(6),
NAME varchar(30),
AGE int,
PLACE varchar(20),
GENDER varchar(12)
);

create table created_pop_2(
SNO varchar(6),
EDUCATION_LEVEL varchar(30),
EDUCATION_STATUS varchar(30),
SALARY int,
SPENDING int
);

select * from created_pop_2;

insert into created_pop_1 values ("E0001", "Aryan Verma", 41, "Mumbai", "Male");
insert into created_pop_1 values ("E0002", "Diya Verma", 28, "Puna", "Female");
insert into created_pop_1 values ("E0003", "Arjun Reddy", 47, "Hydrabad", "Male");
insert into created_pop_1 values ("E0004", "Nandhini", 34, "Bangalore", "Female");
insert into created_pop_1 values ("E0005", "Ira Gupta", 27, "Chennai", "Female");

insert into created_pop_2 values ("E0001", "Bachelor's","Student", 422226, 402507);
insert into created_pop_2 values ("E0002", "High School","Student", 229329, 213183);
insert into created_pop_2 values ("E0003", "Master's","Employed", 1879232, 106068);
insert into created_pop_2 values ("E0004", "PhD","Self-Employed", 1957050, 384649);
insert into created_pop_2 values ("E0005", "No-Education","Self-Employed", 57050, 38469);

select SNO, count(*) from created_pop_1 group by SNO having count(*) > 1;

select SNO, NAME, PLACE, AGE, GENDER, count(*) from created_pop_1 group by SNO, NAME, PLACE, AGE, GENDER having count(*) > 1;

select *, count(*) from created_pop_1 group by SNO, NAME, PLACE, AGE, GENDER having count(*) > 1;

create table temp_1 as select distinct * from created_pop_2;

select * from temp_1;

drop table created_pop_2;

create table created_pop_2 as select * from temp_1;

select * from created_pop_2;