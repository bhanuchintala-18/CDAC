use cdac;
create table contacts
( contact_id int(11) not null auto_increment,
last_name varchar(30) not null,
first_name varchar(25),
birthday date,
created_by varchar(30),
constraint contacts_pk primary key (contact_id)
);
desc contacts;
delimiter //
create  trigger contacts_before_insert
before insert
on contacts for each row
begin
declare vuser varchar(50);
select user() into vuser;
set new.created_date=sysdate();
set new.created_by=vuser;
end;//

desc contacts;
insert into contacts(first_name,last_name,birthday)
values("ssssssss","qdqd","2002-08-08");
select * from contacts;
insert into contacts(first_name,last_name,birthday)
values("ppp","qdqd","2009-08-08");
select  user();

create table contacts1
( contact_id int(11) not null auto_increment,
last_name varchar(30) not null,
first_name varchar(25),
birthday date,
constraint contacts_pk primary key (contact_id)
);

create table contact_audit
( contact_id int(11) not null auto_increment,
created_date date,
created_by varchar(30),
constraint contacts_pk primary key (contact_id)
);
delimiter //
create trigger after_insert_trigger
after insert
on contacts1 for each row
begin
declare vuser varchar(50);
select user() into vuser;
insert into contact_audit
(contact_id,created_date,created_by)
values (new.contact_id,sysdate(),vuser);
end //

select * from contacts1;
select * from contact_audit;
insert into contacts1 values(101,"qw","qd","2019-08-06");
insert into contacts1 values(102,"qw","qd","2019-08-06");
select * from contact_audit;







