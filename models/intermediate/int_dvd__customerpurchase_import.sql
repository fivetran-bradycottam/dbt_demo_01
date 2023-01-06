with customer as (

    select * from {{ ref('stg_dvd__customer') }}

), 

payment as (

    select * from {{ ref('stg_dvd__payment') }}

),

address as (

    select * from {{ ref('stg_dvd__address') }}

),

city as (

    select * from {{ ref('stg_dvd__city') }}

),


final as (

    select
        customer.*,
        city.city,
        payment.amount,
        payment.payment_id
    from customer customer 
    inner join payment payment on payment.customer_id = customer.customer_id
    inner join address address on address.address_id = customer.address_id
    inner join city city on city.city_id = address.city_id

)

select * 
from final