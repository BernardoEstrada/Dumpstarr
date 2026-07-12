-- @operation: export
-- @entity: batch
-- @name: Add DUDU to Dumpstarr LQ
-- @exportedAt: 2026-07-12T06:22:02.669Z
-- @opIds: 2888, 2889

-- --- BEGIN op 2888 ( create regular_expression "DUDU" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('DUDU', '^(DUDU)$', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('DUDU', 'Release Group');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('DUDU', 'Banned');
-- --- END op 2888

-- --- BEGIN op 2889 ( update custom_format "Dumpstarr LQ Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dumpstarr LQ Groups', 'DUDU', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dumpstarr LQ Groups', 'DUDU', 'DUDU');
-- --- END op 2889
