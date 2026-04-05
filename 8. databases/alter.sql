-- Rename table name
ALTER TABLE info 
RENAME TO new_info;  

-- Rename column name
ALTER TABLE new_info
RENAME COLUMN person TO people;

-- Drop/Remove constraints from column
ALTER TABLE new_info
ALTER COLUMN people DROP NOT NULL; 

-- Set/Add constraints to column
ALTER TABLE new_info
ALTER COLUMN people SET NOT NULL; 
