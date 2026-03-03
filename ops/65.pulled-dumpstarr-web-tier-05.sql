-- @operation: export
-- @entity: batch
-- @name: Pulled Dumpstarr WEB Tier 05
-- @exportedAt: 2026-03-03T19:40:35.898Z
-- @opIds: 1698

-- --- BEGIN op 1698 ( update custom_format "WEB Tier 05" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'WEB Tier 05'
	  AND name = 'Dumpstarr WEB Tier 05'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 1698
