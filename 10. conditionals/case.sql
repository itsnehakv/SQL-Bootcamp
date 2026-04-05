-- Things to note: 
-- 1. comma after SELECT statement, 2.FROM being at the very end
-- 3. AS tiers comes after END, 4. Parenthesis is not compulsory
-- 5. No commas after each "case"/WHEN 
select customer_id,
CASE 
WHEN (customer_id<=100) THEN 'Premium'
WHEN (customer_id BETWEEN 100 AND 200) THEN 'Plus'
ELSE 'Normal'
END AS tiers
FROM customer;

-- This is NOT as flexible
-- Adv: not having the mention column name for each WHEN
-- Good when simple comparison
select customer_id,
CASE customer_id
WHEN 2 THEN 'Winner'
WHEN 5 THEN 'Runner Up'
ELSE 'Normal'
END AS raffle_result
from customer;

-- This returns just the case column 'rental_category'
select 
CASE rental_rate
WHEN 0.99 THEN 1
ELSE 0
END AS rental_category
from film;

-- SUM on case; returns one column with one entry containing SUM
-- Calling fucntions on results of CASE column
SELECT 
SUM(CASE rental_rate
WHEN 0.99 THEN 1
ELSE 0
END) AS rental_category
from film;

-- One more column that does the same thing
select 
SUM(CASE rental_rate
WHEN 0.99 THEN 1
ELSE 0
END) AS bargain,
SUM(CASE rental_rate
WHEN 2.99 THEN 1
ELSE 0
END) AS regular
from film;
