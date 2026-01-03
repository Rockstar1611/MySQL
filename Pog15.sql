DROP TABLE IF EXISTS t1;
CREATE TABLE t1 (
    year YEAR,
    month INT UNSIGNED,
    day INT UNSIGNED
);

INSERT INTO t1 VALUES
    (2000,1,1), (2000,1,20), (2000,1,30),
    (2000,2,2), (2000,2,23), (2000,2,23);

SELECT * FROM t1;

SELECT year, month, BIT_COUNT(BIT_OR(1 << day)) AS days
FROM t1
GROUP BY year, month;
