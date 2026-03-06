-- @operation: export
-- @entity: batch
-- @name: Rebuilt 2160p Bluray Tier 03
-- @exportedAt: 2026-03-06T18:33:46.421Z
-- @opIds: 2816, 2817, 2818, 2819, 2820, 2821, 2822, 2823

-- --- BEGIN op 2816 ( update custom_format "2160p Bluray Tier 03" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '2160p Bluray Tier 03'
	  AND name = 'Dictionarry 2160p Tier 03'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2816

-- --- BEGIN op 2817 ( update custom_format "2160p Bluray Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2160p Bluray Tier 03', 'BV', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('2160p Bluray Tier 03', 'BV', 'BV');
-- --- END op 2817

-- --- BEGIN op 2818 ( update custom_format "2160p Bluray Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2160p Bluray Tier 03', 'c0kE', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('2160p Bluray Tier 03', 'c0kE', 'c0kE');
-- --- END op 2818

-- --- BEGIN op 2819 ( update custom_format "2160p Bluray Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2160p Bluray Tier 03', 'Chotab', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('2160p Bluray Tier 03', 'Chotab', 'Chotab');
-- --- END op 2819

-- --- BEGIN op 2820 ( update custom_format "2160p Bluray Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2160p Bluray Tier 03', 'D-Z0N3', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('2160p Bluray Tier 03', 'D-Z0N3', 'D-Z0N3');
-- --- END op 2820

-- --- BEGIN op 2821 ( update custom_format "2160p Bluray Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2160p Bluray Tier 03', 'HQMUX', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('2160p Bluray Tier 03', 'HQMUX', 'HQMUX');
-- --- END op 2821

-- --- BEGIN op 2822 ( update custom_format "2160p Bluray Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2160p Bluray Tier 03', 'PTer', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('2160p Bluray Tier 03', 'PTer', 'PTer');
-- --- END op 2822

-- --- BEGIN op 2823 ( update custom_format "2160p Bluray Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2160p Bluray Tier 03', 'TnP', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('2160p Bluray Tier 03', 'TnP', 'TnP');
-- --- END op 2823
