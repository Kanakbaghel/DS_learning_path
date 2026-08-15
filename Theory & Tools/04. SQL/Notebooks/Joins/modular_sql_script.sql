Create schema demo;
Use demo;

# create a table in the demo

Create table if not exists customers_details(
custID char(4) primary key,
custName varchar(50) not null,
addressline1 varchar(100) not null,
addressline2 varchar(100),
city varchar(50),
state varchar(50),
country varchar(50) Default 'Germany',
contact_no varchar(20) not null,
age int check(age between 18 and 50)

# primary key (custId)
# check(age between 18 and 50)

);



Insert Into customers_details 
Values
('C001', 'Anna Schmidt', '123 Hauptstrasse', 'Building A', 'Berlin', 'Berlin', 'Germany', '+49-1701234567', 28),
('C002', 'John Patel', '22 MG Road', 'Floor 2', 'Mumbai', 'Maharashtra', 'India', '+91-9820012345', 35),
('C003', 'Elena Rossi', 'Via Roma 45', 'Apt 12', 'Rome', 'Lazio', 'Italy', '+39-3456789012', 30),
('C004', 'David Kim', '88 Gangnam-daero', 'Suite 8', 'Seoul', 'Seoul', 'South Korea', '+82-1023456789', 40),
('C005', 'Lena Garcia', '500 Gran Via', 'Unit 10C', 'Madrid', 'Madrid', 'Spain', '+34-612345678', 25);
# enter values for only specific columns
Insert Into customers_details(custID, custName, addressline1,city, country, contact_no, age)
Values
('C006', 'Mark Lee', '12 Orchard Road, Blk B', 'Singapore', 'Singapore', '+65-91234567', 32);

Select * from customers_details;

Insert Into customers_details(custID, custName, addressline1,city, state, country, contact_no, age)
Values
('C007', 'Emily Wang', '88 Queen St, Level 3', 'Toronto', 'Ontario', 'Canada', '+1-6471234567', 29 );


Insert Into customers_details(custID, custName, addressline1, city, state, country, contact_no, age)
Values
('C008', 'Jane Smith', '456 Oak St', Null, 'WI', 'USA', '555-5678', 28);

Insert Into customers_details(custID, custName, addressline1, city, contact_no, age)
Values
('C009', 'Hans Müller', '123 Hauptstrasse', 'Berlin', '030-123456', 40);


Insert Into customers_details(custID, custName, addressline1, city, country, contact_no, age)
Values
('C010', 'Arun Sharma', '56 MG Road', 'Mumbai' , Null, '022-23456789', 32);

Insert Into customers_details(custID, custName, addressline1, city, state, country, contact_no)
Values
('C011', 'Lena Schmidt', '789 Lindenstrasse', 'Hamburg', 'Hamburg', 'Germany', '040-987654'),
('C012', 'Ravi Patel', '12 Nehru Nagar', 'Ahmedabad', 'Gujarat', 'India', '079-567890'),
('C013', 'Carlos Souza', '456 Rua das Flores', 'São Paulo', 'SP', 'Brazil', '+55-11-98765432'),
('C014', 'Yuki Takahashi', '123 Sakura Street', 'Tokyo', 'Tokyo', 'Japan', '+81-3-12345678');


Alter table customers_details
Add email varchar(255) Default 'abc@xyz.com';

Update customers_details
Set email = concat(custId, "@abccorp.com");

Set sql_safe_updates = 0 ; # disable the safe mode

# when need to update all rows:
Update customers_details
Set email = concat(custId, "@abccorp.com");

Select * from customers_details;

# replace missing values 
Update customers_details 
Set addressline2 = "..."
Where addressline2 is null;

Select * from customers_details;


# if Mr. Arun Sharma with cust id C010 has changed address

Update customers_details
Set addressline1 = "House No 7, Sector 5, Jankipuram",
	addressline2 = "Near water tank",
    city = "Lucknow",
    state = "UP",
    country = "India"
Where custID = "C010" and custName = "Arun Sharma";

Select * from customers_details;

# TCL commands 

