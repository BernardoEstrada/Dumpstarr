-- @operation: export
-- @entity: batch
-- @name: Pulled Banned from Anime
-- @exportedAt: 2026-03-06T15:09:50.216Z
-- @opIds: 2531, 2532, 2533, 2534, 2535

-- --- BEGIN op 2531 ( update quality_profile "Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Anime 1080p', 'Banned Groups', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Anime 1080p'
    AND custom_format_name = 'Banned Groups'
    AND arr_type = 'radarr'
);
-- --- END op 2531

-- --- BEGIN op 2532 ( update quality_profile "Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Anime 1080p', 'Banned Groups', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Anime 1080p'
    AND custom_format_name = 'Banned Groups'
    AND arr_type = 'sonarr'
);
-- --- END op 2532

-- --- BEGIN op 2533 ( update quality_profile "Anime 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Anime 1080p'
  AND custom_format_name = 'Banned Groups'
  AND arr_type = 'all'
  AND score = -10000;
-- --- END op 2533

-- --- BEGIN op 2534 ( update quality_profile "Anime 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Anime 1080p'
  AND custom_format_name = 'Banned Groups'
  AND arr_type = 'radarr'
  AND score = -10000;
-- --- END op 2534

-- --- BEGIN op 2535 ( update quality_profile "Anime 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Anime 1080p'
  AND custom_format_name = 'Banned Groups'
  AND arr_type = 'sonarr'
  AND score = -10000;
-- --- END op 2535
