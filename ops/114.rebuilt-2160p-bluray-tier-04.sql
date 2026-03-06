-- @operation: export
-- @entity: batch
-- @name: Rebuilt 2160p Bluray Tier 04
-- @exportedAt: 2026-03-06T18:36:31.152Z
-- @opIds: 2825, 2826, 2827, 2828, 2829, 2830, 2831, 2832, 2833, 2834, 2835, 2836, 2837

-- --- BEGIN op 2825 ( update regular_expression "BlzT" )
update "regular_expressions" set "pattern" = '^(BlzT)$' where "name" = 'BlzT' and "pattern" = '(?<=^|[\s.-])BlzT\b';

DELETE FROM regular_expression_tags WHERE regular_expression_name IN ('BlzT') AND tag_name = 'Bluray';
-- --- END op 2825

-- --- BEGIN op 2826 ( update custom_format "2160p Bluray Tier 04" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '2160p Bluray Tier 04'
	  AND name = 'Dictionarry 2160p Tier 04'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2826

-- --- BEGIN op 2827 ( update custom_format "2160p Bluray Tier 04" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2160p Bluray Tier 04', 'BlzT', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('2160p Bluray Tier 04', 'BlzT', 'BlzT');
-- --- END op 2827

-- --- BEGIN op 2828 ( update custom_format "2160p Bluray Tier 04" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2160p Bluray Tier 04', 'BSTD', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('2160p Bluray Tier 04', 'BSTD', 'BSTD');
-- --- END op 2828

-- --- BEGIN op 2829 ( update custom_format "2160p Bluray Tier 04" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2160p Bluray Tier 04', 'EDPH', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('2160p Bluray Tier 04', 'EDPH', 'EDPH');
-- --- END op 2829

-- --- BEGIN op 2830 ( update custom_format "2160p Bluray Tier 04" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2160p Bluray Tier 04', 'ESiR', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('2160p Bluray Tier 04', 'ESiR', 'ESiR');
-- --- END op 2830

-- --- BEGIN op 2831 ( update custom_format "2160p Bluray Tier 04" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2160p Bluray Tier 04', 'HiDt', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('2160p Bluray Tier 04', 'HiDt', 'HiDt');
-- --- END op 2831

-- --- BEGIN op 2832 ( update custom_format "2160p Bluray Tier 04" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2160p Bluray Tier 04', 'iFT', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('2160p Bluray Tier 04', 'iFT', 'iFT');
-- --- END op 2832

-- --- BEGIN op 2833 ( update custom_format "2160p Bluray Tier 04" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2160p Bluray Tier 04', 'Kitsune', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('2160p Bluray Tier 04', 'Kitsune', 'Kitsune');
-- --- END op 2833

-- --- BEGIN op 2834 ( update custom_format "2160p Bluray Tier 04" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2160p Bluray Tier 04', 'NCmt', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('2160p Bluray Tier 04', 'NCmt', 'NCmt');
-- --- END op 2834

-- --- BEGIN op 2835 ( update custom_format "2160p Bluray Tier 04" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2160p Bluray Tier 04', 'NTb', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('2160p Bluray Tier 04', 'NTb', 'NTb');
-- --- END op 2835

-- --- BEGIN op 2836 ( update custom_format "2160p Bluray Tier 04" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2160p Bluray Tier 04', 'SPHD', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('2160p Bluray Tier 04', 'SPHD', 'SPHD');
-- --- END op 2836

-- --- BEGIN op 2837 ( update custom_format "2160p Bluray Tier 04" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2160p Bluray Tier 04', 'TDD', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('2160p Bluray Tier 04', 'TDD', 'TDD');
-- --- END op 2837
