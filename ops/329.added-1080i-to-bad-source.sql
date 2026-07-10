-- @operation: export
-- @entity: batch
-- @name: Added 1080i to Bad Source
-- @exportedAt: 2026-07-10T21:04:23.695Z
-- @opIds: 2811, 2823

-- --- BEGIN op 2811 ( create regular_expression "1080i" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('1080i', '\b(1080i)\b', NULL, NULL);

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('1080i', 'Banned');
-- --- END op 2811

-- --- BEGIN op 2823 ( update custom_format "Bad Source" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Source', '1080i', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Source', '1080i', '1080i');
-- --- END op 2823
