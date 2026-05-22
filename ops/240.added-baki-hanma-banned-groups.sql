-- @operation: export
-- @entity: batch
-- @name: Added Baki Hanma Banned Groups
-- @exportedAt: 2026-05-22T22:56:43.699Z
-- @opIds: 1002, 1003, 1004, 1005, 1006

-- --- BEGIN op 1002 ( create regular_expression "Baki Hanma Banned Groups" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Baki Hanma Banned Groups', '(?i)^frieren[ ._-]+beyond[ ._-]+journeys[ ._-]+end.*-(VARYG)\b', NULL, NULL);

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Baki Hanma Banned Groups', 'Banned');

insert into "tags" ("name") values ('Custom') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Baki Hanma Banned Groups', 'Custom');
-- --- END op 1002

-- --- BEGIN op 1003 ( update regular_expression "Baki Hanma Banned Groups" )
update "regular_expressions" set "pattern" = '(?i)^baki[ ._-]+hanma.*-(VARYG)\b' where "name" = 'Baki Hanma Banned Groups' and "pattern" = '(?i)^frieren[ ._-]+beyond[ ._-]+journeys[ ._-]+end.*-(VARYG)\b';
-- --- END op 1003

-- --- BEGIN op 1004 ( update custom_format "Bad Source" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Source', 'Baki Hanma', 'release_title', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Source', 'Baki Hanma', 'Baki Hanma Banned Groups');
-- --- END op 1004

-- --- BEGIN op 1005 ( create test_entity "Baki Hanma" )
insert into "test_entities" ("type", "tmdb_id", "title", "year", "poster_path") values ('series', 129600, 'Baki Hanma', 2021, '/x145FSI9xJ6UbkxfabUsY2SFbu3.jpg');
-- --- END op 1005

-- --- BEGIN op 1006 ( create test_release "Baki Hanma S02 1080p NF WEB-DL DDP5.1 H 264-VARYG " )
insert into "test_releases" ("entity_type", "entity_tmdb_id", "title", "size_bytes", "languages", "indexers", "flags") values ('series', 129600, 'Baki Hanma S02 1080p NF WEB-DL DDP5.1 H 264-VARYG (Hanma Baki: Son of Ogre 2nd Season, Dual-audio, Multi-Subs)', NULL, '[]', '[]', '[]');
-- --- END op 1006
