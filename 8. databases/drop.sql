-- Dropping column
ALTER TABLE new_info
DROP COLUMN people;

-- ** SUPPOSE we run that command again **
ALTER TABLE new_info
DROP COLUMN people;
-- output ->
-- ERROR:  column "people" of relation "new_info" does not exist 

-- To ensure a **safety net** to prevent this error, we use IF EXISTS
ALTER TABLE new_info
DROP COLUMN IF EXISTS people;
-- output ->
-- NOTICE:  column "people" of relation "new_info" does not exist, skipping ALTER TABLE

-- NOTICE is given instead of ERROR
