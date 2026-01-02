DROP TABLE IF EXISTS Staff;

CREATE TABLE Staff (
    S_id INT PRIMARY KEY,
    S_name VARCHAR(30) NOT NULL,
    S_age INT
);

INSERT INTO Staff VALUES
(101,'Ram',32),
(102,'Kavari',43),
(103,'Madhu',31),
(104,'Ravi',29),
(105,'Mani',31),
(106,'Harika',34);

SELECT * FROM Staff;

/* Alter Table */
ALTER TABLE Staff ADD Salary INT;
UPDATE Staff SET Salary = 32000 WHERE S_id = 101;

/* Adding AVG and MAX */
SELECT AVG(S_age) AS Avg_age FROM Staff;
SELECT MAX(S_age) AS Max_age FROM Staff;

/* Function values */
SELECT LOWER(S_name) AS Lower_name FROM Staff;
SELECT UPPER(S_name) AS Upper_name FROM Staff;
SELECT CONCAT(S_name, ' Employee') AS Concat_name FROM Staff;
SELECT LTRIM(S_name) AS Ltrim_name FROM Staff;
SELECT RTRIM(S_name) AS Rtrim_name FROM Staff;
SELECT LENGTH(S_name) AS Name_Length FROM Staff;
SELECT SUBSTRING(S_name, 1, 3) AS Substring_name FROM Staff;