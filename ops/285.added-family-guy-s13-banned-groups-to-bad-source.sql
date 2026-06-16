-- @operation: export
-- @entity: batch
-- @name: Added Family Guy S13 Banned Groups to Bad Source
-- @exportedAt: 2026-06-16T21:27:31.622Z
-- @opIds: 1854, 1855, 1856, 1857, 1858, 1859, 1860

-- --- BEGIN op 1854 ( create regular_expression "Family Guy S13 Banned Groups" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Family Guy S13 Banned Groups', '(?i)^family[ ._-]+guy.*-(REWARD)\b', 'Negates certain groups that are in PAL format (25 fps).', NULL);

insert into "tags" ("name") values ('Custom') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Family Guy S13 Banned Groups', 'Custom');
-- --- END op 1854

-- --- BEGIN op 1855 ( update regular_expression "Family Guy S13 Banned Groups" )
update "regular_expressions" set "pattern" = '(?i)^family[ ._-]+guy[ ._-]+s13*-(CtrlHD)\b' where "name" = 'Family Guy S13 Banned Groups' and "pattern" = '(?i)^family[ ._-]+guy.*-(REWARD)\b';
-- --- END op 1855

-- --- BEGIN op 1856 ( update regular_expression "Family Guy Banned Groups" )
insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Family Guy Banned Groups', 'Banned');
-- --- END op 1856

-- --- BEGIN op 1857 ( update regular_expression "Family Guy S13 Banned Groups" )
insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Family Guy S13 Banned Groups', 'Banned');
-- --- END op 1857

-- --- BEGIN op 1858 ( update regular_expression "Family Guy S13 Banned Groups" )
update "regular_expressions" set "description" = NULL where "name" = 'Family Guy S13 Banned Groups' and "description" = 'Negates certain groups that are in PAL format (25 fps).';
-- --- END op 1858

-- --- BEGIN op 1859 ( update custom_format "Bad Source" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Source', 'Family Guy S13', 'release_title', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Source', 'Family Guy S13', 'Family Guy S13 Banned Groups');
-- --- END op 1859

-- --- BEGIN op 1860 ( update regular_expression "Family Guy S13 Banned Groups" )
update "regular_expressions" set "pattern" = '(?i)^family[ ._-]+guy[ ._-]+s13.*-(CtrlHD)\b' where "name" = 'Family Guy S13 Banned Groups' and "pattern" = '(?i)^family[ ._-]+guy[ ._-]+s13*-(CtrlHD)\b';
-- --- END op 1860
