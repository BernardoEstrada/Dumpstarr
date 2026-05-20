-- @operation: export
-- @entity: batch
-- @name: Added Bad Name and Multis to LQ
-- @exportedAt: 2026-05-20T15:36:26.420Z
-- @opIds: 862, 863

-- --- BEGIN op 862 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'HONE (Bad Name)', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'HONE (Bad Name)'
    AND arr_type = 'sonarr'
);
-- --- END op 862

-- --- BEGIN op 863 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'Bad Multis', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'Bad Multis'
    AND arr_type = 'sonarr'
);
-- --- END op 863
