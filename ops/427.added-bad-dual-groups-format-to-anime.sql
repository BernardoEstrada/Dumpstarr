-- @operation: export
-- @entity: batch
-- @name: Added Bad Dual Groups format to Anime
-- @exportedAt: 2026-10-05T16:53:22.131Z
-- @opIds: 6697

-- --- BEGIN op 6697 ( update quality_profile "Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Anime 1080p', 'Bad Dual Groups', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Anime 1080p'
    AND custom_format_name = 'Bad Dual Groups'
    AND arr_type = 'sonarr'
);
-- --- END op 6697
