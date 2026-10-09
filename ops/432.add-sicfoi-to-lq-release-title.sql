-- @operation: export
-- @entity: batch
-- @name: Add SiCFoI to LQ Release Title
-- @exportedAt: 2026-10-09T20:58:39.032Z
-- @opIds: 6771, 6772, 6773

-- --- BEGIN op 6771 ( create regular_expression "SiCFoI" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('SiCFoI', '^(SiCFoI)$', NULL, NULL);

insert into "tags" ("name") values ('LQ') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SiCFoI', 'LQ');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SiCFoI', 'Release Group');
-- --- END op 6771

-- --- BEGIN op 6772 ( update regular_expression "SiCFoI" )
update "regular_expressions" set "pattern" = '\b(SiCFoI)\b' where "name" = 'SiCFoI' and "pattern" = '^(SiCFoI)$';
-- --- END op 6772

-- --- BEGIN op 6773 ( update custom_format "LQ Release Title" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ Release Title', 'SiCFoI', 'release_title', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ Release Title', 'SiCFoI', 'SiCFoI');
-- --- END op 6773
