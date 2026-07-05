-- @operation: export
-- @entity: batch
-- @name: Condensed The Office Banned regexes
-- @exportedAt: 2026-07-05T21:44:57.211Z
-- @opIds: 2663, 2664, 2665, 2666, 2667, 2668, 2669, 2670, 2671, 2672, 2673, 2674, 2675, 2676, 2677, 2678, 2679, 2680, 2681, 2682, 2683, 2684

-- --- BEGIN op 2663 ( update regular_expression "The Office Superfans S09E15" )
update "regular_expressions" set "pattern" = '(?i)^the[ ._-]+office([ ._-]+us)?[ ._-]+s09e(?:15|23).*(extended|superfan).*-FLUX\b' where "name" = 'The Office Superfans S09E15' and "pattern" = '(?i)^the[ ._-]+office([ ._-]+us)?[ ._-]+s09e15.*(extended|superfan).*-FLUX\b';
-- --- END op 2663

-- --- BEGIN op 2664 ( update regular_expression "The Office Superfans S09E15" )
update "regular_expressions" set "pattern" = '(?i)^the[ ._-]+office([ ._-]+us)?[ ._-]+s09e(15|23).*(extended|superfan).*-FLUX\b' where "name" = 'The Office Superfans S09E15' and "pattern" = '(?i)^the[ ._-]+office([ ._-]+us)?[ ._-]+s09e(?:15|23).*(extended|superfan).*-FLUX\b';
-- --- END op 2664

-- --- BEGIN op 2665 ( update regular_expression "The Office Superfans S09E15" )
update "regular_expressions" set "description" = NULL where "name" = 'The Office Superfans S09E15' and "description" = 'FLUX specifically has a bad copy of S09E15, the file grabbed is a duplicate of S09E14.';
-- --- END op 2665

-- --- BEGIN op 2666 ( update regular_expression "The Office Superfans S09 Banned Groups" )
update "regular_expressions" set "name" = 'The Office Superfans S09 Banned Groups' where "name" = 'The Office Superfans S09E15';
-- --- END op 2666

-- --- BEGIN op 2667 ( update custom_format "Bad Source" )
update "condition_patterns" set "regular_expression_name" = 'The Office Superfans S09 Banned Groups' where "custom_format_name" = 'Bad Source' and "condition_name" = 'The Office Superfan S09' and "regular_expression_name" in ('The Office Superfans S09E15', 'The Office Superfans S09 Banned Groups');
-- --- END op 2667

-- --- BEGIN op 2668 ( update regular_expression "The Office Superfans Banned Groups" )
update "regular_expressions" set "pattern" = '(?i)^the[ ._-]+office[ ._-]+superfan[ ._-]+episodes.*-(CRFW|FLUX|playWEB)\b' where "name" = 'The Office Superfans Banned Groups' and "pattern" = '(?i)^the[ ._-]+office[ ._-]+superfan[ ._-]+episodes.*-(CRFW|playWEB)\b';
-- --- END op 2668

-- --- BEGIN op 2669 ( update regular_expression "The Office Superfans Banned Groups" )
update "regular_expressions" set "pattern" = '(?i)^the[ ._-]+office([ ._-]+us)?[ ._-]*(extended|superfan).*(CRFW|FLUX|playWEB)\b' where "name" = 'The Office Superfans Banned Groups' and "pattern" = '(?i)^the[ ._-]+office[ ._-]+superfan[ ._-]+episodes.*-(CRFW|FLUX|playWEB)\b';
-- --- END op 2669

