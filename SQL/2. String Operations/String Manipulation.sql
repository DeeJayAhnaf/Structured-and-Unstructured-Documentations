use ahnaf;

SELECT * from employee;

SELECT emp_name, UPPER(emp_name) AS uppercase_name
FROM Employee;

SELECT emp_name, LOWER(emp_name) AS lowercase_name
FROM Employee;


SELECT emp_name, LENGTH(emp_name) AS name_length
FROM Employee;


SELECT emp_name, CHAR_LENGTH(emp_name) AS character_count
FROM Employee;


SELECT
    emp_name,
    department,
    CONCAT(emp_name, ' - ', department) AS employee_details
FROM Employee;



SELECT
    emp_name,
    LEFT(emp_name, 5) AS first_five_characters
FROM Employee;



SELECT
    emp_name,
    RIGHT(emp_name, 5) AS last_five_characters
FROM Employee;



SELECT
    emp_name,
    SUBSTRING(emp_name, 1, 5) AS extracted_name
FROM Employee;



SELECT
    emp_name,
    INSTR(emp_name, 'a') AS position
FROM Employee;


SELECT
    emp_name,
    LOCATE('a', emp_name) AS position
FROM Employee;



SELECT
    emp_name,
    REPLACE(emp_name, 'Kumar', 'K.') AS modified_name
FROM Employee;



SELECT
    emp_name,
    REVERSE(emp_name) AS reversed_name
FROM Employee;



SELECT
    emp_id,
    LPAD(emp_id, 5, '0') AS formatted_id
FROM Employee;


SELECT
    emp_name,
    RPAD(emp_name, 20, '.') AS formatted_name
FROM Employee;



SELECT *
FROM Employee
WHERE emp_name LIKE 'A%';


SELECT *
FROM Employee
WHERE emp_name LIKE '_r%';


