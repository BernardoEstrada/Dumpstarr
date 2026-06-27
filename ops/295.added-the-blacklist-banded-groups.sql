-- @operation: export
-- @entity: batch
-- @name: Added The Blacklist Banded Groups
-- @exportedAt: 2026-06-27T14:26:19.777Z
-- @opIds: 1935, 1936, 1937

-- --- BEGIN op 1935 ( create regular_expression "The Backlist Banned Groups" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('The Backlist Banned Groups', '(?i)^sex[ ._-]+and[ ._-]+the[ ._-]+city.*-(RARBG)\b', NULL, NULL);

insert into "tags" ("name") values ('Custom') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('The Backlist Banned Groups', 'Custom');
-- --- END op 1935

-- --- BEGIN op 1936 ( update regular_expression "The Backlist Banned Groups" )
update "regular_expressions" set "pattern" = '(?i)^the[ ._-]+blacklist.*-(RARBG)\b' where "name" = 'The Backlist Banned Groups' and "pattern" = '(?i)^sex[ ._-]+and[ ._-]+the[ ._-]+city.*-(RARBG)\b';
-- --- END op 1936

-- --- BEGIN op 1937 ( update custom_format "Bad Source" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Source', 'The Blacklist', 'release_title', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Source', 'The Blacklist', 'The Backlist Banned Groups');
-- --- END op 1937
