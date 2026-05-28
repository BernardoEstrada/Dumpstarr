-- @operation: export
-- @entity: batch
-- @name: Add Reza to Dumpstarr LQ Automation Groups
-- @exportedAt: 2026-05-28T18:48:35.742Z
-- @opIds: 1477, 1478, 1479, 1480, 1481

-- --- BEGIN op 1477 ( update custom_format "Dumpstarr LQ (Automation)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dumpstarr LQ (Automation)', 'Reza', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dumpstarr LQ (Automation)', 'Reza', 'Reza');
-- --- END op 1477

-- --- BEGIN op 1478 ( update custom_format "Dumpstarr LQ (Automation)" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Dumpstarr LQ (Automation)'
	  AND name = 'Dumpstarr LQ (Automation)'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 1478

-- --- BEGIN op 1479 ( update custom_format "Dumpstarr LQ (Automation)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dumpstarr LQ (Automation)', 'Dumpstarr LQ (Automation) Groups', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dumpstarr LQ (Automation)', 'Dumpstarr LQ (Automation) Groups', 'Dumpstarr LQ (Automation)');
-- --- END op 1479

-- --- BEGIN op 1480 ( update regular_expression "Dumpstarr LQ (Automation) Groups" )
update "regular_expressions" set "name" = 'Dumpstarr LQ (Automation) Groups' where "name" = 'Dumpstarr LQ (Automation)';
-- --- END op 1480

-- --- BEGIN op 1481 ( update custom_format "Dumpstarr LQ (Automation)" )
update "condition_patterns" set "regular_expression_name" = 'Dumpstarr LQ (Automation) Groups' where "custom_format_name" = 'Dumpstarr LQ (Automation)' and "condition_name" = 'Dumpstarr LQ (Automation) Groups' and "regular_expression_name" in ('Dumpstarr LQ (Automation)', 'Dumpstarr LQ (Automation) Groups');
-- --- END op 1481
