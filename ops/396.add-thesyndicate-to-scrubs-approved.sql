-- @operation: export
-- @entity: batch
-- @name: Add THESYNDiCATE to Scrubs Approved
-- @exportedAt: 2026-08-30T04:57:14.216Z
-- @opIds: 5743

-- --- BEGIN op 5743 ( update regular_expression "Scrubs 2001 Approved Groups" )
update "regular_expressions" set "pattern" = '(?i)\bScrubs\b(?![.\s(]*2026)(?!.*-(BoOk|BMF|DBTV|DEFiANCE|FoV|GAMEOVER|NTROPiC-FTP|PlayWEB|SiNNERS|THESYNDiCATE|TURG|WELP)(\b|$)).*' where "name" = 'Scrubs 2001 Approved Groups' and "pattern" = '(?i)\bScrubs\b(?![.\s(]*2026)(?!.*-(BoOk|BMF|DBTV|DEFiANCE|FoV|GAMEOVER|NTROPiC-FTP|PlayWEB|SiNNERS|TURG|WELP)(\b|$)).*';
-- --- END op 5743
