-- @operation: export
-- @entity: batch
-- @name: Pull RARBG from SIDCA Sonarr
-- @exportedAt: 2026-10-12T00:44:48.302Z
-- @opIds: 6781

-- --- BEGIN op 6781 ( update custom_format "SIDCA Tier 02" )
UPDATE custom_format_conditions
SET arr_type = 'radarr'
WHERE custom_format_name = 'SIDCA Tier 02'
  AND name = 'RARBG'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 6781
