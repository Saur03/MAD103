CREATE TABLE instructors (
    employee_id INT NOT NULL PRIMARY KEY,
    employment_status CHAR(1) CHECK (employment_status IN ('F', 'P')),
    first_name VARCHAR(25) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    address VARCHAR(10) NOT NULL,
    salary DECIMAL(8, 2) DEFAULT 45000.00 CHECK (salary <= 125000.00),
    marital_status CHAR(1) CHECK (marital_status IN ('Y', 'N')),
    preferred_course VARCHAR(10)
);