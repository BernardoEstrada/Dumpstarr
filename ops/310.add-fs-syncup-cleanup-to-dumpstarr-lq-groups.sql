-- @operation: export
-- @entity: batch
-- @name: Add FS/SyncUP/CLEANUP to Dumpstarr LQ Groups
-- @exportedAt: 2026-07-01T18:34:47.916Z
-- @opIds: 2634, 2635, 2636, 2637, 2638, 2639, 2640, 2641

-- --- BEGIN op 2634 ( create regular_expression "FS" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('FS', '^(FS)$', NULL, NULL);

insert into "tags" ("name") values ('LQ') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('FS', 'LQ');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('FS', 'Release Group');
-- --- END op 2634

-- --- BEGIN op 2635 ( create regular_expression "SyncUP" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('SyncUP', '^(FS)$', NULL, NULL);

insert into "tags" ("name") values ('LQ') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SyncUP', 'LQ');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SyncUP', 'Release Group');
-- --- END op 2635

-- --- BEGIN op 2636 ( update regular_expression "SyncUP" )
update "regular_expressions" set "pattern" = '^(SyncUP)$' where "name" = 'SyncUP' and "pattern" = '^(FS)$';
-- --- END op 2636

-- --- BEGIN op 2637 ( create regular_expression "CLEANUP" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('CLEANUP', '^(SyncUP)$', NULL, NULL);

insert into "tags" ("name") values ('LQ') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('CLEANUP', 'LQ');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('CLEANUP', 'Release Group');
-- --- END op 2637

-- --- BEGIN op 2638 ( update regular_expression "CLEANUP" )
update "regular_expressions" set "pattern" = '^(CLEANUP)$' where "name" = 'CLEANUP' and "pattern" = '^(SyncUP)$';
-- --- END op 2638

-- --- BEGIN op 2639 ( update custom_format "Dumpstarr LQ Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dumpstarr LQ Groups', 'CLEANUP', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dumpstarr LQ Groups', 'CLEANUP', 'CLEANUP');
-- --- END op 2639

-- --- BEGIN op 2640 ( update custom_format "Dumpstarr LQ Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dumpstarr LQ Groups', 'SyncUP', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dumpstarr LQ Groups', 'SyncUP', 'SyncUP');
-- --- END op 2640

-- --- BEGIN op 2641 ( update custom_format "Dumpstarr LQ Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dumpstarr LQ Groups', 'FS', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dumpstarr LQ Groups', 'FS', 'FS');
-- --- END op 2641
