with customer_import as (

    select * from {{ ref('int_dvd__customerpurchase_import') }}

), 

final as (

    select
        customer_import.first_name,
        customer_import.last_name,
        customer_import.email,
        customer_import.city,
        sum(customer_import.amount) as total_payment_amount,
        count(customer_import.payment_id) as total_rentals,
        customer_import.store_id
    from customer_import
    group by customer_import.first_name, customer_import.last_name, customer_import.email, customer_import.city, customer_import.store_id
    order by first_name

)

select * 
from final