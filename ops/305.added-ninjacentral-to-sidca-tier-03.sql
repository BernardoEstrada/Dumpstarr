-- @operation: export
-- @entity: batch
-- @name: Added NINJACENTRAL to SIDCA Tier 03
-- @exportedAt: 2026-06-30T20:57:12.851Z
-- @opIds: 2391, 2392

-- --- BEGIN op 2391 ( create regular_expression "NINJACENTRAL" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('NINJACENTRAL', '^(NINJACENTRAL)$', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('NINJACENTRAL', 'Release Group');
-- --- END op 2391

-- --- BEGIN op 2392 ( update custom_format "SIDCA Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SIDCA Tier 03', 'NINJACENTRAL', 'release_group', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('SIDCA Tier 03', 'NINJACENTRAL', 'NINJACENTRAL');
-- --- END op 2392
