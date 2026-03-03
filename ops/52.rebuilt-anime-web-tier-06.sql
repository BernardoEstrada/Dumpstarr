-- @operation: export
-- @entity: batch
-- @name: Rebuilt Anime WEB Tier 06
-- @exportedAt: 2026-03-03T03:35:48.979Z
-- @opIds: 1323, 1324, 1325, 1326, 1327, 1328, 1329, 1330, 1331, 1332, 1333, 1334, 1335, 1336, 1337, 1338, 1339, 1340, 1341, 1342

-- --- BEGIN op 1323 ( create regular_expression "DameDesuYo" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('DameDesuYo', '\b(DameDesuYo)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('DameDesuYo', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('DameDesuYo', 'Anime');
-- --- END op 1323

-- --- BEGIN op 1324 ( update regular_expression "Doki" )
update "regular_expressions" set "pattern" = '\[Doki\]|-Doki\b' where "name" = 'Doki' and "pattern" = '(?<=^|[\s.-])Doki\b';
-- --- END op 1324

-- --- BEGIN op 1325 ( update regular_expression "Kaleido" )
update "regular_expressions" set "pattern" = '\b(Kaleido)\b' where "name" = 'Kaleido' and "pattern" = '(?<=^|[\s.-])Kaleido\b';
-- --- END op 1325

-- --- BEGIN op 1326 ( create regular_expression "Kantai" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Kantai', '\[Kantai\]|-Kantai\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Kantai', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Kantai', 'Anime');
-- --- END op 1326

-- --- BEGIN op 1327 ( create regular_expression "KawaSubs" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('KawaSubs', '\b(KawaSubs)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('KawaSubs', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('KawaSubs', 'Anime');
-- --- END op 1327

-- --- BEGIN op 1328 ( update custom_format "Anime WEB Tier 6" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Anime WEB Tier 6'
	  AND name = 'Not Bluray'
	  AND type = 'source'
	  AND arr_type = 'all'
	  AND negate = 1
	  AND required = 0;
-- --- END op 1328

-- --- BEGIN op 1329 ( update custom_format "Anime WEB Tier 6" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Anime WEB Tier 6'
	  AND name = 'Not DVD'
	  AND type = 'source'
	  AND arr_type = 'all'
	  AND negate = 1
	  AND required = 0;
-- --- END op 1329

-- --- BEGIN op 1330 ( update custom_format "Anime WEB Tier 6" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime WEB Tier 6', 'WEB-DL', 'source', 'all', 0, 0);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('Anime WEB Tier 6', 'WEB-DL', 'web_dl');
-- --- END op 1330

-- --- BEGIN op 1331 ( update custom_format "Anime WEB Tier 6" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime WEB Tier 6', 'WEBRip', 'source', 'all', 0, 0);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('Anime WEB Tier 6', 'WEBRip', 'webrip');
-- --- END op 1331

-- --- BEGIN op 1332 ( update custom_format "Anime WEB Tier 6" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime WEB Tier 6', '9volt', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime WEB Tier 6', '9volt', '9volt');
-- --- END op 1332

-- --- BEGIN op 1333 ( update custom_format "Anime WEB Tier 6" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime WEB Tier 6', 'Asenshi', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime WEB Tier 6', 'Asenshi', 'Asenshi');
-- --- END op 1333

-- --- BEGIN op 1334 ( update custom_format "Anime WEB Tier 6" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime WEB Tier 6', 'Chihiro', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime WEB Tier 6', 'Chihiro', 'Chihiro');
-- --- END op 1334

-- --- BEGIN op 1335 ( update custom_format "Anime WEB Tier 6" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime WEB Tier 6', 'Commie', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime WEB Tier 6', 'Commie', 'Commie');
-- --- END op 1335

-- --- BEGIN op 1336 ( update custom_format "Anime WEB Tier 6" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime WEB Tier 6', 'DameDesuYo', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime WEB Tier 6', 'DameDesuYo', 'DameDesuYo');
-- --- END op 1336

-- --- BEGIN op 1337 ( update custom_format "Anime WEB Tier 6" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime WEB Tier 6', 'Doki', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime WEB Tier 6', 'Doki', 'Doki');
-- --- END op 1337

-- --- BEGIN op 1338 ( update custom_format "Anime WEB Tier 6" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime WEB Tier 6', 'GJM', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime WEB Tier 6', 'GJM', 'GJM');
-- --- END op 1338

-- --- BEGIN op 1339 ( update custom_format "Anime WEB Tier 6" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime WEB Tier 6', 'Kaleido', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime WEB Tier 6', 'Kaleido', 'Kaleido');
-- --- END op 1339

-- --- BEGIN op 1340 ( update custom_format "Anime WEB Tier 6" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime WEB Tier 6', 'Kantai', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime WEB Tier 6', 'Kantai', 'Kantai');
-- --- END op 1340

-- --- BEGIN op 1341 ( update custom_format "Anime WEB Tier 6" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime WEB Tier 6', 'KawaSubs', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime WEB Tier 6', 'KawaSubs', 'KawaSubs');
-- --- END op 1341

-- --- BEGIN op 1342 ( update custom_format "Anime WEB Tier 6" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime WEB Tier 6', 'Tsundere', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime WEB Tier 6', 'Tsundere', 'Tsundere');
-- --- END op 1342
