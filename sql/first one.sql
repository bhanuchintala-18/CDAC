
create database cdac;
show databases;
-- switch to the cdac databse 
use cdac;
-- and create tables

-- create table pgdbda
-- (roll_no int,
-- fname varchar(20),
-- lname varchar(20),
-- dob date,degree varchar(30),marks float,
-- phone_no1 int,
-- phone_no_two int);
-- select * from pgdbda;
create table student4
(roll_no int,
fname varchar(20),
lname varchar(20),
dob date,degree varchar(30),marks float,
phone_no1 int,
phone_no_two int);
desc student4;

-- add 2 new columns city and email_id
alter table student4  add column city varchar(30),
add email_id varchar(40) after phone_no_two;
desc student4;
-- modify the data type of fname column to varchar(50)
alter table student4 modify fname varchar(50);

desc student4;
-- drop the phone_ column
alter table student4 drop column phone_no_two;
-- add 1 more column state.
alter table student4 add state varchar(30);
-- change/rename the dob to date_of_birth
alter table student4 change dob date_of_birth date;
alter table student4 rename column phone_no1 to phone_no;

-- create replica table to copyonly table structure
create table student as select * from student4;

show tables;
-- drop table pgdbda
drop table pgdbda;
-- create a table course

create table course(cid varchar(10),
cname varchar(30), fee bigint,duration int);

desc student;

insert into student values
(100,'aaa','ab','1995-11-09','BTech',86,685888,'noida',
'a@gmail','UP');

insert into student values
(101,'bbb','ab','1999-11-09','BTech',86,685888,'noida',
'a@gmail','UP');


insert into student values
(101,'bbb','ab','1999-11-09','BTech',86,685888,'noida',
'a@gmail','UP');

select * from student;





drop table course;
-- column level constraint definition
create table course(
cid varchar(10) primary key,
cname varchar(30),
fee bigint,
duration int);
-- table level constraint definition
create table course1(
cid varchar(10) ,
cname varchar(30),
fee bigint,
duration int,
constraint pk1 primary key(cid));

insert into course values('c1','PGDAC',100000,6);
insert into course values('c2','PGDBDA',123000,6);


create table student1
(roll_no int primary key,
sname varchar(20),
dob date,degree varchar(30),marks float,
cid varchar(10),
constraint fk1_student_course Foreign key(cid) 
references course(cid));

desc course;
select * from course;
insert into course values('c3','PGDAI',160000,6);
insert into course values('c2','PGDBDA',123000,6);

insert into course(cid,cname,fee) 
values('c4','PGDLSI',160000);

insert into course(cname,fee) 
values('PGDLSI',160000);


create table course2(
cid varchar(10) ,
cname varchar(30),
fee bigint default 11000,
duration int default 1,
constraint pk1 primary key(cid));


insert into course2(cid,cname) 
values('c5','PGDMC');

insert into course(cname,fee) 
values('PGDESD',160000);

select * from course2;
desc course2;



create table course3(
cid varchar(10) ,
cname varchar(30) not null,
fee bigint default 11000,
duration int default 1,
start_date date not null,
constraint pk1 primary key(cid));


insert into course3(cid,duration) 
values('c1',6);

insert into course3
values('c1','pgdac',100000,6,'2012-02-25');
insert into course3(cid,cname,start_date)
values('c2','pgdbda','2015-02-25');
insert into course3(cid)
values('c3');
select * from course3;

-- check constraint
create table student3
(roll_no int primary key,
sname varchar(20) not null,
age int check (age>=18 and age<=40) ,
degree varchar(30) check (degree in('BTech','MCA','MSc')),
marks float,
cid varchar(10),
constraint fk2_student_course Foreign key(cid) 
references course3(cid));
 insert into student3 values
 (100,'sss',32,'Btech',90,'c1');
 
 insert into student3 values
 (101,'sss',22,'BTech',90,'c1');
 
  insert into student3 values
 (102,'sss',22,'BTech',90,'c5');


