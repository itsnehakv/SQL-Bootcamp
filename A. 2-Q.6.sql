-- Q. How can you retrieve the details of facilities with ID 1 and 5? Try to do it without using the OR operator.

-- What i did (sneaky but worked lol)
select * from cd.facilities WHERE name ILIKE '%2%';

-- GOOD solution
select * from cd.facilities WHERE facid IN (1,5);
