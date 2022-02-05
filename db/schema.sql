DROP DATABASE IF EXISTS corp;
CREATE DATABASE corp;
USE corp;

DROP DATABASE IF EXISTS departments;
DROP DATABASE IF EXISTS roles;
DROP DATABASE IF EXISTS employees;

CREATE TABLE departments (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    dept_name VARCHAR(30) NOT NULL
);

CREATE TABLE roles (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL(8,2),
    department_id INTEGER,
    FOREIGN KEY (department_id) REFERENCES departments(id)
);

CREATE TABLE employees (
  id INTEGER AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  role_id INTEGER,
  FOREIGN KEY (role_id) REFERENCES roles(id),
  manager_id INTEGER,
  FOREIGN KEY (manager_id) REFERENCES employee(id),
);