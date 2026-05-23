-- @operation: export
-- @entity: batch
-- @name: Pulled Anime Tiers from BETA
-- @exportedAt: 2026-05-23T13:42:25.096Z
-- @opIds: 1046, 1047, 1048, 1049, 1050, 1051, 1052, 1053, 1054, 1055, 1056, 1057, 1058, 1059, 1060, 1061, 1062, 1063, 1064, 1065, 1068, 1070

-- --- BEGIN op 1046 ( update quality_profile "BETA - Anime 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND custom_format_name = 'Anime WEB Tier 01'
  AND arr_type = 'radarr'
  AND score = 1500;
-- --- END op 1046

-- --- BEGIN op 1047 ( update quality_profile "BETA - Anime 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND custom_format_name = 'Anime WEB Tier 01'
  AND arr_type = 'sonarr'
  AND score = 1500;
-- --- END op 1047

-- --- BEGIN op 1048 ( update quality_profile "BETA - Anime 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND custom_format_name = 'Anime WEB Tier 02'
  AND arr_type = 'radarr'
  AND score = 1400;
-- --- END op 1048

-- --- BEGIN op 1049 ( update quality_profile "BETA - Anime 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND custom_format_name = 'Anime WEB Tier 02'
  AND arr_type = 'sonarr'
  AND score = 1400;
-- --- END op 1049

-- --- BEGIN op 1050 ( update quality_profile "BETA - Anime 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND custom_format_name = 'Anime WEB Tier 03'
  AND arr_type = 'radarr'
  AND score = 1300;
-- --- END op 1050

-- --- BEGIN op 1051 ( update quality_profile "BETA - Anime 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND custom_format_name = 'Anime WEB Tier 03'
  AND arr_type = 'sonarr'
  AND score = 1300;
-- --- END op 1051

-- --- BEGIN op 1052 ( update quality_profile "BETA - Anime 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND custom_format_name = 'Anime WEB Tier 04'
  AND arr_type = 'radarr'
  AND score = 1200;
-- --- END op 1052

-- --- BEGIN op 1053 ( update quality_profile "BETA - Anime 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND custom_format_name = 'Anime WEB Tier 04'
  AND arr_type = 'sonarr'
  AND score = 1200;
-- --- END op 1053

-- --- BEGIN op 1054 ( update quality_profile "BETA - Anime 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND custom_format_name = 'Anime WEB Tier 05'
  AND arr_type = 'radarr'
  AND score = 1100;
-- --- END op 1054

-- --- BEGIN op 1055 ( update quality_profile "BETA - Anime 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND custom_format_name = 'Anime WEB Tier 05'
  AND arr_type = 'sonarr'
  AND score = 1100;
-- --- END op 1055

-- --- BEGIN op 1056 ( update quality_profile "BETA - Anime 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND custom_format_name = 'Anime WEB Tier 6'
  AND arr_type = 'radarr'
  AND score = 1000;
-- --- END op 1056

-- --- BEGIN op 1057 ( update quality_profile "BETA - Anime 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND custom_format_name = 'Anime WEB Tier 6'
  AND arr_type = 'sonarr'
  AND score = 1000;
-- --- END op 1057

-- --- BEGIN op 1058 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'WEB Tier 01', 'radarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'WEB Tier 01'
    AND arr_type = 'radarr'
);
-- --- END op 1058

-- --- BEGIN op 1059 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'WEB Tier 01', 'sonarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'WEB Tier 01'
    AND arr_type = 'sonarr'
);
-- --- END op 1059

-- --- BEGIN op 1060 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'WEB Tier 02', 'radarr', 900
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'WEB Tier 02'
    AND arr_type = 'radarr'
);
-- --- END op 1060

-- --- BEGIN op 1061 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'WEB Tier 02', 'sonarr', 900
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'WEB Tier 02'
    AND arr_type = 'sonarr'
);
-- --- END op 1061

-- --- BEGIN op 1062 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'WEB Tier 03', 'radarr', 800
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'WEB Tier 03'
    AND arr_type = 'radarr'
);
-- --- END op 1062

-- --- BEGIN op 1063 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'WEB Tier 03', 'sonarr', 800
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'WEB Tier 03'
    AND arr_type = 'sonarr'
);
-- --- END op 1063

-- --- BEGIN op 1064 ( update quality_profile "BETA - Anime 1080p" )
DELETE FROM quality_profile_languages WHERE quality_profile_name = 'BETA - Anime 1080p' AND language_name = 'Original';

INSERT INTO quality_profile_languages (quality_profile_name, language_name, type)
SELECT 'BETA - Anime 1080p', 'English', 'simple'
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_languages
  WHERE quality_profile_name = 'BETA - Anime 1080p'
);
-- --- END op 1064

-- --- BEGIN op 1065 ( update quality_profile "BETA - Anime 1080p" )
DELETE FROM quality_profile_languages WHERE quality_profile_name = 'BETA - Anime 1080p' AND language_name = 'English';

INSERT INTO quality_profile_languages (quality_profile_name, language_name, type)
SELECT 'BETA - Anime 1080p', 'Original', 'simple'
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_languages
  WHERE quality_profile_name = 'BETA - Anime 1080p'
);
-- --- END op 1065

-- --- BEGIN op 1068 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'No English', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'No English'
    AND arr_type = 'sonarr'
);
-- --- END op 1068

-- --- BEGIN op 1070 ( update quality_profile "BETA - Anime 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND custom_format_name = 'No English'
  AND arr_type = 'sonarr'
  AND score = -10000;
-- --- END op 1070
