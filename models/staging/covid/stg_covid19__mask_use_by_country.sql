with masks as
(
    select * from {{ source("covid", "mask_use_by_country") }}
)

select * from masks