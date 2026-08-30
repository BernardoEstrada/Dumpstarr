-- @operation: export
-- @entity: batch
-- @name: Add PlayWEB to Scrubs Approved
-- @exportedAt: 2026-08-30T04:52:22.893Z
-- @opIds: 5739

-- --- BEGIN op 5739 ( update regular_expression "Scrubs 2001 Approved Groups" )
update "regular_expressions" set "pattern" = '(?i)\bScrubs\b(?![.\s(]*2026)(?!.*-(BoOk|BMF|DBTV|DEFiANCE|FoV|GAMEOVER|NTROPiC-FTP|PlayWEB|SiNNERS|WELP)(\b|$)).*' where "name" = 'Scrubs 2001 Approved Groups' and "pattern" = '(?i)\bScrubs\b(?![.\s(]*2026)(?!.*-(BoOk|BMF|DBTV|DEFiANCE|FoV|GAMEOVER|NTROPiC-FTP|SiNNERS|WELP)(\b|$)).*';
-- --- END op 5739
