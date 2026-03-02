-- @operation: export
-- @entity: batch
-- @name: Cleaned up Movie profiles with Sonarr scores
-- @exportedAt: 2026-03-02T22:13:56.986Z
-- @opIds: 1140, 1141, 1142, 1143, 1144, 1145, 1146, 1147, 1148, 1149, 1150, 1151, 1152, 1153, 1154, 1155

-- --- BEGIN op 1140 ( update quality_profile "Movies 2160p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p HQ', 'ASL', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND custom_format_name = 'ASL'
    AND arr_type = 'radarr'
);
-- --- END op 1140

-- --- BEGIN op 1141 ( update quality_profile "Movies 2160p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p HQ', 'ASL', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND custom_format_name = 'ASL'
    AND arr_type = 'sonarr'
);
-- --- END op 1141

-- --- BEGIN op 1142 ( update quality_profile "Movies 2160p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'ASL'
  AND arr_type = 'all'
  AND score = -10000;
-- --- END op 1142

-- --- BEGIN op 1143 ( update quality_profile "Movies 2160p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'ASL'
  AND arr_type = 'sonarr'
  AND score = -10000;
-- --- END op 1143

-- --- BEGIN op 1144 ( update quality_profile "Movies 2160p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p', 'ASL', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p'
    AND custom_format_name = 'ASL'
    AND arr_type = 'radarr'
);
-- --- END op 1144

-- --- BEGIN op 1145 ( update quality_profile "Movies 2160p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p', 'ASL', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p'
    AND custom_format_name = 'ASL'
    AND arr_type = 'sonarr'
);
-- --- END op 1145

-- --- BEGIN op 1146 ( update quality_profile "Movies 2160p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p'
  AND custom_format_name = 'ASL'
  AND arr_type = 'all'
  AND score = -10000;
-- --- END op 1146

-- --- BEGIN op 1147 ( update quality_profile "Movies 2160p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p'
  AND custom_format_name = 'ASL'
  AND arr_type = 'sonarr'
  AND score = -10000;
-- --- END op 1147

-- --- BEGIN op 1148 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'ASL', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'ASL'
    AND arr_type = 'radarr'
);
-- --- END op 1148

-- --- BEGIN op 1149 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'ASL', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'ASL'
    AND arr_type = 'sonarr'
);
-- --- END op 1149

-- --- BEGIN op 1150 ( update quality_profile "Movies 1080p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND custom_format_name = 'ASL'
  AND arr_type = 'all'
  AND score = -10000;
-- --- END op 1150

-- --- BEGIN op 1151 ( update quality_profile "Movies 1080p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND custom_format_name = 'ASL'
  AND arr_type = 'sonarr'
  AND score = -10000;
-- --- END op 1151

-- --- BEGIN op 1152 ( update quality_profile "Movies 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p', 'ASL', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p'
    AND custom_format_name = 'ASL'
    AND arr_type = 'radarr'
);
-- --- END op 1152

-- --- BEGIN op 1153 ( update quality_profile "Movies 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p', 'ASL', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p'
    AND custom_format_name = 'ASL'
    AND arr_type = 'sonarr'
);
-- --- END op 1153

-- --- BEGIN op 1154 ( update quality_profile "Movies 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p'
  AND custom_format_name = 'ASL'
  AND arr_type = 'all'
  AND score = -10000;
-- --- END op 1154

-- --- BEGIN op 1155 ( update quality_profile "Movies 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p'
  AND custom_format_name = 'ASL'
  AND arr_type = 'sonarr'
  AND score = -10000;
-- --- END op 1155
