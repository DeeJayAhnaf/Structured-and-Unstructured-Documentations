USE ahnaf;

SHOW INDEX FROM Employee;


CREATE INDEX idx_employee_department
ON Employee(department);

SELECT *
FROM Employee
WHERE department = 'IT';

CREATE INDEX idx_employee_salary
ON Employee(salary);

SELECT *
FROM Employee
WHERE salary > 50000;



CREATE INDEX idx_department_salary
ON Employee(department, salary);

SELECT *
FROM Employee
WHERE department = 'IT'
AND salary > 50000;

