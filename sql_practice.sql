CREATE DATABASE sql_practice;

USE sql_practice;

CREATE TABLE department (
    id INT PRIMARY KEY AUTO_INCREMENT,
    department_name VARCHAR(50) NOT NULL
);

CREATE TABLE employee (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    salary DECIMAL(10,2),
    department_id INT,
    hire_date DATE,
    city VARCHAR(50),

    FOREIGN KEY (department_id)
    REFERENCES department(id)
);