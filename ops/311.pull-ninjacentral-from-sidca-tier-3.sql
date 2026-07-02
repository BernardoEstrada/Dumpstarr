-- @operation: export
-- @entity: batch
-- @name: Pull NINJACENTRAL from SIDCA Tier 3
-- @exportedAt: 2026-07-02T05:17:56.531Z
-- @opIds: 2645

-- --- BEGIN op 2645 ( update custom_format "SIDCA Tier 03" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'SIDCA Tier 03'
	  AND name = 'NINJACENTRAL'
	  AND type = 'release_group'
	  AND arr_type = 'sonarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2645
