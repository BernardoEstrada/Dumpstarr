-- @operation: export
-- @entity: batch
-- @name: Pulled FBJE and BH regex/tests
-- @exportedAt: 2026-05-22T23:04:53.989Z
-- @opIds: 1021, 1022, 1023, 1025

-- --- BEGIN op 1021 ( delete regular_expression "Frieren Beyond Journey's End Banned Groups" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Frieren Beyond Journey''s End Banned Groups' AND tag_name = 'Banned';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Frieren Beyond Journey''s End Banned Groups' AND tag_name = 'Custom';

delete from "regular_expressions" where "name" = 'Frieren Beyond Journey''s End Banned Groups';
-- --- END op 1021

-- --- BEGIN op 1022 ( delete regular_expression "Baki Hanma Banned Groups" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Baki Hanma Banned Groups' AND tag_name = 'Banned';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Baki Hanma Banned Groups' AND tag_name = 'Custom';

delete from "regular_expressions" where "name" = 'Baki Hanma Banned Groups';
-- --- END op 1022

-- --- BEGIN op 1023 ( delete test_entity "Baki Hanma" )
delete from "test_releases" where "entity_type" = 'series' and "entity_tmdb_id" = 129600;

delete from "test_entities" where "type" = 'series' and "tmdb_id" = 129600 and "title" = 'Baki Hanma' and "year" = 2021 and "poster_path" = '/x145FSI9xJ6UbkxfabUsY2SFbu3.jpg';
-- --- END op 1023

-- --- BEGIN op 1025 ( delete test_entity "Frieren: Beyond Journey's End" )
delete from "test_releases" where "entity_type" = 'series' and "entity_tmdb_id" = 209867;

delete from "test_entities" where "type" = 'series' and "tmdb_id" = 209867 and "title" = 'Frieren: Beyond Journey''s End' and "year" = 2023 and "poster_path" = '/dqZENchTd7lp5zht7BdlqM7RBhD.jpg';
-- --- END op 1025
