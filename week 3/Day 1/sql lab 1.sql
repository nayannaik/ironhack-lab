use sakila;

select * from actor;
select * FROM address;
select * from category;
select * from city;
select * from country;
select * from customer;
select * from film;
select * from film_actor;
select * from film_category;
select * from film_text;
select * from inventory;
select * from language;
select * from payment;
select * from rental;
select * from staff;
select title from film;

select * from store;


select title from film;

select  DISTINCT name as language, language_id as ids
from language;


select * from store;


select count(store_id)
from store;


select * from staff;


select count(staff_id)
from staff;

select last_name 
from staff;