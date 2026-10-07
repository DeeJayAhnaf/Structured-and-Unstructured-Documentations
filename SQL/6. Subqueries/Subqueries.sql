use ahnaf;


SELECT *
FROM Employee
WHERE salary > (SELECT AVG(salary) FROM Employee);


SELECT *
FROM Employee
WHERE salary = (SELECT MAX(salary) FROM Employee);


SELECT
    emp_id,
    emp_name,
    department,
    salary
FROM Employee
WHERE salary = (
    SELECT MIN(salary)
    FROM Employee
);


SELECT *
FROM Employee
WHERE department = (
    SELECT department
    FROM Employee
    WHERE emp_name = 'Arun Kumar'
);


