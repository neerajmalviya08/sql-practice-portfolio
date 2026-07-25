-- SQL PRACTICE PORTFOLIO
-- Topic: Views and Indexes
-- Database: MySQL
-- Author: Neeraj Malviya


-- VIEWS


-- Q1. Create a view containing departments
-- of employees earning more than 70,000

CREATE VIEW Joined_Table AS
SELECT department
FROM Employees
WHERE salary > 70000;


-- Q2. Display all available tables

SHOW TABLES;


-- Q3. Retrieve data from the Joined_Table view

SELECT *
FROM Joined_Table;


-- Q4. Retrieve data from the Joined_Table view again

SELECT *
FROM Joined_Table;


-- INDEXES


-- Q5. Create an index on employee name

CREATE INDEX I_emp_name
ON Employees (emp_name);


-- Q6. Find an employee by name

SELECT *
FROM Employees
WHERE emp_name = "Neeraj";


-- Q7. Display indexes on the Employees table

SHOW INDEX
FROM Employees;
