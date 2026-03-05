-- @operation: export
-- @entity: batch
-- @name: Pull Yogi from HONE and sub in Weasley
-- @exportedAt: 2026-03-05T23:14:43.965Z
-- @opIds: 2485, 2486, 2487, 2488, 2489

-- --- BEGIN op 2485 ( update regular_expression "HONE" )
update "regular_expressions" set "pattern" = '^(HONE|DiscoD|DarQ|Weasley)$' where "name" = 'HONE' and "pattern" = '^(HONE|DiscoD|DarQ|Yogi|Weasley)$';
-- --- END op 2485

-- --- BEGIN op 2486 ( update regular_expression "Dumpstarr 2160p Tier 03" )
update "regular_expressions" set "pattern" = '^(DarQ|DiscoD|HONE)$' where "name" = 'Dumpstarr 2160p Tier 03' and "pattern" = '^(DarQ|DiscoD|HONE|Yogi)$';
-- --- END op 2486

-- --- BEGIN op 2487 ( update regular_expression "Dumpstarr 1080p Tier 03" )
update "regular_expressions" set "pattern" = '^(DarQ|DiscoD|HONE)$' where "name" = 'Dumpstarr 1080p Tier 03' and "pattern" = '^(DarQ|DiscoD|HONE|Yogi)$';
-- --- END op 2487

-- --- BEGIN op 2488 ( update regular_expression "Dumpstarr 1080p Tier 03" )
update "regular_expressions" set "pattern" = '^(DarQ|DiscoD|HONE|Weasley)$' where "name" = 'Dumpstarr 1080p Tier 03' and "pattern" = '^(DarQ|DiscoD|HONE)$';
-- --- END op 2488

-- --- BEGIN op 2489 ( update regular_expression "Dumpstarr 2160p Tier 03" )
update "regular_expressions" set "pattern" = '^(DarQ|DiscoD|HONE|Weasley)$' where "name" = 'Dumpstarr 2160p Tier 03' and "pattern" = '^(DarQ|DiscoD|HONE)$';
-- --- END op 2489
