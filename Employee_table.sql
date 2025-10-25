use ilakiya;
CREATE TABLE Employee (
    emp_id INT AUTO_INCREMENT PRIMARY KEY,
    emp_name VARCHAR(100) NOT NULL,
    emp_age INT,
    emp_dept VARCHAR(50)
);

CREATE TABLE EmpSalary (
    emp_sal_id INT AUTO_INCREMENT PRIMARY KEY,
    emp_id INT,
    emp_salary DECIMAL(10,2),
    FOREIGN KEY (emp_id) REFERENCES Employee(emp_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
INSERT INTO Employee (emp_name, emp_age, emp_dept)
VALUES ('Ravi', 28, 'IT'),
       ('Priya', 32, 'HR'),
       ('Kumar', 25, 'Finance');

INSERT INTO EmpSalary (emp_id, emp_salary)
VALUES (1, 45000.00),
       (2, 55000.00),
       (3, 40000.00);
SELECT * FROM Employee;
SELECT * FROM EmpSalary;
SELECT 
    e.emp_id,
    e.emp_name,
    e.emp_age,
    e.emp_dept,
    (SELECT s.emp_salary 
     FROM EmpSalary s 
     WHERE s.emp_id = e.emp_id) AS emp_salary
FROM Employee e;



