-- @operation: export
-- @entity: batch
-- @name: Added Friends Banned Groups
-- @exportedAt: 2026-07-15T17:28:36.077Z
-- @opIds: 3791, 3792, 3793, 3794, 3795, 3796, 3797

-- --- BEGIN op 3791 ( create regular_expression "Friends Banned Groups" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Friends Banned Groups', '(?i)^friends[ ._-]+\bS\d{2}E\d{2}\b.*-(Kitsune)\b', 'Targets releases of Friends where the group is OK but the release itself is mislabeled, causing import issues.', NULL);

insert into "tags" ("name") values ('Custom') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Friends Banned Groups', 'Custom');
-- --- END op 3791

-- --- BEGIN op 3792 ( update regular_expression "Friends Banned Groups" )
update "regular_expressions" set "pattern" = '(?i)^friends[ ._-]+\bS\d{2}E\d{2}\b.*-(SbR)\b' where "name" = 'Friends Banned Groups' and "pattern" = '(?i)^friends[ ._-]+\bS\d{2}E\d{2}\b.*-(Kitsune)\b';
-- --- END op 3792

-- --- BEGIN op 3793 ( update custom_format "Bad Source" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Source', 'Friends Banned Groups', 'release_title', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Source', 'Friends Banned Groups', 'Friends Banned Groups');
-- --- END op 3793

-- --- BEGIN op 3794 ( update custom_format "Bad Source" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Bad Source'
	  AND name = 'Friends Banned Groups'
	  AND type = 'release_title'
	  AND arr_type = 'sonarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 3794

-- --- BEGIN op 3795 ( update custom_format "Bad Source" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Source', 'Friends', 'release_title', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Source', 'Friends', 'Friends Banned Groups');
-- --- END op 3795

-- --- BEGIN op 3796 ( update regular_expression "Friends Banned Groups" )
update "regular_expressions" set "description" = 'Targets releases of Friends from groups that use incorrect IDs which cause import issues' where "name" = 'Friends Banned Groups' and "description" = 'Targets releases of Friends where the group is OK but the release itself is mislabeled, causing import issues.';
-- --- END op 3796

-- --- BEGIN op 3797 ( update regular_expression "Friends Banned Groups" )
update "regular_expressions" set "pattern" = '(?i)^amigo''s[ ._-]+\bS\d{2}E\d{2}\b.*-(SbR)\b' where "name" = 'Friends Banned Groups' and "pattern" = '(?i)^friends[ ._-]+\bS\d{2}E\d{2}\b.*-(SbR)\b';
-- --- END op 3797
