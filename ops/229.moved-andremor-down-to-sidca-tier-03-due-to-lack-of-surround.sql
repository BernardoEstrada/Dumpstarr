-- @operation: export
-- @entity: batch
-- @name: Moved AndreMor down to SIDCA Tier 03 due to lack of surround sound
-- @exportedAt: 2026-05-19T17:49:02.042Z
-- @opIds: 859, 860

-- --- BEGIN op 859 ( update regular_expression "SIDCA Tier 02" )
update "regular_expressions" set "pattern" = '^(ELiTE|PSA|RARBG)$' where "name" = 'SIDCA Tier 02' and "pattern" = '^(AndreMor|ELiTE|PSA|RARBG)$';
-- --- END op 859

-- --- BEGIN op 860 ( update regular_expression "SIDCA Tier 03" )
update "regular_expressions" set "pattern" = '^(AndreMor|ASTRiD|CBFM|CtrlHD|DEFLATE|EDPH|HANDJOB|HODL|iVy|KONTRAST|MacP|PLUTONiUM|PHOCiS|ViETNAM|YAWNiX)$' where "name" = 'SIDCA Tier 03' and "pattern" = '^(ASTRiD|CBFM|CtrlHD|DEFLATE|EDPH|HANDJOB|HODL|iVy|KONTRAST|MacP|PLUTONiUM|PHOCiS|ViETNAM|YAWNiX)$';
-- --- END op 860
