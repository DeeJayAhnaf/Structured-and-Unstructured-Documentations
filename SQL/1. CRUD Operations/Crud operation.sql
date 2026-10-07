use ahnaf;

CREATE TABLE Employee (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    emp_name VARCHAR(100) NOT NULL,
    gender VARCHAR(10),
    department VARCHAR(50),
    designation VARCHAR(50),
    salary DECIMAL(10,2),
    hire_date DATE,
    city VARCHAR(50),
    email VARCHAR(100) UNIQUE
);

SHOW tables;

INSERT INTO Employee
(emp_name, gender, department, designation, salary, hire_date, city, email)
VALUES
('Arun Kumar', 'Male', 'IT', 'Software Developer', 55000, '2022-06-15', 'Chennai', 'arun@company.com'),
('Priya Sharma', 'Female', 'HR', 'HR Executive', 45000, '2021-08-20', 'Bangalore', 'priya@company.com'),
('Rahul Ahmed', 'Male', 'Finance', 'Accountant', 50000, '2023-01-10', 'Chennai', 'rahul@company.com'),
('Sneha Raj', 'Female', 'IT', 'Data Analyst', 60000, '2022-11-05', 'Vellore', 'sneha@company.com'),
('Karthik M', 'Male', 'Marketing', 'Marketing Executive', 42000, '2023-03-18', 'Chennai', 'karthik@company.com'),
('Aisha Khan', 'Female', 'IT', 'ML Engineer', 75000, '2021-05-12', 'Bangalore', 'aisha@company.com'),
('Vijay Kumar', 'Male', 'Sales', 'Sales Executive', 40000, '2024-01-25', 'Chennai', 'vijay@company.com'),
('Divya S', 'Female', 'Finance', 'Financial Analyst', 58000, '2022-09-14', 'Coimbatore', 'divya@company.com'),
('Mohammed Irfan', 'Male', 'IT', 'Backend Developer', 68000, '2023-07-21', 'Vellore', 'irfan@company.com'),
('Meena Devi', 'Female', 'HR', 'HR Manager', 70000, '2020-04-10', 'Chennai', 'meena@company.com');

select * from employee;

SELECT *
FROM Employee
WHERE department = 'IT';



SELECT emp_name, department, salary
FROM Employee
WHERE salary > 50000;



UPDATE Employee
SET salary = 65000
WHERE emp_id = 4;

UPDATE Employee
SET department = 'Data Science',
    designation = 'Data Scientist'
WHERE emp_id = 4;


DELETE FROM Employee
WHERE emp_id = 10;




CREATE TABLE IT_Employees AS
SELECT *
FROM Employee
WHERE department = 'IT';


SELECT * FROM IT_Employees;


CREATE TABLE High_Salary_Employees AS
SELECT emp_id, emp_name, department, salary
FROM Employee
WHERE salary >= 60000;


SELECT * FROM High_Salary_Employees;


WITH AverageSalary AS (
    SELECT AVG(salary) AS avg_salary
    FROM Employee
)
SELECT
    emp_id,
    emp_name,
    department,
    salary
FROM Employee;



CREATE TEMPORARY TABLE Temp_Employee AS
SELECT *
FROM Employee
WHERE salary > 50000;


CREATE TABLE Employee_Backup LIKE Employee;

INSERT INTO Employee_Backup
SELECT *
FROM Employee;

select * from employee;