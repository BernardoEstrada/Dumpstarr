-- @operation: export
-- @entity: batch
-- @name: Moved extra LQ Release Titles to Bad Source for consistency
-- @exportedAt: 2026-05-18T14:17:05.428Z
-- @opIds: 825, 826, 827, 828, 829, 830, 831, 832, 833, 834

-- --- BEGIN op 825 ( update custom_format "Bad Source" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Source', 'Scrubs 2001 Banned Groups', 'release_title', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Source', 'Scrubs 2001 Banned Groups', 'Scrubs 2001 Approved Groups');
-- --- END op 825

-- --- BEGIN op 826 ( update custom_format "Bad Source" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Source', 'Whose Line Is It Anyway (US Version)', 'release_title', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Source', 'Whose Line Is It Anyway (US Version)', 'Whose Line Not US Version');
-- --- END op 826

-- --- BEGIN op 827 ( update custom_format "Dumpstarr LQ Release Title" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Dumpstarr LQ Release Title'
	  AND name = 'Scrubs 2001 Banned Groups'
	  AND type = 'release_title'
	  AND arr_type = 'sonarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 827

-- --- BEGIN op 828 ( update custom_format "Dumpstarr LQ Release Title" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Dumpstarr LQ Release Title'
	  AND name = 'Whose Line Not US Version'
	  AND type = 'release_title'
	  AND arr_type = 'sonarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 828

-- --- BEGIN op 829 ( update custom_format "Bad Source" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Bad Source'
	  AND name = 'Arthur Banned Groups'
	  AND type = 'release_title'
	  AND arr_type = 'sonarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 829

-- --- BEGIN op 830 ( update custom_format "Bad Source" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Bad Source'
	  AND name = 'Scrubs 2001 Banned Groups'
	  AND type = 'release_title'
	  AND arr_type = 'sonarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 830

-- --- BEGIN op 831 ( update custom_format "Bad Source" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Bad Source'
	  AND name = 'The Big Bang Theory Banned Groups'
	  AND type = 'release_title'
	  AND arr_type = 'sonarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 831

-- --- BEGIN op 832 ( update custom_format "Bad Source" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Source', 'Arthur', 'release_title', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Source', 'Arthur', 'Arthur Banned Groups');
-- --- END op 832

-- --- BEGIN op 833 ( update custom_format "Bad Source" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Source', 'Scrubs 2001', 'release_title', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Source', 'Scrubs 2001', 'Scrubs 2001 Approved Groups');
-- --- END op 833

-- --- BEGIN op 834 ( update custom_format "Bad Source" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Source', 'The Big Bang Theory', 'release_title', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Source', 'The Big Bang Theory', 'The Big Bang Theory Banned Groups');
-- --- END op 834
