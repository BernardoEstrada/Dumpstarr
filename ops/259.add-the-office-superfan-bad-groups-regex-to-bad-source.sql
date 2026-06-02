-- @operation: export
-- @entity: batch
-- @name: Add The Office Superfan Bad Groups Regex to Bad Source
-- @exportedAt: 2026-06-02T21:43:15.505Z
-- @opIds: 1584, 1585, 1586, 1587, 1588

-- --- BEGIN op 1584 ( create regular_expression "The Office Superfans Banned Groups" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('The Office Superfans Banned Groups', '(?i)^the[ ._-]+office.*2005.*-.*\(?(HONE)\)?$', 'Negates certain groups that cause import/automation issues with The Office (US).', NULL);

insert into "tags" ("name") values ('Custom') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('The Office Superfans Banned Groups', 'Custom');
-- --- END op 1584

-- --- BEGIN op 1585 ( update regular_expression "The Office Superfans Banned Groups" )
update "regular_expressions" set "pattern" = '(?i)^the[ ._-]+office[ ._-]+superfans[ ._-]+episodes.*-(CRFW|playWEB)\b' where "name" = 'The Office Superfans Banned Groups' and "pattern" = '(?i)^the[ ._-]+office.*2005.*-.*\(?(HONE)\)?$';
-- --- END op 1585

-- --- BEGIN op 1586 ( update custom_format "Bad Source" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Source', 'The Office Superfans', 'release_title', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Source', 'The Office Superfans', 'The Office Superfan Episodes');
-- --- END op 1586

-- --- BEGIN op 1587 ( update regular_expression "The Office Superfans Banned Groups" )
update "regular_expressions" set "pattern" = '(?i)^the[ ._-]+office[ ._-]+superfan[ ._-]+episodes.*-(CRFW|playWEB)\b' where "name" = 'The Office Superfans Banned Groups' and "pattern" = '(?i)^the[ ._-]+office[ ._-]+superfans[ ._-]+episodes.*-(CRFW|playWEB)\b';
-- --- END op 1587

-- --- BEGIN op 1588 ( update custom_format "Bad Source" )
DELETE FROM condition_patterns WHERE custom_format_name = 'Bad Source' AND condition_name = 'The Office Superfans' AND regular_expression_name = 'The Office Superfan Episodes';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Source', 'The Office Superfans', 'The Office Superfans Banned Groups');
-- --- END op 1588
