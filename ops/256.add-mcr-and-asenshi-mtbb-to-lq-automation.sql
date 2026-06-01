-- @operation: export
-- @entity: batch
-- @name: Add MCR and Asenshi-MTBB to LQ Automation
-- @exportedAt: 2026-06-01T17:21:25.775Z
-- @opIds: 1519, 1520, 1521, 1522, 1523, 1524

-- --- BEGIN op 1519 ( create regular_expression "Asenshi-MTBB" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Asenshi-MTBB', '\b(BBT-RMX)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Asenshi-MTBB', 'Anime');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Asenshi-MTBB', 'Release Group');
-- --- END op 1519

-- --- BEGIN op 1520 ( update regular_expression "Asenshi-MTBB" )
update "regular_expressions" set "pattern" = '\b(Asenshi-MTBB)\b' where "name" = 'Asenshi-MTBB' and "pattern" = '\b(BBT-RMX)\b';
-- --- END op 1520

-- --- BEGIN op 1521 ( update custom_format "Dumpstarr LQ (Automation)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dumpstarr LQ (Automation)', 'Asenshi-MTBB', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dumpstarr LQ (Automation)', 'Asenshi-MTBB', 'Asenshi-MTBB');
-- --- END op 1521

-- --- BEGIN op 1522 ( create regular_expression "MCR" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('MCR', '\b(URANIME)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('MCR', 'Anime');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('MCR', 'Release Group');
-- --- END op 1522

-- --- BEGIN op 1523 ( update regular_expression "MCR" )
update "regular_expressions" set "pattern" = '\b(MCR)\b' where "name" = 'MCR' and "pattern" = '\b(URANIME)\b';
-- --- END op 1523

-- --- BEGIN op 1524 ( update custom_format "Dumpstarr LQ (Automation)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dumpstarr LQ (Automation)', 'MCR', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dumpstarr LQ (Automation)', 'MCR', 'MCR');
-- --- END op 1524
