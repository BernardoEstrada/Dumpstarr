-- @operation: export
-- @entity: batch
-- @name: Increased Dual Audio Score
-- @exportedAt: 2026-06-15T14:44:02.915Z
-- @opIds: 1703, 1704, 1705, 1706, 1707

-- --- BEGIN op 1703 ( update quality_profile "Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Anime 1080p', 'Anime Dual Audio', 'radarr', 101
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Anime 1080p'
    AND custom_format_name = 'Anime Dual Audio'
    AND arr_type = 'radarr'
);
-- --- END op 1703

-- --- BEGIN op 1704 ( update quality_profile "Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Anime 1080p', 'Anime Dual Audio', 'sonarr', 101
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Anime 1080p'
    AND custom_format_name = 'Anime Dual Audio'
    AND arr_type = 'sonarr'
);
-- --- END op 1704

-- --- BEGIN op 1705 ( update quality_profile "Anime 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Anime 1080p'
  AND custom_format_name = 'Anime Dual Audio'
  AND arr_type = 'all'
  AND score = 101;
-- --- END op 1705

-- --- BEGIN op 1706 ( update quality_profile "Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1000
WHERE quality_profile_name = 'Anime 1080p'
  AND custom_format_name = 'Anime Dual Audio'
  AND arr_type = 'radarr'
  AND score = 101;
-- --- END op 1706

-- --- BEGIN op 1707 ( update quality_profile "Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1000
WHERE quality_profile_name = 'Anime 1080p'
  AND custom_format_name = 'Anime Dual Audio'
  AND arr_type = 'sonarr'
  AND score = 101;
-- --- END op 1707
