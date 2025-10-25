-- =============================== EDA FOR PROJECT ============================================
--  1. Which store generates the highest revenue, and how does it vary over time?
-- Goal: Track store performance and seasonal trends.
SELECT st.store_id, date_format(p.PAYMENT_DATE,'%Y-%M') as month_year, sum(amount) as total_amount
FROM PAYMENT P
JOIN staff S
USING(STAFF_ID)
JOIN store ST
USING(store_id)
GROUP BY st.store_id, month_year
ORDER BY total_amount desc;
-- ============== -- 
SELECT * FROM staff;
-- 2.Which movie categories and film ratings generate the most revenue?
-- Goal: Understand profitable genres and rating performance.
select c.name,sum(p.amount) as total_amount
from payment p
join rental r
USING(rental_id)
join inventory i
using(inventory_id)
join film f
USING(film_id)
join film_category fc
USING(film_id)
join category c
using(category_id)
group by c.name
order by total_amount desc;
-- rating
select f.rating,sum(p.amount) as total_amount
from payment p
join rental r
USING(rental_id)
join inventory i
using(inventory_id)
join film f
USING(film_id)
group by f.rating
order by total_amount desc;


-- 3.Who are our top 10 customers by total payment amount?
-- Goal: Identify loyal, high-spending customers.
select concat(first_name,' ',last_name) as full_name,c.customer_id,sum(p.amount) as total_amount
from payment p
join customer c
using(customer_id)
GROUP BY full_name,c.customer_id
order by total_amount desc
limit 10;
-- ==============

-- 4.What is the average rental duration, and how many rentals are returned late?
-- Goal: Monitor overdue rentals and customer behavior.
select * from rental;
SELECT * from film;

select  avg(datediff(return_date,rental_date)) as avg_rental,
			sum(case 
				when r.return_date > date_add(r.rental_date,interval f.rental_duration day ) then 1 else 0 end) as late_returns
from rental r
JOIN inventory i ON r.inventory_id = i.inventory_id
JOIN film f ON i.film_id = f.film_id;

-- 5.Which staff members process the most payments and rentals?
-- Goal: Evaluate staff performance and efficiency.
select * from payment;
select * from staff;
SELECT s.first_name ,
 COUNT(p.payment_id) AS payments_processed,
       SUM(p.amount) AS total_sales
FROM staff s
JOIN payment p ON s.staff_id = p.staff_id
GROUP BY s.staff_id
ORDER BY payments_processed DESC
LIMIT 5;
-- 6.Which cities/countries contribute the most to total revenue?
-- Goal: Understand geographic distribution of customers and revenue.
SELECT cy.country, ci.city, SUM(p.amount) AS total_sales
FROM payment p
JOIN customer cu ON p.customer_id = cu.customer_id
JOIN address a ON cu.address_id = a.address_id
JOIN city ci ON a.city_id = ci.city_id
JOIN country cy ON ci.country_id = cy.country_id
GROUP BY cy.country, ci.city
ORDER BY total_sales DESC;

-- 7. How many films are currently in stock versus out of stock per store?
-- Goal: Monitor inventory availability and ensure popular films are available.
SELECT * from inventory;

SELECT 
       SUM(CASE WHEN inventory_in_stock(i.inventory_id) THEN 1 ELSE 0 END) AS in_stock,
       SUM(CASE WHEN NOT inventory_in_stock(i.inventory_id) THEN 1 ELSE 0 END) AS out_of_stock
FROM inventory i
JOIN store s ON i.store_id = s.store_id
GROUP BY s.store_id;