Insert Into customers_details(custID, custName, addressline1, city, state, country, contact_no, age)
Values
('C015', 'Sophie Williams', '25 Collins Street', 'Melbourne', 'Victoria', 'Australia', '+61-3-98765432', 33),
('C016', 'Pierre Dupont', '78 Rue de Paris', 'Lyon', 'Auvergne-Rhône-Alpes', 'France', '+33-4-987654', 38);

Select * from customers_details;


Delete From customers_details # without where it will remove all rows 
Where custID IN ('C015', 'C016');


Select * from customers_details;

Update customers_details 
Set email = 'abc@xyz.corp';

Select * from customers_details;

# want to change still want an option to revert the change 

# define a transaction 


Start Transaction;

# change 
Update customers_details 
Set email = concat(custID, "@xyz.corp");

# check 
Select * from customers_details;

# revert the change 

rollback;

Select * from customers_details;

Start Transaction;

# change 
Update customers_details 
Set email = concat(lower(custID), "@xyz.corp");

# check 
Select * from customers_details;

commit;



Select * from customers_details;



# Drop --> drops the object : schema, table as a whole 

# Drop table_name if exists ;

# Delete : conditional 
# allows to delete specific rows when used with where clause
# without where it deletes all rows and is equivalent to truncate

# Truncate deletes all rows : keeping the table structure

Create table if not exists orders(
orderNo int Auto_increment Primary key,
orderDate Date Not Null,
orderStatus varchar(25),
custNo char(4),
Foreign Key (custNo) References customers_details(custID)
);

Insert into orders 
Values
(100, '2025-05-01', 'Packing', 'C014');

Select * from orders;

Insert into orders (orderDate, orderStatus, custNo)
Values
( '2025-05-01', 'Packing', 'C012');

Select * from orders;

Insert into orders (orderDate, orderStatus, custNo)
Values
( '2025-05-03', 'Packing', 'C012'),
( '2025-05-04', 'Order Palced', 'C001'),
( '2025-05-04', 'Shipped', 'C002'),
( '2025-05-04', 'Cancelled', 'C005'),
( '2025-05-04', 'Cancelled', 'C005'),
( '2025-05-04', 'Cancelled', 'C005');

Delete From orders
Where orderStatus = 'Cancelled';

Select * from orders;

Delete From orders;

Select * from orders;

# Views 
Use classicmodels;

Create table cust_data_australia
as
Select * from customers
Where country = "Australia";



INSERT INTO customers
VALUES 
(5001, 'Outback Bikes Co.', 'Taylor', 'Jack', 
 '+61 2 1234 5678', '12 Kangaroo St', 'Suite 8B', 'Sydney', 'NSW', '2000', 
 'Australia', 1370, 75000.00);


Select * from customers
where country = 'Australia';


Select * from cust_data_australia;

Create table cust_data_aus_tab
As
Select * from customers
where country = 'Australia';

Select * from cust_data_aus_tab;


Create View cust_data_aus_view As
Select * from customers
where country = 'Australia';


INSERT INTO customers
VALUES
(5002, 'Koala Computers Ltd.', 'Smith', 'Emily', 
 '+61 3 8765 4321', '45 Eucalyptus Rd', NULL, 'Melbourne', 'VIC', '3000', 
 'Australia', 1401, 62000.00);


Select * from cust_data_aus_tab;
Select * from cust_data_aus_view;

Insert into cust_data_aus_view
Values
(5003, 'KK Bikes Ltd.', 'Cole', 'Emily', 
 '+61 3 8765 4321', '45 Eucalyptus Rd', NULL, 'Melbourne', 'VIC', '3000', 
 'Australia', 1401, 62000.00);


Select * from customers
where country = 'Australia';


Insert into cust_data_aus_tab
Values
(5004, 'KK Bikes Ltd.', 'Cole', 'Emily', 
 '+61 3 8765 4321', '45 Eucalyptus Rd', NULL, 'Melbourne', 'VIC', '3000', 
 'Australia', 1401, 62000.00);

Select * from customers
where country = 'Australia';
