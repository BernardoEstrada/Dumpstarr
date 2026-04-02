-- @operation: export
-- @entity: batch
-- @name: Added Family Guy Banned Groups to Bad Source
-- @exportedAt: 2026-04-02T22:36:56.293Z
-- @opIds: 2187, 2188, 2189, 2190

-- --- BEGIN op 2187 ( create regular_expression "Family Guy Banned Groups" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Family Guy Banned Groups', '(?i)^the[ ._-]+office.*2005.*-.*\(?(HONE)\)?$', 'Negates certain groups that cause import/automation issues with The Office (US).', NULL);

insert into "tags" ("name") values ('Custom') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Family Guy Banned Groups', 'Custom');
-- --- END op 2187

-- --- BEGIN op 2188 ( update regular_expression "Family Guy Banned Groups" )
update "regular_expressions" set "pattern" = '(?i)^the[ ._-]+office.*2005.*-.*\(?(REWARD)\)?$', "description" = 'Negates certain groups that are in PAL format (25 fps).' where "name" = 'Family Guy Banned Groups' and "pattern" = '(?i)^the[ ._-]+office.*2005.*-.*\(?(HONE)\)?$' and "description" = 'Negates certain groups that cause import/automation issues with The Office (US).';
-- --- END op 2188

-- --- BEGIN op 2189 ( update regular_expression "Family Guy Banned Groups" )
update "regular_expressions" set "pattern" = '(?i)^family[ ._-]+guy.*-(REWARD)$' where "name" = 'Family Guy Banned Groups' and "pattern" = '(?i)^the[ ._-]+office.*2005.*-.*\(?(REWARD)\)?$';
-- --- END op 2189

-- --- BEGIN op 2190 ( update custom_format "Bad Source" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Source', 'Family Guy', 'release_title', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Source', 'Family Guy', 'Family Guy Banned Groups');
-- --- END op 2190
