-- SQL PRACTICE PORTFOLIO
-- Topic: Common Table Expressions (CTEs)
-- Database: MySQL
-- Author: Neeraj Malviya


-- Q1. Create a CTE containing employees earning more than 70,000

WITH CTE_Table AS (
    SELECT *
    FROM Employees
    WHERE Salary > 70000
)

SELECT emp_name,
       Salary
FROM CTE_Table;


-- Q2. Retrieve all records from the Joined_Table view

SELECT *
FROM Joined_Table;


-- Q3. Retrieve all records from the CTE_Table

SELECT *
FROM CTE_table;
