-- SQL PRACTICE PORTFOLIO
-- Topic: Data Manipulation
-- Database: MySQL

-- INSERT

-- Q1. Insert a new employee named Neeraj into the Employees table

INSERT INTO Employees 
    (emp_Id, emp_name, Gendar, Age, department, Salary, City, Joining_Date, Manager_Id) 
VALUES 
    (16, "Neeraj", "Male", 29, "HR", 50000, "Bhopal", "2022-04-22", NULL);


-- UPDATE

-- Q2. Increase the salary of all employees by 5,000

UPDATE Employees 
SET Salary = Salary + 5000;


-- Q3. Increase the salary of all employees by 10%

UPDATE Employees 
SET Salary = Salary * 1.10;


-- Q4. Increase the salary of employees in the IT department by 10%

UPDATE Employees 
SET Salary = Salary * 1.10 
WHERE department = "IT";


-- Q5. Change Priya's city to Noida

UPDATE Employees 
SET City = "Noida" 
WHERE emp_name = "Priya";


-- DELETE

-- Q6. Delete employees earning less than 45,000

DELETE FROM Employees 
WHERE Salary < 45000;
