use sakila;

-- 1. How many copies of the film Hunchback Impossible exist in the inventory system?

select count(film_id) 
from inventory
where film_id in (select film_id from film where title = 'Hunchback Impossible');


-- 2. List all films whose length is longer than the average of all the films.
select title, length
from film
where length > (select avg(length) from film as avg_film_length);


-- 3. Use subqueries to display all actors who appear in the film Alone Trip.
select actor_id, first_name
from film_actor
inner join actor
using (actor_id)
where film_id in (
select film_id
from film
where title = "Alone Trip");


-- 4. Sales have been lagging among young families, and you wish to target all family movies for a promotion. 
-- Identify all movies categorized as family films.

select title, film_id 
from film
 join film_category
using (film_id)
where category_id in (select category_id
from category
where name = 'Family');

-- 5. Get name and email from customers from Canada using subqueries. Do the same with joins.
--  Note that to create a join, you will have to identify the correct tables with their primary keys and foreign keys, 
-- that will help you get the relevant information.

select first_name, email, country
from customer
left join address using (address_id)
left join city using(city_id)
left join country using (country_id) where country = 'Canada';

