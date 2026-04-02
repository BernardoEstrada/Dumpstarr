-- @operation: export
-- @entity: batch
-- @name: Moved Scrubs 2001 and Whose Line to Release LQ
-- @exportedAt: 2026-04-02T23:47:42.329Z
-- @opIds: 2470, 2471, 2472, 2473, 2474, 2475, 2476, 2477

-- --- BEGIN op 2470 ( create custom_format "Dumpstarr LQ" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('Dumpstarr LQ', 'Scrubs.S01E15.My.Bed.Banter.Beyond.Upscale.Hybrid.1080p.WEBRip.DD2.0.H.264-DEADBADUGLY', 'series', 1, NULL);
-- --- END op 2470

-- --- BEGIN op 2471 ( update custom_format "Dumpstarr LQ" )
UPDATE custom_format_conditions
SET type = 'release_title'
WHERE custom_format_name = 'Dumpstarr LQ'
  AND name = 'Scrubs Banned Groups'
  AND type = 'release_group'
  AND arr_type = 'sonarr'
  AND negate = 0
  AND required = 0;

DELETE FROM condition_patterns WHERE custom_format_name = 'Dumpstarr LQ' AND condition_name = 'Scrubs Banned Groups' AND regular_expression_name = 'Scrubs 2001 Banned Groups';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dumpstarr LQ', 'Scrubs Banned Groups', 'Scrubs 2001 Banned Groups');
-- --- END op 2471

-- --- BEGIN op 2472 ( update custom_format "Dumpstarr LQ" )
UPDATE custom_format_conditions
SET type = 'release_title'
WHERE custom_format_name = 'Dumpstarr LQ'
  AND name = 'Dumpstarr Banned Groups'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;

DELETE FROM condition_patterns WHERE custom_format_name = 'Dumpstarr LQ' AND condition_name = 'Dumpstarr Banned Groups' AND regular_expression_name = 'Dumpstarr Banned Groups';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dumpstarr LQ', 'Dumpstarr Banned Groups', 'Dumpstarr Banned Groups');
-- --- END op 2472

-- --- BEGIN op 2473 ( update custom_format "Dumpstarr LQ" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Dumpstarr LQ'
	  AND name = 'Scrubs Banned Groups'
	  AND type = 'release_title'
	  AND arr_type = 'sonarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2473

-- --- BEGIN op 2474 ( update custom_format "Dumpstarr LQ" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Dumpstarr LQ'
	  AND name = 'Whose Line Not US Version'
	  AND type = 'release_title'
	  AND arr_type = 'sonarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2474

-- --- BEGIN op 2475 ( update custom_format "Dumpstarr LQ" )
UPDATE custom_format_conditions
SET type = 'release_group'
WHERE custom_format_name = 'Dumpstarr LQ'
  AND name = 'Dumpstarr Banned Groups'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;

DELETE FROM condition_patterns WHERE custom_format_name = 'Dumpstarr LQ' AND condition_name = 'Dumpstarr Banned Groups' AND regular_expression_name = 'Dumpstarr Banned Groups';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dumpstarr LQ', 'Dumpstarr Banned Groups', 'Dumpstarr Banned Groups');
-- --- END op 2475

-- --- BEGIN op 2476 ( update custom_format "Dumpstarr LQ Release Title" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dumpstarr LQ Release Title', 'Scrubs 2001 Banned Groups', 'release_title', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dumpstarr LQ Release Title', 'Scrubs 2001 Banned Groups', 'Scrubs 2001 Banned Groups');
-- --- END op 2476

-- --- BEGIN op 2477 ( update custom_format "Dumpstarr LQ Release Title" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dumpstarr LQ Release Title', 'Whose Line Not US Version', 'release_title', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dumpstarr LQ Release Title', 'Whose Line Not US Version', 'Whose Line Not US Version');
-- --- END op 2477
