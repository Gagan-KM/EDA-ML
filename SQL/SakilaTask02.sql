-- 11.	Find the number of films available in each category.
-- select c.name, count(*) as movie_count
-- from film as f
-- inner join film_category as fc on
-- fc.film_id = f.film_id
-- inner join category as c on
-- c.category_id  = fc.category_id
-- group by c.name
-- order by movie_count;

-- 12.	List the top five most rented movies along with their rental count.
-- select fi.title, count(*)  as rented_count from film as fi
-- inner join inventory as i on
-- i.film_id = fi.film_id
-- inner join rental as re on 
-- re.inventory_id  = i.inventory_id
-- group by fi.title
-- order by rented_count desc
-- limit 5;

-- 13.	Retrieve the total number of rentals for each customer sorted by most rentals.
select c.customer_id, c.first_name, c.last_name, count(*)  as count_of_rentals from customer as c
inner join rental  as re on 
re.customer_id = c.customer_id
group by c.customer_id, c.first_name, c.last_name
order by count_of_rentals desc;

-- 14.	Which movies in each category have generated the highest total revenue from rentals
select c.name, f.title, sum(p.amount) as total from payment as p
inner join rental as re on
re.rental_id = p.rental_id
inner join inventory as i on 
i.inventory_id = re.inventory_id
inner join film as f on
f.film_id  = i.film_id
inner join film_category as fc on 
fc.film_id = f.film_id
inner join category as c on
c.category_id = fc.category_id
group by c.name, f.title
order by total desc;

-- 14.	Find the highest rental rate of movies in each category.

select c.name, max(f.rental_rate) as total from film as f
inner join film_category as fc on 
fc.film_id = f.film_id
inner join category as c on
c.category_id = fc.category_id
group by c.name
order by total desc;

