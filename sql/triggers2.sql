Drop table if exists Salaries;
create table Salaries(
employeeNumber int Primary key,
salary decimal(10,2) not null default 0);

insert into Salaries (employeeNumber,salary)
            values(102,5000),
                  (106,7000),
                  (107,8000);
                  
create table SalaryBudgets(total decimal(15,2) not null);
insert into SalaryBudgets(total)
select sum(salary)
from Salaries;  

create trigger after_salary_delete
after delete
on Salaries for each row
update SalaryBudgets
set total=total-old.salary;

select * from SalaryBudgets;

delete from Salaries
where employeeNumber=106;


                