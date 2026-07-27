SELECT * FROM employee;

SELECT *
FROM employee
ORDER BY id
LIMIT 10;

SELECT MAX(salary)
FROM employee;

SELECT MAX(salary)
FROM employee
WHERE salary <
(
SELECT MAX(salary)
FROM employee
);

SELECT *
FROM employee
WHERE department_id = 2;

SELECT AVG(salary)
FROM employee;

SELECT COUNT(*)
FROM employee;

SELECT *
FROM employee
WHERE salary >
(
SELECT AVG(salary)
FROM employee
);

SELECT department_id,
       COUNT(*)
FROM employee
GROUP BY department_id;

SELECT department_id,
       MAX(salary)
FROM employee
GROUP BY department_id;

SELECT e.name,
       d.department_name
FROM employee e
JOIN department d
ON e.department_id = d.id;

SELECT name,
       COUNT(*)
FROM employee
GROUP BY name
HAVING COUNT(*) > 1;

SELECT *
FROM employee
ORDER BY salary DESC
LIMIT 5;

SELECT *
FROM employee
ORDER BY salary ASC
LIMIT 1;

SELECT *
FROM employee
WHERE YEAR(hire_date)=2024;
