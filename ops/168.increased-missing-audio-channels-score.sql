-- @operation: export
-- @entity: batch
-- @name: Increased Missing Audio Channels score
-- @exportedAt: 2026-03-29T16:10:48.243Z
-- @opIds: 1487, 1488, 1489, 1490

-- --- BEGIN op 1487 ( update quality_profile "Movies 1080p" )
UPDATE quality_profile_custom_formats
SET score = -5
WHERE quality_profile_name = 'Movies 1080p'
  AND custom_format_name = 'Missing Audio Channels'
  AND arr_type = 'radarr'
  AND score = -50;
-- --- END op 1487

-- --- BEGIN op 1488 ( update quality_profile "Movies 1080p HQ" )
UPDATE quality_profile_custom_formats
SET score = -5
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND custom_format_name = 'Missing Audio Channels'
  AND arr_type = 'radarr'
  AND score = -50;
-- --- END op 1488

-- --- BEGIN op 1489 ( update quality_profile "Movies 2160p" )
UPDATE quality_profile_custom_formats
SET score = -5
WHERE quality_profile_name = 'Movies 2160p'
  AND custom_format_name = 'Missing Audio Channels'
  AND arr_type = 'radarr'
  AND score = -50;
-- --- END op 1489

-- --- BEGIN op 1490 ( update quality_profile "Movies 2160p HQ" )
UPDATE quality_profile_custom_formats
SET score = -5
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'Missing Audio Channels'
  AND arr_type = 'radarr'
  AND score = -50;
-- --- END op 1490
