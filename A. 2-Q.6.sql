-- What i did (sneaky but worked lol)
select * from cd.facilities WHERE name ILIKE '%2%';

-- GOOD solution
select * from cd.facilities WHERE facid IN (1,5);
