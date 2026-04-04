-- Q. Produce a list of the total number of slots booked per facility in the month of September 2012. Produce an output table consisting of facility id and slots,
--    sorted by the number of slots.

SELECT facid, SUM(slots) FROM cd.bookings
WHERE starttime BETWEEN '2012-09-01' AND '2012-10-01'
GROUP BY facid
ORDER BY SUM(slots);

-- MISTAKE made initially: I put WHERE AFTER GROUP BY. This is wrong order.
-- WHERE comes BEFORE GROUP BY

-- ** Note about BETWEEN:
-- It is to be avoided mostly because its usage can depend from system to system. So, using operators is recommended.

-- ** REVISED SOLUTION W/ OPERATORS:
SELECT facid, SUM(slots) FROM cd.bookings
WHERE starttime>='2012-09-01' AND starttime<='2012-10-01'
GROUP BY facid
ORDER BY SUM(slots);
