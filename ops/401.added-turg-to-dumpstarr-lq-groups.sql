-- @operation: export
-- @entity: batch
-- @name: Added TURG to Dumpstarr LQ Groups
-- @exportedAt: 2026-08-30T20:36:06.146Z
-- @opIds: 5753, 5754

-- --- BEGIN op 5753 ( create regular_expression "TURG" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('TURG', '^(TURG)$', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TURG', 'Release Group');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TURG', 'Banned');
-- --- END op 5753

-- --- BEGIN op 5754 ( update custom_format "Dumpstarr LQ Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dumpstarr LQ Groups', 'TURG', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dumpstarr LQ Groups', 'TURG', 'TURG');
-- --- END op 5754
