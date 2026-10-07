use ahnaf;

SELECT
    emp_id,
    emp_name,
    department
FROM Employee
WHERE emp_name REGEXP '^A';


SELECT
    emp_id,
    emp_name
FROM Employee
WHERE emp_name REGEXP 'a$';


SELECT
    emp_id,
    emp_name
FROM Employee
WHERE emp_name REGEXP 'an';



SELECT
    emp_id,
    emp_name
FROM Employee
WHERE emp_name REGEXP '^[AS]';


SELECT
    emp_id,
    emp_name
FROM Employee
WHERE emp_name REGEXP '^[A-Z]';


SELECT
    emp_id,
    emp_name
FROM Employee
WHERE emp_name REGEXP '^[A-Za-z ]+$';


SELECT
    emp_id,
    emp_name,
    email
FROM Employee
WHERE email REGEXP '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}$';



SELECT
    emp_id,
    emp_name,
    city
FROM Employee
WHERE city REGEXP '^(Chennai|Bangalore)$';


