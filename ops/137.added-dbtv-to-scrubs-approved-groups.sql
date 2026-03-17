-- @operation: export
-- @entity: batch
-- @name: Added DBTV to Scrubs Approved Groups
-- @exportedAt: 2026-03-17T16:25:02.404Z
-- @opIds: 1146

-- --- BEGIN op 1146 ( update regular_expression "Scrubs 2001 Approved Groups" )
update "regular_expressions" set "pattern" = '\b(BoOk|BMF|DBTV|DEFiANCE|FoV|GAMEOVER|NTROPiC-FTP|SiNNERS)\b' where "name" = 'Scrubs 2001 Approved Groups' and "pattern" = '\b(BoOk|BMF|DEFiANCE|FoV|GAMEOVER|NTROPiC-FTP|SiNNERS)\b';
-- --- END op 1146
