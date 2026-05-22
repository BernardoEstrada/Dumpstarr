-- @operation: export
-- @entity: batch
-- @name: SIDCA Tier Updates
-- @exportedAt: 2026-05-22T14:46:05.745Z
-- @opIds: 956, 957, 958, 959

-- --- BEGIN op 956 ( update regular_expression "SIDCA Tier 02" )
update "regular_expressions" set "pattern" = '^(ELiTE|iVy|PSA|RARBG)$' where "name" = 'SIDCA Tier 02' and "pattern" = '^(ELiTE|PSA|RARBG)$';
-- --- END op 956

-- --- BEGIN op 957 ( update regular_expression "SIDCA Tier 02" )
update "regular_expressions" set "pattern" = '^(ELiTE|iVy|RARBG)$' where "name" = 'SIDCA Tier 02' and "pattern" = '^(ELiTE|iVy|PSA|RARBG)$';
-- --- END op 957

-- --- BEGIN op 958 ( update regular_expression "SIDCA Tier 02" )
update "regular_expressions" set "pattern" = '^(ELiTE|iVy|PSA)$' where "name" = 'SIDCA Tier 02' and "pattern" = '^(ELiTE|iVy|RARBG)$';
-- --- END op 958

-- --- BEGIN op 959 ( update regular_expression "SIDCA Tier 03" )
update "regular_expressions" set "pattern" = '^(AndreMor|ASTRiD|CBFM|CtrlHD|DEFLATE|EDPH|HANDJOB|HODL|iVy|KONTRAST|MacP|PLUTONiUM|PHOCiS|RARBG|RARGB|ViETNAM|YAWNiX)$' where "name" = 'SIDCA Tier 03' and "pattern" = '^(AndreMor|ASTRiD|CBFM|CtrlHD|DEFLATE|EDPH|HANDJOB|HODL|iVy|KONTRAST|MacP|PLUTONiUM|PHOCiS|ViETNAM|YAWNiX)$';
-- --- END op 959
