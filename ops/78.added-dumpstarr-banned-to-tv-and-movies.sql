-- @operation: export
-- @entity: batch
-- @name: Added Dumpstarr Banned to TV and Movies
-- @exportedAt: 2026-03-04T02:44:05.618Z
-- @opIds: 1974, 1975, 1976, 1977, 1978, 1979

-- --- BEGIN op 1974 ( update quality_profile "Movies 2160p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p HQ', 'Dumpstarr Banned Groups', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND custom_format_name = 'Dumpstarr Banned Groups'
    AND arr_type = 'radarr'
);
-- --- END op 1974

-- --- BEGIN op 1975 ( update quality_profile "Movies 2160p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p', 'Dumpstarr Banned Groups', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p'
    AND custom_format_name = 'Dumpstarr Banned Groups'
    AND arr_type = 'radarr'
);
-- --- END op 1975

-- --- BEGIN op 1976 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'Dumpstarr Banned Groups', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'Dumpstarr Banned Groups'
    AND arr_type = 'radarr'
);
-- --- END op 1976

-- --- BEGIN op 1977 ( update quality_profile "Movies 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p', 'Dumpstarr Banned Groups', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p'
    AND custom_format_name = 'Dumpstarr Banned Groups'
    AND arr_type = 'radarr'
);
-- --- END op 1977

-- --- BEGIN op 1978 ( update quality_profile "TV 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV 1080p', 'Dumpstarr Banned Groups', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV 1080p'
    AND custom_format_name = 'Dumpstarr Banned Groups'
    AND arr_type = 'sonarr'
);
-- --- END op 1978

-- --- BEGIN op 1979 ( update quality_profile "TV 2160p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV 2160p', 'Dumpstarr Banned Groups', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV 2160p'
    AND custom_format_name = 'Dumpstarr Banned Groups'
    AND arr_type = 'sonarr'
);
-- --- END op 1979
