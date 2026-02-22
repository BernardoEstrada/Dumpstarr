-- @operation: export
-- @entity: batch
-- @name: Removed Radarr on ASL TV Profiles
-- @exportedAt: 2026-02-22T05:33:46.088Z
-- @opIds: 142, 143, 144, 145, 146, 147, 148, 149

-- --- BEGIN op 142 ( update quality_profile "TV 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV 1080p', 'ASL', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV 1080p'
    AND custom_format_name = 'ASL'
    AND arr_type = 'radarr'
);
-- --- END op 142

-- --- BEGIN op 143 ( update quality_profile "TV 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV 1080p', 'ASL', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV 1080p'
    AND custom_format_name = 'ASL'
    AND arr_type = 'sonarr'
);
-- --- END op 143

-- --- BEGIN op 144 ( update quality_profile "TV 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 1080p'
  AND custom_format_name = 'ASL'
  AND arr_type = 'all'
  AND score = -10000;
-- --- END op 144

-- --- BEGIN op 145 ( update quality_profile "TV 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 1080p'
  AND custom_format_name = 'ASL'
  AND arr_type = 'radarr'
  AND score = -10000;
-- --- END op 145

-- --- BEGIN op 146 ( update quality_profile "TV 2160p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV 2160p', 'ASL', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV 2160p'
    AND custom_format_name = 'ASL'
    AND arr_type = 'radarr'
);
-- --- END op 146

-- --- BEGIN op 147 ( update quality_profile "TV 2160p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV 2160p', 'ASL', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV 2160p'
    AND custom_format_name = 'ASL'
    AND arr_type = 'sonarr'
);
-- --- END op 147

-- --- BEGIN op 148 ( update quality_profile "TV 2160p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 2160p'
  AND custom_format_name = 'ASL'
  AND arr_type = 'all'
  AND score = -10000;
-- --- END op 148

-- --- BEGIN op 149 ( update quality_profile "TV 2160p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 2160p'
  AND custom_format_name = 'ASL'
  AND arr_type = 'radarr'
  AND score = -10000;
-- --- END op 149
