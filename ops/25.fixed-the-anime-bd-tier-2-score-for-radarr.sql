-- @operation: export
-- @entity: batch
-- @name: Fixed the Anime BD Tier 2 score for Radarr
-- @exportedAt: 2026-03-01T20:01:12.226Z
-- @opIds: 504

-- --- BEGIN op 504 ( update quality_profile "Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 800
WHERE quality_profile_name = 'Anime 1080p'
  AND custom_format_name = 'Anime BD Tier 2'
  AND arr_type = 'radarr'
  AND score = 0;
-- --- END op 504
