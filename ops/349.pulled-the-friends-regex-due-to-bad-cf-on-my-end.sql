-- @operation: export
-- @entity: batch
-- @name: Pulled the Friends Regex due to bad CF on my end
-- @exportedAt: 2026-07-15T20:05:10.331Z
-- @opIds: 3826, 3829, 3830, 3831, 3832

-- --- BEGIN op 3826 ( update regular_expression "Friends (LQ Automation)" )
update "regular_expressions" set "pattern" = '(?i)^friends.*-(Kitsune)\b' where "name" = 'Friends (LQ Automation)' and "pattern" = '(?i)^friends[ ._-]+\bS\d{2}E\d{2}\b.*-(Kitsune)\b';
-- --- END op 3826

-- --- BEGIN op 3829 ( update custom_format "Bad Source" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Bad Source'
	  AND name = 'Friends'
	  AND type = 'release_title'
	  AND arr_type = 'sonarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 3829

-- --- BEGIN op 3830 ( update custom_format "Dumpstarr LQ Title (Automation)" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Dumpstarr LQ Title (Automation)'
	  AND name = 'Friends'
	  AND type = 'release_title'
	  AND arr_type = 'sonarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 3830

-- --- BEGIN op 3831 ( delete regular_expression "Friends (LQ Automation)" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Friends (LQ Automation)' AND tag_name = 'Custom';

delete from "regular_expressions" where "name" = 'Friends (LQ Automation)';
-- --- END op 3831

-- --- BEGIN op 3832 ( delete regular_expression "Friends Banned Groups" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Friends Banned Groups' AND tag_name = 'Custom';

delete from "regular_expressions" where "name" = 'Friends Banned Groups';
-- --- END op 3832
