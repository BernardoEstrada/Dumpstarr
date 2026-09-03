-- @operation: export
-- @entity: batch
-- @name: Add PoF to SIDCA Tier 02
-- @exportedAt: 2026-09-02T19:54:19.819Z
-- @opIds: 5772, 5773, 5774, 5775

-- --- BEGIN op 5772 ( create regular_expression "PoF" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('PoF', '^(PoF)$', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('PoF', 'Release Group');
-- --- END op 5772

-- --- BEGIN op 5773 ( update custom_format "SIDCA Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SIDCA Tier 03', 'PoF', 'release_group', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('SIDCA Tier 03', 'PoF', 'PoF');
-- --- END op 5773

-- --- BEGIN op 5774 ( update custom_format "SIDCA Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SIDCA Tier 02', 'PoF', 'release_group', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('SIDCA Tier 02', 'PoF', 'PoF');
-- --- END op 5774

-- --- BEGIN op 5775 ( update custom_format "SIDCA Tier 03" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'SIDCA Tier 03'
	  AND name = 'PoF'
	  AND type = 'release_group'
	  AND arr_type = 'sonarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 5775
