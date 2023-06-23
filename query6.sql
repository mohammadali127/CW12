SELECT customer.first_name, customer.last_name
, (rental.return_date - rental.rental_date) as rental_duration
, film.title
FROM customer JOIN rental
ON customer.customer_id = rental.customer_id
JOIN inventory
ON rental.inventory_id = inventory.inventory_id
join film 
on inventory.film_id = film.film_id
