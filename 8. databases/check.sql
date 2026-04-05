CREATE TABLE employee(
emp_id SERIAL PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
bdate DATE CHECK (bdate>'1900-01-01'),
hire_date DATE CHECK (hire_date>bdate),
salary INTEGER CHECK (salary>0)
)
