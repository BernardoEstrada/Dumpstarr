-- @operation: export
-- @entity: batch
-- @name: Pull HHWEB from Scrubs Approved
-- @exportedAt: 2026-08-30T14:49:57.847Z
-- @opIds: 5749

-- --- BEGIN op 5749 ( update regular_expression "Scrubs 2001 Approved Groups" )
update "regular_expressions" set "pattern" = '(?i)\bScrubs\b(?![.\s(]*2026)(?!.*-(BoOk|BMF|CMCTV|DBTV|DEFiANCE|FoV|GAMEOVER|NTROPiC-FTP|PlayWEB|SiNNERS|THESYNDiCATE|TURG|WELP)(\b|$)).*' where "name" = 'Scrubs 2001 Approved Groups' and "pattern" = '(?i)\bScrubs\b(?![.\s(]*2026)(?!.*-(BoOk|BMF|CMCTV|DBTV|DEFiANCE|FoV|GAMEOVER|HHWEB|NTROPiC-FTP|PlayWEB|SiNNERS|THESYNDiCATE|TURG|WELP)(\b|$)).*';
-- --- END op 5749
