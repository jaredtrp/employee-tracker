DROP DATABASE IF EXISTS corp;
CREATE DATABASE corp;
USE corp;

-- DROP DATABASE IF EXISTS departments;
-- DROP DATABASE IF EXISTS roles;
-- DROP DATABASE IF EXISTS employees;

CREATE TABLE department (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30) NOT NULL
);

CREATE TABLE role (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(30) UNIQUE NOT NULL,
  salary DECIMAL UNSIGNED NOT NULL,
  department_id INT UNSIGNED,
--   INDEX dep_ind (department_id),
  CONSTRAINT fk_department FOREIGN KEY (department_id) REFERENCES department(id) ON DELETE CASCADE
);

-- CREATE TABLE role (
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     title VARCHAR(30) NOT NULL,
--     salary DECIMAL(8, 2),
--     department_id INT,
--     FOREIGN KEY (department_id) REFERENCES department(id)
-- );

CREATE TABLE employee (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  role_id INT UNSIGNED NOT NULL,
  INDEX role_ind (role_id),
  CONSTRAINT fk_role FOREIGN KEY (role_id) REFERENCES role(id) ON DELETE CASCADE,
  manager_id INT UNSIGNED,
  INDEX man_ind (manager_id),
  CONSTRAINT fk_manager FOREIGN KEY (manager_id) REFERENCES employee(id) ON DELETE SET NULL
);

-- CREATE TABLE employee (
--     id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
--     first_name VARCHAR(30) NOT NULL,
--     last_name VARCHAR(30) NOT NULL,
--     role_id INT,
--     FOREIGN KEY (role_id) REFERENCES role(id),
--     manager_id INT,
--     FOREIGN KEY (manager_id) REFERENCES employee(id),
-- );