with store as (

    select * from {{ source('dvd', 'store') }}

)
select * from store