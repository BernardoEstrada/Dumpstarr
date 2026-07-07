-- @operation: export
-- @entity: batch
-- @name: Pulled season pack format from TV
-- @exportedAt: 2026-07-07T13:45:01.704Z
-- @opIds: 2752, 2753

-- --- BEGIN op 2752 ( update quality_profile "TV 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 1080p'
  AND custom_format_name = 'Season Pack'
  AND arr_type = 'sonarr'
  AND score = 10;
-- --- END op 2752

-- --- BEGIN op 2753 ( update quality_profile "TV 2160p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 2160p'
  AND custom_format_name = 'Season Pack'
  AND arr_type = 'sonarr'
  AND score = 10;
-- --- END op 2753
