-- @operation: export
-- @entity: batch
-- @name: Added audio scores to HQ for better refinement
-- @exportedAt: 2026-03-06T20:17:08.415Z
-- @opIds: 3041, 3042, 3043, 3044, 3045, 3046, 3047, 3048, 3049, 3050, 3051, 3052

-- --- BEGIN op 3041 ( update quality_profile "Movies 2160p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p HQ', 'Dolby Digital', 'radarr', 5
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND custom_format_name = 'Dolby Digital'
    AND arr_type = 'radarr'
);
-- --- END op 3041

-- --- BEGIN op 3042 ( update quality_profile "Movies 2160p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p HQ', 'Dolby Digital +', 'radarr', 5
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND custom_format_name = 'Dolby Digital +'
    AND arr_type = 'radarr'
);
-- --- END op 3042

-- --- BEGIN op 3043 ( update quality_profile "Movies 2160p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p HQ', 'DTS-HD HRA', 'radarr', 10
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND custom_format_name = 'DTS-HD HRA'
    AND arr_type = 'radarr'
);
-- --- END op 3043

-- --- BEGIN op 3044 ( update quality_profile "Movies 2160p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p HQ', 'DTS-HD MA', 'radarr', 10
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND custom_format_name = 'DTS-HD MA'
    AND arr_type = 'radarr'
);
-- --- END op 3044

-- --- BEGIN op 3045 ( update quality_profile "Movies 2160p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p HQ', 'DTS-X', 'radarr', 15
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND custom_format_name = 'DTS-X'
    AND arr_type = 'radarr'
);
-- --- END op 3045

-- --- BEGIN op 3046 ( update quality_profile "Movies 2160p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p HQ', 'TrueHD', 'radarr', 15
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND custom_format_name = 'TrueHD'
    AND arr_type = 'radarr'
);
-- --- END op 3046

-- --- BEGIN op 3047 ( update quality_profile "Movies 2160p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'Dolby Digital'
  AND arr_type = 'radarr'
  AND score = 5;
-- --- END op 3047

-- --- BEGIN op 3048 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'Dolby Digital +', 'radarr', 5
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'Dolby Digital +'
    AND arr_type = 'radarr'
);
-- --- END op 3048

-- --- BEGIN op 3049 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'DTS-HD HRA', 'radarr', 10
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'DTS-HD HRA'
    AND arr_type = 'radarr'
);
-- --- END op 3049

-- --- BEGIN op 3050 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'DTS-HD MA', 'radarr', 10
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'DTS-HD MA'
    AND arr_type = 'radarr'
);
-- --- END op 3050

-- --- BEGIN op 3051 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'DTS-X', 'radarr', 15
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'DTS-X'
    AND arr_type = 'radarr'
);
-- --- END op 3051

-- --- BEGIN op 3052 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'TrueHD', 'radarr', 15
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'TrueHD'
    AND arr_type = 'radarr'
);
-- --- END op 3052
