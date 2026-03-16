-- @operation: export
-- @entity: batch
-- @name: Added iLoveHD to 1080p Tier 05
-- @exportedAt: 2026-03-15T01:55:16.615Z
-- @opIds: 904, 905

-- --- BEGIN op 904 ( create regular_expression "iLoveHD" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('iLoveHD', '^(iLoveHD)$', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('iLoveHD', 'Release Group');
-- --- END op 904

-- --- BEGIN op 905 ( update custom_format "1080p Bluray Tier 05" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Bluray Tier 05', 'iLoveHD', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Bluray Tier 05', 'iLoveHD', 'iLoveHD');
-- --- END op 905
