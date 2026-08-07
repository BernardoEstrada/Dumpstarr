-- @operation: export
-- @entity: batch
-- @name: Pull WADU from LQ
-- @exportedAt: 2026-08-07T15:41:30.787Z
-- @opIds: 5287

-- --- BEGIN op 5287 ( update custom_format "Dumpstarr LQ Groups" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Dumpstarr LQ Groups'
	  AND name = 'WADU'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 5287
