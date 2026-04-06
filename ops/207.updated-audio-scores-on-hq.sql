-- @operation: export
-- @entity: batch
-- @name: Updated audio scores on HQ
-- @exportedAt: 2026-04-06T16:50:04.901Z
-- @opIds: 2639, 2640, 2641, 2642, 2643, 2644, 2645, 2646, 2647, 2648, 2649, 2650

-- --- BEGIN op 2639 ( update quality_profile "Movies 2160p HQ" )
UPDATE quality_profile_custom_formats
SET score = 10
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'Dolby Digital +'
  AND arr_type = 'radarr'
  AND score = 5;
-- --- END op 2639

-- --- BEGIN op 2640 ( update quality_profile "Movies 2160p HQ" )
UPDATE quality_profile_custom_formats
SET score = 25
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'DTS-HD HRA'
  AND arr_type = 'radarr'
  AND score = 10;
-- --- END op 2640

-- --- BEGIN op 2641 ( update quality_profile "Movies 2160p HQ" )
UPDATE quality_profile_custom_formats
SET score = 25
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'DTS-HD MA'
  AND arr_type = 'radarr'
  AND score = 10;
-- --- END op 2641

-- --- BEGIN op 2642 ( update quality_profile "Movies 2160p HQ" )
UPDATE quality_profile_custom_formats
SET score = 50
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'DTS-X'
  AND arr_type = 'radarr'
  AND score = 15;
-- --- END op 2642

-- --- BEGIN op 2643 ( update quality_profile "Movies 2160p HQ" )
UPDATE quality_profile_custom_formats
SET score = 50
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'TrueHD'
  AND arr_type = 'radarr'
  AND score = 15;
-- --- END op 2643

-- --- BEGIN op 2644 ( update quality_profile "Movies 1080p HQ" )
UPDATE quality_profile_custom_formats
SET score = 10
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND custom_format_name = 'Dolby Digital +'
  AND arr_type = 'radarr'
  AND score = 5;
-- --- END op 2644

-- --- BEGIN op 2645 ( update quality_profile "Movies 1080p HQ" )
UPDATE quality_profile_custom_formats
SET score = 25
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND custom_format_name = 'DTS-HD HRA'
  AND arr_type = 'radarr'
  AND score = 10;
-- --- END op 2645

-- --- BEGIN op 2646 ( update quality_profile "Movies 1080p HQ" )
UPDATE quality_profile_custom_formats
SET score = 25
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND custom_format_name = 'DTS-HD MA'
  AND arr_type = 'radarr'
  AND score = 10;
-- --- END op 2646

-- --- BEGIN op 2647 ( update quality_profile "Movies 1080p HQ" )
UPDATE quality_profile_custom_formats
SET score = 50
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND custom_format_name = 'DTS-X'
  AND arr_type = 'radarr'
  AND score = 15;
-- --- END op 2647

-- --- BEGIN op 2648 ( update quality_profile "Movies 1080p HQ" )
UPDATE quality_profile_custom_formats
SET score = 50
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND custom_format_name = 'TrueHD'
  AND arr_type = 'radarr'
  AND score = 15;
-- --- END op 2648

-- --- BEGIN op 2649 ( update quality_profile "Movies 2160p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p HQ', 'Dolby Digital', 'radarr', 5
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND custom_format_name = 'Dolby Digital'
    AND arr_type = 'radarr'
);
-- --- END op 2649

-- --- BEGIN op 2650 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'Dolby Digital', 'radarr', 5
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'Dolby Digital'
    AND arr_type = 'radarr'
);
-- --- END op 2650
