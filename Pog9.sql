DROP TABLE IF EXISTS Student1;

CREATE TABLE Student1 (
    sid INT PRIMARY KEY,
    sname VARCHAR(30),
    sage INT,
    ssalary INT
);

INSERT INTO Student1 VALUES
(101,'Ram',32,90000.00),
(102,'Raju',38,65000.00),
(103,'Ravi',29,43000.00),
(104,'Mani',41,56000.00),
(105,'Harika',34,87000.00);

SELECT * FROM Student1;

/* Mathematical Function */
SELECT POWER(2, 3) AS raised;
SELECT ABS(-10) AS absolute;
SELECT ROUND(15.8, 1) AS rounded;
SELECT SQRT(9) AS squareroot;
SELECT EXP(2) AS exponent;
SELECT FLOOR(24.8) AS floor_value;
SELECT CEILING(24.8) AS ceil_value;