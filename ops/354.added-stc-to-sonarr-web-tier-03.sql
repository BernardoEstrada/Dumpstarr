-- @operation: export
-- @entity: batch
-- @name: Added STC to Sonarr WEB Tier 03
-- @exportedAt: 2026-07-17T15:56:25.192Z
-- @opIds: 3867, 3868

-- --- BEGIN op 3867 ( create regular_expression "STC" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('STC', '^(STC)$', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('STC', 'Release Group');
-- --- END op 3867

-- --- BEGIN op 3868 ( update custom_format "WEB Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('WEB Tier 03', 'STC', 'release_group', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('WEB Tier 03', 'STC', 'STC');
-- --- END op 3868
