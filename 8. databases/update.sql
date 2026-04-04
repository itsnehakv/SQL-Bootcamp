UPDATE account
SET last_login=created_on;

-- OR

UPDATE account
SET last_login=CURRENT_TIMESTAMP;

-- Example for updating values using values of another table.
-- UPDATE JOIN
UPDATE account_job
SET hire_date = account.created_on
FROM account
WHERE account_job.user_id=account.user_id;

-- RETURNING
-- Retrieves mentioned data from a modified record right after an INSERT, UPDATE, or DELETE operations. 
-- Instead of running separate queries to retrieve the affected rows.
UPDATE account
SET last_login=CURRENT_TIMESTAMP
RETURNING email, created_on, last_login;
