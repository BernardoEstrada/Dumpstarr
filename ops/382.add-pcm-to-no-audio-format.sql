-- @operation: export
-- @entity: batch
-- @name: Add PCM to No Audio Format
-- @exportedAt: 2026-08-14T15:10:13.905Z
-- @opIds: 5543

-- --- BEGIN op 5543 ( update custom_format "No Audio" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('No Audio', 'PCM', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('No Audio', 'PCM', 'PCM');
-- --- END op 5543
