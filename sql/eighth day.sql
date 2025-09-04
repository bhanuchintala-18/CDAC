use hrms;
/*Q1. Display the manager number and  the lowest paid employee for that manager.
Exclude anyone whose manager is not known.
Exclude anygroup whose lowest salary is less than
6000. sort the data by the lowest salary.
Q2. display the name and hire date who have joined after steven. 
Q3. display the name and hire date who have joined after the employee who earns the maximum. 
Q4. Display the employee name,dept name of all employees who works in location with  id 1700. 
Q5. Display the employee name , salary of all e,ployees who reports to steven. (both join and subquery).
Q6. Display the employee name , dept name,salary of all e,ployees who reports to steven.
(both join and subquery).
Q7. Display the employees who works in  the same dept as alexander.
Q8. Display the employees who worls in the  same dept as  Austin and the salary must be  greater than  Austin's salary. 
Q9.Display employees who earns more  than the maximum salary of all sales manager. 
Q10.Display employees who are managed by the same  employee with id 145 and works in the  same dept of employee with id 201.
Q11. Display employee name,salary, deptid,job id of all employees who gets same salary like any of the  programmer.
Q12. Display employee name,salary, deptid,job id of all employees who gets less salary like any of the  programmer.
Q13. Display employee name,salary, deptid,job id of all employees who gets more salary like any of the  programmer.
Q14. Display employee name,salary, deptid,job id of all employees who gets less salary like all of the  programmer.
Q15. Display employee name,salary, deptid,job id of all employees who gets more salary like all of the  programmer.*/
-- Q1. 
select manager_id,min(salary)
from employees
where manager_id is not null
group by manager_id
having min(salary)<=6000
order by min(salary);

-- Q2. 
select e.first_name, e.hire_date,d.department_name
from employees e,departments d
where e.department_id=d.department_id and hire_date>(select hire_date
                  from employees
                  where first_name="steven");

-- Q3.
select first_name,hire_date   
from employees
where  hire_date>(select hire_date
                  from  employees
                  where salary=(select max(salary)
                                from employees));
                                
-- Q4.
  SELECT e.first_name,d.department_name
  from employees e,departments d
  where e.department_id=d.department_id
  and d.location_id='1700';
                  
-- Q5.

SELECT first_name,employee_id,manager_id
from employees
where manager_id=(select employee_id
                  from employees
                  where first_name='steven');
-- do it using self join
select w.first_name,m.first_name 
from employees w,employees m
where w.manager_id=m.employee_id 
and m.first_name='steven';     

-- Q7.
select first_name
from employees
where department_id in (select department_id
from employees where first_name='alexander');      

-- Q8.
select first_name,department_id,salary
from employees
where department_id=(select department_id 
                       from employees where last_name='austin')
                       and salary>(select salary from employees where last_name='austin');
-- Q9.
select first_name from employees
where salary>(select max(salary) 
              from employees 
              where job_id=(select job_id 
              from jobs 
              where job_title="sales manager"));
              
-- Q10.  
-- non pair wise comparision
select first_name,department_id,manager_id,salary,hire_date
from employees
where department_id=(select department_id
					 from employees
                     where employee_id=201)
and manager_id=(select manager_id
					 from employees
                     where employee_id=145);         
                     
                     
-- pair wise comparision
select first_name,department_id,manager_id,salary,hire_date
from employees
where (department_id , manager_id) in (select department_id,manager_id
					 from employees
                     where employee_id in(201,145));    
                     
-- Q11. 
select first_name
from employees
where salary in(select salary from employees
                 where job_id=9) and job_id <> 9;         
                 
-- Q12. 
 select first_name
from employees
where salary < ANY (select salary from employees
                 where job_id=9) and job_id <> 9;                

-- Q13. 
select first_name,SALARY
from employees
where salary > ANY (select salary from employees
                 where job_id=9) and job_id <> 9; 
                 
-- Q14. 
select first_name,SALARY
from employees
where salary > ALL (select salary from employees
                 where job_id=9) and job_id <> 9;  
                 
-- Q15. 
select first_name,SALARY
from employees
where salary < ANY (select salary from employees
                 where job_id=9) and job_id <> 9;                  