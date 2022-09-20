--  1-) Sort the data in the title and description columns in the movie table.

SELECT title, description FROM film; 

-- 2-) Sort the data in all columns in the movie table with 
--     the movie length greater than 60 AND less than 75.

SELECT * FROM film
WHERE length > 60 AND length < 75;

-- 3-) Sort the data in all columns in the movie table
--     with rental_rate 0.99 AND replacement_cost 12.99 OR 28.99.

SELECT * FROM film 
WHERE rental_rate = 0.99 AND replacement_cost = 12.99 OR replacement_cost = 28.99;


-- 4-) What is the value in the last_name column of the customer 
--     table whose value is 'Mary' in the first_name column?

SELECT first_name, last_name FROM customer
WHERE first_name = 'Mary';

-- 5-) Rank the data in the movie table that DOES NOT have a length
--    greater than 50, but also a rental_rate of 2.99 or 4.99.

SELECT * FROM film 
WHERE length <= 50 AND NOT (rental_rate = 2.99 OR rental_rate = 4.99);


