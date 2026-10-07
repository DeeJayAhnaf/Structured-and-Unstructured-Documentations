SELECT
    emp_id,
    emp_name,
    department,
    salary,
    ROW_NUMBER() OVER (
        ORDER BY salary DESC
    ) AS row_num
FROM Employee;


SELECT
    emp_id,
    emp_name,
    department,
    salary,
    RANK() OVER (
        ORDER BY salary DESC
    ) AS salary_rank
FROM Employee;



SELECT
    emp_id,
    emp_name,
    department,
    salary,
    DENSE_RANK() OVER (
        ORDER BY salary DESC
    ) AS salary_rank
FROM Employee;



SELECT
    emp_id,
    emp_name,
    department,
    salary,
    RANK() OVER (
        PARTITION BY department
        ORDER BY salary DESC
    ) AS department_rank
FROM Employee;


SELECT
    emp_id,
    emp_name,
    department,
    salary,
    ROW_NUMBER() OVER (
        PARTITION BY department
        ORDER BY salary DESC
    ) AS department_row_number
FROM Employee;



SELECT
    emp_id,
    emp_name,
    salary,
    SUM(salary) OVER (
        ORDER BY emp_id
    ) AS running_total
FROM Employee;



SELECT
    emp_id,
    emp_name,
    department,
    salary,
    SUM(salary) OVER (
        PARTITION BY department
    ) AS department_total_salary
FROM Employee;