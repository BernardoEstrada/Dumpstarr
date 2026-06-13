-- @operation: export
-- @entity: batch
-- @name: Added T3KASHi to Automation LQ
-- @exportedAt: 2026-06-13T20:55:14.780Z
-- @opIds: 1672

-- --- BEGIN op 1672 ( update regular_expression "Dumpstarr LQ (Automation) Groups" )
update "regular_expressions" set "pattern" = '^(T3KASHi|Tsundere-Raws|VARYG)\b' where "name" = 'Dumpstarr LQ (Automation) Groups' and "pattern" = '^(Tsundere-Raws|VARYG)\b';
-- --- END op 1672
