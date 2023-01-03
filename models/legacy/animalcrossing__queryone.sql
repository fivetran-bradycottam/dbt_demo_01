Select internal_id,name, unique_entry_id, buy, hha_concept_1, 'house' as table_name from brady_cottam.postgres_rds_animal_crossing.housewares
union
Select internal_id,name, unique_entry_id, buy, hha_concept_1, 'floor' as table_name  from brady_cottam.postgres_rds_animal_crossing.floors
union
Select internal_id,name, unique_entry_id, buy, hha_concept_1, 'rugs' as table_name  from brady_cottam.postgres_rds_animal_crossing.rugs

