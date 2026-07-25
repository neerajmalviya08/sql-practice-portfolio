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


-- Q11. Find employees who have a manager

SELECT emp_name
FROM Employees
WHERE Manager_Id IS NOT NULL;


-- Q12. Find employees whose employee ID appears as a manager ID

SELECT emp_name
FROM Employees
WHERE emp_id IN (
    SELECT Manager_Id
    FROM Employees
    WHERE Manager_Id IS NOT NULL
);


-- Q13. Count the number of employees who are managers

SELECT COUNT(emp_name)
FROM Employees
WHERE emp_id IN (
    SELECT Manager_Id
    FROM Employees
    WHERE Manager_Id IS NOT NULL
);


-- Q14. Find managers who manage more than 2 employees

SELECT Manager_id,
       COUNT(emp_name)
FROM Employees
WHERE Manager_Id IS NOT NULL
GROUP BY Manager_Id
HAVING COUNT(emp_name) > 2;


-- Q15. Find employees earning more than their manager

SELECT *
FROM Employees AS E
INNER JOIN Employees AS M
    ON E.Manager_Id = M.emp_Id
WHERE E.Salary > M.Salary;
