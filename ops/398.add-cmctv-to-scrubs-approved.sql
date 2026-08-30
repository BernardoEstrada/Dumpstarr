-- @operation: export
-- @entity: batch
-- @name: Add CMCTV to Scrubs Approved
-- @exportedAt: 2026-08-30T05:30:25.003Z
-- @opIds: 5747

-- --- BEGIN op 5747 ( update regular_expression "Scrubs 2001 Approved Groups" )
update "regular_expressions" set "pattern" = '(?i)\bScrubs\b(?![.\s(]*2026)(?!.*-(BoOk|BMF|CMCTV|DBTV|DEFiANCE|FoV|GAMEOVER|HHWEB|NTROPiC-FTP|PlayWEB|SiNNERS|THESYNDiCATE|TURG|WELP)(\b|$)).*' where "name" = 'Scrubs 2001 Approved Groups' and "pattern" = '(?i)\bScrubs\b(?![.\s(]*2026)(?!.*-(BoOk|BMF|DBTV|DEFiANCE|FoV|GAMEOVER|HHWEB|NTROPiC-FTP|PlayWEB|SiNNERS|THESYNDiCATE|TURG|WELP)(\b|$)).*';
-- --- END op 5747
