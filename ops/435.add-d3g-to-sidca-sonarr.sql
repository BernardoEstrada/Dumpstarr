-- @operation: export
-- @entity: batch
-- @name: Add d3g to SIDCA Sonarr
-- @exportedAt: 2026-10-12T00:47:13.114Z
-- @opIds: 6783

-- --- BEGIN op 6783 ( update custom_format "SIDCA Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SIDCA Tier 02', 'D3US', 'release_group', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('SIDCA Tier 02', 'D3US', 'd3g');
-- --- END op 6783
