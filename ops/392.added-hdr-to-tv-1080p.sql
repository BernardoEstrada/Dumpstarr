-- @operation: export
-- @entity: batch
-- @name: Added HDR to TV 1080p
-- @exportedAt: 2026-08-30T00:24:51.208Z
-- @opIds: 5735

-- --- BEGIN op 5735 ( update quality_profile "TV 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV 1080p', 'HDR', 'sonarr', 100
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV 1080p'
    AND custom_format_name = 'HDR'
    AND arr_type = 'sonarr'
);
-- --- END op 5735
