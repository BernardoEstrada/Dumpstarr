-- @operation: export
-- @entity: batch
-- @name: Removed WEB Boost format
-- @exportedAt: 2026-03-04T02:42:00.049Z
-- @opIds: 1980, 1981

-- --- BEGIN op 1980 ( update custom_format "WEB Boost" )
delete from "custom_format_conditions" where "custom_format_name" = 'WEB Boost' and "name" = 'Dumpstarr WEB Boost' and "type" = 'release_group' and "arr_type" = 'all' and "negate" = 0 and "required" = 1;
-- --- END op 1980

-- --- BEGIN op 1981 ( delete regular_expression "Dumpstarr WEB Boost" )
delete from "regular_expressions" where "name" = 'Dumpstarr WEB Boost' and "pattern" = '^(Kitsune)$';
-- --- END op 1981
