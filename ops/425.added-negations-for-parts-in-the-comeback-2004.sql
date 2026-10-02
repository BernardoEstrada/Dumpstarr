-- @operation: export
-- @entity: batch
-- @name: Added negations for Parts in The Comeback 2004
-- @exportedAt: 2026-10-02T01:00:17.690Z
-- @opIds: 6679, 6680, 6681, 6682, 6683, 6684, 6686, 6687, 6688

-- --- BEGIN op 6679 ( create custom_format "x265" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('x265', 'Blood Simple 1984 UHD BluRay DDP 5 1 DoVi HDR x265-SM737', 'movie', 1, NULL);
-- --- END op 6679

-- --- BEGIN op 6680 ( create regular_expression "The Comeback 2004" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('The Comeback 2004', '\b(Adventure[ ._-]+Time)\b', NULL, NULL);

insert into "tags" ("name") values ('Custom') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('The Comeback 2004', 'Custom');
-- --- END op 6680

-- --- BEGIN op 6681 ( update regular_expression "The Comeback 2004" )
update "regular_expressions" set "pattern" = '\b(The[ ._-]+Comeback[ ._-]+2004)\b' where "name" = 'The Comeback 2004' and "pattern" = '\b(Adventure[ ._-]+Time)\b';
-- --- END op 6681

-- --- BEGIN op 6682 ( update custom_format "Bad Source" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Source', 'The Comeback 2004', 'release_title', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Source', 'The Comeback 2004', 'The Comeback 2004');
-- --- END op 6682

-- --- BEGIN op 6683 ( update regular_expression "The Comeback 2004" )
update "regular_expressions" set "pattern" = '\b(The[ ._-]+Comeback[ ._-]+2004.*?Part(?:I|II|III))\b' where "name" = 'The Comeback 2004' and "pattern" = '\b(The[ ._-]+Comeback[ ._-]+2004)\b';
-- --- END op 6683

-- --- BEGIN op 6684 ( update regular_expression "The Comeback 2004" )
update "regular_expressions" set "pattern" = '\b(The[ ._-]+Comeback[ ._-]+2004[ ._-]+Boston[ ._-]+Red[ ._-]+Sox*?Part(?:I|II|III))\b' where "name" = 'The Comeback 2004' and "pattern" = '\b(The[ ._-]+Comeback[ ._-]+2004.*?Part(?:I|II|III))\b';
-- --- END op 6684

-- --- BEGIN op 6686 ( update regular_expression "The Comeback 2004" )
update "regular_expressions" set "pattern" = '\b(The[ ._-]+Comeback[ ._-]+2004.*?Part[ ._-]*(?:I|II|III))\b' where "name" = 'The Comeback 2004' and "pattern" = '\b(The[ ._-]+Comeback[ ._-]+2004[ ._-]+Boston[ ._-]+Red[ ._-]+Sox*?Part(?:I|II|III))\b';
-- --- END op 6686

-- --- BEGIN op 6687 ( update regular_expression "The Comeback 2004 Boston Red Sox" )
update "regular_expressions" set "name" = 'The Comeback 2004 Boston Red Sox' where "name" = 'The Comeback 2004';
-- --- END op 6687

-- --- BEGIN op 6688 ( update custom_format "Bad Source" )
update "condition_patterns" set "regular_expression_name" = 'The Comeback 2004 Boston Red Sox' where "custom_format_name" = 'Bad Source' and "condition_name" = 'The Comeback 2004' and "regular_expression_name" in ('The Comeback 2004', 'The Comeback 2004 Boston Red Sox');
-- --- END op 6688
