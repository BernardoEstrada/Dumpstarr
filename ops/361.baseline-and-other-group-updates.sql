-- @operation: export
-- @entity: batch
-- @name: Baseline and other group updates
-- @exportedAt: 2026-07-21T17:07:39.670Z
-- @opIds: 4144, 4145, 4147, 4148, 4149

-- --- BEGIN op 4144 ( update regular_expression "SuccessfulCrab (Title)" )
update "regular_expressions" set "name" = 'SuccessfulCrab (Title)' where "name" = 'SUCCESSFULCRAB';
-- --- END op 4144

-- --- BEGIN op 4145 ( update regular_expression "SuccessfulCrab (Title)" )
update "regular_expressions" set "pattern" = '\b(SuccessfulCrab)\b' where "name" = 'SuccessfulCrab (Title)' and "pattern" = '\b(SUCCESSFULCRAB)\b';
-- --- END op 4145

-- --- BEGIN op 4147 ( update regular_expression "Dumpstarr Baseline Groups" )
update "regular_expressions" set "pattern" = '^(DarQ|DiscoD|PiRaTeS|SuccessfulCrab|Vyndros|Weasley)$' where "name" = 'Dumpstarr Baseline Groups' and "pattern" = '^(alfaHD|Bluespots|DarQ|DiscoD|DUSKLiGHT|edge2020|N1H4L|PiRaTeS|SuccessfulCrab|Vyndros|Weasley)$';
-- --- END op 4147

-- --- BEGIN op 4148 ( create regular_expression "edge2020" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('edge2020', '^(edge2020)$', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('edge2020', 'Release Group');
-- --- END op 4148

-- --- BEGIN op 4149 ( update custom_format "Baseline Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Baseline Groups', 'edge2020', 'release_group', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Baseline Groups', 'edge2020', 'edge2020');
-- --- END op 4149
