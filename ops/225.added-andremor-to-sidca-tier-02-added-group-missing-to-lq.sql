-- @operation: export
-- @entity: batch
-- @name: Added AndreMor to SIDCA Tier 02|Added Group Missing to LQ
-- @exportedAt: 2026-05-18T15:12:04.904Z
-- @opIds: 836, 837, 838

-- --- BEGIN op 836 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'Group Missing', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'Group Missing'
    AND arr_type = 'sonarr'
);
-- --- END op 836

-- --- BEGIN op 837 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'Group Missing', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'Group Missing'
    AND arr_type = 'radarr'
);
-- --- END op 837

-- --- BEGIN op 838 ( update regular_expression "SIDCA Tier 02" )
update "regular_expressions" set "pattern" = '^(AndreMor|ELiTE|PSA|RARBG)$' where "name" = 'SIDCA Tier 02' and "pattern" = '^(ELiTE|PSA|RARBG)$';
-- --- END op 838
