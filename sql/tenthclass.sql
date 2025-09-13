use hrms;
-- display the employees name departmnet id ,salary of employees who earns more than the average salary of the organization.
-- display the average salary of the depart average slary is more than the average od dept 5.

 select first_name ,salary,department_id
 from employees
 where salary>(select avg(salary) from employees);
 
 create table employees_1 as (select * from employees
                              where department_id=5);
desc employees_1;    

--    -- display the employees name departmnet id ,salary of employees who earns more than the average salary of the department.
select first_name ,salary,department_id
from employees e1
where salary>(select avg(salary)                   -- we ca do this query by using self join also but it take time when compaired to the corelated subquery.
                                                   
               from employees e2
               where department_id=e1.department_id); -- this is like for loop.
               -- this is a corelated subquery 
               -- corelated subquery is a type of subquery where the inner query executes after getting value from outer query for each row (eg
                -- where department_id=e1.department_id. after that the inner query output is passed to outer query anf finally we see the output of 
                -- outer query on screen

-- create table avgssal as (select avg(salary),department_id from employees 
-- group by department_id );
-- select * from avgssal;
-- drop table avgssal;

-- display employees details who atleast one person reporting to him
 select  first_name,employee_id
 from employees
 where employee_id in(select distinct manager_id
                       from employees
                       where manager_id is not null);
                       
  -- corelated subquery
  
  select * from employees o
  where o.employee_id in(select manager_id
                          from employees                     -- this is corelated subquery
                          where manager_id=o.employee_id);
                          
                          
select * from employees o
  where o.employee_id exists(select manager_id
                          from employees                     -- this is corelated subquery
                          where manager_id=o.employee_id)   ;                       




       
                       
 