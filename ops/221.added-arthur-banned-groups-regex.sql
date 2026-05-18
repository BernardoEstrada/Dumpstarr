-- @operation: export
-- @entity: batch
-- @name: Added Arthur Banned Groups regex
-- @exportedAt: 2026-05-18T14:12:27.876Z
-- @opIds: 792, 793, 799, 800

-- --- BEGIN op 792 ( create regular_expression "Arthur Banned Groups" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Arthur Banned Groups', '(?i)^arthur[ ._-]*-(DAWN)\b', NULL, NULL);

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Arthur Banned Groups', 'Banned');
-- --- END op 792

-- --- BEGIN op 793 ( update regular_expression "Arthur Banned Groups" )
insert into "tags" ("name") values ('Custom') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Arthur Banned Groups', 'Custom');
-- --- END op 793

-- --- BEGIN op 799 ( update regular_expression "Arthur Banned Groups" )
update "regular_expressions" set "pattern" = '(?i)^arthur[ ._-].*-(DAWN)\b' where "name" = 'Arthur Banned Groups' and "pattern" = '(?i)^arthur[ ._-]*-(DAWN)\b';
-- --- END op 799

-- --- BEGIN op 800 ( update regular_expression "Arthur Banned Groups" )
update "regular_expressions" set "pattern" = '(?i)^arthur[ ._-].*-(DAWN)$' where "name" = 'Arthur Banned Groups' and "pattern" = '(?i)^arthur[ ._-].*-(DAWN)\b';
-- --- END op 800