-- --- BEGIN op 2670 ( update custom_format "Bad Source" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Bad Source'
	  AND name = 'The Office Superfan S09'
	  AND type = 'release_title'
	  AND arr_type = 'sonarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2670

-- --- BEGIN op 2671 ( delete regular_expression "The Office Superfans S09 Banned Groups" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'The Office Superfans S09 Banned Groups' AND tag_name = 'Custom';

delete from "regular_expressions" where "name" = 'The Office Superfans S09 Banned Groups';
-- --- END op 2671

-- --- BEGIN op 2672 ( update regular_expression "The Office Superfans Banned Groups" )
update "regular_expressions" set "pattern" = '(?i)^the[ ._-]+office([ ._-]+us)+[ ._-]*(extended|superfan).*(CRFW|FLUX|playWEB)\b' where "name" = 'The Office Superfans Banned Groups' and "pattern" = '(?i)^the[ ._-]+office([ ._-]+us)?[ ._-]*(extended|superfan).*(CRFW|FLUX|playWEB)\b';
-- --- END op 2672

-- --- BEGIN op 2673 ( update regular_expression "The Office Superfans Banned Groups" )
update "regular_expressions" set "pattern" = '(?i)^the[ ._-]+office([ ._-]+us)+(?=.*(extended|superfan)).*(CRFW|FLUX|playWEB)\b' where "name" = 'The Office Superfans Banned Groups' and "pattern" = '(?i)^the[ ._-]+office([ ._-]+us)+[ ._-]*(extended|superfan).*(CRFW|FLUX|playWEB)\b';
-- --- END op 2673

-- --- BEGIN op 2674 ( update regular_expression "The Office (US) Superfan Episodes" )
update "regular_expressions" set "name" = 'The Office (US) Superfan Episodes' where "name" = 'The Office Superfan Episodes';
-- --- END op 2674

-- --- BEGIN op 2675 ( update custom_format "TVE" )
update "condition_patterns" set "regular_expression_name" = 'The Office (US) Superfan Episodes' where "custom_format_name" = 'TVE' and "condition_name" = 'The Office (US) Superfan Episodes' and "regular_expression_name" in ('The Office Superfan Episodes', 'The Office (US) Superfan Episodes');
-- --- END op 2675

-- --- BEGIN op 2676 ( update regular_expression "The Office (US) Superfans Banned Groups" )
update "regular_expressions" set "name" = 'The Office (US) Superfans Banned Groups' where "name" = 'The Office Superfans Banned Groups';
-- --- END op 2676

-- --- BEGIN op 2677 ( update custom_format "Bad Source" )
update "condition_patterns" set "regular_expression_name" = 'The Office (US) Superfans Banned Groups' where "custom_format_name" = 'Bad Source' and "condition_name" = 'The Office Superfans' and "regular_expression_name" in ('The Office Superfans Banned Groups', 'The Office (US) Superfans Banned Groups');
-- --- END op 2677

-- --- BEGIN op 2678 ( update regular_expression "The Office (US) Superfans Banned Groups" )
update "regular_expressions" set "pattern" = '(?i)^the[ ._-]+office[ ._-]+us+(?=.*(extended|superfan)).*(CRFW|FLUX|playWEB)\b' where "name" = 'The Office (US) Superfans Banned Groups' and "pattern" = '(?i)^the[ ._-]+office([ ._-]+us)+(?=.*(extended|superfan)).*(CRFW|FLUX|playWEB)\b';
-- --- END op 2678

-- --- BEGIN op 2679 ( update regular_expression "The Office (US) Superfans Banned Groups" )
update "regular_expressions" set "pattern" = '(?i)^the[ ._-]+office[ ._-]+us+.*(extended|superfan).*(CRFW|FLUX|playWEB)\b' where "name" = 'The Office (US) Superfans Banned Groups' and "pattern" = '(?i)^the[ ._-]+office[ ._-]+us+(?=.*(extended|superfan)).*(CRFW|FLUX|playWEB)\b';
-- --- END op 2679

-- --- BEGIN op 2680 ( update regular_expression "The Office (US) Superfans Banned Groups" )
update "regular_expressions" set "pattern" = '^(The\sOffice)\.(US)\..*?(Extended\.Cut|Superfans).*?-(CRFW|FLUX|playWEB)\b' where "name" = 'The Office (US) Superfans Banned Groups' and "pattern" = '(?i)^the[ ._-]+office[ ._-]+us+.*(extended|superfan).*(CRFW|FLUX|playWEB)\b';
-- --- END op 2680

-- --- BEGIN op 2681 ( update regular_expression "The Office (US) Superfans Banned Groups" )
update "regular_expressions" set "pattern" = '^(The.Office.US).*?(Extended\.Cut|Superfans).*?-(CRFW|FLUX|playWEB)\b' where "name" = 'The Office (US) Superfans Banned Groups' and "pattern" = '^(The\sOffice)\.(US)\..*?(Extended\.Cut|Superfans).*?-(CRFW|FLUX|playWEB)\b';
-- --- END op 2681

-- --- BEGIN op 2682 ( update regular_expression "The Office (US) Superfans Banned Groups" )
update "regular_expressions" set "pattern" = '^The[ ._-]+Office[ ._-]+US.*(Extended\.Cut|Superfans).*-(CRFW|FLUX|playWEB)\b' where "name" = 'The Office (US) Superfans Banned Groups' and "pattern" = '^(The.Office.US).*?(Extended\.Cut|Superfans).*?-(CRFW|FLUX|playWEB)\b';
-- --- END op 2682

-- --- BEGIN op 2683 ( update regular_expression "The Office (US) Superfans Banned Groups" )
update "regular_expressions" set "pattern" = '(?i)^The[ ._-]+Office[ ._-]+US.*(Extended\.Cut|Superfans).*-(CRFW|FLUX|playWEB)\b' where "name" = 'The Office (US) Superfans Banned Groups' and "pattern" = '^The[ ._-]+Office[ ._-]+US.*(Extended\.Cut|Superfans).*-(CRFW|FLUX|playWEB)\b';
-- --- END op 2683

-- --- BEGIN op 2684 ( update regular_expression "The Office (US) Superfans Banned Groups" )
update "regular_expressions" set "pattern" = '(?i)^the[ ._-]+office[ ._-]+us.*(extended\.cut|superfans).*-(CRFW|FLUX|playWEB)\b' where "name" = 'The Office (US) Superfans Banned Groups' and "pattern" = '(?i)^The[ ._-]+Office[ ._-]+US.*(Extended\.Cut|Superfans).*-(CRFW|FLUX|playWEB)\b';
-- --- END op 2684
