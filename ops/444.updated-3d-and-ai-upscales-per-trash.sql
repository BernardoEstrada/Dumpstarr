-- @operation: export
-- @entity: batch
-- @name: Updated 3D and AI Upscales per TRaSH
-- @exportedAt: 2026-10-25T19:12:32.079Z
-- @opIds: 6844, 6845, 6846, 6847, 6848, 6849, 6850, 6851, 6852

-- --- BEGIN op 6844 ( update regular_expression "3D" )
update "regular_expressions" set "pattern" = '(?<=\b[12]\d{3}\b).*(\b|_)(3d|[fh]?sbs|half[ ._-]ou)(\b|_)' where "name" = '3D' and "pattern" = '(?<=\b[12]\d{3}\b).*\b((Bluray|BD)?3D|SBS|H[- .]?OU|H[- .]?SBS|Half[ .-]?OU|Half[ .-]?SBS)\b';
-- --- END op 6844

-- --- BEGIN op 6845 ( update regular_expression "AI Upscales" )
update "regular_expressions" set "pattern" = '(?<=\b[12]\d{3}\b)(?=.*\b(HEVC)\b)(?=.*\b(AI)\b)' where "name" = 'AI Upscales' and "pattern" = '(?<=\b\d{3,4}p\b)(?=.*\b(HEVC)\b)(?=.*\b(AI)\b)';
-- --- END op 6845

-- --- BEGIN op 6846 ( update regular_expression "AI Upscales (Radarr)" )
update "regular_expressions" set "name" = 'AI Upscales (Radarr)' where "name" = 'AI Upscales';
-- --- END op 6846

-- --- BEGIN op 6847 ( update custom_format "Upscaled" )
update "condition_patterns" set "regular_expression_name" = 'AI Upscales (Radarr)' where "custom_format_name" = 'Upscaled' and "condition_name" = 'AI Upscales' and "regular_expression_name" in ('AI Upscales', 'AI Upscales (Radarr)');
-- --- END op 6847

-- --- BEGIN op 6848 ( create regular_expression "AI Upscales (Sonarr)" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('AI Upscales (Sonarr)', '(?<=\b[12]\d{3}\b)(?=.*\b(HEVC)\b)(?=.*\b(AI)\b)', NULL, NULL);

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('AI Upscales (Sonarr)', 'Banned');

insert into "tags" ("name") values ('TRaSH') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('AI Upscales (Sonarr)', 'TRaSH');
-- --- END op 6848

-- --- BEGIN op 6849 ( update regular_expression "AI Upscales (Sonarr)" )
update "regular_expressions" set "pattern" = '(?<=\b\d{3,4}p\b)(?=.*\b(HEVC)\b)(?=.*\b(AI)\b)' where "name" = 'AI Upscales (Sonarr)' and "pattern" = '(?<=\b[12]\d{3}\b)(?=.*\b(HEVC)\b)(?=.*\b(AI)\b)';
-- --- END op 6849

-- --- BEGIN op 6850 ( update custom_format "Upscaled" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Upscaled'
	  AND name = 'AI Upscales'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 6850

-- --- BEGIN op 6851 ( update custom_format "Upscaled" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Upscaled', 'AI Upscales (Radarr)', 'release_title', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Upscaled', 'AI Upscales (Radarr)', 'AI Upscales (Radarr)');
-- --- END op 6851

-- --- BEGIN op 6852 ( update custom_format "Upscaled" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Upscaled', 'AI Upscales (Sonarr)', 'release_title', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Upscaled', 'AI Upscales (Sonarr)', 'AI Upscales (Sonarr)');
-- --- END op 6852
