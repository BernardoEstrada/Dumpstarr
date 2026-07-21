-- @operation: export
-- @entity: batch
-- @name: HQ Score Updates for more WEB-DL targeting
-- @exportedAt: 2026-07-21T15:41:18.105Z
-- @opIds: 4079, 4080, 4081, 4082, 4083, 4084, 4085, 4086, 4087, 4088, 4089, 4090, 4091, 4092, 4093, 4094, 4095, 4096, 4097, 4098

-- --- BEGIN op 4079 ( update quality_profile "Movies 2160p HQ" )
UPDATE quality_profile_custom_formats
SET score = 100
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'Dolby Vision'
  AND arr_type = 'radarr'
  AND score = 1000;
-- --- END op 4079

-- --- BEGIN op 4080 ( update quality_profile "Movies 2160p HQ" )
UPDATE quality_profile_custom_formats
SET score = 1100
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'HD Bluray Tier 01'
  AND arr_type = 'radarr'
  AND score = 1500;
-- --- END op 4080

-- --- BEGIN op 4081 ( update quality_profile "Movies 2160p HQ" )
UPDATE quality_profile_custom_formats
SET score = 1050
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'HD Bluray Tier 02'
  AND arr_type = 'radarr'
  AND score = 1450;
-- --- END op 4081

-- --- BEGIN op 4082 ( update quality_profile "Movies 2160p HQ" )
UPDATE quality_profile_custom_formats
SET score = 1000
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'HD Bluray Tier 03'
  AND arr_type = 'radarr'
  AND score = 1400;
-- --- END op 4082

-- --- BEGIN op 4083 ( update quality_profile "Movies 2160p HQ" )
UPDATE quality_profile_custom_formats
SET score = 200
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'HDR'
  AND arr_type = 'radarr'
  AND score = 500;
-- --- END op 4083

-- --- BEGIN op 4084 ( update quality_profile "Movies 2160p HQ" )
UPDATE quality_profile_custom_formats
SET score = 10
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'HDR10+'
  AND arr_type = 'radarr'
  AND score = 100;
-- --- END op 4084

-- --- BEGIN op 4085 ( update quality_profile "Movies 2160p HQ" )
UPDATE quality_profile_custom_formats
SET score = 100
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'MA'
  AND arr_type = 'radarr'
  AND score = 75;
-- --- END op 4085

-- --- BEGIN op 4086 ( update quality_profile "Movies 2160p HQ" )
UPDATE quality_profile_custom_formats
SET score = 1100
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'UHD Bluray Tier 01'
  AND arr_type = 'radarr'
  AND score = 1500;
-- --- END op 4086

-- --- BEGIN op 4087 ( update quality_profile "Movies 2160p HQ" )
UPDATE quality_profile_custom_formats
SET score = 1050
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'UHD Bluray Tier 02'
  AND arr_type = 'radarr'
  AND score = 1450;
-- --- END op 4087

-- --- BEGIN op 4088 ( update quality_profile "Movies 2160p HQ" )
UPDATE quality_profile_custom_formats
SET score = 1000
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'UHD Bluray Tier 03'
  AND arr_type = 'radarr'
  AND score = 1400;
-- --- END op 4088

-- --- BEGIN op 4089 ( update quality_profile "Movies 1080p HQ" )
UPDATE quality_profile_custom_formats
SET score = 100
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND custom_format_name = 'Baseline Groups'
  AND arr_type = 'radarr'
  AND score = 500;
-- --- END op 4089

-- --- BEGIN op 4090 ( update quality_profile "Movies 1080p HQ" )
UPDATE quality_profile_custom_formats
SET score = 1100
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND custom_format_name = 'HD Bluray Tier 01'
  AND arr_type = 'radarr'
  AND score = 1500;
-- --- END op 4090

-- --- BEGIN op 4091 ( update quality_profile "Movies 1080p HQ" )
UPDATE quality_profile_custom_formats
SET score = 1050
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND custom_format_name = 'HD Bluray Tier 02'
  AND arr_type = 'radarr'
  AND score = 1450;
-- --- END op 4091

-- --- BEGIN op 4092 ( update quality_profile "Movies 1080p HQ" )
UPDATE quality_profile_custom_formats
SET score = 1000
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND custom_format_name = 'HD Bluray Tier 03'
  AND arr_type = 'radarr'
  AND score = 1400;
-- --- END op 4092

-- --- BEGIN op 4093 ( update quality_profile "Movies 1080p HQ" )
UPDATE quality_profile_custom_formats
SET score = 100
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND custom_format_name = 'MA'
  AND arr_type = 'radarr'
  AND score = 75;
-- --- END op 4093

-- --- BEGIN op 4094 ( update quality_profile "Movies 2160p HQ" )
UPDATE quality_profile_custom_formats
SET score = 100
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'Baseline Groups'
  AND arr_type = 'radarr'
  AND score = 500;
-- --- END op 4094

-- --- BEGIN op 4095 ( update quality_profile "Movies 2160p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p HQ', 'DTS', 'radarr', 10
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND custom_format_name = 'DTS'
    AND arr_type = 'radarr'
);
-- --- END op 4095

-- --- BEGIN op 4096 ( update quality_profile "Movies 2160p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p HQ', 'DTS-ES', 'radarr', 10
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND custom_format_name = 'DTS-ES'
    AND arr_type = 'radarr'
);
-- --- END op 4096

-- --- BEGIN op 4097 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'DTS', 'radarr', 10
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'DTS'
    AND arr_type = 'radarr'
);
-- --- END op 4097

-- --- BEGIN op 4098 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'DTS-ES', 'radarr', 10
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'DTS-ES'
    AND arr_type = 'radarr'
);
-- --- END op 4098
