use ahnaf;

SELECT
    emp_id,
    emp_name,
    salary,
    CASE
        WHEN salary >= 70000 THEN 'High Salary'
        WHEN salary >= 50000 THEN 'Medium Salary'
        ELSE 'Low Salary'
    END AS salary_category
FROM Employee;



SELECT
    emp_id,
    emp_name,
    department,
    CASE
        WHEN department = 'IT' THEN 'Technical'
        WHEN department = 'Finance' THEN 'Financial'
        WHEN department = 'HR' THEN 'Human Resources'
        WHEN department = 'Marketing' THEN 'Business'
        ELSE 'Other'
    END AS department_type
FROM Employee;



SELECT
    emp_id,
    emp_name,
    salary,
    CASE
        WHEN salary >= 70000 THEN salary * 0.15
        WHEN salary >= 50000 THEN salary * 0.10
        ELSE salary * 0.05
    END AS increment_amount
FROM Employee;