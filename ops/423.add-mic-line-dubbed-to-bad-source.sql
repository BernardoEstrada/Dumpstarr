-- @operation: export
-- @entity: batch
-- @name: Add Mic/Line Dubbed to Bad Source
-- @exportedAt: 2026-09-21T22:33:09.191Z
-- @opIds: 6666, 6667, 6668, 6669, 6670, 6671, 6672

-- --- BEGIN op 6666 ( create regular_expression "Mic Dubbed" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Mic Dubbed', '\b(MD|AC3MD|Mic[ .-]?Dubbed)\b', NULL, NULL);
-- --- END op 6666

-- --- BEGIN op 6667 ( create regular_expression "Line Dubbed" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Line Dubbed', '\b(MD|AC3MD|Mic[ .-]?Dubbed)\b', NULL, NULL);
-- --- END op 6667

-- --- BEGIN op 6668 ( update regular_expression "Line Dubbed" )
update "regular_expressions" set "pattern" = '\b(LD|AC3LD|Line[ .-]?Dubbed)\b' where "name" = 'Line Dubbed' and "pattern" = '\b(MD|AC3MD|Mic[ .-]?Dubbed)\b';
-- --- END op 6668

-- --- BEGIN op 6669 ( update regular_expression "Line Dubbed" )
insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Line Dubbed', 'Banned');

insert into "tags" ("name") values ('Audio') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Line Dubbed', 'Audio');
-- --- END op 6669

-- --- BEGIN op 6670 ( update regular_expression "Mic Dubbed" )
insert into "tags" ("name") values ('Audio') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Mic Dubbed', 'Audio');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Mic Dubbed', 'Banned');
-- --- END op 6670

-- --- BEGIN op 6671 ( update custom_format "Bad Source" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Source', 'Mic Dubbed', 'release_title', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Source', 'Mic Dubbed', 'Mic Dubbed');
-- --- END op 6671

-- --- BEGIN op 6672 ( update custom_format "Bad Source" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Source', 'Line Dubbed', 'release_title', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Source', 'Line Dubbed', 'Line Dubbed');
-- --- END op 6672
