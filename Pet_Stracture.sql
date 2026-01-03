DROP TABLE IF EXISTS Pet;

CREATE TABLE Pet(
    id INT PRIMARY KEY,
    name VARCHAR(20),
    owner VARCHAR(30),
    species VARCHAR(20),
    sex CHAR(1),
    birth DATE,
    death DATE
);

INSERT INTO Pet VALUES
(101,'fluffy','rajesh','dog','M','2023-02-17','2024-03-09'),
(102,'susi','suresh','bird','M','2024-12-07','2025-03-29'),
(103,'tom','ramesh','snake','F','2023-05-11','2024-01-06'),
(104,'budy','rani','bird','F','2023-09-15','2024-07-09'),
(105,'boomer','kavya','cat','F','2023-07-07','2023-10-28'),
(106,'rockey','swetha','bird','F','2023-02-14','2024-11-30'),
(107,'maxi','kumari','dog','M','2024-12-16','2025-03-06'),
(108,'suha','pooja','snake','M','2023-09-07','2024-09-09'),
(109,'holly','sreenu','snake','M','2023-12-07','2024-03-05'),
(110,'fipplopy','vamshi','cat','F','2023-04-23','2024-03-14'),
(111,'mariyan','nandhu','dog','M','2023-05-07','2024-03-08'),
(112,'sweety','kalyani','bird','F','2024-10-16','2025-07-09'),
(113,'rockliy','cherri','dog','M','2023-11-17','2024-04-14'),
(114,'curdy','mohan','bird','M','2023-03-19','2024-09-29'),
(115,'husty','akrash','cat','F','2023-10-27','2024-07-06'),
(116,'flexy','madhu','snake','F','2023-07-31','2025-03-04');

SELECT * FROM Pet;

UPDATE Pet SET birth = '2024-08-23' WHERE name = 'susi';
SELECT * FROM Pet WHERE name = 'sweety';

SELECT * FROM Pet WHERE species = 'dog' AND sex = 'F';
SELECT * FROM Pet WHERE species = 'cat' OR species = 'bird';
SELECT * FROM Pet WHERE (species = 'cat' AND sex = 'M') OR (species = 'dog' AND sex = 'F');
SELECT name, birth FROM Pet; SELECT name, species, birth FROM Pet WHERE species = 'dog' OR species = 'cat';

SELECT name, birth FROM Pet ORDER BY birth;
SELECT name, birth FROM Pet ORDER BY birth DESC;
SELECT name, birth, CURDATE(), TIMESTAMPDIFF(YEAR, birth, CURDATE()) AS age FROM Pet ORDER BY name;
SELECT name, birth, CURDATE(), TIMESTAMPDIFF(YEAR, birth, CURDATE()) AS age FROM Pet ORDER BY age;
SELECT name, birth, death, TIMESTAMPDIFF(YEAR, birth, death) AS age FROM Pet WHERE death IS NOT NULL ORDER BY age;

SELECT name, birth, MONTH(birth) FROM Pet;
SELECT name, birth FROM Pet WHERE MONTH(birth) = 5;
SELECT name, birth FROM Pet WHERE MONTH(birth) = 5 AND (YEAR(birth), MONTH(birth)) IN ((2000,1), (2000,2));

SELECT name, birth FROM Pet ORDER BY birth;
SELECT name, birth FROM Pet ORDER BY birth DESC;

SELECT name, birth, CURDATE(), TIMESTAMPDIFF(YEAR, birth, CURDATE()) AS age FROM Pet ORDER BY name;
SELECT name, birth, death, TIMESTAMPDIFF(YEAR, birth, death) AS age FROM Pet WHERE death IS NOT NULL ORDER BY age;

SELECT name, birth, MONTH(birth) FROM Pet;

SELECT '2018-10-31' + INTERVAL 1 DAY;
SELECT '2018-10-31' + INTERVAL 1 DAY IS NULL;

SELECT * FROM Pet WHERE name LIKE 'b%';     -- Starts with 'b'
SELECT * FROM Pet WHERE name LIKE '%y';     -- Ends with 'y'
SELECT * FROM Pet WHERE name LIKE '%w%';    -- Contains 'w'
SELECT * FROM Pet WHERE name LIKE '_w%';    -- Second letter is 'w'
SELECT * FROM Pet WHERE name REGEXP '^b';   -- Starts with 'b' using regex

SELECT COUNT(*) FROM Pet;
SELECT owner, COUNT(*) FROM Pet GROUP BY owner;
SELECT species, COUNT(*) FROM Pet GROUP BY species;
SELECT sex, COUNT(*) FROM Pet GROUP BY sex;
SELECT species, sex, COUNT(*) FROM Pet GROUP BY species, sex;
SELECT species, sex, COUNT(*) FROM Pet WHERE species IN ('dog', 'cat') GROUP BY species, sex;