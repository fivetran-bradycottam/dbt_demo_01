with rugs as 
(

    select * from {{ source("animal crossing", "rugs") }} 


), 
fields as 
(
    select         
        internal_id,
        name, 
        unique_entry_id, 
        buy, hha_concept_1, 
        'rugs' as ori_table_name 
    from rugs
)

select * 
from fields