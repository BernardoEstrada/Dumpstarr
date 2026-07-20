-- @operation: export
-- @entity: batch
-- @name: Added Not Original Language format to TV
-- @exportedAt: 2026-07-20T14:46:45.996Z
-- @opIds: 3987, 3988, 3989, 3990, 3991

-- --- BEGIN op 3987 ( create custom_format "Not Original Language" )
insert into "custom_formats" ("name", "description") values ('Not Original Language', '');
-- --- END op 3987

-- --- BEGIN op 3988 ( update custom_format "Not Original Language" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Not Original Language', 'Not Original', 'language', 'all', 1, 1);

INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language) VALUES ('Not Original Language', 'Not Original', 'Original', 0);
-- --- END op 3988

-- --- BEGIN op 3989 ( update custom_format "Not Original Language" )
UPDATE custom_format_conditions
SET required = 0
WHERE custom_format_name = 'Not Original Language'
  AND name = 'Not Original'
  AND type = 'language'
  AND arr_type = 'all'
  AND negate = 1
  AND required = 1;
-- --- END op 3989

-- --- BEGIN op 3990 ( update quality_profile "TV 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV 1080p', 'Not Original Language', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV 1080p'
    AND custom_format_name = 'Not Original Language'
    AND arr_type = 'sonarr'
);
-- --- END op 3990

-- --- BEGIN op 3991 ( update quality_profile "TV 2160p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV 2160p', 'Not Original Language', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV 2160p'
    AND custom_format_name = 'Not Original Language'
    AND arr_type = 'sonarr'
);
-- --- END op 3991
