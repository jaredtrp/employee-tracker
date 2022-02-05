DROP DATABASE IF EXISTS departments;
DROP DATABASE IF EXISTS roles;
DROP DATABASE IF EXISTS employees;

CREATE DATABASE employee_db;

CREATE TABLE departments (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    dept_name VARCHAR(30) NOT NULL
);

CREATE TABLE roles (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    role_name VARCHAR(30) NOT NULL,
    role_salary DECIMAL(9,2) NOT NULL,
    FOREIGN KEY (DepartmentID) REFERENCES departments(id)
);

CREATE TABLE employees (
  id INTEGER AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  job_title VARCHAR(30), NOT NULL,
  emp_manager VARCHAR(30), NOT NULL,
  FOREIGN KEY (DepartmentID) REFERENCES departments(id),
  FOREIGN KEY (emp_salary) REFERENCES roles(role_salary)
);