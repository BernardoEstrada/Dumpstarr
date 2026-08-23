-- @operation: export
-- @entity: batch
-- @name: Move ATELiER to TRaSH HD Bluray Tier 01
-- @exportedAt: 2026-08-23T17:56:29.132Z
-- @opIds: 5672

-- --- BEGIN op 5672 ( update regular_expression "TRaSH HD Bluray Tier 01 (Radarr)" )
update "regular_expressions" set "pattern" = '^(ATELiER|BBQ|BMF|c0kE|Chotab|CRiSC|CtrlHD|D-Z0N3|Dariush|decibeL|DON|EbP|EDPH|Geek|LolHD|NCmt|PTer|TayTO|TDD|TnP|VietHD|ZQ|ZoroSenpai)$' where "name" = 'TRaSH HD Bluray Tier 01 (Radarr)' and "pattern" = '^(BBQ|BMF|c0kE|Chotab|CRiSC|CtrlHD|D-Z0N3|Dariush|decibeL|DON|EbP|EDPH|Geek|LolHD|NCmt|PTer|TayTO|TDD|TnP|VietHD|ZQ|ZoroSenpai)$';
-- --- END op 5672
