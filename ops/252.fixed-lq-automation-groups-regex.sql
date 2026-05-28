-- @operation: export
-- @entity: batch
-- @name: Fixed LQ Automation Groups Regex
-- @exportedAt: 2026-05-28T19:28:51.500Z
-- @opIds: 1483

-- --- BEGIN op 1483 ( update regular_expression "Dumpstarr LQ (Automation) Groups" )
update "regular_expressions" set "pattern" = '^(VARYG)\b' where "name" = 'Dumpstarr LQ (Automation) Groups' and "pattern" = '^(VARYG)$';
-- --- END op 1483
