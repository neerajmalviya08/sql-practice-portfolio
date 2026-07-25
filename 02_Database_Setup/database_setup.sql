-- SQL PRACTICE PORTFOLIO
-- Topic: Database and Table Setup
-- Database: MySQL
-- Author: Neeraj Malviya


-- Q1. Create the Company database

CREATE DATABASE Company_DB;


-- Q2. Select the Company database

USE Company_DB;


-- Q3. Create the Employees table

CREATE TABLE Employees (
    emp_Id INT,
    emp_name VARCHAR(50),
    Gendar VARCHAR(10),
    Age INT,
    department VARCHAR(50),
    Salary INT,
    City VARCHAR(10),
    Joining_Date DATE,
    Manager_Id INT
);


-- Q4. Insert the first employee

INSERT INTO Employees 
    (emp_Id, emp_name, Gendar, Age, department, Salary, City, Joining_Date, Manager_Id) 
VALUES 
    (1, "Rahul", "Male", 25, "HR", 35000, "Delhi", "2022-01-15", NULL);


-- Q5. Insert multiple employees

INSERT INTO Employees
    (emp_Id, emp_name, Gendar, Age, department, Salary, City, Joining_Date, Manager_Id)
VALUES
    (2, 'Priya', 'Female', 28, 'IT', 60000, 'Mumbai', '2021-03-20', 5),
    (3, 'Amit', 'Male', 31, 'Finance', 55000, 'Pune', '2020-07-18', 6),
    (4, 'Sneha', 'Female', 27, 'HR', 40000, 'Delhi', '2023-01-05', 1),
    (5, 'Rohit', 'Male', 35, 'IT', 85000, 'Mumbai', '2019-06-12', NULL),
    (6, 'Anjali', 'Female', 40, 'Finance', 90000, 'Pune', '2018-02-15', NULL),
    (7, 'Karan', 'Male', 30, 'Sales', 45000, 'Jaipur', '2022-05-10', 8),
    (8, 'Neha', 'Female', 38, 'Sales', 80000, 'Jaipur', '2017-11-20', NULL),
    (9, 'Vikas', 'Male', 26, 'IT', 50000, 'Bangalore', '2023-04-01', 5),
    (10, 'Pooja', 'Female', 29, 'Marketing', 52000, 'Delhi', '2022-09-12', 11),
    (11, 'Sanjay', 'Male', 41, 'Marketing', 95000, 'Delhi', '2016-01-01', NULL),
    (12, 'Deepak', 'Male', 24, 'HR', 32000, 'Indore', '2024-02-15', 1),
    (13, 'Riya', 'Female', 33, 'Finance', 70000, 'Pune', '2021-12-30', 6),
    (14, 'Arjun', 'Male', 29, 'IT', 65000, 'Hyderabad', '2020-10-25', 5),
    (15, 'Megha', 'Female', 26, 'Sales', 48000, 'Jaipur', '2023-08-08', 8);


-- Q6. Create the Department table

CREATE TABLE Department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    location VARCHAR(50)
);


-- Q7. Insert department records

INSERT INTO Department 
    (dept_id, dept_name, location) 
VALUES 
    (1, 'HR', 'Delhi'),
    (2, 'IT', 'Mumbai'),
    (3, 'Finance', 'Pune'),
    (4, 'Sales', 'Jaipur'),
    (5, 'Marketing', 'Delhi');


-- Q8. Add dept_id column to Employees

ALTER TABLE Employees
ADD dept_id INT;


-- Q9. Assign department ID 1 to HR employees

UPDATE Employees
SET dept_id = 1
WHERE department = "HR";


-- Q10. Disable safe update mode

SET SQL_SAFE_UPDATES = 0;


-- Q11. Assign department IDs to IT employees

UPDATE Employees
SET dept_id = 2
WHERE department = 'IT';


-- Q12. Assign department IDs to Finance employees

UPDATE Employees
SET dept_id = 3
WHERE department = 'Finance';


-- Q13. Assign department IDs to Sales employees

UPDATE Employees
SET dept_id = 4
WHERE department = 'Sales';


-- Q14. Assign department IDs to Marketing employees

UPDATE Employees
SET dept_id = 5
WHERE department = 'Marketing';


-- Q15. Add Department_type column

ALTER TABLE Department
ADD Department_type VARCHAR(50);


-- Q16. Set HR as Non Tech

UPDATE Department
SET Department_type = "Non Tech"
WHERE dept_id = 1;


-- Q17. Set IT as Tech

UPDATE Department
SET Department_type = "Tech"
WHERE dept_id = 2;


-- Q18. Set Finance as Non Tech

UPDATE Department
SET Department_type = "Non Tech"
WHERE dept_id = 3;


-- Q19. Set Sales as Non Tech

UPDATE Department
SET Department_type = "Non Tech"
WHERE dept_id = 4;


-- Q20. Set Marketing as Non Tech

UPDATE Department
SET Department_type = "Non Tech"
WHERE dept_id = 5;
