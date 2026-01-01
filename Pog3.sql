DROP TABLE IF EXISTS Employee1;

CREATE TABLE Employee1 (
    employee_id INT PRIMARY KEY,
    employee_Name VARCHAR(20),
    employee_email VARCHAR(255),
    employee_salary DECIMAL(10,2)
);

INSERT INTO Employee1 VALUES
(101,'Ragannagri Nagesh','nagesh234@gmail.com',32000.00),
(102,'Mariayala Rajesh','ragesh432@gmail.com',32560.00),
(103,'Kalavakuri Mani','manisinha234@gmail.com',425666.00),
(104,'Makula Suresh','suresh2345@gmail.com',43200.00),
(105,'Gontala Sailu','sailu3442@gmail.com',53000.00);

SELECT * FROM Employee1;