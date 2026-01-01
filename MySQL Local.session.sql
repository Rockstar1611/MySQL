DROP TABLE IF EXISTS Student;

CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Class VARCHAR(10) NOT NULL,
    Place VARCHAR(20),
    Age INT,
    Email VARCHAR(100) NOT NULL UNIQUE
);

INSERT INTO Student (
    StudentID,
    FirstName,
    LastName,
    Place,
    Class,
    Age,
    Email
)
VALUES
    (
        101,
        'Velakunta',
        'Venkata',
        'Vijayawada',
        'Inter',
        19,
        'ragannagari.venkata.siva@example.com'
    ),
    (
        102,
        'Varanala',
        'Chandhu',
        'Hyderabad',
        'Inter',
        18,
        'varanala.nagesh@example.com'
    ),
    (
        103,
        'Kalakiri',
        'Ramesh',
        'Guntur',
        'B.Tech',
        21,
        'kalakiriragesh@example.com'
    );

SELECT * FROM Student;