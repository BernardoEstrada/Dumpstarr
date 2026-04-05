-- @operation: export
-- @entity: batch
-- @name: Removed base WEB Tiers from Anime
-- @exportedAt: 2026-04-05T13:57:00.063Z
-- @opIds: 2610, 2611, 2612, 2613, 2614, 2615

-- --- BEGIN op 2610 ( update quality_profile "Anime 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Anime 1080p'
  AND custom_format_name = 'TRaSH WEB Tier 01'
  AND arr_type = 'radarr'
  AND score = 350;
-- --- END op 2610

-- --- BEGIN op 2611 ( update quality_profile "Anime 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Anime 1080p'
  AND custom_format_name = 'TRaSH WEB Tier 01'
  AND arr_type = 'sonarr'
  AND score = 350;
-- --- END op 2611

-- --- BEGIN op 2612 ( update quality_profile "Anime 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Anime 1080p'
  AND custom_format_name = 'TRaSH WEB Tier 02'
  AND arr_type = 'radarr'
  AND score = 150;
-- --- END op 2612

-- --- BEGIN op 2613 ( update quality_profile "Anime 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Anime 1080p'
  AND custom_format_name = 'TRaSH WEB Tier 02'
  AND arr_type = 'sonarr'
  AND score = 150;
-- --- END op 2613

-- --- BEGIN op 2614 ( update quality_profile "Anime 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Anime 1080p'
  AND custom_format_name = 'TRaSH WEB Tier 03'
  AND arr_type = 'radarr'
  AND score = 150;
-- --- END op 2614

-- --- BEGIN op 2615 ( update quality_profile "Anime 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Anime 1080p'
  AND custom_format_name = 'TRaSH WEB Tier 03'
  AND arr_type = 'sonarr'
  AND score = 150;
-- --- END op 2615
