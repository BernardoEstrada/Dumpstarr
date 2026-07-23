-- @operation: export
-- @entity: batch
-- @name: Lowered BCORE score for preference
-- @exportedAt: 2026-07-23T13:39:21.512Z
-- @opIds: 4232, 4233, 4234

-- --- BEGIN op 4232 ( update quality_profile "Movies 1080p HQ" )
UPDATE quality_profile_custom_formats
SET score = -500
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND custom_format_name = 'BCORE'
  AND arr_type = 'radarr'
  AND score = 25;
-- --- END op 4232

-- --- BEGIN op 4233 ( update quality_profile "Movies 2160p HQ" )
UPDATE quality_profile_custom_formats
SET score = 500
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'BCORE'
  AND arr_type = 'radarr'
  AND score = 25;
-- --- END op 4233

-- --- BEGIN op 4234 ( update quality_profile "Movies 2160p HQ" )
UPDATE quality_profile_custom_formats
SET score = -500
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'BCORE'
  AND arr_type = 'radarr'
  AND score = 500;
-- --- END op 4234
