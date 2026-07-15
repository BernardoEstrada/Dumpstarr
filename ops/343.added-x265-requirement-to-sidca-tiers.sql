-- @operation: export
-- @entity: batch
-- @name: Added x265 requirement to SIDCA Tiers
-- @exportedAt: 2026-07-15T15:18:05.814Z
-- @opIds: 3779, 3780, 3781, 3782

-- --- BEGIN op 3779 ( update custom_format "SIDCA Tier 01" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SIDCA Tier 01', 'x265', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('SIDCA Tier 01', 'x265', 'x265');
-- --- END op 3779

-- --- BEGIN op 3780 ( update custom_format "SIDCA Tier 01" )
UPDATE custom_format_conditions
SET required = 1
WHERE custom_format_name = 'SIDCA Tier 01'
  AND name = 'x265'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 3780

-- --- BEGIN op 3781 ( update custom_format "SIDCA Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SIDCA Tier 02', 'x265', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('SIDCA Tier 02', 'x265', 'x265');
-- --- END op 3781

-- --- BEGIN op 3782 ( update custom_format "SIDCA Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SIDCA Tier 03', 'x265', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('SIDCA Tier 03', 'x265', 'x265');
-- --- END op 3782
