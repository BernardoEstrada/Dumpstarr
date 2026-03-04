-- @operation: export
-- @entity: batch
-- @name: Fixed HDR10+ and DV scores
-- @exportedAt: 2026-03-04T04:28:05.119Z
-- @opIds: 2234, 2235

-- --- BEGIN op 2234 ( update quality_profile "Movies 2160p HQ" )
UPDATE quality_profile_custom_formats
SET score = 1000
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'Dolby Vision'
  AND arr_type = 'radarr'
  AND score = 100;
-- --- END op 2234

-- --- BEGIN op 2235 ( update quality_profile "Movies 2160p HQ" )
UPDATE quality_profile_custom_formats
SET score = 100
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'HDR10+'
  AND arr_type = 'radarr'
  AND score = 50;
-- --- END op 2235
