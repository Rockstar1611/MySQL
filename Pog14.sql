DROP TABLE IF EXISTS Event;

CREATE TABLE Event (
    name VARCHAR(20),
    date DATE,
    type VARCHAR(15),
    remark VARCHAR(255)
);
INSERT INTO Event VALUES
('suresh','2024-09-12','M','behavior'),
('kalyani','2024-08-25','F','communication'),
('Mahi','2025-04-23','F','desplaine');
SELECT Pet.name,
       TIMESTAMPDIFF(YEAR, birth, date) AS age,
       remark
FROM Pet
INNER JOIN Event ON Pet.name = Event.name
WHERE Event.type = 'litter';

SELECT * FROM Event;