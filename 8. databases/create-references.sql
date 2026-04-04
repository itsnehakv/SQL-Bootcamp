-- Parent table 1
CREATE TABLE account(
user_id SERIAL PRIMARY KEY,
username VARCHAR(50) UNIQUE NOT NULL,
password VARCHAR(50) NOT NULL,
email VARCHAR(100) UNIQUE NOT NULL,
created_on TIMESTAMP NOT NULL,
last_login TIMESTAMP
)

  -- Parent table 2
CREATE TABLE job(
job_id SERIAL PRIMARY KEY,
job_name VARCHAR(30) UNIQUE NOT NULL
)

  -- Child table
CREATE TABLE account_job(
user_id INTEGER REFERENCES account(user_id),
job_id INTEGER REFERENCES job(job_id),
hire_date TIMESTAMP
)
