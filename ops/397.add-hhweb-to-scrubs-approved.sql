-- @operation: export
-- @entity: batch
-- @name: Add HHWEB to Scrubs Approved
-- @exportedAt: 2026-08-30T04:59:49.817Z
-- @opIds: 5745

-- --- BEGIN op 5745 ( update regular_expression "Scrubs 2001 Approved Groups" )
update "regular_expressions" set "pattern" = '(?i)\bScrubs\b(?![.\s(]*2026)(?!.*-(BoOk|BMF|DBTV|DEFiANCE|FoV|GAMEOVER|HHWEB|NTROPiC-FTP|PlayWEB|SiNNERS|THESYNDiCATE|TURG|WELP)(\b|$)).*' where "name" = 'Scrubs 2001 Approved Groups' and "pattern" = '(?i)\bScrubs\b(?![.\s(]*2026)(?!.*-(BoOk|BMF|DBTV|DEFiANCE|FoV|GAMEOVER|NTROPiC-FTP|PlayWEB|SiNNERS|THESYNDiCATE|TURG|WELP)(\b|$)).*';
-- --- END op 5745
