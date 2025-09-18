use cdac;
create table Salaries(employeeNumber int primary key, validFrom date not null,amount dec(12,2) not null default 0);
insert into Salaries(employeeNumber,validfrom,amount)
            values(101,"2020-01-01",5300),
                   (102,"2021-01-01",4000),
                   (103,"2022-01-01",5600);
Drop table if exists SalaryArchives;
CREATE TABLE SalaryArchives (
    id INT PRIMARY KEY AUTO_INCREMENT,
    employeeNumber INT ,
    validFrom DATE NOT NULL,
    amount DEC(12 , 2 ) NOT NULL DEFAULT 0,
    deletedAt TIMESTAMP DEFAULT NOW()
);
delimiter $$
create trigger before_salaries_delete
before delete
on Salaries for each row
begin
insert into SalaryArchives(employeeNumber,validFrom,amount)
            values(old.employeeNumber,old.validFrom,old.amount);
end $$            

select * from Salaries;
Delete from Salaries
where employeeNumber=102;

select * from SalaryArchives;
                   