create database assignment;
use assignment;
create table CLIENT_MASTER(clientno varchar(20),name varchar(20),city varchar(20),pincode bigint,state varchar(20),baldue bigint)
select * from client_master;
-- 2nd table
create table product_MASTER(productno varchar(20),description varchar(20),profitpercent int,unitmeasure varchar(30),qtyonhand int,
reorderlvl int,sellprice int,costprice int);
-- 3rd table
create table salesman_MASTER(salesmannono varchar(20),salesmanname varchar(20),address1 varchar(30),address2 varchar(30),city varchar(10),
pincode bigint,state varchar(20),salamt int,tgttoget int,ytdsales int,remarks varchar(20));
desc  salesman_MASTER;
-- inserting values into tables

insert into CLIENT_MASTER(clientno,name,city,pincode,state,baldue)
          values('C00001', 'Ivan Bayross', 'Mumbai', 400054, 'Maharashtra', 15000),
				('C00003', 'Chhaya Bankar', 'Mumbai', 400057, 'Maharashtra', 5000),
                ('C00004', 'Ashwini Joshi', 'Bangalore', 560001, 'Karnataka', 0),
                ('C00005', 'Hansel Colaco', 'Mumbai', 400060,  'Maharashtra', 2000),
                ('C00006', 'Deepak Sharma', 'Mangalore', 560050, 'Karnataka', 0);
                
insert into product_MASTER(productno,description,profitpercent,unitmeasure,qtyonhand,reorderlvl,sellprice,costprice)      
		    values('P00001', 'T-Shirts', 5, 'Piece', 200, 50, 350, 250),
				  ('P03453', 'Shirts', 6, 'Piece', 150, 50, 500, 350),
				  ('P06734', 'Cotton Jeans', 5, 'Piece', 100, 20, 600, 450),
				  ('P07865', 'Jeans', 5, 'Piece', 100, 20, 750, 500),
				  ('P07868', 'Trousers', 2, 'Piece', 150, 50, 850, 550),
				  ('P07885', 'Pull Overs', 2.5, 'Piece', 80, 30, 700, 450),
				  ('P07965', 'Denim Shirts', 4, 'Piece', 100, 40, 350, 250),
				  ('P07975', 'Lycra Tops', 5, 'Piece', 70, 30, 300, 175),
				  ('P08865', 'Skirts', 5, 'Piece', 75, 30, 450, 300);
                  
insert into salesman_MASTER(salesmannono,salesmanname,address1,address2,city,pincode,state,salamt,tgttoget,ytdsales,remarks) 
             values('S00001', 'Aman', 'A/14', 'Worli', 'Mumbai', 400002, 'Maharashtra', 3000, 100, 50, 'Good'),
                   ('S00002', 'Omkar', '65', 'Nariman', 'Mumbai', 400001, 'Maharashtra', 3000, 200, 100, 'Good'),
                   ('S00003', 'Raj', 'P-7', 'Bandra', 'Mumbai', 400032, 'Maharashtra', 3000, 200, 100, 'Good'),
                   ('S00004', 'Ashish', 'A/5', 'Juhu', 'Bombay', 400044, 'Maharashtra', 3500, 200, 150, 'Good');
  -- Q3)A.Find out the names of all the clients                 
 select name from   CLIENT_MASTER; 
  -- Q3)B. Retrieve the entire contents of the Client_Master table.
  SELECT * FROM CLIENT_MASTER;
  -- Q3)C.Retrieve the list of names, city, and the state of all the clients.
  SELECT name,city,state from CLIENT_MASTER;
  -- Q3)D.List the various products available from the Product_Master table.
  SELECT description FROM product_MASTER;
  -- Q3)E. List all the clients who are located in Mumbai.
  SELECT name FROM CLIENT_MASTER
  WHERE city='Mumbai';
  -- Q3)F. Find the names of salesmen who have a salary equal to Rs. 3000
  select salesmanname from  salesman_MASTER
  where salamt=3000;
 
 -- Q4.)A. a) Change the city of ClientNo. ‘C00005’ to ‘Bangalore’.
 update CLIENT_MASTER
 set city="Bangalore"
 where clientno='C00005';
 select * from CLIENT_MASTER;
 -- Q4)B.Change the BalDue of ClientNo ‘C00001’ to Rs. 1000.
 update CLIENT_MASTER
 set baldue=1000
 where Clientno='C00001';
 -- Q4)C.Change the Cost Price of ‘Trousers’ to Rs. 950.00
