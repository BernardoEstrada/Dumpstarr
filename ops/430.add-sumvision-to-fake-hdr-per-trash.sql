-- @operation: export
-- @entity: batch
-- @name: Add SumVision to Fake HDR per TRaSH
-- @exportedAt: 2026-10-07T22:23:44.849Z
-- @opIds: 6747, 6748

-- --- BEGIN op 6747 ( create regular_expression "SumVision" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('SumVision', '^(SumVision)$', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SumVision', 'Release Group');
-- --- END op 6747

-- --- BEGIN op 6748 ( update custom_format "Fake HDR" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Fake HDR', 'SumVision', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Fake HDR', 'SumVision', 'SumVision');
-- --- END op 6748
