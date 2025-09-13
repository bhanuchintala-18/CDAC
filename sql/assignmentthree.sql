
use  assignment3;
create table salesman(SALESMAN_ID  bigint, NAME varchar(30),CITY varchar(30),COMMISSION decimal(5,2));
INSERT INTO salesman(SALESMAN_ID ,NAME,CITY,COMMISSION)
            values(5001 ,'James Hoog', 'New York', 0.15),
                   (5002 ,'Nail Knite', 'Paris', 0.13),
				   (5005 ,'Pit Alex', 'London', 0.11),
				   (5006 ,'Mc Lyon', 'Paris' ,0.14),
				   (5003 ,'Lauson Hen', 'San Jose', 0.12),
				   (5007 ,'Paul Adam', 'Rome', 0.13);
SELECT * FROM    salesman;  
create table customer(
CUSTOMER_ID bigint ,
CUST_NAME VARCHAR (30),
CITY VARCHAR (15),
GRADE bigint ,
SALESMAN_ID bigint);
INSERT INTO customer(CUSTOMER_ID,CUST_NAME,CITY,GRADE,SALESMAN_ID)
            values(3001 ,'Brad Guzan', 'London', 100, 5005),
                  (3004 ,'Fabian Johns', 'Paris' ,300 ,5006),
				  (3007 ,'Brad Davis', 'New York' ,200 ,5001),
                  (3009 ,'Geoff Camero', 'Berlin' ,100, 5003),
                  (3008 ,'Julian Green', 'London', 300 ,5002),
				  (3003 ,'Jozy Altidor', 'MoncOW',200, 5007);
alter table customer
modify column customer_id bigint;
alter table customer
modify column GRADE bigint;
alter table customer
modify column SALESMAN_ID bigint;
desc customer;
select * from customer;

create table orders(ord_no bigint,
purch_amt decimal(5,5),
ord_date date,
customer_id bigint,
salesman_id bigint);
insert into orders(ord_no,purch_amt,ord_date,customer_id,salesman_id)
values(70001,150.5,'2012-10-05',3005,5002),
      (70009,270.65,'2012-09-10',3001,5005),
      (70002,65.26,'2012-10-05',3002,5001),
      (70004,110.5,'2012-08-17',3009,5003);
      
      alter table  orders
      
      modify column purch_amt decimal(5,2);
      select * from orders;
alter table    salesman
add  primary key(SALESMAN_ID );

alter table    customer
add  primary key(CUSTOMER_ID );

alter table    orders
add  primary key(ord_no );
INSERT INTO customer(CUSTOMER_ID,CUST_NAME,CITY,GRADE,SALESMAN_ID)
            values(3002,null,null,null,null),(3005,null,null,null,null);


alter table orders add constraint orders foreign key(SALESMAN_ID) references salesman(SALESMAN_ID);
alter table orders add constraint fk foreign key(customer_id) references customer(customer_id);
-- Q1) Write a query to find those customers with their name and those salesmen with their name and city 
-- who lives in the same city.
SELECT CUSTOMER.CUST_NAME,SALESMAN.NAME
FROM CUSTOMER,SALESMAN
WHERE CUSTOMER.SALESMAN_ID=SALESMAN.SALESMAN_ID
AND CUSTOMER.CITY=SALESMAN.CITY;

-- Q2) Write a SQL statement to find the names of all customers along with the salesmen who works for 
-- them. 
SELECT CUSTOMER.CUST_NAME,SALESMAN.NAME
FROM CUSTOMER,SALESMAN
WHERE CUSTOMER.SALESMAN_ID=SALESMAN.SALESMAN_ID
-- Q3). Write a SQL statement to display all those orders by the customers not located in the same cities 
-- where their salesmen lives. 



