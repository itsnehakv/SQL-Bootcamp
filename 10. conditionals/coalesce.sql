-- Returns first non-null value

-- USE CASE #1
SELECT COALESCE (1, 2);
-- returns 1

SELECT COALESCE (null, null, 2,2);
-- returns 2


-- USE CASE #2

-- This table has item_name, price, discount
-- If an item has no discount, it is marked as [null] in the table
-- In below query result, the net_price for an item with [null] discount will be [null]
-- null and integer are incompatible so no arithmetic can be performed.
SELECT product,(price - discount) AS net_price FROM items;

SELECT product, (price - COALESCE(discount, 0)) AS net_price FROM items;
-- here when a [null] is encountered in discount, COALESCE goes to the non-null item in the arguement which is 0
-- therefore the [null] is calculated as a 0, and the arithmetic can be performed normally.


-- USE CASE #3
SELECT name, COALESCE(phone, 'No Phone Provided') AS contact_info FROM users;
-- when phone [null], give next non-null value, here, which gives info on the lack of phone number
