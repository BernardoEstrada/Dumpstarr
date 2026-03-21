-- @operation: export
-- @entity: batch
-- @name: Pulled 10bit format
-- @exportedAt: 2026-03-21T00:22:57.708Z
-- @opIds: 1251, 1252, 1253

-- --- BEGIN op 1251 ( update quality_profile "Movies 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p'
  AND custom_format_name = '10bit'
  AND arr_type = 'radarr'
  AND score = -10000;
-- --- END op 1251

-- --- BEGIN op 1252 ( update quality_profile "Movies 2160p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p'
  AND custom_format_name = '10bit'
  AND arr_type = 'radarr'
  AND score = -10000;
-- --- END op 1252

-- --- BEGIN op 1253 ( delete custom_format "10bit" )
delete from "custom_formats" where "name" = '10bit';
-- --- END op 1253
