-- @operation: export
-- @entity: batch
-- @name: Rebuilt 2160p Bluray Tier 02
-- @exportedAt: 2026-03-06T18:31:43.988Z
-- @opIds: 2810, 2811, 2812, 2813, 2814

-- --- BEGIN op 2810 ( update regular_expression "MainFrame" )
update "regular_expressions" set "pattern" = '^(MainFrame)$' where "name" = 'MainFrame' and "pattern" = '(?<=^|[\s.-])MainFrame\b';

DELETE FROM regular_expression_tags WHERE regular_expression_name IN ('MainFrame') AND tag_name = 'Bluray';
-- --- END op 2810

-- --- BEGIN op 2811 ( update custom_format "2160p Bluray Tier 02" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '2160p Bluray Tier 02'
	  AND name = 'Dictionarry 2160p Tier 02'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2811

-- --- BEGIN op 2812 ( update custom_format "2160p Bluray Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2160p Bluray Tier 02', 'CtrlHD', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('2160p Bluray Tier 02', 'CtrlHD', 'CtrlHD');
-- --- END op 2812

-- --- BEGIN op 2813 ( update custom_format "2160p Bluray Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2160p Bluray Tier 02', 'MainFrame', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('2160p Bluray Tier 02', 'MainFrame', 'MainFrame');
-- --- END op 2813

-- --- BEGIN op 2814 ( update custom_format "2160p Bluray Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2160p Bluray Tier 02', 'W4NK3R', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('2160p Bluray Tier 02', 'W4NK3R', 'W4NK3R');
-- --- END op 2814
