-- @operation: export
-- @entity: batch
-- @name: Adjusted source scores for WEB on Anime Beta
-- @exportedAt: 2026-05-21T19:00:36.597Z
-- @opIds: 941, 942, 943, 944, 945, 946, 947, 948, 949, 950, 951, 952

-- --- BEGIN op 941 ( update quality_profile "BETA - Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1700
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND custom_format_name = 'Anime WEB Tier 01'
  AND arr_type = 'radarr'
  AND score = 600;
-- --- END op 941

-- --- BEGIN op 942 ( update quality_profile "BETA - Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1700
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND custom_format_name = 'Anime WEB Tier 01'
  AND arr_type = 'sonarr'
  AND score = 600;
-- --- END op 942

-- --- BEGIN op 943 ( update quality_profile "BETA - Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1600
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND custom_format_name = 'Anime WEB Tier 02'
  AND arr_type = 'radarr'
  AND score = 500;
-- --- END op 943

-- --- BEGIN op 944 ( update quality_profile "BETA - Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1600
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND custom_format_name = 'Anime WEB Tier 02'
  AND arr_type = 'sonarr'
  AND score = 500;
-- --- END op 944

-- --- BEGIN op 945 ( update quality_profile "BETA - Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1500
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND custom_format_name = 'Anime WEB Tier 03'
  AND arr_type = 'radarr'
  AND score = 400;
-- --- END op 945

-- --- BEGIN op 946 ( update quality_profile "BETA - Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1500
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND custom_format_name = 'Anime WEB Tier 03'
  AND arr_type = 'sonarr'
  AND score = 400;
-- --- END op 946

-- --- BEGIN op 947 ( update quality_profile "BETA - Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1400
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND custom_format_name = 'Anime WEB Tier 04'
  AND arr_type = 'radarr'
  AND score = 300;
-- --- END op 947

-- --- BEGIN op 948 ( update quality_profile "BETA - Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1400
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND custom_format_name = 'Anime WEB Tier 04'
  AND arr_type = 'sonarr'
  AND score = 300;
-- --- END op 948

-- --- BEGIN op 949 ( update quality_profile "BETA - Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1300
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND custom_format_name = 'Anime WEB Tier 05'
  AND arr_type = 'radarr'
  AND score = 200;
-- --- END op 949

-- --- BEGIN op 950 ( update quality_profile "BETA - Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1300
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND custom_format_name = 'Anime WEB Tier 05'
  AND arr_type = 'sonarr'
  AND score = 200;
-- --- END op 950

-- --- BEGIN op 951 ( update quality_profile "BETA - Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1200
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND custom_format_name = 'Anime WEB Tier 6'
  AND arr_type = 'radarr'
  AND score = 100;
-- --- END op 951

-- --- BEGIN op 952 ( update quality_profile "BETA - Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1200
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND custom_format_name = 'Anime WEB Tier 6'
  AND arr_type = 'sonarr'
  AND score = 100;
-- --- END op 952
