-- @operation: export
-- @entity: batch
-- @name: Yes ANOTHER Fix for LQ Automation
-- @exportedAt: 2026-05-28T19:42:33.603Z
-- @opIds: 1485, 1486, 1487, 1488, 1489, 1490

-- --- BEGIN op 1485 ( update custom_format "Dumpstarr LQ (Automation)" )
UPDATE custom_format_conditions
SET type = 'release_group'
WHERE custom_format_name = 'Dumpstarr LQ (Automation)'
  AND name = 'Dumpstarr LQ (Automation) Groups'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;

DELETE FROM condition_patterns WHERE custom_format_name = 'Dumpstarr LQ (Automation)' AND condition_name = 'Dumpstarr LQ (Automation) Groups' AND regular_expression_name = 'Dumpstarr LQ (Automation) Groups';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dumpstarr LQ (Automation)', 'Dumpstarr LQ (Automation) Groups', 'Dumpstarr LQ (Automation) Groups');
-- --- END op 1485

-- --- BEGIN op 1486 ( update custom_format "Dumpstarr LQ (Automation)" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Dumpstarr LQ (Automation)'
	  AND name = 'Dumpstarr LQ (Automation) Groups'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 1486

-- --- BEGIN op 1487 ( update custom_format "Dumpstarr LQ (Automation)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dumpstarr LQ (Automation)', 'VARYG', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dumpstarr LQ (Automation)', 'VARYG', 'VARYG');
-- --- END op 1487

-- --- BEGIN op 1488 ( update custom_format "Dumpstarr LQ (Automation)" )
UPDATE custom_format_conditions
SET type = 'release_group'
WHERE custom_format_name = 'Dumpstarr LQ (Automation)'
  AND name = 'Reza'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;

DELETE FROM condition_patterns WHERE custom_format_name = 'Dumpstarr LQ (Automation)' AND condition_name = 'Reza' AND regular_expression_name = 'Reza';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dumpstarr LQ (Automation)', 'Reza', 'VARYG');
-- --- END op 1488

-- --- BEGIN op 1489 ( update custom_format "Dumpstarr LQ (Automation)" )
UPDATE custom_format_conditions
SET type = 'release_title'
WHERE custom_format_name = 'Dumpstarr LQ (Automation)'
  AND name = 'Reza'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;

DELETE FROM condition_patterns WHERE custom_format_name = 'Dumpstarr LQ (Automation)' AND condition_name = 'Reza' AND regular_expression_name = 'VARYG';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dumpstarr LQ (Automation)', 'Reza', 'Reza');
-- --- END op 1489

-- --- BEGIN op 1490 ( update custom_format "Dumpstarr LQ (Automation)" )
UPDATE custom_format_conditions
SET type = 'release_title'
WHERE custom_format_name = 'Dumpstarr LQ (Automation)'
  AND name = 'VARYG'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;

DELETE FROM condition_patterns WHERE custom_format_name = 'Dumpstarr LQ (Automation)' AND condition_name = 'VARYG' AND regular_expression_name = 'VARYG';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dumpstarr LQ (Automation)', 'VARYG', 'VARYG');
-- --- END op 1490
