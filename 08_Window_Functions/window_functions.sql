-- SQL PRACTICE PORTFOLIO
-- Topic: Window Functions
-- Database: MySQL
-- Author: Neeraj Malviya


-- Q1. Assign a row number to employees based on salary

SELECT ROW_NUMBER() OVER (
           ORDER BY Salary DESC
       ) AS Row_no,
       emp_name,
       salary
FROM Employees;


-- Q2. Rank employees based on salary

SELECT emp_name,
       salary,
       RANK() OVER (
           ORDER BY Salary DESC
       ) AS Ranking
FROM Employees;


-- Q3. Rank employees using DENSE_RANK()

SELECT emp_name,
       salary,
       DENSE_RANK() OVER (
           ORDER BY Salary DESC
       ) AS Dense_ranking
FROM Employees;


-- Q4. Find employees in the top 3 salary ranks

SELECT emp_name,
       Salary
FROM (
    SELECT emp_name,
           Salary,
           DENSE_RANK() OVER (
               ORDER BY Salary DESC
           ) AS Dense_Ranks
    FROM Employees
) AS TableRank
WHERE Dense_Ranks <= 3;


-- Q5. Find the top 2 salary ranks within each department

SELECT emp_name,
       department,
       salary
FROM (
    SELECT emp_name,
           department,
           salary,
           DENSE_RANK() OVER (
               PARTITION BY department
               ORDER BY salary
           ) AS High_Sal
    FROM Employees
) AS Top2_Sal
WHERE High_Sal <= 2;


-- Q6. Find employees in the top 3 salary ranks

SELECT emp_name,
       salary
FROM (
    SELECT emp_name,
           salary,
           DENSE_RANK() OVER (
               ORDER BY salary DESC
           ) AS Highest_Sal
    FROM Employees
) AS RankedEmployees
WHERE Highest_Sal <= 3;


-- Q7. Find the top 3 salary ranks in each department

SELECT emp_name,
       department,
       Salary
FROM (
    SELECT *,
           DENSE_RANK() OVER (
               PARTITION BY department
               ORDER BY salary DESC
           ) AS High_Sal
    FROM Employees
) AS RANKTABLE
WHERE High_Sal <= 3;


-- Q8. Rank employees from lowest to highest salary

SELECT *,
       DENSE_RANK() OVER (
           ORDER BY salary ASC
       ) AS Low_Sal
FROM Employees;


-- Q9. Find the bottom 2 salary ranks

SELECT emp_name,
       department,
       Salary
FROM (
    SELECT *,
           DENSE_RANK() OVER (
               ORDER BY salary ASC
           ) AS Low_Sal
    FROM Employees
) AS LRANK
WHERE Low_Sal <= 2;


-- Q10. Calculate the running total of salaries

SELECT emp_name,
       Salary,
       SUM(salary) OVER (
           ORDER BY emp_id
       ) AS Running_Total
FROM Employees;

