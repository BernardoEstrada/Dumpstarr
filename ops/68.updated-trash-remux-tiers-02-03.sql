-- @operation: export
-- @entity: batch
-- @name: Updated TRaSH Remux Tiers 02/03
-- @exportedAt: 2026-03-03T23:19:42.195Z
-- @opIds: 1858, 1859

-- --- BEGIN op 1858 ( update regular_expression "TRaSH Remux Tier 02 - Radarr" )
update "regular_expressions" set "pattern" = '^(ATELiER|NCmt|playBD|SiCFoI|SURFINBIRD|TEPES)$' where "name" = 'TRaSH Remux Tier 02 - Radarr' and "pattern" = '^(NCmt|playBD|SiCFoI|SURFINBIRD|TEPES)$';
-- --- END op 1858

-- --- BEGIN op 1859 ( update regular_expression "TRaSH Remux Tier 03 - Radarr" )
update "regular_expressions" set "pattern" = '^(12GaugeShotgun|decibeL|EPSiLON|HiFi|iFT|KRaLiMaRKo|NTb|PTP|SumVision|TOA|TRiToN)$' where "name" = 'TRaSH Remux Tier 03 - Radarr' and "pattern" = '^(ATELiER|decibeL|EPSiLON|HiFi|iFT|KRaLiMaRKo|NTb|PTP|SumVision|TOA|TRiToN)$';
-- --- END op 1859
