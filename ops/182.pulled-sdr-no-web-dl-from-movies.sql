-- @operation: export
-- @entity: batch
-- @name: Pulled SDR (no WEB-DL) from Movies
-- @exportedAt: 2026-04-01T18:49:41.992Z
-- @opIds: 2135, 2136

-- --- BEGIN op 2135 ( update quality_profile "Movies 2160p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p'
  AND custom_format_name = 'SDR (no WEBDL)'
  AND arr_type = 'radarr'
  AND score = -10000;
-- --- END op 2135

-- --- BEGIN op 2136 ( update quality_profile "Movies 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p'
  AND custom_format_name = 'SDR (no WEBDL)'
  AND arr_type = 'radarr'
  AND score = -10000;
-- --- END op 2136
