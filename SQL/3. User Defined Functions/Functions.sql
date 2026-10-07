DELIMITER //

CREATE FUNCTION GetAnnualSalary(monthly_salary DECIMAL(10,2))
RETURNS DECIMAL(12,2)
DETERMINISTIC
BEGIN
    RETURN monthly_salary * 12;
END //

DELIMITER ;

SELECT
    emp_name,
    salary AS monthly_salary,
    GetAnnualSalary(salary) AS annual_salary
FROM Employee;




DELIMITER //

CREATE FUNCTION CalculateBonus(salary DECIMAL(10,2))
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    RETURN salary * 0.10;
END //

DELIMITER ;

SELECT
    emp_name,
    salary,
    CalculateBonus(salary) AS bonus
FROM Employee;



DELIMITER //

CREATE FUNCTION GenerateEmployeeCode(emp_id INT)
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
    RETURN CONCAT('EMP-', LPAD(emp_id, 4, '0'));
END //

DELIMITER ;

SELECT
    emp_id,
    emp_name,
    GenerateEmployeeCode(emp_id) AS employee_code
FROM Employee;

