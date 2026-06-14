-- @operation: export
-- @entity: batch
-- @name: LQ Automation Cleanup
-- @exportedAt: 2026-06-14T04:08:24.248Z
-- @opIds: 1676, 1677, 1678, 1679, 1680, 1681, 1682, 1683, 1684, 1685, 1686

-- --- BEGIN op 1676 ( update custom_format "Dumpstarr LQ Groups (Automation)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dumpstarr LQ Groups (Automation)', 'Dumpstarr LQ Groups Automation ', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dumpstarr LQ Groups (Automation)', 'Dumpstarr LQ Groups Automation ', 'Dumpstarr LQ (Automation) Groups');
-- --- END op 1676

-- --- BEGIN op 1677 ( update custom_format "Dumpstarr LQ Groups (Automation)" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Dumpstarr LQ Groups (Automation)'
	  AND name = 'Dumpstarr LQ Groups Automation '
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 1677

-- --- BEGIN op 1678 ( create regular_expression "FIEND" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('FIEND', '^(FIEND)$', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('FIEND', 'Release Group');
-- --- END op 1678

-- --- BEGIN op 1679 ( update custom_format "Dumpstarr LQ Groups (Automation)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dumpstarr LQ Groups (Automation)', 'FIEND', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dumpstarr LQ Groups (Automation)', 'FIEND', 'FIEND');
-- --- END op 1679

-- --- BEGIN op 1680 ( update regular_expression "Dumpstarr LQ (Automation) Groups" )
update "regular_expressions" set "pattern" = '^(Tsundere-Raws|VARYG)\b' where "name" = 'Dumpstarr LQ (Automation) Groups' and "pattern" = '^(FIEND|T3KASHi|Tsundere-Raws|VARYG)\b';
-- --- END op 1680

-- --- BEGIN op 1681 ( create regular_expression "T3KASHi" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('T3KASHi', '^(T3KASHi)$', NULL, NULL);

insert into "tags" ("name") values ('Release Groups') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('T3KASHi', 'Release Groups');
-- --- END op 1681

-- --- BEGIN op 1682 ( update custom_format "Dumpstarr LQ Groups (Automation)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dumpstarr LQ Groups (Automation)', 'T3KASHi', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dumpstarr LQ Groups (Automation)', 'T3KASHi', 'T3KASHi');
-- --- END op 1682

-- --- BEGIN op 1683 ( update regular_expression "Dumpstarr LQ (Automation) Groups" )
update "regular_expressions" set "pattern" = '^(VARYG)\b' where "name" = 'Dumpstarr LQ (Automation) Groups' and "pattern" = '^(Tsundere-Raws|VARYG)\b';
-- --- END op 1683

-- --- BEGIN op 1684 ( create regular_expression "Tsundere-Raws" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Tsundere-Raws', '^(Tsundere-Raws)$', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Tsundere-Raws', 'Release Group');
-- --- END op 1684

-- --- BEGIN op 1685 ( update regular_expression "Tsundere-Raws" )
update "regular_expressions" set "pattern" = '\b(Tsundere-Raws)\b' where "name" = 'Tsundere-Raws' and "pattern" = '^(Tsundere-Raws)$';
-- --- END op 1685

-- --- BEGIN op 1686 ( update custom_format "Dumpstarr LQ Title (Automation)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dumpstarr LQ Title (Automation)', 'Tsundere-Raws', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dumpstarr LQ Title (Automation)', 'Tsundere-Raws', 'Tsundere-Raws');
-- --- END op 1686
