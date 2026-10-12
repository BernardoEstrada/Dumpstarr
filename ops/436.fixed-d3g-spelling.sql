-- @operation: export
-- @entity: batch
-- @name: Fixed d3g spelling
-- @exportedAt: 2026-10-12T00:47:49.120Z
-- @opIds: 6785, 6786

-- --- BEGIN op 6785 ( update custom_format "SIDCA Tier 02" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'SIDCA Tier 02'
	  AND name = 'D3US'
	  AND type = 'release_group'
	  AND arr_type = 'sonarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 6785

-- --- BEGIN op 6786 ( update custom_format "SIDCA Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SIDCA Tier 02', 'd3g', 'release_group', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('SIDCA Tier 02', 'd3g', 'd3g');
-- --- END op 6786
