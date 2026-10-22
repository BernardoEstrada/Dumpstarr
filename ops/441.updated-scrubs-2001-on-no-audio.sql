-- @operation: export
-- @entity: batch
-- @name: Updated Scrubs 2001 on No Audio
-- @exportedAt: 2026-10-21T14:27:31.140Z
-- @opIds: 6822, 6823

-- --- BEGIN op 6822 ( update custom_format "No Audio" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'No Audio'
	  AND name = 'Scrubs 2001'
	  AND type = 'release_title'
	  AND arr_type = 'sonarr'
	  AND negate = 1
	  AND required = 1;
-- --- END op 6822

-- --- BEGIN op 6823 ( update custom_format "No Audio" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('No Audio', 'Not Scrubs 2001', 'release_title', 'sonarr', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('No Audio', 'Not Scrubs 2001', 'Scrubs 2001');
-- --- END op 6823
