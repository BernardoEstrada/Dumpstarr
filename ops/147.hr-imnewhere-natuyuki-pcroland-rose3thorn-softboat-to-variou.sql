-- @operation: export
-- @entity: batch
-- @name: HR/IMNEWHERE/Natuyuki/pcroland/Rose3Thorn/Softboat to various 1080p Tiers
-- @exportedAt: 2026-03-20T19:25:03.798Z
-- @opIds: 1221, 1222, 1223, 1224, 1225, 1226, 1227, 1228, 1229, 1230, 1231, 1232, 1233, 1234, 1235, 1236, 1237, 1238

-- --- BEGIN op 1221 ( create regular_expression "Softboat" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Softboat', '^(Softboat)$', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Softboat', 'Release Group');
-- --- END op 1221

-- --- BEGIN op 1222 ( create regular_expression "Rose3Thorn" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Rose3Thorn', '^(GROUP)$', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Rose3Thorn', 'Release Group');
-- --- END op 1222

-- --- BEGIN op 1223 ( update regular_expression "Rose3Thorn" )
update "regular_expressions" set "pattern" = '^(Rose3Thorn)$' where "name" = 'Rose3Thorn' and "pattern" = '^(GROUP)$';
-- --- END op 1223

-- --- BEGIN op 1224 ( create regular_expression "Natuyuki" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Natuyuki', '^(GROUP)$', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Natuyuki', 'Release Group');
-- --- END op 1224

-- --- BEGIN op 1225 ( update regular_expression "Natuyuki" )
update "regular_expressions" set "pattern" = '^(Natuyuki)$' where "name" = 'Natuyuki' and "pattern" = '^(GROUP)$';
-- --- END op 1225

-- --- BEGIN op 1226 ( create regular_expression "IMNEWHERE" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('IMNEWHERE', '^(GROUP)$', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('IMNEWHERE', 'Release Group');
-- --- END op 1226

-- --- BEGIN op 1227 ( update regular_expression "IMNEWHERE" )
update "regular_expressions" set "pattern" = '^(IMNEWHERE)$' where "name" = 'IMNEWHERE' and "pattern" = '^(GROUP)$';
-- --- END op 1227

-- --- BEGIN op 1228 ( create regular_expression "pcroland" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('pcroland', '^(GROUP)$', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('pcroland', 'Release Group');
-- --- END op 1228

-- --- BEGIN op 1229 ( create regular_expression "HR" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('HR', '^(GROUP)$', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('HR', 'Release Group');
-- --- END op 1229

-- --- BEGIN op 1230 ( update regular_expression "pcroland" )
update "regular_expressions" set "pattern" = '^(pcroland)$' where "name" = 'pcroland' and "pattern" = '^(GROUP)$';
-- --- END op 1230

-- --- BEGIN op 1231 ( update regular_expression "HR" )
update "regular_expressions" set "pattern" = '^(HR)$' where "name" = 'HR' and "pattern" = '^(GROUP)$';
-- --- END op 1231

-- --- BEGIN op 1232 ( update custom_format "1080p Bluray Tier 05" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Bluray Tier 05', 'Softboat', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Bluray Tier 05', 'Softboat', 'Softboat');
-- --- END op 1232

-- --- BEGIN op 1233 ( update custom_format "1080p Bluray Tier 05" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Bluray Tier 05', 'Rose3Thorn', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Bluray Tier 05', 'Rose3Thorn', 'Rose3Thorn');
-- --- END op 1233

-- --- BEGIN op 1234 ( update custom_format "1080p Bluray Tier 05" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Bluray Tier 05', 'Natuyuki', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Bluray Tier 05', 'Natuyuki', 'Natuyuki');
-- --- END op 1234

-- --- BEGIN op 1235 ( update custom_format "1080p Bluray Tier 05" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Bluray Tier 05', 'IMNEWHERE', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Bluray Tier 05', 'IMNEWHERE', 'IMNEWHERE');
-- --- END op 1235

-- --- BEGIN op 1236 ( update custom_format "1080p Bluray Tier 05" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Bluray Tier 05', 'pcroland', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Bluray Tier 05', 'pcroland', 'pcroland');
-- --- END op 1236

-- --- BEGIN op 1237 ( update custom_format "1080p Bluray Tier 05" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Bluray Tier 05', 'HR', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Bluray Tier 05', 'HR', 'HR');
-- --- END op 1237

-- --- BEGIN op 1238 ( update custom_format "720p Bluray Tier 05" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Bluray Tier 05', 'IMNEWHERE', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Bluray Tier 05', 'IMNEWHERE', 'IMNEWHERE');
-- --- END op 1238
