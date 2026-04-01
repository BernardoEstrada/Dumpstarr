-- @operation: export
-- @entity: batch
-- @name: Pulled SDR (no WEB-DL) from HQ
-- @exportedAt: 2026-04-01T14:25:30.075Z
-- @opIds: 2079, 2080

-- --- BEGIN op 2079 ( update quality_profile "Movies 2160p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'SDR (no WEBDL)'
  AND arr_type = 'radarr'
  AND score = -10000;
-- --- END op 2079

-- --- BEGIN op 2080 ( update quality_profile "Movies 1080p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND custom_format_name = 'SDR (no WEBDL)'
  AND arr_type = 'radarr'
  AND score = -10000;
-- --- END op 2080
