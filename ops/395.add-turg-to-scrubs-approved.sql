-- @operation: export
-- @entity: batch
-- @name: Add TURG to Scrubs Approved
-- @exportedAt: 2026-08-30T04:55:06.179Z
-- @opIds: 5741

-- --- BEGIN op 5741 ( update regular_expression "Scrubs 2001 Approved Groups" )
update "regular_expressions" set "pattern" = '(?i)\bScrubs\b(?![.\s(]*2026)(?!.*-(BoOk|BMF|DBTV|DEFiANCE|FoV|GAMEOVER|NTROPiC-FTP|PlayWEB|SiNNERS|TURG|WELP)(\b|$)).*' where "name" = 'Scrubs 2001 Approved Groups' and "pattern" = '(?i)\bScrubs\b(?![.\s(]*2026)(?!.*-(BoOk|BMF|DBTV|DEFiANCE|FoV|GAMEOVER|NTROPiC-FTP|PlayWEB|SiNNERS|WELP)(\b|$)).*';
-- --- END op 5741
