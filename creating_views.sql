use mybench;


CREATE TABLE departments (
    dept_id INTEGER PRIMARY KEY,
    dept_name TEXT
);

CREATE TABLE employees (
    id INTEGER PRIMARY KEY,
    name TEXT,
    department INTEGER,
    salary REAL,
    FOREIGN KEY (department) REFERENCES departments(dept_id)
);


INSERT INTO departments (dept_id, dept_name) VALUES
(1, 'IT'),
(2, 'HR'),
(3, 'Finance');

INSERT INTO employees (id, name, department, salary) VALUES
(101, 'Alice', 1, 60000),
(102, 'Bob', 1, 55000),
(103, 'Charlie', 2, 45000),
(104, 'David', 3, 70000),
(105, 'Eva', 3, 65000);



-- Simple view (hides salary, shows only basic info)
CREATE VIEW employee_summary AS
SELECT id, name, department
FROM employees;

-- Conditional view (only IT employees)
CREATE VIEW it_employees AS
SELECT id, name, salary
FROM employees
WHERE department = 1;

-- Join view (employee with department name)
CREATE VIEW employee_department AS
SELECT e.id, e.name, d.dept_name, e.salary
FROM employees e
JOIN departments d ON e.department = d.dept_id;

-- Get all employees (basic summary)
SELECT * FROM employee_summary;

-- Get only IT department employees
SELECT * FROM it_employees;

-- Get employees with their department names
SELECT * FROM employee_department;

-- Example: employees in Finance earning > 60000
SELECT * 
FROM employee_department
WHERE dept_name = 'Finance' AND salary > 60000;
