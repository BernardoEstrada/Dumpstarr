-- @operation: export
-- @entity: batch
-- @name: Removed Dumpstarr WEB Tier 02 Format
-- @exportedAt: 2026-03-03T16:33:45.355Z
-- @opIds: 1455, 1456

-- --- BEGIN op 1455 ( update custom_format "WEB Tier 02" )
delete from "custom_format_conditions" where "custom_format_name" = 'WEB Tier 02' and "name" = 'Dumpstarr WEB Tier 02' and "type" = 'release_group' and "arr_type" = 'all' and "negate" = 0 and "required" = 0;
-- --- END op 1455

-- --- BEGIN op 1456 ( delete regular_expression "Dumpstarr WEB Tier 02" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dumpstarr WEB Tier 02' AND tag_name = 'Release Group Tier';

delete from "regular_expressions" where "name" = 'Dumpstarr WEB Tier 02' and "pattern" = '^(DiscoD|Yogi)$';
-- --- END op 1456
