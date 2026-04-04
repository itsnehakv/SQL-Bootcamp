-- Q. How can you produce a list of the start times for bookings for tennis courts, for the date '2012-09-21'? Return a list of start time and facility name pairings,ordered by the time.


select starttime, name from cd.bookings INNER JOIN cd.facilities
ON cd.bookings.facid=cd.facilities.facid
WHERE starttime BETWEEN '2012-09-21' AND '2012-09-22' AND name ILIKE '%TENNIS COURT%';

-- MISTAKES MADE: Did not read question carefully lolz, especially in the TENNIS COURT part. But found solution by myself.
