-- account 
-- user_id omitted as it is of type SERIAL
INSERT INTO account(username, password, email, created_on)
VALUES('Jose','password','jj@gmail.com',CURRENT_TIMESTAMP);

-- job
INSERT INTO job(job_name) VALUES ('accountant');

--account_job
INSERT INTO account_job(user_id, job_id, hire_date)
VALUES(1,1,CURRENT_TIMESTAMP)

-- THIS RETURNS ERROR
-- because we are trying to use an user_id, job_id which do not exist in account, job resp.
INSERT INTO account_job(user_id, job_id, hire_date)
VALUES(3,11,CURRENT_TIMESTAMP)
