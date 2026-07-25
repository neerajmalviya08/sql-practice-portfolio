-- SQL PRACTICE PORTFOLIO
-- Topic: SQL Joins
-- Database: MySQL
-- Author: Neeraj Malviya


-- Q1. Display employees with department ID and location

SELECT E.emp_name,
       E.department,
       D.dept_id,
       D.location
FROM Employees AS E
INNER JOIN Department AS D
    ON E.dept_id = D.dept_id;


-- Q2. Display employees with department type

SELECT E.emp_name,
       D.location,
       D.dept_id,
       D.department_type
FROM Employees AS E
INNER JOIN Department AS D
    ON E.dept_id = D.dept_id;


-- Q3. Find employees working in the IT department

SELECT E.emp_name,
       E.department,
       D.location
FROM Employees AS E
INNER JOIN Department AS D
    ON E.dept_id = D.dept_id
WHERE department = "IT";


-- Q4. Find employees working in Delhi

SELECT E.emp_name,
       E.department,
       D.location
FROM Employees AS E
INNER JOIN Department AS D
    ON E.dept_id = D.dept_id
WHERE D.location = "Delhi";


-- Q5. Display employees with department names and salaries

SELECT E.emp_name,
       D.dept_name,
       E.Salary
FROM Employees AS E
INNER JOIN Department AS D
    ON E.dept_id = D.dept_id
ORDER BY E.Salary DESC;


-- Q6. Count employees in each department

SELECT D.dept_name,
       COUNT(emp_name)
FROM Employees AS E
INNER JOIN Department AS D
    ON E.dept_id = D.dept_id
GROUP BY D.dept_name;


-- Q7. Display department names using LEFT JOIN

SELECT D.dept_name
FROM Employees AS E
LEFT JOIN Department AS D
    ON E.dept_id = D.dept_id;


-- Q8. Find employees with no matching department

SELECT D.dept_name
FROM Employees AS E
LEFT JOIN Department AS D
    ON E.dept_id = D.dept_id
WHERE E.emp_name = NULL;


-- Q9. Count employees in each department using LEFT JOIN

SELECT D.dept_name,
       COUNT(emp_name)
FROM Employees AS E
LEFT JOIN Department AS D
    ON E.dept_id = D.dept_id
GROUP BY D.dept_name;


-- Q10. Find average salary by department

SELECT D.dept_name,
       AVG(salary)
FROM Employees AS E
LEFT JOIN Department AS D
    ON E.dept_id = D.dept_id
GROUP BY D.dept_name;


-- Q11. Display all employees and department information

SELECT *
FROM Employees AS E
LEFT JOIN Department AS D
    ON E.dept_id = D.dept_id;


-- Q12. Insert an employee with a department ID
-- that does not exist in the Department table

INSERT INTO Employees
    (emp_id, emp_name, Gendar, Age, department, Salary, City, Joining_Date, Manager_Id, dept_id)
VALUES
    (17, 'Ayushi', 'Male', 28, 'CS', 50000, 'Pune', '2024-01-15', NULL, 6);


-- Q13. Display all employees and matching departments

SELECT *
FROM Employees AS E
LEFT JOIN Department AS D
    ON E.dept_id = D.dept_id;


-- Q14. Insert employees with additional department IDs

INSERT INTO Employees
    (emp_id, emp_name, Gendar, Age, department, Salary, City, Joining_Date, Manager_Id, dept_id)
VALUES
    (17, 'Ruchi', 'Female', 28, 'BA', 50000, 'Pune', '2024-01-15', NULL, 7),
    (17, 'Shivani', 'Female', 28, 'SAP', 80000, 'Pune', '2024-01-15', NULL, 8);


-- Q15. Simulate FULL OUTER JOIN using RIGHT JOIN and LEFT JOIN

SELECT *
FROM Employees AS E
RIGHT JOIN Department AS D
    ON E.dept_id = D.dept_id

UNION

SELECT *
FROM Employees AS E
LEFT JOIN Department AS D
    ON E.dept_id = D.dept_id;


-- Q16. Display employees and their manager IDs using SELF JOIN

SELECT E.emp_name,
       M.Manager_Id
FROM Employees AS E
INNER JOIN Employees AS M
    ON E.Manager_Id = M.emp_Id;


-- Q17. Display employees and their managers

SELECT E.emp_name AS Employee,
       M.emp_name AS Manager
FROM Employees AS E
LEFT JOIN Employees AS M
    ON E.Manager_Id = M.emp_id;


-- Q18. Perform a CROSS JOIN between employees and departments

SELECT E.emp_name,
       D.Department_type
FROM Employees AS E
CROSS JOIN Department AS D;


-- Q19. Display departments and matching employees

SELECT E.emp_name,
       D.dept_name
FROM Department AS D
LEFT JOIN Employees AS E
    ON D.dept_id = E.dept_id;


-- Q20. Display employees and matching departments

SELECT E.emp_name,
       D.dept_name
FROM Employees AS E
LEFT JOIN Department AS D
    ON E.dept_id = D.dept_id;
