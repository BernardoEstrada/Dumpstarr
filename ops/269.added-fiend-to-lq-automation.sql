-- @operation: export
-- @entity: batch
-- @name: Added FIEND to LQ Automation
-- @exportedAt: 2026-06-14T03:58:00.286Z
-- @opIds: 1674

-- --- BEGIN op 1674 ( update regular_expression "Dumpstarr LQ (Automation) Groups" )
update "regular_expressions" set "pattern" = '^(FIEND|T3KASHi|Tsundere-Raws|VARYG)\b' where "name" = 'Dumpstarr LQ (Automation) Groups' and "pattern" = '^(T3KASHi|Tsundere-Raws|VARYG)\b';
-- --- END op 1674
