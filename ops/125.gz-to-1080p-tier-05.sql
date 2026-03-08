-- @operation: export
-- @entity: batch
-- @name: GZ to 1080p Tier 05
-- @exportedAt: 2026-03-08T21:08:47.381Z
-- @opIds: 3076

-- --- BEGIN op 3076 ( update custom_format "1080p Bluray Tier 05" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Bluray Tier 05', 'GZ', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Bluray Tier 05', 'GZ', 'GZ');
-- --- END op 3076
