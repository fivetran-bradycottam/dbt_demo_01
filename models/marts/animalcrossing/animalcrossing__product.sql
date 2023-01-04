with housewares as 
(
    select * from {{ ref("stg_animalcrossing__housewares") }}
),

floors as 
(
    select * from {{ ref("stg_animalcrossing__floors") }}
),

rugs as 
(
    select * from {{ ref("stg_animalcrossing__rugs") }}
),

final as 
(
    select * from housewares
    union
    select * from floors
    union 
    select * from rugs

)

select * 
from final