-- @operation: export
-- @entity: batch
-- @name: Anime tier updates per TRaSH
-- @exportedAt: 2026-07-12T13:08:17.772Z
-- @opIds: 2903, 2904, 2905

-- --- BEGIN op 2903 ( create regular_expression "nekotan" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('nekotan', '\b(nekotan)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('nekotan', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('nekotan', 'Anime');
-- --- END op 2903

-- --- BEGIN op 2904 ( update custom_format "Anime BD Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 03', 'nekotan', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 03', 'nekotan', 'nekotan');
-- --- END op 2904

-- --- BEGIN op 2905 ( update custom_format "Anime WEB Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime WEB Tier 02', 'BlackRose', 'release_title', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime WEB Tier 02', 'BlackRose', 'BlackRose');
-- --- END op 2905
