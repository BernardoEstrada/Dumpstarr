-- @operation: export
-- @entity: batch
-- @name: Add One Pace to Banned
-- @exportedAt: 2026-03-06T22:39:09.802Z
-- @opIds: 3054, 3055

-- --- BEGIN op 3054 ( create regular_expression "One Pace" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('One Pace', '\[(One Pace)\]', 'Specifically banned because of bad naming scheme on the show One Piece', NULL);

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('One Pace', 'Banned');
-- --- END op 3054

-- --- BEGIN op 3055 ( update custom_format "Banned Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Banned Groups', 'One Pace', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Banned Groups', 'One Pace', 'One Pace');
-- --- END op 3055
