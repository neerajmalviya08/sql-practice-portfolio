-- SQL PRACTICE PORTFOLIO
-- Topic: Basic SQL Queries
-- Database: MySQL
-- Author: Neeraj Malviya


-- Q1. Display all employees

SELECT *
FROM Employees;


-- Q2. Display employee names and salaries

SELECT emp_name, Salary
FROM Employees;


-- Q3. Find all unique departments

SELECT DISTINCT department
FROM Employees;


-- Q4. Find employees earning more than 60,000

SELECT *
FROM Employees
WHERE Salary > 60000;


-- Q5. Find employees working in Delhi

SELECT *
FROM Employees
WHERE City = "Delhi";


-- Q6. Find all female employees

SELECT *
FROM Employees
WHERE Gendar = "Female";


-- Q7. Display employees in descending order of salary

SELECT *
FROM Employees
ORDER BY Salary DESC;


-- Q8. Find the 5 youngest employees

SELECT *
FROM Employees
ORDER BY Age ASC
LIMIT 5;


-- Q9. Find employees aged between 25 and 30

SELECT *
FROM Employees
WHERE Age BETWEEN 25 AND 30;


-- Q10. Find employees working in HR, IT, or Finance

SELECT *
FROM Employees
WHERE department IN ("HR", "IT", "Finance");


-- Q11. Find employees whose names start with 'A'

SELECT *
FROM Employees
WHERE emp_name LIKE 'A%';


-- Q12. Find employees whose names end with 'a'

SELECT *
FROM Employees
WHERE emp_name LIKE '%a';


-- Q13. Find employees whose names contain 'ha'

SELECT *
FROM Employees
WHERE emp_name LIKE '%ha%';


-- Q14. Find employees who joined in 2022

SELECT *
FROM Employees
WHERE YEAR(Joining_Date) = "2022";


-- Q15. Find employees who do not have a manager

SELECT *
FROM Employees
WHERE Manager_Id IS NULL;


-- Q16. Find employees who are not working in HR

SELECT *
FROM Employees
WHERE department != "HR";


-- Q17. Find employees working in Delhi or Pune

SELECT *
FROM Employees
WHERE City IN ("Delhi", "Pune");


-- Q18. Find employees earning between 40,000 and 70,000

SELECT *
FROM Employees
WHERE Salary BETWEEN 40000 AND 70000;


-- Q19. Find employees earning outside the 40,000 to 70,000 salary range

SELECT *
FROM Employees
WHERE NOT Salary BETWEEN 40000 AND 70000;


-- Q20. Find the top 3 highest-paid employees

SELECT *
FROM Employees
ORDER BY Salary DESC
LIMIT 3;


-- Q21. Find the second-highest salary record

SELECT *
FROM Employees
ORDER BY Salary DESC
LIMIT 1,1;


-- Q22. Find all unique salaries

SELECT DISTINCT Salary
FROM Employees;


-- Q23. Find salaries that are shared by more than one employee

SELECT Salary,
       COUNT(emp_name)
FROM Employees
GROUP BY Salary
HAVING COUNT(emp_name) > 1;
