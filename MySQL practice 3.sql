DROP DATABASE IF EXISTS company_db;
CREATE DATABASE company_db;
USE company_db;

-- 2. Create Departments Table (Independent Entity)
CREATE TABLE departments (
    dept_id INT AUTO_INCREMENT,
    dept_name VARCHAR(50) NOT NULL,
    location VARCHAR(100),
    PRIMARY KEY (dept_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 3. Create Employees Table (Dependent Entity with Foreign Key)
CREATE TABLE employees (
    emp_id INT AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    hire_date DATE NOT NULL,
    salary DECIMAL(10, 2) DEFAULT 0.00,
    dept_id INT,
    PRIMARY KEY (emp_id),
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id) 
        ON DELETE SET NULL 
        ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 4. Insert Seed Data into Departments
INSERT INTO departments (dept_name, location) VALUES 
('Engineering', 'San Francisco'),
('Marketing', 'New York'),
('Human Resources', 'Chicago');

-- 5. Insert Seed Data into Employees
INSERT INTO employees (first_name, last_name, email, hire_date, salary, dept_id) VALUES 
('Alice', 'Smith', 'alice.smith@example.com', '2023-01-15', 85000.00, 1),
('Bob', 'Johnson', 'bob.johnson@example.com', '2023-03-22', 95000.00, 1),
('Charlie', 'Brown', 'charlie.brown@example.com', '2024-05-10', 60000.00, 2),
('Diana', 'Prince', 'diana.prince@example.com', '2025-11-01', 72000.00, NULL);

-- 6. Verify Data and Run Test Query
SELECT 
    e.emp_id, 
    CONCAT(e.first_name, ' ', e.last_name) AS full_name, 
    e.salary, 
    COALESCE(d.dept_name, 'Unassigned') AS department
FROM employees e
LEFT JOIN departments d ON e.dept_id = d.dept_id
ORDER BY e.salary DESC;
