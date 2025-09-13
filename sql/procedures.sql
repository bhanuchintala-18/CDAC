use hrms;
delimiter ##
create procedure addition()
begin
declare a int;
declare b int;
declare c int;
set a=10; set b=20;
set c=a+b;
select c;
end ##



call addition();

delimiter ##
create procedure emp1_dept(in did int)
begin
select first_name,salary,department_id
from employees
where department_id=did;
end ##
call emp1_dept(9);



-- disp;ay the no of employees working in job entered by the user.
delimiter ##
create procedure count_dept(in jobtitle varchar(30))
begin
select count(*)
from employees
where job_id=(select job_id from jobs where job_title=jobtitle);
end ##
call count_dept('Accountant');

-- write pl/sql stored procedure to print the salary of an empoyee
create procedure empid_sal(in eid varchar(30))
begin
declare sal int;
select salary into sal
from employees
where employee_id=eid;
select concat('the salary of employee',eid,'is= ',sal);
end ##
call empid_sal(145);


