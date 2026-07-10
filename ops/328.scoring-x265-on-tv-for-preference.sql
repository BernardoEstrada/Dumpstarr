-- @operation: export
-- @entity: batch
-- @name: Scoring x265 on TV for preference
-- @exportedAt: 2026-07-10T18:03:58.903Z
-- @opIds: 2808, 2809

-- --- BEGIN op 2808 ( update quality_profile "TV 2160p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV 2160p', 'x265', 'sonarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV 2160p'
    AND custom_format_name = 'x265'
    AND arr_type = 'sonarr'
);
-- --- END op 2808

-- --- BEGIN op 2809 ( update quality_profile "TV 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV 1080p', 'x265', 'sonarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV 1080p'
    AND custom_format_name = 'x265'
    AND arr_type = 'sonarr'
);
-- --- END op 2809
