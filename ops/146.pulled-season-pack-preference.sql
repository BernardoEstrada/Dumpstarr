-- @operation: export
-- @entity: batch
-- @name: Pulled season pack preference
-- @exportedAt: 2026-03-20T12:22:04.591Z
-- @opIds: 1212, 1213

-- --- BEGIN op 1212 ( update quality_profile "TV 2160p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 2160p'
  AND custom_format_name = 'Season Pack'
  AND arr_type = 'sonarr'
  AND score = 10;
-- --- END op 1212

-- --- BEGIN op 1213 ( update quality_profile "TV 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 1080p'
  AND custom_format_name = 'Season Pack'
  AND arr_type = 'sonarr'
  AND score = 10;
-- --- END op 1213
