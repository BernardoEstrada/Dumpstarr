-- @operation: export
-- @entity: batch
-- @name: Swapped x265 with x265 (No HDR/DV) format on TV
-- @exportedAt: 2026-06-18T16:31:19.385Z
-- @opIds: 1880, 1881, 1882, 1883

-- --- BEGIN op 1880 ( update quality_profile "TV 2160p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 2160p'
  AND custom_format_name = 'x265 (HD)'
  AND arr_type = 'sonarr'
  AND score = -10000;
-- --- END op 1880

-- --- BEGIN op 1881 ( update quality_profile "TV 2160p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV 2160p', 'x265 (no HDR DV)', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV 2160p'
    AND custom_format_name = 'x265 (no HDR DV)'
    AND arr_type = 'sonarr'
);
-- --- END op 1881

-- --- BEGIN op 1882 ( update quality_profile "TV 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 1080p'
  AND custom_format_name = 'x265 (HD)'
  AND arr_type = 'sonarr'
  AND score = -10000;
-- --- END op 1882

-- --- BEGIN op 1883 ( update quality_profile "TV 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV 1080p', 'x265 (no HDR DV)', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV 1080p'
    AND custom_format_name = 'x265 (no HDR DV)'
    AND arr_type = 'sonarr'
);
-- --- END op 1883
