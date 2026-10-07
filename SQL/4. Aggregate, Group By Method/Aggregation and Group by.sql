use ahnaf;

-- SELECT COUNT(*) AS total_employees
-- FROM Employee;

select * from employee;

SELECT COUNT(*) AS total_employees
FROM Employee;

SELECT SUM(salary) AS total_salary
FROM Employee;


SELECT AVG(salary) AS average_salary
FROM Employee;


SELECT MAX(salary) AS highest_salary
FROM Employee;


SELECT MIN(salary) AS lowest_salary
FROM Employee;


SELECT
    COUNT(*) AS total_employees,
    SUM(salary) AS total_salary,
    AVG(salary) AS average_salary,
    MAX(salary) AS highest_salary,
    MIN(salary) AS lowest_salary
FROM Employee;


SELECT
    department,
    COUNT(*) AS employee_count
FROM Employee
GROUP BY department;


SELECT
    department,
    SUM(salary) AS total_salary
FROM Employee
GROUP BY department;


SELECT
    department,
    AVG(salary) AS average_salary
FROM Employee
GROUP BY department;



SELECT
    department,
    MAX(salary) AS highest_salary
FROM Employee
GROUP BY department;



SELECT
    department,
    gender,
    COUNT(*) AS employee_count
FROM Employee
GROUP BY department, gender;


SELECT
    department,
    gender,
    AVG(salary) AS average_salary
FROM Employee
GROUP BY department, gender;



SELECT
    department,
    COUNT(*) AS employee_count
FROM Employee
GROUP BY department
HAVING COUNT(*) > 2;



SELECT
    department,
    SUM(salary) AS total_salary
FROM Employee
GROUP BY department
HAVING SUM(salary) > 100000;



SELECT
    department,
    AVG(salary) AS average_salary
FROM Employee
GROUP BY department
HAVING AVG(salary) > 50000;



SELECT
    department,
    COUNT(*) AS employee_count,
    AVG(salary) AS average_salary
FROM Employee
WHERE department IN ('IT', 'Finance')
GROUP BY department
HAVING AVG(salary) > 50000;



