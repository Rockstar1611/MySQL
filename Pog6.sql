DROP TABLE IF EXISTS Emp2;

CREATE TABLE Emp2(
    Emp_id Int PRIMARY KEY,
    Emp_name VARCHAR(20) NOT NULL,
    Emp_salary DECIMAL(10,2) UNIQUE,
    Emp_location VARCHAR(20)
);
INSERT INTO Emp2 (Emp_id, Emp_name, Emp_salary, Emp_location) VALUES
(6561,'Priya',34000.00,'C-block'),
(6562,'Rashmi',43100.00,'D-block'),
(6563,'Eswari',43050.00,'B-block');

SELECT * FROM Emp2;
SELECT Emp_name FROM Emp2;
SELECT Emp_name AS Emp2_fullname FROM Emp2;
SELECT Emp_name 'Emp fullname' FROM Emp2;
DESCRIBE Emp2;