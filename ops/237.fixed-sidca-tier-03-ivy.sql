-- @operation: export
-- @entity: batch
-- @name: Fixed SIDCA Tier 03/iVy
-- @exportedAt: 2026-05-22T15:02:35.606Z
-- @opIds: 961

-- --- BEGIN op 961 ( update regular_expression "SIDCA Tier 03" )
update "regular_expressions" set "pattern" = '^(AndreMor|ASTRiD|CBFM|CtrlHD|DEFLATE|EDPH|HANDJOB|HODL|KONTRAST|MacP|PLUTONiUM|PHOCiS|RARBG|RARGB|ViETNAM|YAWNiX)$' where "name" = 'SIDCA Tier 03' and "pattern" = '^(AndreMor|ASTRiD|CBFM|CtrlHD|DEFLATE|EDPH|HANDJOB|HODL|iVy|KONTRAST|MacP|PLUTONiUM|PHOCiS|RARBG|RARGB|ViETNAM|YAWNiX)$';
-- --- END op 961
