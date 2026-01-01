DROP TABLE IF EXISTS Teacher;

CREATE TABLE Teacher (
    T_Id INT PRIMARY KEY,
    T_Name VARCHAR(50) NOT NULL,
    T_Salary DECIMAL(10,2) UNIQUE,
    T_Age INT CHECK (T_Age >= 18),
    Marital_status VARCHAR(10) DEFAULT 'Single'
);

INSERT INTO Teacher VALUES
(101, 'Kumari', 300000, 18, 'Married'),
(102, 'Sunil', 42000, 21, 'Single'),
(103, 'Pavithra', 54200, 23, 'UnMarried'),
(104, 'Mahi', 32000, 21, 'Married');

SELECT * FROM Teacher;
