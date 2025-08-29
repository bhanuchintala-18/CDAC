create database noida;
show databases;
use noida;
create table student(rollno int primary key,
name varchar(30),
degree varchar(20),
year bigint,
sex varchar(10),
deptno int,
advisor varchar(30));
insert into student values(1,'Bhanu','BTech',2024,'male',99,'sadhasivam'),
(2,'sasi','BTech',2022,'male',98,'yoho'),
(3,'sahithi','BTech',2030,'female',97,'purna');
select * from student;


create table department(deptid int primary key,
name varchar(30),
hod varchar(30),
phone bigint
);
desc department;

alter table student add constraint student foreign key(deptno) references department(deptid);
alter table student  drop foreign key student;


create table professor(empid int primary key,
name varchar(30),
sex varchar(30),
startyear int,
deptno int,
phone bigint
);


create table course(courseid int primary key,
cname varchar(30),
sex varchar(30),
credits int,
deptno int
);

create table enrollment(courseid int primary key,
rollno int,
sem int,
year int,
grade char
);

create table teaching(courseid int primary key,
rollno int,
sem int,
year int,
classroom char
);

create table prerequesits(
prereq varchar(30),
courseid int
);






alter table course add constraint course foreign key(deptno) references student(deptno);
alter table prerequesits add constraint prerequesits foreign key(courseid) references teaching(courseid);
alter table professor add constraint professor foreign key(deptno) references student(deptno);
alter table department add constraint department foreign key(hod) references professor(deptno);








