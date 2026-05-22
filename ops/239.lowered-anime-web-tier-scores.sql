-- @operation: export
-- @entity: batch
-- @name: Lowered Anime WEB Tier scores
-- @exportedAt: 2026-05-22T18:40:01.215Z
-- @opIds: 989, 990, 991, 992, 993, 994, 995, 996, 997, 998, 999, 1000

-- --- BEGIN op 989 ( update quality_profile "BETA - Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1500
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND custom_format_name = 'Anime WEB Tier 01'
  AND arr_type = 'radarr'
  AND score = 1700;
-- --- END op 989

-- --- BEGIN op 990 ( update quality_profile "BETA - Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1500
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND custom_format_name = 'Anime WEB Tier 01'
  AND arr_type = 'sonarr'
  AND score = 1700;
-- --- END op 990

-- --- BEGIN op 991 ( update quality_profile "BETA - Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1400
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND custom_format_name = 'Anime WEB Tier 02'
  AND arr_type = 'radarr'
  AND score = 1600;
-- --- END op 991

-- --- BEGIN op 992 ( update quality_profile "BETA - Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1400
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND custom_format_name = 'Anime WEB Tier 02'
  AND arr_type = 'sonarr'
  AND score = 1600;
-- --- END op 992

-- --- BEGIN op 993 ( update quality_profile "BETA - Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1300
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND custom_format_name = 'Anime WEB Tier 03'
  AND arr_type = 'radarr'
  AND score = 1500;
-- --- END op 993

-- --- BEGIN op 994 ( update quality_profile "BETA - Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1300
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND custom_format_name = 'Anime WEB Tier 03'
  AND arr_type = 'sonarr'
  AND score = 1500;
-- --- END op 994

-- --- BEGIN op 995 ( update quality_profile "BETA - Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1200
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND custom_format_name = 'Anime WEB Tier 04'
  AND arr_type = 'radarr'
  AND score = 1400;
-- --- END op 995

-- --- BEGIN op 996 ( update quality_profile "BETA - Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1200
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND custom_format_name = 'Anime WEB Tier 04'
  AND arr_type = 'sonarr'
  AND score = 1400;
-- --- END op 996

-- --- BEGIN op 997 ( update quality_profile "BETA - Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1100
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND custom_format_name = 'Anime WEB Tier 05'
  AND arr_type = 'radarr'
  AND score = 1300;
-- --- END op 997

-- --- BEGIN op 998 ( update quality_profile "BETA - Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1100
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND custom_format_name = 'Anime WEB Tier 05'
  AND arr_type = 'sonarr'
  AND score = 1300;
-- --- END op 998

-- --- BEGIN op 999 ( update quality_profile "BETA - Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1000
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND custom_format_name = 'Anime WEB Tier 6'
  AND arr_type = 'radarr'
  AND score = 1200;
-- --- END op 999

-- --- BEGIN op 1000 ( update quality_profile "BETA - Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1000
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND custom_format_name = 'Anime WEB Tier 6'
  AND arr_type = 'sonarr'
  AND score = 1200;
-- --- END op 1000
