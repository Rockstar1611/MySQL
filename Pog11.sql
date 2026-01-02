DROP TABLE IF EXISTS Emp3;
CREATE TABLE Emp3 (
    id INT PRIMARY KEY,
    name VARCHAR(30),
    salary INT
);
INSERT INTO Emp3
VALUES (1, 'Ram', 25000),
    (2, 'Raju', 30000),
    (3, 'Ravi', 28000),
    (4, 'Kavya', 42000);
    
SELECT * FROM Emp3;
ALTER TABLE Emp3 DROP COLUMN salary;
SET autocommit = 0;
INSERT INTO Emp3 VALUES (5, 'Raju');
SELECT * FROM Emp3;
ROLLBACK;
SELECT * FROM Emp3;