-- Joins Data

# creating a demo schema
Create Schema demo;

CREATE TABLE demo.emp_info (
    emp_id CHAR(4),
    emp_name VARCHAR(20),
    skills VARCHAR(40),
    exp INT
);

# adding records to the table 
INSERT INTO demo.emp_info
VALUES
("A123", "Rohit Jain", "SQL|C|R|Python|Tableau", 7),
("A124", "Aaina Singh", "SQLC|R|Tableau", 4),
("A125", "Mark John", "C|Python|Java", 10),
("A126", "Sam Keith", "SQL|C", 2),
("A127", "Kenny Ford", "SQL|C|R|Python|Power BI", 5);

CREATE TABLE demo.emp_sal_desig (
    emp_id CHAR(4),
    desig VARCHAR(20),
    salary FLOAT
);

INSERT INTO demo.emp_sal_desig
VALUES
("A123", "L3", 4500),
("A126", "L1", 2500),
("A121", "L2", 3500),
("A122", "L5", 9500);


CREATE TABLE demo.emp_info_2 (
    emp_id CHAR(4),
    emp_name VARCHAR(20),
    exp INT,
    reportsTo CHAR(4)
);

# adding records to the table 
INSERT INTO demo.emp_info_2
VALUES
("A123", "Rohit Jain", 7, 'A124'),
("A124", "Aaina Singh", 4, 'A124'),
("A125", "Mark John",  10, 'A123'),
("A126", "Sam Keith",  2, 'A123'),
("A127", "Kenny Ford",  5, 'A123');


-- For Cross Join

CREATE TABLE demo.Food (
    item_id INT,
    item_name VARCHAR(50),
    item_cost DECIMAL(5 , 2 )
);

-- Insert sample data
INSERT INTO demo.Food (item_id, item_name, item_cost) VALUES 
(1, 'Burger', 8.99),
(2, 'Salad', 5.49),
(3, 'Pasta', 12.75);

CREATE TABLE demo.Beverage (
    item_id INT,
    item_name VARCHAR(50),
    item_cost DECIMAL(5 , 2 )
);

-- Insert sample data
INSERT INTO demo.Beverage (item_id, item_name, item_cost) VALUES 
(1, 'Soda', 1.99),
(2, 'Juice', 2.49),
(3, 'Coffee', 3.00);



