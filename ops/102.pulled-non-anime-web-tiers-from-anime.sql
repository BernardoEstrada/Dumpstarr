-- @operation: export
-- @entity: batch
-- @name: Pulled non-anime WEB tiers from Anime
-- @exportedAt: 2026-03-06T06:46:52.375Z
-- @opIds: 2524, 2525, 2526, 2527, 2528, 2529

-- --- BEGIN op 2524 ( update quality_profile "Anime 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Anime 1080p'
  AND custom_format_name = 'TRaSH WEB Tier 01'
  AND arr_type = 'radarr'
  AND score = 1400;
-- --- END op 2524

-- --- BEGIN op 2525 ( update quality_profile "Anime 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Anime 1080p'
  AND custom_format_name = 'TRaSH WEB Tier 01'
  AND arr_type = 'sonarr'
  AND score = 1400;
-- --- END op 2525

-- --- BEGIN op 2526 ( update quality_profile "Anime 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Anime 1080p'
  AND custom_format_name = 'TRaSH WEB Tier 02'
  AND arr_type = 'radarr'
  AND score = 1300;
-- --- END op 2526

-- --- BEGIN op 2527 ( update quality_profile "Anime 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Anime 1080p'
  AND custom_format_name = 'TRaSH WEB Tier 02'
  AND arr_type = 'sonarr'
  AND score = 1300;
-- --- END op 2527

-- --- BEGIN op 2528 ( update quality_profile "Anime 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Anime 1080p'
  AND custom_format_name = 'TRaSH WEB Tier 03'
  AND arr_type = 'radarr'
  AND score = 1200;
-- --- END op 2528

-- --- BEGIN op 2529 ( update quality_profile "Anime 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Anime 1080p'
  AND custom_format_name = 'TRaSH WEB Tier 03'
  AND arr_type = 'sonarr'
  AND score = 1200;
-- --- END op 2529
