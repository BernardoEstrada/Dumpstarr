-- @operation: export
-- @entity: batch
-- @name: Bad Source condition naming cleanup
-- @exportedAt: 2026-07-16T02:22:42.015Z
-- @opIds: 3843, 3844, 3845, 3846, 3847, 3848, 3849, 3850

-- --- BEGIN op 3843 ( update custom_format "Bad Source" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Bad Source'
	  AND name = 'Adventure Time Season 8'
	  AND type = 'release_title'
	  AND arr_type = 'sonarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 3843

-- --- BEGIN op 3844 ( update custom_format "Bad Source" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Bad Source'
	  AND name = 'House Season 6'
	  AND type = 'release_title'
	  AND arr_type = 'sonarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 3844

-- --- BEGIN op 3845 ( update custom_format "Bad Source" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Bad Source'
	  AND name = 'The Office (US) S9'
	  AND type = 'release_title'
	  AND arr_type = 'sonarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 3845

-- --- BEGIN op 3846 ( update custom_format "Bad Source" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Source', 'Adventure Time S08', 'release_title', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Source', 'Adventure Time S08', 'Adventure Time Season 8 Banned Groups');
-- --- END op 3846

-- --- BEGIN op 3847 ( update custom_format "Bad Source" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Source', 'House Season 06', 'release_title', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Source', 'House Season 06', 'House Season 6 Banned Groups');
-- --- END op 3847

-- --- BEGIN op 3848 ( update custom_format "Bad Source" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Source', 'The Office (US) S09', 'release_title', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Source', 'The Office (US) S09', 'The Office (US) S09E23 Banned Groups');
-- --- END op 3848

-- --- BEGIN op 3849 ( update custom_format "Bad Source" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Source', 'Friends S09', 'release_title', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Source', 'Friends S09', 'Friends S09');
-- --- END op 3849

-- --- BEGIN op 3850 ( update custom_format "Dumpstarr LQ Title (Automation)" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Dumpstarr LQ Title (Automation)'
	  AND name = 'Friends S09'
	  AND type = 'release_title'
	  AND arr_type = 'sonarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 3850
