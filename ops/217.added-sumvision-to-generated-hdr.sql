-- @operation: export
-- @entity: batch
-- @name: Added SumVision to Generated HDR
-- @exportedAt: 2026-05-07T01:17:36.570Z
-- @opIds: 557, 558

-- --- BEGIN op 557 ( create regular_expression "SumVision" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('SumVision', '^(SumVision)$', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SumVision', 'Release Group');
-- --- END op 557

-- --- BEGIN op 558 ( update custom_format "Generated Dynamic HDR" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Generated Dynamic HDR', 'SumVision', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Generated Dynamic HDR', 'SumVision', 'SumVision');
-- --- END op 558
