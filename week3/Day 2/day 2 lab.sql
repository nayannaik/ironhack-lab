use sakila;

-- 1. Which actor has appeared in the most films?
select a.actor_id, first_name, count(film_id) as total_films
from actor as a
inner join film_actor as fa
using (actor_id)
group by a.actor_id
order by total_films desc
limit 1;



-- 2.Most active customer (the customer that has rented the most number of films)
select r.customer_id, count(rental_id) as total_rental
from customer as c
left join rental as r
using(customer_id)
group by r.customer_id
order by total_rental desc;


-- 3. List number of films per category.
select category_id, count( category_id)
from film_category
group by category_id;

-- 4. Display the first and last names, as well as the address, of each staff member.
select first_name, last_name, address
from staff
left join address
using (address_id);

-- 5. Display the total amount rung up by each staff member in August of 2005.
select staff_id, sum(amount)
from staff
left join  payment
using (staff_id)
group by staff_id;

-- 6. List each film and the number of actors who are listed for that film.
select title, count(actor_id) as total_actor
from film
left join film_actor
using(film_id)
group by title;

-- 7.Using the tables payment and customer and the JOIN command, list the total paid by each customer. 
-- List the customers alphabetically by last name.

select last_name, sum(amount)
from payment
left join customer
using (customer_id)
group by last_name
order by last_name;



