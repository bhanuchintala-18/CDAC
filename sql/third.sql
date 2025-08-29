show databases;
use  hrms;
select * from employees;
select first_name,job_id,department_id
from employees;

select employee_id,first_name,hire_date
from employees;

select * from employees limit 5;
select * from employees limit 2,5;

select * from employees
order by department_id asc;

select * from employees
order by salary desc ;
-- display name, department and salary 
select first_name,department_id,salary
 from employees
order by salary desc;

select first_name,department_id,salary
from employees
order by salary desc
limit 1;

-- department in asseneding and salary is in assending 
select first_name,department_id,salary
from employees
order by department_id asc, salary desc;

-- column alias
select 10+20 " addition of two numbers";
select now()" display towat time";

select now()" display towat time",user() " user_name",current_time(),database();
select now()" display towat time",user() " user_name",current_time(),database()"current data bast";

select first_name,department_id,salary "Monthly salary",salary*12" annuvaly salary"
from employees;
-- using as
select first_name,department_id,salary "Monthly salary",
salary*12 as "annuvaly salary"
from employees;


-- concate()
select first_name from employees;
select first_name , upper(first_name) from employees;

select first_name ,
upper(first_name) ,
concat(first_name,' ' ,last_name)
from employees;

select first_name ,
upper(first_name) ,
concat(first_name,' ' ,last_name)"full name"
from employees
order by "full name"; 

-- display the unique departments
select distinct department_id from employees;

-- display the unique manager_id
select distinct manager_id from employees;


select distinct job_id from employees;

-- display all unique departments and  repective jobs in that
select distinct department_id,job_id from employees;

/*operator  
relational opeator- =,>,>=,<,<=,!= or <>
logical operator- and , or ,not
addition operators- in , between, like*/
-- display list of employees managed by employee 100.
select * from employees 
where manager_id=100;


select * from employees 
where manager_id!=100;
-- where not(manager_id=100) or we can use <> also

-- displ;ay the joining date of the steven
select hire_date from employees where first_name='steven';

-- display employees joined on 1997-12-24.
select * from employees where hire_date='1997-12-24';

-- display the employee who is not managed by any anyone
select  employee_id,first_name,manager_id
from employees
where manager_id is null;

-- display the employee who is  managed by any anyone
select  employee_id,first_name,manager_id
from employees
where manager_id is not null;


-- display the name ,job id and salary of the employees in tdepartment 5
select first_name,job_id,salary,department_id from employees where department_id=5;

-- salary  >than 8000
select first_name,job_id,salary,department_id from employees where salary>8000;
-- salary>8000 in department 5
select first_name,job_id,salary,department_id from employees where department_id=5 and salary>=8000 ;

-- display the employees whi salary if in the ranfe of 6000 to 10000
select employee_id,salary,job_id from employees 
where salary>=6000 and salary<=10000;

-- between condition
select employee_id,salary,job_id from employees 
where salary between 6000 and 10000;

select employee_id,salary,job_id from employees 
where not(salary>=6000 and salary<=10000);

select employee_id,salary,department_id from employees 
where department_id in(5,6,3) ;

-- union
select employee_id,salary,department_id from employees 
where department_id =5 
and salary>=8000
union
select employee_id,salary,department_id from employees 
where department_id =6
and salary>=8000;

-- like operator used for pattern matching.
-- display all the employees whose name startes with A .
select employee_id, first_name
from employees where first_name like 'A%'; -- 0 to many

-- display all the employees whose name ends with n .
select employee_id, first_name
from employees where first_name like '%n' ;

select employee_id, first_name
from employees where first_name like 'A%'
or first_name like 'S%';

select employee_id, first_name
from employees where first_name like 'S_e%'









