-- @operation: export
-- @entity: batch
-- @name: Added Friends S09 LQ Automation Regex
-- @exportedAt: 2026-07-16T02:18:16.097Z
-- @opIds: 3834, 3835, 3836, 3837, 3838, 3839, 3840, 3841

-- --- BEGIN op 3834 ( create regular_expression "Friend LQ Automation" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Friend LQ Automation', '(?i)^arthur[ ._-].*-(DAWN)\b', NULL, NULL);

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Friend LQ Automation', 'Banned');

insert into "tags" ("name") values ('Custom') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Friend LQ Automation', 'Custom');
-- --- END op 3834

-- --- BEGIN op 3835 ( update regular_expression "Friend LQ Automation" )
update "regular_expressions" set "pattern" = '(?i)^Friends[ ._-]S09.*-(Kitsune)\b' where "name" = 'Friend LQ Automation' and "pattern" = '(?i)^arthur[ ._-].*-(DAWN)\b';
-- --- END op 3835

-- --- BEGIN op 3836 ( update regular_expression "Friend LQ Automation" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Friend LQ Automation' AND tag_name = 'Banned';
-- --- END op 3836

-- --- BEGIN op 3837 ( update regular_expression "Friends LQ Automation" )
update "regular_expressions" set "name" = 'Friends LQ Automation' where "name" = 'Friend LQ Automation';
-- --- END op 3837

-- --- BEGIN op 3838 ( update custom_format "Dumpstarr LQ Title (Automation)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dumpstarr LQ Title (Automation)', 'Friends S09', 'release_title', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dumpstarr LQ Title (Automation)', 'Friends S09', 'Friends LQ Automation');
-- --- END op 3838

-- --- BEGIN op 3839 ( update regular_expression "Friends LQ Automation" )
update "regular_expressions" set "description" = 'Targets releases of Friends season 09 from groups that cause import issues in Sonarr.' where "name" = 'Friends LQ Automation' and "description" is null;
-- --- END op 3839

-- --- BEGIN op 3840 ( update regular_expression "Friends S09" )
update "regular_expressions" set "name" = 'Friends S09' where "name" = 'Friends LQ Automation';
-- --- END op 3840

-- --- BEGIN op 3841 ( update custom_format "Dumpstarr LQ Title (Automation)" )
update "condition_patterns" set "regular_expression_name" = 'Friends S09' where "custom_format_name" = 'Dumpstarr LQ Title (Automation)' and "condition_name" = 'Friends S09' and "regular_expression_name" in ('Friends LQ Automation', 'Friends S09');
-- --- END op 3841
