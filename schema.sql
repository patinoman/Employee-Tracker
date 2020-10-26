DROP DATABASE IF EXISTS employee_db;
CREATE DATABASE employee_db;

USE employee_db;


CREATE TABLE department (
    id INTEGER auto_increment PRIMARY KEY,
    name VARCHAR(30) NOT NULL
);

CREATE TABLE role (
    id INTEGER auto_increment PRIMARY KEY,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL UNSIGNED,
    department_id INTEGER,
    index department_index (department_id),
    CONSTRAINT fk_department FOREIGN KEY (department_id) 
        REFERENCES department(id) 
        ON DELETE SET NULL
);

CREATE TABLE employee (
    id INTEGER auto_increment PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INTEGER,
    manager_id INTEGER,
    index role_index (role_id),
    index manager_index (manager_id),
    CONSTRAINT fk_manager FOREIGN KEY (manager_id) 
    REFERENCES employee(id) 
    ON DELETE SET NULL,
    
    CONSTRAINT fk_role FOREIGN KEY (role_id) 
    REFERENCES role(id) 
    ON DELETE SET NULL
);