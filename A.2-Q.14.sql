-- Q. How can you produce a list of the start times for bookings by members named 'David Farrell'?

-- SOLUTION 1: WITH JOIN
select starttime from cd.bookings INNER JOIN cd.members
ON cd.bookings.memid=cd.members.memid
WHERE surname ILIKE 'FArrell' AND firstname ILIKE 'DAVID';


-- SOLUTION 2: WITHOUT JOIN, WITH SUBQUERYS
select starttime from cd.bookings WHERE memid IN
(select memid from cd.members 
WHERE surname ILIKE 'farrell' AND firstname ILIKE 'david');