update product_MASTER
set costprice= 950.00
where description='Trousers';
-- Q4)D. Change the city of the salesman to ‘Pune’.  
update salesman_MASTER
set  city= 'Pune'  ;
select * from    salesman_MASTER;    
-- Q5)A.Delete all salesmen From the Salesman_Master whose salaries are equal to Rs. 3500.   
delete from salesman_MASTER
where salamt=3500;
select * from salesman_MASTER;
-- Q5).b Delete all products from Product_master table where the quantity on hand is equal to 100
delete from product_MASTER
where qtyonhand=100;
select * from product_MASTER;
-- Q5)C Delete from Client_Master Where the column state holds the value ‘Tamil Nadu’.
delete from CLIENT_MASTER
where state= 'Tamil Nadu';
select * from CLIENT_MASTER;
--  Q6: Exercise on altering the table structure.
-- Q6)A. Add a column called ‘Telephone’ of data type ‘number’ and size=’10’ to the Client_master table
alter table CLIENT_MASTER
add column Telephone bigint;
select * from CLIENT_MASTER;
-- Q6)B. Change the size of SellPrice column in Product_Master to (10,2)
ALTER TABLE  product_MASTER
modify column sellprice DECIMAL(10,2);   
select * from       product_MASTER;
--  Q7: Exercise on renaming the table
-- a) Change the name of the ‘Salesman_Master’ table to ‘Sman_Mast’
rename table salesman_MASTER to Sman_Mast;
select * from Sman_Mast;
--  Q8: Exercise on deleting the table structure along with its data.
-- Q8)A. Destroy the table ‘Client_Master’ along with its data.
drop table CLIENT_MASTER;
select * from CLIENT_MASTER;
desc CLIENT_MASTER;
-- Q8)B Destroy the table ‘Product_Master’ along with its data.
drop table product_MASTER;
desc product_MASTER;
select * from product_MASTER;
-- Q8)c. Destroy the table ‘Sman_Mast’ along with its data.
drop table Sman_Mast;

--  Q9: Create the following tables:
create table CLIENT_MASTER(CLIENTNO  Varchar(30) primary key ,
NAME varchar(30) not null,
CITY varchar(20),
PINCODE bigint, 
STATE varchar(20) ,
BALDUE decimal(10,2),
-- In MySQL, you cannot combine PRIMARY KEY and CHECK in the same inline column definition in a fully enforced way (unlike some other RDBMS like Oracle). You have to do it as a separate CONSTRAINT after the columns.
CONSTRAINT clientno_starts_c CHECK (CLIENTNO LIKE 'C%'));
select * from CLIENT_MASTER;
alter table CLIENT_MASTER
modify column BALDUE decimal(10,2);
insert into CLIENT_MASTER( CLIENTNO,NAME,CITY,PINCODE,STATE,BALDUE)
          values('C00001', 'Ivan Bayross', 'Mumbai', 400054, 'Maharashtra', 15000),
                ('C00003', 'Chhaya Bankar', 'Mumbai', 400057, 'Maharashtra', 5000),
                ('C00004', 'Ashwini Joshi', 'Bangalore', 560001, 'Karnataka', 0),
                ('C00005', 'Hansel Colaco', 'Mumbai', 400060,  'Maharashtra', 2000),
                 ('C00006', 'Deepak Sharma', 'Mangalore', 560050, 'Karnataka', 0);
  -- Q10)A.  . List the names of all clients having ‘a’ as the second letter in their names.             
select name from       CLIENT_MASTER
where name like('_a%');     
-- Q10)B. List the clients who stay in a city whose first letter is ‘M’.     
SELECT NAME FROM   CLIENT_MASTER
WHERE CITY LIKE('M%');
-- Q10)C. List all clients who stay in ‘Bangalore’ or ‘Mangalore’
SELECT NAME FROM CLIENT_MASTER
WHERE CITY='Mangalore' OR CITY='Bangalore';