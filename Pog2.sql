DROP TABLE IF EXISTS Patients;

CREATE TABLE Patients (
  PId INT,
  PName VARCHAR(50),
  Admissiondate DATE,
  checkupTime DATETIME,
  billingAmount VARCHAR(10)
);

INSERT INTO Patients VALUES
(1,'Rajesh','2024-09-21','2024-09-25','1000'),
(2,'Ramesh','2024-09-23','2024-09-26','1200'),
(3,'Mahi','2024-09-22','2024-09-24','900'),
(4,'Suresh','2024-10-02','2024-10-05','1500'),
(5,'Shiva','2024-11-04','2024-11-13','1100');

SELECT * FROM Patients;
DESCRIBE Patients;
