-- @operation: export
-- @entity: batch
-- @name: HDR Negation on LQ Radarr
-- @exportedAt: 2026-06-30T17:17:24.685Z
-- @opIds: 2329, 2330

-- --- BEGIN op 2329 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'HDR', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'HDR'
    AND arr_type = 'radarr'
);
-- --- END op 2329

-- --- BEGIN op 2330 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'HDR10+', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'HDR10+'
    AND arr_type = 'radarr'
);
-- --- END op 2330
