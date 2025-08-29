use hrms;
select * from employees;
-- cross join.
-- cartesian product it genetates spurious tuple(unnessary or un productive data) base less data.
select first_name,department_name
from employees,departments;

select first_name,department_name
from employees,departments
where employees.department_id=departments.department_id;
-- join condition 
/* for n tables in the form clause then i must have n-1 conditons
this join is called as inner join
ita a type of join wheare we get only rows that matches the join condition.
equijoin - if we are using = operator in the join condition*/

select first_name,department_name,hire_date,department_id
from employees,departments
where employees.department_id=departments.department_id;


select first_name,department_name,hire_date,employees.department_id,departments.department_id
from employees,departments
where employees.department_id=departments.department_id;

select e.first_name,d.department_name,e.hire_date,e.department_id,d.department_id
from employees e,departments d
where e.department_id=d.department_id;

-- display the name of the employee and name of the department working in dept 6
select e.first_name,d.department_name,e.department_id
from employees e,departments d
where e.department_id=d.department_id -- join condition
and e.department_id=6; -- additional requirement

-- display all employees and the salary in purchasing department
select e.first_name,e.salary,d.department_name
from employees e,departments d
where e.department_id=d.department_id
and d.department_name='purchasing';

-- display name of  all the departments  where employee earns more than 10000
select e.salary,d.department_name
from employees e,departments d
where  e.department_id=d.department_id
and e.salary>10000;

-- dispaly the job titile of each employee
select e.first_name,j.job_title,e.department_id,e.job_id,j.job_id
from employees e,jobs j
where e.job_id=j.job_id;
-- tell me the name of all employees whi work as programmer
select e.first_name,j.job_title,e.department_id,e.job_id,j.job_id
from employees e, jobs j
where e.job_id=j.job_id
and j.job_title='programmer';

-- display the name of employees ,the departments and theor job title of all the employees
select e.first_name,j.job_title,d.department_name
from employees e, jobs j,departments d
where e.department_id=d.department_id
and e.job_id=j.job_id;

-- 1.display the job catogary in shipping department
-- 2.display the employess working as accountent , accountent manager, finance manager
-- 3.dispaly the employees name and the city of all employees
-- 4.dispaly all the employes who work in seatle
-- 5.dispaly the job catogary who earn between 8000 and 16000 and the employee who works in those jobs catogary

-- 1.
select j.job_title
from jobs j, employees e,departments d
where e.department_id=d.department_id
and e.job_id=j.job_id
and d.department_name='shipping';
-- 2.
select e.first_name
from employees e, jobs j
where e.job_id=j.job_id
and (j.job_title='Accountant' or j.job_title='Accounting Manager' or j.job_title='Finance Manager');

-- 3.
select e.first_name,l.city
from employees e,locations l,departments d
where e.department_id=d.department_id
and d.location_id =l.location_id;

-- 4.
select e.first_name,l.city
from employees e,locations l,departments d
where e.department_id=d.department_id
and d.location_id =l.location_id
and l.city='Seattle';

-- 5.
 select j.job_title, e.first_name
 from employees e,jobs j
 where e.job_id=j.job_id
 and (e.salary between 8000 and 16000); -- e.salary>=8000 and e.salary<=16000;  
 
-- print manager name of each employee
select worker.first_name ,manager.first_name
from employees worker,employees manager
where worker.manager_id=manager.employee_id;

-- display the manager name and the department name of devid




