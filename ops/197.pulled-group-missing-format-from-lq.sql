-- @operation: export
-- @entity: batch
-- @name: Pulled Group Missing format from LQ
-- @exportedAt: 2026-04-03T17:22:07.883Z
-- @opIds: 2512, 2513, 2514, 2515, 2516

-- --- BEGIN op 2512 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'Group Missing', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'Group Missing'
    AND arr_type = 'radarr'
);
-- --- END op 2512

-- --- BEGIN op 2513 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'Group Missing', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'Group Missing'
    AND arr_type = 'sonarr'
);
-- --- END op 2513

-- --- BEGIN op 2514 ( update quality_profile "LQ 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'LQ 1080p'
  AND custom_format_name = 'Group Missing'
  AND arr_type = 'all'
  AND score = -10000;
-- --- END op 2514

-- --- BEGIN op 2515 ( update quality_profile "LQ 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'LQ 1080p'
  AND custom_format_name = 'Group Missing'
  AND arr_type = 'radarr'
  AND score = -10000;
-- --- END op 2515

-- --- BEGIN op 2516 ( update quality_profile "LQ 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'LQ 1080p'
  AND custom_format_name = 'Group Missing'
  AND arr_type = 'sonarr'
  AND score = -10000;
-- --- END op 2516
