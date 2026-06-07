-- @operation: export
-- @entity: batch
-- @name: Added Sex and the City Banned Groups
-- @exportedAt: 2026-06-07T14:42:57.747Z
-- @opIds: 1660, 1661, 1662, 1663

-- --- BEGIN op 1660 ( create regular_expression "Sex and the City Banned Groups" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Sex and the City Banned Groups', '(?i)^family[ ._-]+guy.*-(REWARD)\b', 'Negates certain groups that are in PAL format (25 fps).', NULL);

insert into "tags" ("name") values ('Custom') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Sex and the City Banned Groups', 'Custom');
-- --- END op 1660

-- --- BEGIN op 1661 ( update regular_expression "Sex and the City Banned Groups" )
update "regular_expressions" set "description" = NULL where "name" = 'Sex and the City Banned Groups' and "description" = 'Negates certain groups that are in PAL format (25 fps).';
-- --- END op 1661

-- --- BEGIN op 1662 ( update regular_expression "Sex and the City Banned Groups" )
update "regular_expressions" set "pattern" = '(?i)^sex[ ._-]+and[ ._-]+the[ ._-]+city.*-(RARBG)\b' where "name" = 'Sex and the City Banned Groups' and "pattern" = '(?i)^family[ ._-]+guy.*-(REWARD)\b';
-- --- END op 1662

-- --- BEGIN op 1663 ( update custom_format "Bad Source" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Source', 'Sex and the City', 'release_title', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Source', 'Sex and the City', 'Sex and the City Banned Groups');
-- --- END op 1663
