with housewares as 
(

    select * from {{ source("animal crossing", "housewares") }} 


), 
fields as 
(
    select         
        internal_id,
        name, 
        unique_entry_id, 
        buy, hha_concept_1, 
        'house' as ori_table_name 
    from housewares
)

select * 
from fields

