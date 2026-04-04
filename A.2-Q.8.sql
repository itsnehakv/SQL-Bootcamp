-- Q. How can you produce an ordered list of the first 10 surnames in the members table? The list must not contain duplicates.

select distinct(surname) from cd.members
ORDER BY surname
LIMIT 10;

-- MISTAKE I made initially: putting limit right after cd.members. LIMIT must be the last query.
