-- @operation: export
-- @entity: batch
-- @name: Added BakedFEL & RandomBytes to 2160p Tier 05
-- @exportedAt: 2026-03-02T20:59:28.394Z
-- @opIds: 1138

-- --- BEGIN op 1138 ( update regular_expression "Dictionarry 2160p Tier 05" )
update "regular_expressions" set "pattern" = '^(4KDVS|BakedFEL|b0mbardiers|DEFLATE|DEPTH|j3rico|JustWatch|ORBiT|RandomBytes|SURCODE|WATCHABLE|WiKi)$' where "name" = 'Dictionarry 2160p Tier 05' and "pattern" = '^(4KDVS|b0mbardiers|DEFLATE|DEPTH|j3rico|JustWatch|ORBiT|SURCODE|WATCHABLE|WiKi)$';
-- --- END op 1138
