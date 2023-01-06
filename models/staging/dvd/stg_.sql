Select 
    customer.first_name, 
    customer.last_name, 
    customer.email, 
    city.city, 
    sum(payment.amount) as total_payment_amount, 
    count(payment.payment_id) as total_rentals, 
    store.store_id 
from {{ ref('stg_dvd__customer') }} customer
inner join {{ ref('stg_dvd__payment') }} payment on payment.customer_id = customer.customer_id
inner join {{ ref('stg_dvd__address') }} address on address.address_id = customer.address_id
inner join {{ ref('stg_dvd__city') }} city on city.city_id = address.city_id
inner join {{ ref('stg_dvd__store') }} store on store.manager_staff_id = payment.staff_id
group by a.first_name, a.last_name, a.email, d.city, e.store_id
order by a.first_name