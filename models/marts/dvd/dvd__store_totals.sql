with store as (

    select * from {{ ref('stg_dvd__store') }}

), 

staff as (

    select * from {{ ref('stg_dvd__staff') }}

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
        store.store_id,
        staff.last_name,
        city.city,
        sum(payment.amount) as total_amount,
        sum(payment.payment_id) as total_payments
    from store store
    inner join staff staff on staff.staff_id = store.manager_staff_id
    inner join payment payment on payment.staff_id = staff.staff_id
    inner join address address on address.address_id = staff.address_id
    inner join city city on city.city_id = address.city_id
    group by store.store_id, staff.last_name, city.city

)
select * 
from final