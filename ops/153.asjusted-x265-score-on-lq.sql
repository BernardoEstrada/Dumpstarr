-- @operation: export
-- @entity: batch
-- @name: Asjusted X265 score on LQ
-- @exportedAt: 2026-03-23T15:07:35.199Z
-- @opIds: 1303, 1304, 1305, 1306, 1307

-- --- BEGIN op 1303 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'x265 (HD)', 'radarr', 50
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'x265 (HD)'
    AND arr_type = 'radarr'
);
-- --- END op 1303

-- --- BEGIN op 1304 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'x265 (HD)', 'sonarr', 50
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'x265 (HD)'
    AND arr_type = 'sonarr'
);
-- --- END op 1304

-- --- BEGIN op 1305 ( update quality_profile "LQ 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'LQ 1080p'
  AND custom_format_name = 'x265 (HD)'
  AND arr_type = 'all'
  AND score = 50;
-- --- END op 1305

-- --- BEGIN op 1306 ( update quality_profile "LQ 1080p" )
UPDATE quality_profile_custom_formats
SET score = 25
WHERE quality_profile_name = 'LQ 1080p'
  AND custom_format_name = 'x265 (HD)'
  AND arr_type = 'radarr'
  AND score = 50;
-- --- END op 1306

-- --- BEGIN op 1307 ( update quality_profile "LQ 1080p" )
UPDATE quality_profile_custom_formats
SET score = 25
WHERE quality_profile_name = 'LQ 1080p'
  AND custom_format_name = 'x265 (HD)'
  AND arr_type = 'sonarr'
  AND score = 50;
-- --- END op 1307
