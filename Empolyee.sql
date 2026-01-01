DROP TABLE IF EXISTS Employees;

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    HireDate DATE,
    Salary DECIMAL(10, 2),
    Email VARCHAR(100) NOT NULL UNIQUE
);

INSERT INTO Employees (
    EmployeeID,
    FirstName,
    LastName,
    HireDate,
    Salary,
    Email
)
VALUES 
    (1, 'Ragannagari', 'Venkata Siva', '2020-02-24', 50000.00, 'ragannagari.venkata.siva@example.com'),
    (2, 'Varanala', 'Nagesh', '2021-08-21', 508889.00, 'varanala.nagesh@example.com'),
    (3, 'Kalakiri', 'Ravi', '2024-09-12', 23556543.00, 'kalakiriragesh@example.com');

SELECT * FROM Employees;
