-- SQL PRACTICE PORTFOLIO
-- Topic: Aggregate Functions
-- Database: MySQL
-- Author: Neeraj Malviya


-- Q1. Count the total number of employees

SELECT COUNT(emp_Id)
FROM Employees;


-- Q2. Calculate the total salary

SELECT SUM(Salary)
FROM Employees;


-- Q3. Calculate the average salary

SELECT AVG(Salary)
FROM Employees;


-- Q4. Find the maximum salary

SELECT MAX(Salary)
FROM Employees;


-- Q5. Find the minimum salary

SELECT MIN(Salary)
FROM Employees;


-- Q6. Find the average salary by department

SELECT AVG(Salary),
       department
FROM Employees
GROUP BY department;


-- Q7. Count employees in each department

SELECT department,
       COUNT(emp_Id)
FROM Employees
GROUP BY department;


-- Q8. Find departments with more than 2 employees

SELECT department,
       COUNT(emp_Id) AS Total_employees
FROM Employees
GROUP BY department
HAVING Total_employees > 2;


-- Q9. Find the department with the highest average salary

SELECT department,
       AVG(Salary) AS AVG_Sal
FROM Employees
GROUP BY department
ORDER BY AVG_Sal DESC
LIMIT 1;


-- Q10. Count employees in each city

SELECT City,
       COUNT(emp_Id)
FROM Employees
GROUP BY City;
