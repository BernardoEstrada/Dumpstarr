-- @operation: export
-- @entity: batch
-- @name: Pull TURG from Scrubs Allowed
-- @exportedAt: 2026-08-30T16:08:07.208Z
-- @opIds: 5751

-- --- BEGIN op 5751 ( update regular_expression "Scrubs 2001 Approved Groups" )
update "regular_expressions" set "pattern" = '(?i)\bScrubs\b(?![.\s(]*2026)(?!.*-(BoOk|BMF|CMCTV|DBTV|DEFiANCE|FoV|GAMEOVER|NTROPiC-FTP|PlayWEB|SiNNERS|THESYNDiCATE|WELP)(\b|$)).*' where "name" = 'Scrubs 2001 Approved Groups' and "pattern" = '(?i)\bScrubs\b(?![.\s(]*2026)(?!.*-(BoOk|BMF|CMCTV|DBTV|DEFiANCE|FoV|GAMEOVER|NTROPiC-FTP|PlayWEB|SiNNERS|THESYNDiCATE|TURG|WELP)(\b|$)).*';
-- --- END op 5751
