DROP TABLE IF EXISTS EmployeeV;

CREATE TABLE EmployeeV (
    Emp_id INT PRIMARY KEY,
    Emp_name VARCHAR(50) NOT NULL,
    Emp_salary DECIMAL(16,2),
    Emp_age INT
);
INSERT INTO EmployeeV VALUES
(101,'Amit',35000,32),
(102,'Ramesh',70000,NULL),
(103,'Kavya',65000,NULL),
(104,'Akarsh',54000,NULL),
(105,'Pooja',37000,NULL),
(106,'Sohana',40000,NULL);

SELECT * FROM EmployeeV;

-- Ramesh salary + 1000 (calculation only)
SELECT Emp_salary + 1000 AS Increased_Salary FROM EmployeeV WHERE Emp_name = 'Ramesh';

-- Pooja name and salary
SELECT Emp_name, Emp_salary FROM EmployeeV WHERE Emp_name = 'Pooja';

-- Employee ID and Name
SELECT Emp_id, Emp_name FROM EmployeeV;

-- Updated salary (calculated for all)
SELECT Emp_name, Emp_salary + 1000 AS Updated_Salary FROM EmployeeV;

-- Only salaries
SELECT Emp_salary FROM EmployeeV;

-- Salary decrement
SELECT Emp_name, Emp_salary - 1000 AS Decrement_Salary FROM EmployeeV;

-- Annual salary
SELECT Emp_name, Emp_salary, Emp_salary * 12 AS Annual_Salary FROM EmployeeV;

-- Salary with 10% bonus
SELECT Emp_id, Emp_name, Emp_salary + (Emp_salary * 0.10) AS Salary_With_Bonus FROM EmployeeV;

-- Half yearly salary
SELECT Emp_name, Emp_salary * 12 / 2 AS Half_Yearly_Salary FROM EmployeeV;

-- Salaries divisible by 5000
SELECT Emp_id, Emp_salary FROM EmployeeV WHERE Emp_salary % 5000 = 0;

-- Salary greater than 50000 (Descending)
SELECT * FROM EmployeeV WHERE Emp_salary > 50000 ORDER BY Emp_salary DESC;

-- Salary greater than 50000 (Ascending)
SELECT * FROM EmployeeV WHERE Emp_salary > 50000 ORDER BY Emp_salary ASC;

-- Update salary (example)
UPDATE EmployeeV SET Emp_salary = 50000 WHERE Emp_salary = 42000;

-- Update age for Ramesh
UPDATE EmployeeV SET Emp_age = 42 WHERE Emp_id = 102;

-- Delete one employee (Kavya)
DELETE FROM EmployeeV WHERE Emp_id = 103;

-- Final table check
SELECT * FROM EmployeeV;