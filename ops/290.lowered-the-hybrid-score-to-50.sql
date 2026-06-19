-- @operation: export
-- @entity: batch
-- @name: Lowered the Hybrid score to 50
-- @exportedAt: 2026-06-19T17:19:50.633Z
-- @opIds: 1908, 1909

-- --- BEGIN op 1908 ( update quality_profile "Movies 2160p HQ" )
UPDATE quality_profile_custom_formats
SET score = 50
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'Hybrid'
  AND arr_type = 'radarr'
  AND score = 100;
-- --- END op 1908

-- --- BEGIN op 1909 ( update quality_profile "Movies 1080p HQ" )
UPDATE quality_profile_custom_formats
SET score = 50
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND custom_format_name = 'Hybrid'
  AND arr_type = 'radarr'
  AND score = 100;
-- --- END op 1909
