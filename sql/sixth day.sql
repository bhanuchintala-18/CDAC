use hrms;
/* Aggregration using sql.
summerization. summary view of thr data
 data.describe
 aggregation can br performed using group function/aggregation function in sql count(),min(),max(),avg()----
 */
 -- display the total salary of all employeees in the arganization
 select sum(salary) "Total salary"
 from employees;
 
  select length(salary),first_name
 from employees;
 
  select sum(salary) "Total salary",salary
 from employees;
 
   select min(salary) "minimum"
 from employees;
 
    select avg(salary) "average"
 from employees;
 
 select round(avg(salary)) "average salary"
 from employees;
 
 -- display the avg salary of department 6
  select round(avg(salary)) "average salary",
  min(salary) "minimum",
  max(salary)"maximun",
  sum(salary)"sum"
 from employees
 where department_id=6;-- we can give 2 or more group by function at the saam time but we cannot give a group by function and a normal column together it throws an error.as shown in the 14th line example.
 
 -- q1.)display the total salary of all employees in IT department
 -- q2)dispaly the avg salry of all the emplyees working as a finance manager.
 
 SELECT  SUM(SALARY)
 FROM EMPLOYEES e,departments d
 where e.department_id=d.department_id
 and d.department_name='IT';
 
 -- q2)
 select avg(salary)
  FROM EMPLOYEES e,jobs j
 where e.job_id=j.job_id
 and j.job_title='Finance Manager';
 
 -- count () is used to count the number of records in the table
 -- count the number of rows in the resultgrid
 -- count the totral number of employees working in the organization 
 
 select count(employee_id)-- all the unique records
 from employees;
 
 select count(first_name)-- all the unique records
 from employees;
 
  select count(manager_id)-- all the unique records
 from employees;
 
 -- *IMP* ALL THE GROUP FUNCTIONS AVOID /IGNORE "NULL VALUES"
 
 -- how many employees have "s" as a first charater in their name
 select employees.first_name
 from employees
where first_name like 's%';

 select count(*)
 from employees
where first_name like 's%';

-- Q3)how many employees in deparment 10 have salary grater than 10000.
select count(*)
from employees
where salary>10000 and department_id=10;
-- Q4) HOW MANY UNIQUE DEPARTMENTS ARE THEIR IN THE ORGANIZATION
SELECT COUNT(DEPARTMENT_ID) FROM DEPARTMENTS;
SELECT COUNT(distinct DEPARTMENT_ID) FROM EMPLOYEES;
-- Q5) HOW MANY UNIQUE MANAGERS ARE THEIR IN THE OEHGANIZATION
select count(distinct manager_id) from employees;
-- Q6) HOW MANY UNIQUE JOBS ARE THEIR IN THE ORGANIZATION.
select count(distinct job_title) from jobs



 
 
 

