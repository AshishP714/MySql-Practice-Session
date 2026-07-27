-- Fetch all employees
SELECT * FROM employee;

-- Fetch first 10 employees
SELECT *
FROM employee
ORDER BY id
LIMIT 10;

-- Highest salary
SELECT MAX(salary)
FROM employee;

-- Second highest salary
SELECT MAX(salary)
FROM employee
WHERE salary <
(
SELECT MAX(salary)
FROM employee
);

-- Employees from IT department
SELECT *
FROM employee
WHERE department_id = 2;

-- Average salary
SELECT AVG(salary)
FROM employee;

-- Count employees
SELECT COUNT(*)
FROM employee;

-- Employees earning above average salary
SELECT *
FROM employee
WHERE salary >
(
SELECT AVG(salary)
FROM employee
);

-- Department-wise employee count
SELECT department_id,
       COUNT(*)
FROM employee
GROUP BY department_id;

-- Highest salary department-wise
SELECT department_id,
       MAX(salary)
FROM employee
GROUP BY department_id;

-- Employee with department
SELECT e.name,
       d.department_name
FROM employee e
JOIN department d
ON e.department_id = d.id;

-- Duplicate names
SELECT name,
       COUNT(*)
FROM employee
GROUP BY name
HAVING COUNT(*) > 1;

-- Top 5 salaries
SELECT *
FROM employee
ORDER BY salary DESC
LIMIT 5;

-- Lowest salary
SELECT *
FROM employee
ORDER BY salary ASC
LIMIT 1;

-- Employees hired in 2024
SELECT *
FROM employee
WHERE YEAR(hire_date)=2024;