-- @operation: export
-- @entity: batch
-- @name: Moved DUDU to LQ Automation
-- @exportedAt: 2026-07-13T17:53:32.087Z
-- @opIds: 3355, 3356

-- --- BEGIN op 3355 ( update custom_format "Dumpstarr LQ Groups" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Dumpstarr LQ Groups'
	  AND name = 'DUDU'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 3355

-- --- BEGIN op 3356 ( update custom_format "Dumpstarr LQ Groups (Automation)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dumpstarr LQ Groups (Automation)', 'DUDU', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dumpstarr LQ Groups (Automation)', 'DUDU', 'DUDU');
-- --- END op 3356
