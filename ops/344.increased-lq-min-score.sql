-- @operation: export
-- @entity: batch
-- @name: Increased LQ min score
-- @exportedAt: 2026-07-15T15:37:44.877Z
-- @opIds: 3784, 3785, 3786, 3787

-- --- BEGIN op 3784 ( update quality_profile "LQ 1080p" )
update "quality_profiles" set "minimum_custom_format_score" = 25 where "name" = 'LQ 1080p' and "minimum_custom_format_score" = 1;
-- --- END op 3784

-- --- BEGIN op 3785 ( update custom_format "SIDCA Tier 03" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'SIDCA Tier 03'
	  AND name = 'x265'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 1;
-- --- END op 3785

-- --- BEGIN op 3786 ( update custom_format "SIDCA Tier 02" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'SIDCA Tier 02'
	  AND name = 'x265'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 1;
-- --- END op 3786

-- --- BEGIN op 3787 ( update custom_format "SIDCA Tier 01" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'SIDCA Tier 01'
	  AND name = 'x265'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 1;
-- --- END op 3787
