-- @operation: export
-- @entity: batch
-- @name: Added Friends LQ Automation Groups
-- @exportedAt: 2026-07-15T15:11:17.612Z
-- @opIds: 3407, 3416, 3417, 3418, 3419, 3420, 3421, 3422, 3423, 3424, 3425, 3426

-- --- BEGIN op 3407 ( delete custom_format "LQ Disallowed" )
delete from "custom_formats" where "name" = 'LQ Disallowed';
-- --- END op 3407

-- --- BEGIN op 3416 ( delete regular_expression "Bob's Burgers" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Bob''s Burgers' AND tag_name = 'Custom';

delete from "regular_expressions" where "name" = 'Bob''s Burgers';
-- --- END op 3416

-- --- BEGIN op 3417 ( create regular_expression "Friends" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Friends', '(?i)^family[ ._-]+guy.*-(REWARD)\b', 'Negates certain groups that are in PAL format (25 fps).', NULL);

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Friends', 'Banned');

insert into "tags" ("name") values ('Custom') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Friends', 'Custom');
-- --- END op 3417

-- --- BEGIN op 3418 ( update regular_expression "Friends" )
update "regular_expressions" set "description" = NULL where "name" = 'Friends' and "description" = 'Negates certain groups that are in PAL format (25 fps).';
-- --- END op 3418

-- --- BEGIN op 3419 ( update regular_expression "Friends" )
update "regular_expressions" set "pattern" = '(?i)^friends.*-(Kitsune)\b' where "name" = 'Friends' and "pattern" = '(?i)^family[ ._-]+guy.*-(REWARD)\b';
-- --- END op 3419

-- --- BEGIN op 3420 ( update regular_expression "Friends" )
update "regular_expressions" set "pattern" = '(?i)^friends.\bS\d{2}E\d{2}\b.*-(Kitsune)\b' where "name" = 'Friends' and "pattern" = '(?i)^friends.*-(Kitsune)\b';
-- --- END op 3420

-- --- BEGIN op 3421 ( update regular_expression "Friends" )
update "regular_expressions" set "pattern" = '(?i)^friends[ ._-]+\bS\d{2}E\d{2}\b.*-(Kitsune)\b' where "name" = 'Friends' and "pattern" = '(?i)^friends.\bS\d{2}E\d{2}\b.*-(Kitsune)\b';
-- --- END op 3421

-- --- BEGIN op 3422 ( update custom_format "Dumpstarr LQ Title (Automation)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dumpstarr LQ Title (Automation)', 'Friends', 'release_title', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dumpstarr LQ Title (Automation)', 'Friends', 'Friends');
-- --- END op 3422

-- --- BEGIN op 3423 ( update regular_expression "Friends" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Friends' AND tag_name = 'Banned';
-- --- END op 3423

-- --- BEGIN op 3424 ( update regular_expression "Friends" )
update "regular_expressions" set "description" = 'Targets releases of Friends where the group is OK but the release itself is mislabeled, causing import issues.' where "name" = 'Friends' and "description" is null;
-- --- END op 3424

-- --- BEGIN op 3425 ( update regular_expression "Friends (LQ Automation)" )
update "regular_expressions" set "name" = 'Friends (LQ Automation)' where "name" = 'Friends';
-- --- END op 3425

-- --- BEGIN op 3426 ( update custom_format "Dumpstarr LQ Title (Automation)" )
update "condition_patterns" set "regular_expression_name" = 'Friends (LQ Automation)' where "custom_format_name" = 'Dumpstarr LQ Title (Automation)' and "condition_name" = 'Friends' and "regular_expression_name" in ('Friends', 'Friends (LQ Automation)');
-- --- END op 3426
