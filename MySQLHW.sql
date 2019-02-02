USE Sakila

SELECT first_name, last_name FROM actor
																						  
SELECT CONCAT(first_name, ' ' , last_name) AS actor_name from actor
 
SELECT actor_id, first_name, last_name FROM actor
WHERE first_name = "Joe"

SELECT first_name, last_name FROM actor
WHERE last_name like '%GEN%'

SELECT last_name, first_name FROM actor
WHERE last_name like '%LI%'

SELECT country_id, country FROM country
WHERE country IN ('Afghanistan', 'Bangladesh', 'China')

ALTER TABLE actor
ADD description 	LONGBLOB;

ALTER TABLE actor
DROP COLUMN description;

SELECT last_name, COUNT(last_name) FROM Actor
GROUP BY (last_name) having count(last_name) !=1

SET SQL_SAFE_UPDATES = 0;

UPDATE actor
SET first_name = 'Harpo'
WHERE first_name = 'Groucho';

UPDATE actor
SET first_name = 'Groucho'
WHERE first_name = 'Harpo';

SET SQL_SAFE_UPDATES = 1;

SELECT staff.first_name, staff.last_name, staff.address_id, address.address_id
FROM address
INNER JOIN staff
ON staff.address_id = address.address_id;

SELECT staff.first_name, staff.last_name, sum(payment.amount)
FROM staff
INNER JOIN payment
ON staff.staff_id = payment.staff_id
GROUP BY staff.staff_id;

SELECT film.film_id, film.title, count(film_actor.actor_id)
FROM film_actor
INNER JOIN film
ON film.film_id = film_actor.film_id
GROUP BY film.film_id;

SELECT film.title, count(inventory_id) 
FROM film
INNER JOIN inventory
ON film.film_id = inventory.film_id
GROUP BY film.film_id;
HAVING 'Hunchback Impossible'
