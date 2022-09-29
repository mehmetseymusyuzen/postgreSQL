SELECT COUNT(*), (SELECT AVG(length) FROM film) FROM film
WHERE length > (SELECT AVG(length) FROM film);

SELECT COUNT(rental_rate) FROM film
WHERE rental_rate = (SELECT MAX(rental_rate) FROM film);

SELECT title, rental_rate, replacement_cost FROM film
WHERE rental_rate = (SELECT MIN(rental_rate) FROM film) AND replacement_cost = (SELECT MIN(replacement_cost) FROM film);

SELECT COUNT(payment.customer_id) AS number_of_purchases FROM payment
LEFT JOIN customer ON payment.customer_id = customer.customer_id
GROUP BY payment.customer_id, customer.first_name, customer.last_name
ORDER BY number_of_purchases DESC;