-- @operation: export
-- @entity: batch
-- @name: Added IMAX/IMAX Enhanced to HQ
-- @exportedAt: 2026-03-03T15:20:35.616Z
-- @opIds: 1358, 1359, 1360, 1361

-- --- BEGIN op 1358 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'IMAX', 'radarr', 50
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'IMAX'
    AND arr_type = 'radarr'
);
-- --- END op 1358

-- --- BEGIN op 1359 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'IMAX Enhanced', 'radarr', 50
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'IMAX Enhanced'
    AND arr_type = 'radarr'
);
-- --- END op 1359

-- --- BEGIN op 1360 ( update quality_profile "Movies 2160p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p HQ', 'IMAX', 'radarr', 50
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND custom_format_name = 'IMAX'
    AND arr_type = 'radarr'
);
-- --- END op 1360

-- --- BEGIN op 1361 ( update quality_profile "Movies 2160p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p HQ', 'IMAX Enhanced', 'radarr', 50
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND custom_format_name = 'IMAX Enhanced'
    AND arr_type = 'radarr'
);
-- --- END op 1361
