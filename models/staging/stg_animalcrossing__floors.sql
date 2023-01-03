with floors as 
(

    select * from {{ source("animal crossing", "floors") }} 


), 
fields as 
(
    select         
        internal_id,
        name, 
        unique_entry_id, 
        buy, hha_concept_1, 
        'floor' as ori_table_name 
    from floors
)

select * 
from fields