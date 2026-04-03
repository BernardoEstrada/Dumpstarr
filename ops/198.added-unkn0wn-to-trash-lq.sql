-- @operation: export
-- @entity: batch
-- @name: Added UnKn0wn to TRaSH LQ
-- @exportedAt: 2026-04-03T19:09:47.795Z
-- @opIds: 2519, 2520

-- --- BEGIN op 2519 ( create regular_expression "UnKn0wn" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('UnKn0wn', '\bUnKn0wn\b', NULL, NULL);

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('UnKn0wn', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('UnKn0wn', 'Release Group');
-- --- END op 2519

-- --- BEGIN op 2520 ( update custom_format "TRaSH LQ Release Title" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TRaSH LQ Release Title', 'UnKn0wn', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('TRaSH LQ Release Title', 'UnKn0wn', 'UnKn0wn');
-- --- END op 2520
