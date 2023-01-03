Select 
    internal_id,
    name, 
    unique_entry_id, 
    buy, hha_concept_1, 
    'house' as table_name 
from {{ source("animal crossing", "housewares") }}

union

Select 
    internal_id,
    name, 
    unique_entry_id, 
    buy, 
    hha_concept_1, 
 'floor' as table_name 
from {{ source("animal crossing", "floors") }}

union
Select
    internal_id, 
    name, 
    unique_entry_id, 
    buy, 
    hha_concept_1, 
    'rugs' as table_name  
from {{ source("animal crossing", "rugs") }}
