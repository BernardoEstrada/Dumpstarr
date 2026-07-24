-- @operation: export
-- @entity: batch
-- @name: Removed BR-DISK format from Anime to match TRaSH
-- @exportedAt: 2026-07-24T04:58:06.700Z
-- @opIds: 4355, 4356

-- --- BEGIN op 4355 ( update quality_profile "Anime 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Anime 1080p'
  AND custom_format_name = 'BR-DISK'
  AND arr_type = 'radarr'
  AND score = -10000;
-- --- END op 4355

-- --- BEGIN op 4356 ( update quality_profile "Anime 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Anime 1080p'
  AND custom_format_name = 'BR-DISK'
  AND arr_type = 'sonarr'
  AND score = -10000;
-- --- END op 4356
