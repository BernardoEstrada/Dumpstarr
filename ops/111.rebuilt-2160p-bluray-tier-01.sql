-- @operation: export
-- @entity: batch
-- @name: Rebuilt 2160p Bluray Tier 01
-- @exportedAt: 2026-03-06T18:29:05.700Z
-- @opIds: 2804, 2805, 2806, 2807, 2808

-- --- BEGIN op 2804 ( update custom_format "2160p Bluray Tier 01" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '2160p Bluray Tier 01'
	  AND name = 'Dictionarry 2160p Tier 01'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2804

-- --- BEGIN op 2805 ( update custom_format "2160p Bluray Tier 01" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2160p Bluray Tier 01', 'DON', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('2160p Bluray Tier 01', 'DON', 'DON');
-- --- END op 2805

-- --- BEGIN op 2806 ( update custom_format "2160p Bluray Tier 01" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2160p Bluray Tier 01', 'REBORN', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('2160p Bluray Tier 01', 'REBORN', 'REBORN');
-- --- END op 2806

-- --- BEGIN op 2807 ( update custom_format "2160p Bluray Tier 01" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2160p Bluray Tier 01', 'SA89', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('2160p Bluray Tier 01', 'SA89', 'SA89');
-- --- END op 2807

-- --- BEGIN op 2808 ( update custom_format "2160p Bluray Tier 01" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2160p Bluray Tier 01', 'SoLaR', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('2160p Bluray Tier 01', 'SoLaR', 'SoLaR');
-- --- END op 2808
