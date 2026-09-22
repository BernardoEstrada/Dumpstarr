-- @operation: export
-- @entity: batch
-- @name: Fixed PBSK LQ scoring on Radarr
-- @exportedAt: 2026-09-21T17:35:22.646Z
-- @opIds: 6568, 6569, 6570

-- --- BEGIN op 6568 ( update custom_format "PBSK" )
UPDATE custom_format_conditions
SET arr_type = 'all'
WHERE custom_format_name = 'PBSK'
  AND name = 'PBS Kids'
  AND type = 'release_title'
  AND arr_type = 'sonarr'
  AND negate = 0
  AND required = 0;
-- --- END op 6568

-- --- BEGIN op 6569 ( update custom_format "PBSK" )
UPDATE custom_format_conditions
SET arr_type = 'sonarr'
WHERE custom_format_name = 'PBSK'
  AND name = 'PBS Kids'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 6569

-- --- BEGIN op 6570 ( update quality_profile "LQ 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'LQ 1080p'
  AND custom_format_name = 'PBSK'
  AND arr_type = 'radarr'
  AND score = 1;
-- --- END op 6570
