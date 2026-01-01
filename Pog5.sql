DROP TABLE IF EXISTS Departments;
DROP TABLE IF EXISTS Emp1;

CREATE TABLE Departments (
    D_id INT PRIMARY KEY,
    D_name VARCHAR(30) NOT NULL,
    D_location VARCHAR(30) NOT NULL
);

INSERT INTO Departments VALUES
    (1, 'Sales', 'A-block'),
    (2, 'IT', 'A-block'),
    (3, 'Computer', 'C-block'),
    (4, 'Operation', 'C-block');

SELECT * FROM Departments;

CREATE TABLE Emp1 (
    Emp_id VARCHAR(30) NOT NULL,
    Emp_name VARCHAR(20) UNIQUE,
    Emp_email VARCHAR(250) UNIQUE,
    dep_id INT,
    FOREIGN KEY (dep_id) REFERENCES Departments(D_id)
);

INSERT INTO Emp1 VALUES
    ('101', 'Kavya', 'kavya2345@gmail.com', 1),
    ('102', 'Ramesh', 'ramesh234@gmail.com', 2),
    ('103', 'Kumar', 'kumar344@gmail.com', 3),
    ('104', 'Rajesh', 'rajesh113@gmail.com', 4);

SELECT * FROM Emp1;