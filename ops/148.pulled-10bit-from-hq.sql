-- @operation: export
-- @entity: batch
-- @name: Pulled 10bit from HQ
-- @exportedAt: 2026-03-20T23:58:09.078Z
-- @opIds: 1245, 1246

-- --- BEGIN op 1245 ( update quality_profile "Movies 2160p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = '10bit'
  AND arr_type = 'radarr'
  AND score = -10000;
-- --- END op 1245

-- --- BEGIN op 1246 ( update quality_profile "Movies 1080p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND custom_format_name = '10bit'
  AND arr_type = 'radarr'
  AND score = -10000;
-- --- END op 1246
