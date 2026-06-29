-- @operation: export
-- @entity: batch
-- @name: SIDCA Tier 03 Updates
-- @exportedAt: 2026-06-29T14:42:39.724Z
-- @opIds: 1966, 1967, 1968, 1969, 1970, 1971, 1972

-- --- BEGIN op 1966 ( update regular_expression "SIDCA Tier 03" )
update "regular_expressions" set "pattern" = '^(AndreMor|ASTRiD|CBFM|CtrlHD|DEFLATE|EDPH|HANDJOB|HODL|KONTRAST|MacP|PLUTONiUM|PHOCiS|ViETNAM|YAWNiX)$' where "name" = 'SIDCA Tier 03' and "pattern" = '^(AndreMor|ASTRiD|CBFM|CtrlHD|DEFLATE|EDPH|HANDJOB|HODL|KONTRAST|MacP|PLUTONiUM|PHOCiS|RARBG|RARGB|ViETNAM|YAWNiX)$';
-- --- END op 1966

-- --- BEGIN op 1967 ( update regular_expression "SIDCA Tier 03" )
update "regular_expressions" set "pattern" = '^(AndreMor|ASTRiD|CBFM|CtrlHD|DEFLATE|EDPH|HANDJOB|HODL|KONTRAST|MacP|PLUTONiUM|PHOCiS|YAWNiX|YELLOWBiRD|ViETNAM)$' where "name" = 'SIDCA Tier 03' and "pattern" = '^(AndreMor|ASTRiD|CBFM|CtrlHD|DEFLATE|EDPH|HANDJOB|HODL|KONTRAST|MacP|PLUTONiUM|PHOCiS|ViETNAM|YAWNiX)$';
-- --- END op 1967

-- --- BEGIN op 1968 ( update regular_expression "SIDCA Tier 03" )
update "regular_expressions" set "pattern" = '^(AndreMor|ASTRiD|CBFM|CHiLL|CtrlHD|DEFLATE|EDPH|HANDJOB|HODL|KONTRAST|MacP|PLUTONiUM|PHOCiS|YAWNiX|ViETNAM)$' where "name" = 'SIDCA Tier 03' and "pattern" = '^(AndreMor|ASTRiD|CBFM|CtrlHD|DEFLATE|EDPH|HANDJOB|HODL|KONTRAST|MacP|PLUTONiUM|PHOCiS|YAWNiX|YELLOWBiRD|ViETNAM)$';
-- --- END op 1968

-- --- BEGIN op 1969 ( update custom_format "Bad Source" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Bad Source'
	  AND name = 'Sex and the City'
	  AND type = 'release_title'
	  AND arr_type = 'sonarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 1969

-- --- BEGIN op 1970 ( update custom_format "Bad Source" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Bad Source'
	  AND name = 'The Blacklist'
	  AND type = 'release_title'
	  AND arr_type = 'sonarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 1970

-- --- BEGIN op 1971 ( delete regular_expression "Sex and the City Banned Groups" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Sex and the City Banned Groups' AND tag_name = 'Custom';

delete from "regular_expressions" where "name" = 'Sex and the City Banned Groups';
-- --- END op 1971

-- --- BEGIN op 1972 ( delete regular_expression "The Backlist Banned Groups" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'The Backlist Banned Groups' AND tag_name = 'Custom';

delete from "regular_expressions" where "name" = 'The Backlist Banned Groups';
-- --- END op 1972
