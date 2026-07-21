-- @operation: export
-- @entity: batch
-- @name: More HQ Scoring Updates
-- @exportedAt: 2026-07-21T16:38:03.969Z
-- @opIds: 4100, 4101, 4102, 4103, 4104, 4105, 4106, 4107, 4108, 4109, 4110, 4111, 4112, 4113, 4114, 4115

-- --- BEGIN op 4100 ( update quality_profile "Movies 2160p HQ" )
UPDATE quality_profile_custom_formats
SET score = 50
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'Atmos'
  AND arr_type = 'radarr'
  AND score = 25;
-- --- END op 4100

-- --- BEGIN op 4101 ( update quality_profile "Movies 2160p HQ" )
UPDATE quality_profile_custom_formats
SET score = 10
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'Dolby Digital'
  AND arr_type = 'radarr'
  AND score = 5;
-- --- END op 4101

-- --- BEGIN op 4102 ( update quality_profile "Movies 2160p HQ" )
UPDATE quality_profile_custom_formats
SET score = 25
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'Dolby Digital +'
  AND arr_type = 'radarr'
  AND score = 10;
-- --- END op 4102

-- --- BEGIN op 4103 ( update quality_profile "Movies 2160p HQ" )
UPDATE quality_profile_custom_formats
SET score = 50
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'DTS-HD HRA'
  AND arr_type = 'radarr'
  AND score = 25;
-- --- END op 4103

-- --- BEGIN op 4104 ( update quality_profile "Movies 2160p HQ" )
UPDATE quality_profile_custom_formats
SET score = 50
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'DTS-HD MA'
  AND arr_type = 'radarr'
  AND score = 25;
-- --- END op 4104

-- --- BEGIN op 4105 ( update quality_profile "Movies 2160p HQ" )
UPDATE quality_profile_custom_formats
SET score = 100
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'DTS-X'
  AND arr_type = 'radarr'
  AND score = 50;
-- --- END op 4105

-- --- BEGIN op 4106 ( update quality_profile "Movies 2160p HQ" )
UPDATE quality_profile_custom_formats
SET score = 100
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'Special Edition'
  AND arr_type = 'radarr'
  AND score = 125;
-- --- END op 4106

-- --- BEGIN op 4107 ( update quality_profile "Movies 2160p HQ" )
UPDATE quality_profile_custom_formats
SET score = 100
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'TrueHD'
  AND arr_type = 'radarr'
  AND score = 50;
-- --- END op 4107

-- --- BEGIN op 4108 ( update quality_profile "Movies 1080p HQ" )
UPDATE quality_profile_custom_formats
SET score = 50
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND custom_format_name = 'Atmos'
  AND arr_type = 'radarr'
  AND score = 25;
-- --- END op 4108

-- --- BEGIN op 4109 ( update quality_profile "Movies 1080p HQ" )
UPDATE quality_profile_custom_formats
SET score = 10
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND custom_format_name = 'Dolby Digital'
  AND arr_type = 'radarr'
  AND score = 5;
-- --- END op 4109

-- --- BEGIN op 4110 ( update quality_profile "Movies 1080p HQ" )
UPDATE quality_profile_custom_formats
SET score = 25
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND custom_format_name = 'Dolby Digital +'
  AND arr_type = 'radarr'
  AND score = 10;
-- --- END op 4110

-- --- BEGIN op 4111 ( update quality_profile "Movies 1080p HQ" )
UPDATE quality_profile_custom_formats
SET score = 50
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND custom_format_name = 'DTS-HD HRA'
  AND arr_type = 'radarr'
  AND score = 25;
-- --- END op 4111

-- --- BEGIN op 4112 ( update quality_profile "Movies 1080p HQ" )
UPDATE quality_profile_custom_formats
SET score = 50
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND custom_format_name = 'DTS-HD MA'
  AND arr_type = 'radarr'
  AND score = 25;
-- --- END op 4112

-- --- BEGIN op 4113 ( update quality_profile "Movies 1080p HQ" )
UPDATE quality_profile_custom_formats
SET score = 100
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND custom_format_name = 'DTS-X'
  AND arr_type = 'radarr'
  AND score = 50;
-- --- END op 4113

-- --- BEGIN op 4114 ( update quality_profile "Movies 1080p HQ" )
UPDATE quality_profile_custom_formats
SET score = 100
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND custom_format_name = 'TrueHD'
  AND arr_type = 'radarr'
  AND score = 50;
-- --- END op 4114

-- --- BEGIN op 4115 ( update quality_profile "Movies 1080p HQ" )
UPDATE quality_profile_custom_formats
SET score = 100
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND custom_format_name = 'Special Edition'
  AND arr_type = 'radarr'
  AND score = 125;
-- --- END op 4115
