-- @operation: export
-- @entity: batch
-- @name: Pulled some extra groups from the TRaSH Las for consistency
-- @exportedAt: 2026-05-18T15:23:09.691Z
-- @opIds: 844, 845, 846, 847, 848, 849

-- --- BEGIN op 844 ( update regular_expression "TRaSH Bad Dual Groups" )
update "regular_expressions" set "pattern" = '^(alfaHD.*|BAT|BlackBit|BNd|C\.A\.A|Cory|CYPHER|EniaHD|EXTREME|FF|FOXX|G4RiS|GUEIRA|LCD|MGE\b.*|MLH|N3G4N|NAHOM|ONLYMOViE|PD|PTHome|RiPER|RK|SiGLA|Tars|TM\b|tokar86a|TURG|TvR|vnlls|WTV|Yatogam1|YusukeFLA|ZigZag|ZNM)$' where "name" = 'TRaSH Bad Dual Groups' and "pattern" = '^(alfaHD.*|BAT|BlackBit|BNd|C\.A\.A|Cory|CYPHER|EniaHD|EXTREME|FF|FOXX|G4RiS|GUEIRA|LCD|MGE\b.*|MLH|N3G4N|NAHOM|ONLYMOViE|PD|PTHome|RiPER|RK|SiGLA|Tars|TM\b|tokar86a|TURG|TvR|vnlls|WTV|XiQUEXiQUE|Yatogam1|YusukeFLA|ZigZag|ZNM)$';
-- --- END op 844

-- --- BEGIN op 845 ( update regular_expression "TRaSH Bad Dual Groups" )
update "regular_expressions" set "pattern" = '^(alfaHD.*|BAT|BlackBit|BNd|C\.A\.A|Cory|CYPHER|EniaHD|EXTREME|FF|FOXX|G4RiS|GUEIRA|LCD|MGE\b.*|MLH|N3G4N|ONLYMOViE|PD|PTHome|RiPER|RK|SiGLA|Tars|TM\b|tokar86a|TURG|TvR|vnlls|WTV|Yatogam1|YusukeFLA|ZigZag|ZNM)$' where "name" = 'TRaSH Bad Dual Groups' and "pattern" = '^(alfaHD.*|BAT|BlackBit|BNd|C\.A\.A|Cory|CYPHER|EniaHD|EXTREME|FF|FOXX|G4RiS|GUEIRA|LCD|MGE\b.*|MLH|N3G4N|NAHOM|ONLYMOViE|PD|PTHome|RiPER|RK|SiGLA|Tars|TM\b|tokar86a|TURG|TvR|vnlls|WTV|Yatogam1|YusukeFLA|ZigZag|ZNM)$';
-- --- END op 845

-- --- BEGIN op 846 ( update custom_format "Generated Dynamic HDR" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Generated Dynamic HDR'
	  AND name = 'NAHOM'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 846

-- --- BEGIN op 847 ( delete regular_expression "NAHOM" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'NAHOM' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'NAHOM';
-- --- END op 847

-- --- BEGIN op 848 ( update custom_format "Generated Dynamic HDR" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Generated Dynamic HDR'
	  AND name = 'SumVision'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 848

-- --- BEGIN op 849 ( delete regular_expression "SumVision" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'SumVision' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'SumVision';
-- --- END op 849
