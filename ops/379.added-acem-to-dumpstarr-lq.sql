-- @operation: export
-- @entity: batch
-- @name: Added ACEM to Dumpstarr LQ
-- @exportedAt: 2026-08-12T14:48:07.288Z
-- @opIds: 5528, 5529

-- --- BEGIN op 5528 ( create regular_expression "ACEM" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('ACEM', '^(ACEM)$', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ACEM', 'Release Group');
-- --- END op 5528

-- --- BEGIN op 5529 ( update custom_format "Dumpstarr LQ Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dumpstarr LQ Groups', 'ACEM', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dumpstarr LQ Groups', 'ACEM', 'ACEM');
-- --- END op 5529
