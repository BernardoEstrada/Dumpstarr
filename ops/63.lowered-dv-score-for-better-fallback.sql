-- @operation: export
-- @entity: batch
-- @name: Lowered DV score for better fallback
-- @exportedAt: 2026-03-03T19:24:01.713Z
-- @opIds: 1665, 1667

-- --- BEGIN op 1665 ( update quality_profile "Movies 2160p HQ" )
UPDATE quality_profile_custom_formats
SET score = 250
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'Dolby Vision'
  AND arr_type = 'radarr'
  AND score = 500;
-- --- END op 1665

-- --- BEGIN op 1667 ( update quality_profile "Movies 2160p HQ" )
UPDATE quality_profile_custom_formats
SET score = 100
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'Dolby Vision'
  AND arr_type = 'radarr'
  AND score = 250;
-- --- END op 1667
