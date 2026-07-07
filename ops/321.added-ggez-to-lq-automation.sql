-- @operation: export
-- @entity: batch
-- @name: Added GGEZ to LQ Automation
-- @exportedAt: 2026-07-07T13:55:59.542Z
-- @opIds: 2755, 2756

-- --- BEGIN op 2755 ( create regular_expression "GGEZ" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('GGEZ', '^(GGEZ|GGEZ-ZI03)$', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('GGEZ', 'Release Group');
-- --- END op 2755

-- --- BEGIN op 2756 ( update custom_format "Dumpstarr LQ Groups (Automation)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dumpstarr LQ Groups (Automation)', 'GGEZ', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dumpstarr LQ Groups (Automation)', 'GGEZ', 'GGEZ');
-- --- END op 2756
