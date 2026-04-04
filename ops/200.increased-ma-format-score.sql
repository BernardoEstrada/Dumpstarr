-- @operation: export
-- @entity: batch
-- @name: Increased MA format score
-- @exportedAt: 2026-04-04T04:39:37.938Z
-- @opIds: 2602, 2603, 2604, 2605

-- --- BEGIN op 2602 ( update quality_profile "Movies 2160p HQ" )
UPDATE quality_profile_custom_formats
SET score = 75
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'MA'
  AND arr_type = 'radarr'
  AND score = 50;
-- --- END op 2602

-- --- BEGIN op 2603 ( update quality_profile "Movies 1080p HQ" )
UPDATE quality_profile_custom_formats
SET score = 75
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND custom_format_name = 'MA'
  AND arr_type = 'radarr'
  AND score = 50;
-- --- END op 2603

-- --- BEGIN op 2604 ( update quality_profile "Movies 1080p" )
UPDATE quality_profile_custom_formats
SET score = 75
WHERE quality_profile_name = 'Movies 1080p'
  AND custom_format_name = 'MA'
  AND arr_type = 'radarr'
  AND score = 50;
-- --- END op 2604

-- --- BEGIN op 2605 ( update quality_profile "Movies 2160p" )
UPDATE quality_profile_custom_formats
SET score = 75
WHERE quality_profile_name = 'Movies 2160p'
  AND custom_format_name = 'MA'
  AND arr_type = 'radarr'
  AND score = 50;
-- --- END op 2605
