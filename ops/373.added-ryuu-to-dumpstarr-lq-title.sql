-- @operation: export
-- @entity: batch
-- @name: Added Ryuu to Dumpstarr LQ Title
-- @exportedAt: 2026-08-04T16:14:40.177Z
-- @opIds: 4420, 4421, 4422

-- --- BEGIN op 4420 ( create regular_expression "Ryuu" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Ryuu', '\b(AnimeRG)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Ryuu', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Ryuu', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Ryuu', 'Release Group');
-- --- END op 4420

-- --- BEGIN op 4421 ( update regular_expression "Ryuu" )
update "regular_expressions" set "pattern" = '\b(Ryuu)\b' where "name" = 'Ryuu' and "pattern" = '\b(AnimeRG)\b';
-- --- END op 4421

-- --- BEGIN op 4422 ( update custom_format "Dumpstarr LQ Title" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dumpstarr LQ Title', 'Ryuu', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dumpstarr LQ Title', 'Ryuu', 'Ryuu');
-- --- END op 4422
