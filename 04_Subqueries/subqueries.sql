-- SQL PRACTICE PORTFOLIO
-- Topic: Subqueries
-- Database: MySQL
-- Author: Neeraj Malviya


-- Q1. Find employees earning more than the average salary of their department

SELECT emp_name,
       department,
       salary
FROM Employees AS E1
WHERE Salary > (
    SELECT AVG(salary)
    FROM Employees AS E2
    WHERE E1.department = E2.department
);


-- Q2. Find employees earning more than the overall average salary

SELECT *
FROM Employees
WHERE Salary > (
    SELECT AVG(salary)
    FROM Employees
);


-- Q3. Find employees earning more than the average salary of their department

SELECT *
FROM Employees AS E1
WHERE salary > (
    SELECT AVG(salary)
    FROM Employees AS E2
    WHERE E1.department = E2.department
);


-- Q4. Find employees with the highest salary in their department

SELECT E1.emp_name,
       E1.department,
       E1.Salary
FROM Employees E1
WHERE Salary = (
    SELECT MAX(Salary)
    FROM Employees E2
    WHERE E1.department = E2.department
);


-- Q5. Find employees earning above the average salary

SELECT emp_name,
       Salary
FROM Employees
WHERE Salary > (
    SELECT AVG(salary)
    FROM Employees
);


-- Q6. Find employees earning below the average salary

SELECT emp_name,
       Salary
FROM Employees
WHERE Salary < (
    SELECT AVG(salary)
    FROM Employees
);


-- Q7. Find the employee(s) with the highest salary

SELECT emp_name,
       Salary
FROM Employees
WHERE Salary = (
    SELECT MAX(salary)
    FROM Employees
);


-- Q8. Find the employee(s) with the lowest salary

SELECT emp_name,
       Salary
FROM Employees
WHERE Salary = (
    SELECT MIN(salary)
    FROM Employees
);


-- Q9. Find the second-highest salary

SELECT emp_name,
       Salary
FROM Employees
WHERE Salary = (
    SELECT MAX(salary)
    FROM Employees
    WHERE Salary < (
        SELECT MAX(salary)
        FROM Employees
    )
);


-- Q10. Find the third-highest salary

SELECT emp_name,
       Salary
FROM Employees
WHERE Salary = (
    SELECT MAX(salary)
    FROM Employees
    WHERE Salary < (
        SELECT MAX(salary)
        FROM Employees
        WHERE Salary < (
            SELECT MAX(Salary)
            FROM Employees
        )
    )
);


