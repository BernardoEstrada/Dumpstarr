-- @operation: export
-- @entity: batch
-- @name: Added GuyZo to Upscaled per TRaSH
-- @exportedAt: 2026-03-23T21:33:12.718Z
-- @opIds: 1320

-- --- BEGIN op 1320 ( update custom_format "Upscaled" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Upscaled', 'GuyZo', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Upscaled', 'GuyZo', 'GuyZo');
-- --- END op 1320
