-- @operation: export
-- @entity: batch
-- @name: Add AAC and FLAC to No Audio
-- @exportedAt: 2026-08-14T13:01:29.152Z
-- @opIds: 5540, 5541

-- --- BEGIN op 5540 ( update custom_format "No Audio" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('No Audio', 'AAC', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('No Audio', 'AAC', 'AAC');
-- --- END op 5540

-- --- BEGIN op 5541 ( update custom_format "No Audio" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('No Audio', 'FLAC', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('No Audio', 'FLAC', 'FLAC');
-- --- END op 5541
