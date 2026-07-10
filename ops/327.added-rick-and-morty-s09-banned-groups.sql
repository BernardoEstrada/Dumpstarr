-- @operation: export
-- @entity: batch
-- @name: Added Rick and Morty S09 Banned Groups
-- @exportedAt: 2026-07-10T00:24:05.482Z
-- @opIds: 2799, 2800, 2801, 2802, 2803, 2804, 2805, 2806

-- --- BEGIN op 2799 ( create regular_expression "Rick and Morty" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Rick and Morty', '(?i)^family[ ._-]+guy[ ._-]+s13.*-(CtrlHD)\b', NULL, NULL);

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Rick and Morty', 'Banned');

insert into "tags" ("name") values ('Custom') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Rick and Morty', 'Custom');
-- --- END op 2799

-- --- BEGIN op 2800 ( update regular_expression "Rick and Morty" )
update "regular_expressions" set "description" = 'Targets specific episodes of S09 from groups that use the wrong release name.' where "name" = 'Rick and Morty' and "description" is null;
-- --- END op 2800

-- --- BEGIN op 2801 ( update regular_expression "Rick and Morty" )
update "regular_expressions" set "pattern" = '(?i)^rick[ ._-]+and[ ._-]+morty[ ._-]+s09e05.*-(FLUX)\b' where "name" = 'Rick and Morty' and "pattern" = '(?i)^family[ ._-]+guy[ ._-]+s13.*-(CtrlHD)\b';
-- --- END op 2801

-- --- BEGIN op 2802 ( update regular_expression "Rick and Morty S09 Banned Groups" )
update "regular_expressions" set "name" = 'Rick and Morty S09 Banned Groups' where "name" = 'Rick and Morty';
-- --- END op 2802

-- --- BEGIN op 2803 ( update custom_format "Bad Source" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Source', 'Rick and Morty S09', 'release_title', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Source', 'Rick and Morty S09', 'Rick and Morty S09 Banned Groups');
-- --- END op 2803

-- --- BEGIN op 2804 ( update regular_expression "Rick and Morty S09 Banned Groups" )
update "regular_expressions" set "pattern" = '(?i)^rick[ ._-]+and[ ._-]+morty[ ._-].*s09e05.*-(FLUX)\b' where "name" = 'Rick and Morty S09 Banned Groups' and "pattern" = '(?i)^rick[ ._-]+and[ ._-]+morty[ ._-]+s09e05.*-(FLUX)\b';
-- --- END op 2804

-- --- BEGIN op 2805 ( update regular_expression "Rick and Morty S09 Banned Groups" )
update "regular_expressions" set "pattern" = '(?i)^rick[ ._-]+and[ ._-]+morty(?:[ ._-]+\(\d{4}\))?[ ._-]*-[ ._-]*s09e05.*-(FLUX)\b' where "name" = 'Rick and Morty S09 Banned Groups' and "pattern" = '(?i)^rick[ ._-]+and[ ._-]+morty[ ._-].*s09e05.*-(FLUX)\b';
-- --- END op 2805

-- --- BEGIN op 2806 ( update regular_expression "Rick and Morty S09 Banned Groups" )
update "regular_expressions" set "pattern" = '(?i)^rick[ ._-]+and[ ._-]+morty.*s09e05.*-(FLUX)\b' where "name" = 'Rick and Morty S09 Banned Groups' and "pattern" = '(?i)^rick[ ._-]+and[ ._-]+morty(?:[ ._-]+\(\d{4}\))?[ ._-]*-[ ._-]*s09e05.*-(FLUX)\b';
-- --- END op 2806
