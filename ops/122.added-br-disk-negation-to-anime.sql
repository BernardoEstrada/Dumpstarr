-- @operation: export
-- @entity: batch
-- @name: Added BR-DISK negation to Anime
-- @exportedAt: 2026-03-08T07:23:04.087Z
-- @opIds: 3068, 3069

-- --- BEGIN op 3068 ( update quality_profile "Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Anime 1080p', 'BR-DISK', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Anime 1080p'
    AND custom_format_name = 'BR-DISK'
    AND arr_type = 'radarr'
);
-- --- END op 3068

-- --- BEGIN op 3069 ( update quality_profile "Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Anime 1080p', 'BR-DISK', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Anime 1080p'
    AND custom_format_name = 'BR-DISK'
    AND arr_type = 'sonarr'
);
-- --- END op 3069
