--  1.	List all actors' first and last names in alphabetical order
-- select first_name, last_name  from actor
-- order by first_name, last_name ;

-- 2.	Find all films released in the year 2006.
-- select * from film
-- where
-- release_year = 2006;

-- 3.	Retrieve all unique film categories.
-- select distinct(name) from category;

-- 4.	Get the total number of customers.
-- select count(distinct(customer_id)) from customer;

-- 5.	Find all rental records where the return date is null.
-- select * from rental
-- where 
-- return_date is null;

-- 6.	Display the names and emails of customers from the city of London.
-- select cu.first_name, cu.last_name, cu.email, c.city from customer as cu
-- inner join address as a 
-- on
-- a.address_id = cu.address_id
-- inner join city as c
-- on
-- c.city_id = a.city_id
-- where city = 'London';

-- 7.	List the staff members along with the store they work at.
-- select s.first_name, s.last_name, st.store_id from staff as s
-- inner join store as st on
-- s.store_id = st.store_id;

-- 8.	Retrieve a list of countries that have customers.
-- select co.country from customer as cu
-- inner join address as ad on
-- cu.address_id = ad.address_id
-- inner join city as ci on
-- ad.city_id = ci.city_id	
-- inner join country as co on
-- ci.country_id = co.country_id;

-- 9.	Find all films with a rental duration greater than five days.

-- select  re.rental_id, re.rental_date, re.return_date, fi.title
-- from rental as re
-- inner join inventory as i on
-- i.inventory_id = re.inventory_id
-- inner join film as fi on
-- fi.film_id = i.film_id
-- where datediff(re.return_date, re.rental_date)  > 5;

-- 10.	Get the list of movies that belong to the Action category.

-- select fi.title, ca.name from film as fi
-- inner join film_category as fc on
-- fi.film_id = fc.film_id
-- inner join category as ca on 
-- ca.category_id = fc.category_id;