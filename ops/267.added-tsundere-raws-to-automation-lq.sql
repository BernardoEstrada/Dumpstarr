-- @operation: export
-- @entity: batch
-- @name: Added Tsundere-Raws to Automation LQ
-- @exportedAt: 2026-06-13T20:52:46.693Z
-- @opIds: 1670

-- --- BEGIN op 1670 ( update regular_expression "Dumpstarr LQ (Automation) Groups" )
update "regular_expressions" set "pattern" = '^(Tsundere-Raws|VARYG)\b' where "name" = 'Dumpstarr LQ (Automation) Groups' and "pattern" = '^(VARYG)\b';
-- --- END op 1670
