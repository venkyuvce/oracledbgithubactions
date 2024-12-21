-- Create a new schema (optional if using existing)
CREATE USER my_user IDENTIFIED BY my_password;
GRANT CONNECT, RESOURCE TO my_user;

-- Switch to the new schema
ALTER SESSION SET CURRENT_SCHEMA = my_user;

-- Create tables
CREATE TABLE employees (
    employee_id NUMBER PRIMARY KEY,
    first_name VARCHAR2(50),
    last_name VARCHAR2(50),
    hire_date DATE,
    job_id VARCHAR2(10)
);

CREATE TABLE departments (
    department_id NUMBER PRIMARY KEY,
    department_name VARCHAR2(100),
    location_id NUMBER
);

-- Insert sample data
INSERT INTO employees (employee_id, first_name, last_name, hire_date, job_id) 
VALUES (1, 'John', 'Doe', SYSDATE, 'IT_PROG');

INSERT INTO departments (department_id, department_name, location_id) 
VALUES (10, 'IT', 1700);

-- Commit changes
COMMIT;

-- Verify contents
SELECT * FROM employees;
SELECT * FROM departments;