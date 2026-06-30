-- @operation: export
-- @entity: batch
-- @name: Even more SIDCA adjustments
-- @exportedAt: 2026-06-30T16:32:48.719Z
-- @opIds: 2273, 2274, 2275, 2276, 2277, 2278, 2279, 2280, 2281

-- --- BEGIN op 2273 ( update custom_format "SIDCA Tier 01" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'SIDCA Tier 01'
	  AND name = 'iVy'
	  AND type = 'release_group'
	  AND arr_type = 'radarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2273

-- --- BEGIN op 2274 ( update custom_format "SIDCA Tier 02" )
UPDATE custom_format_conditions
SET arr_type = 'all'
WHERE custom_format_name = 'SIDCA Tier 02'
  AND name = 'iVy'
  AND type = 'release_group'
  AND arr_type = 'sonarr'
  AND negate = 0
  AND required = 0;
-- --- END op 2274

-- --- BEGIN op 2275 ( update custom_format "SIDCA Tier 03" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'SIDCA Tier 03'
	  AND name = 'PiRaTeS'
	  AND type = 'release_group'
	  AND arr_type = 'radarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2275

-- --- BEGIN op 2276 ( update quality_profile "LQ 1080p" )
UPDATE quality_profile_custom_formats
SET score = 150
WHERE quality_profile_name = 'LQ 1080p'
  AND custom_format_name = 'SIDCA Tier 01'
  AND arr_type = 'radarr'
  AND score = 400;
-- --- END op 2276

-- --- BEGIN op 2277 ( update quality_profile "LQ 1080p" )
UPDATE quality_profile_custom_formats
SET score = 200
WHERE quality_profile_name = 'LQ 1080p'
  AND custom_format_name = 'SIDCA Tier 01'
  AND arr_type = 'sonarr'
  AND score = 400;
-- --- END op 2277

-- --- BEGIN op 2278 ( update quality_profile "LQ 1080p" )
UPDATE quality_profile_custom_formats
SET score = 100
WHERE quality_profile_name = 'LQ 1080p'
  AND custom_format_name = 'SIDCA Tier 02'
  AND arr_type = 'radarr'
  AND score = 300;
-- --- END op 2278

-- --- BEGIN op 2279 ( update quality_profile "LQ 1080p" )
UPDATE quality_profile_custom_formats
SET score = 150
WHERE quality_profile_name = 'LQ 1080p'
  AND custom_format_name = 'SIDCA Tier 02'
  AND arr_type = 'sonarr'
  AND score = 300;
-- --- END op 2279

-- --- BEGIN op 2280 ( update quality_profile "LQ 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'LQ 1080p'
  AND custom_format_name = 'SIDCA Tier 03'
  AND arr_type = 'radarr'
  AND score = 200;
-- --- END op 2280

-- --- BEGIN op 2281 ( update quality_profile "LQ 1080p" )
UPDATE quality_profile_custom_formats
SET score = 100
WHERE quality_profile_name = 'LQ 1080p'
  AND custom_format_name = 'SIDCA Tier 03'
  AND arr_type = 'sonarr'
  AND score = 200;
-- --- END op 2281
