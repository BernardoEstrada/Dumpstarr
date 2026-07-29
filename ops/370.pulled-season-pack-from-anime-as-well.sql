-- @operation: export
-- @entity: batch
-- @name: Pulled Season Pack from Anime as well
-- @exportedAt: 2026-07-29T14:26:05.472Z
-- @opIds: 4362

-- --- BEGIN op 4362 ( update quality_profile "Anime 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Anime 1080p'
  AND custom_format_name = 'Season Pack'
  AND arr_type = 'sonarr'
  AND score = 10;
-- --- END op 4362
