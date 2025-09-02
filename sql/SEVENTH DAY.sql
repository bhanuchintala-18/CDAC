-- sub query
/* A sql query written inside an another query to perform a task
subqueries are two types
1.single row subquery
2.multiple row subquery*/
-- dispaly the employee list who works in the same department where adam works.
use hrms;
select first_name,department_id
from employees
where department_id=5;-- we dont know the id as 5 sooo in this situation we will write a query to find the id this is subquery.

select first_name,department_id
from employees
where department_id=(select department_id
                         from employees
                         where first_name='adam') 
and first_name !='adam';

-- display the list od employees who gets the same salary as Neena.
select first_name,salary
from employees
where salary=(select salary    -- this is subquery we have written to find the salary of neena .
               from employees 
               where first_name='neena')
and first_name!='neena';      

-- dispaly the employees who works in finance department. 
select e.first_name  ,  e.department_id
from employees e, departments d   
where e.department_id=d.department_id
and d.department_name='finance';  

select first_name,department_id
from employees e
where department_id=(select department_id    
               from departments 
               where department_name='finance');
               
-- display the employees who work ini toronto   

select first_name,department_id
from employees e
where department_id=(select department_id    
               from departments 
               where location_id=(select location_id 
                                  from locations
                                   where city='toronto'));      -- 1st lowe subquery and then subquery and then upper query.      
                                   
 
 -- Q1.display the name of the employee/employees,salary who earns the minimum salry.
 --  Q2.-- display the name of the employee/employees,salary who earns the maximum salry.
 --  Q3.-- display the name of the employee/employees,salary who earns more than the average salry.
 
 -- select first_name,max(salary); -- we cannot give this because one is  aggrate function and other is a column.
 
-- Q1.
select first_name
from employees
where salary=( select max(salary)
from employees);

-- Q3.
select first_name
from employees
where salary<( select avg(salary)
from employees);

-- Q4.employees,salary and departmn=ents who gets more than the max salry of department 10
select first_name,salary,department_id from employees
where salary>(select max(salary)
              from employees
              where department_id=10);

-- DISPLAY ONLY THOSE DEPARTMENTS WHOSE MAX SALARY IS GRATER THAN MAX SALARY OF DEPARTMENT 10.
SELECT MAX(SALARY),DEPARTMENT_ID
FROM EMPLOYEES
group by DEPARTMENT_ID
HAVING MAX(SALARY)>( select max(salary)
              from employees
              where department_id=10);
              
              
 select first_name,salary,manager_id 
 from employees
 where employee_id in (101,102,114,120);
 
 -- who are managed by employee with id=100.
  select first_name,salary,manager_id 
 from employees
 where employee_id in(select employee_id 
                        from employees where manager_id=100);
 
 