-- @operation: export
-- @entity: batch
-- @name: Updated Upscaled regex
-- @exportedAt: 2026-10-25T19:05:23.573Z
-- @opIds: 6835, 6836, 6837, 6838, 6839, 6840, 6841, 6842

-- --- BEGIN op 6835 ( update regular_expression "Upscaled (Radarr)" )
update "regular_expressions" set "name" = 'Upscaled (Radarr)' where "name" = 'Upscaled';
-- --- END op 6835

-- --- BEGIN op 6836 ( update custom_format "Upscaled" )
update "condition_patterns" set "regular_expression_name" = 'Upscaled (Radarr)' where "custom_format_name" = 'Upscaled' and "condition_name" = 'Upscaled' and "regular_expression_name" in ('Upscaled', 'Upscaled (Radarr)');
-- --- END op 6836

-- --- BEGIN op 6837 ( update regular_expression "Upscaled (Radarr)" )
update "regular_expressions" set "pattern" = '(?<=\b[12]\d{3}\b).*\b(AI[ ._-]?(Enhanced?|Remaster(ed)?)|UPS(UHD)?|Upscaled?([ ._-]?UHD)?|UpRez)\b' where "name" = 'Upscaled (Radarr)' and "pattern" = '(?<=\b\d{3,4}p\b).*\b(AI[ ._-]?Enhanced?|UPS(UHD)?|Upscaled?([ ._-]?UHD)?|UpRez)\b';
-- --- END op 6837

-- --- BEGIN op 6838 ( create regular_expression "Upscaled (Sonarr)" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Upscaled (Sonarr)', '(?<=\b[12]\d{3}\b).*\b(AI[ ._-]?(Enhanced?|Remaster(ed)?)|UPS(UHD)?|Upscaled?([ ._-]?UHD)?|UpRez)\b', NULL, NULL);

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Upscaled (Sonarr)', 'Banned');

insert into "tags" ("name") values ('Enhancement') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Upscaled (Sonarr)', 'Enhancement');

insert into "tags" ("name") values ('TRaSH') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Upscaled (Sonarr)', 'TRaSH');
-- --- END op 6838

-- --- BEGIN op 6839 ( update regular_expression "Upscaled (Sonarr)" )
update "regular_expressions" set "pattern" = '(?<=\b\d{3,4}p\b).*\b(AI[ ._-]?(Enhanced?|Remaster(ed)?)|UPS(UHD)?|Upscaled?([ ._-]?UHD)?|UpRez)\b' where "name" = 'Upscaled (Sonarr)' and "pattern" = '(?<=\b[12]\d{3}\b).*\b(AI[ ._-]?(Enhanced?|Remaster(ed)?)|UPS(UHD)?|Upscaled?([ ._-]?UHD)?|UpRez)\b';
-- --- END op 6839

-- --- BEGIN op 6840 ( update custom_format "Upscaled" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Upscaled'
	  AND name = 'Upscaled'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 6840

-- --- BEGIN op 6841 ( update custom_format "Upscaled" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Upscaled', 'Upscaled (Radarr)', 'release_title', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Upscaled', 'Upscaled (Radarr)', 'Upscaled (Radarr)');
-- --- END op 6841

-- --- BEGIN op 6842 ( update custom_format "Upscaled" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Upscaled', 'Upscaled (Sonarr)', 'release_title', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Upscaled', 'Upscaled (Sonarr)', 'Upscaled (Sonarr)');
-- --- END op 6842
