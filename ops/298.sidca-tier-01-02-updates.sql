-- @operation: export
-- @entity: batch
-- @name: SIDCA Tier 01/02 Updates
-- @exportedAt: 2026-06-29T15:29:30.551Z
-- @opIds: 1974, 1975, 1976

-- --- BEGIN op 1974 ( update regular_expression "SIDCA Tier 01" )
update "regular_expressions" set "pattern" = '^(MeGusta|Pahe)$' where "name" = 'SIDCA Tier 01' and "pattern" = '^(MeGusta|YIFY|YTS)$';
-- --- END op 1974

-- --- BEGIN op 1975 ( update regular_expression "SIDCA Tier 02" )
update "regular_expressions" set "pattern" = '^(ELiTE|iVy|Pahe|YIFY|YTS)$' where "name" = 'SIDCA Tier 02' and "pattern" = '^(ELiTE|iVy|PSA)$';
-- --- END op 1975

-- --- BEGIN op 1976 ( update regular_expression "SIDCA Tier 01" )
update "regular_expressions" set "pattern" = '^(MeGusta|PSA)$' where "name" = 'SIDCA Tier 01' and "pattern" = '^(MeGusta|Pahe)$';
-- --- END op 1976
