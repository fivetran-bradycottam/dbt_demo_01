Select a.first_name, a.last_name, a.email, d.city, sum(amount) as total_payment_amount, count(b.payment_id) as total_rentals, e.store_id from customer a
INNER JOIN payment b on b.customer_id = a.customer_id
inner join address c on c.address_id = a.address_id
inner join city d on d.city_id = c.city_id
inner join store e on e.manager_staff_id = b.staff_id
group by a.first_name, a.last_name, a.email, d.city, e.store_id
order by a.first_name