-- @operation: export
-- @entity: batch
-- @name: Rebuilt Anime WEB Tier 05
-- @exportedAt: 2026-03-03T03:30:08.291Z
-- @opIds: 1282, 1283, 1284, 1285, 1286, 1287, 1288, 1289, 1290, 1291, 1292, 1293, 1294, 1295, 1296, 1297, 1298, 1299, 1300, 1301, 1302, 1303, 1304, 1305, 1306, 1307, 1308, 1309, 1310, 1311, 1312, 1313, 1314, 1315, 1316, 1317, 1318, 1319, 1320, 1321

-- --- BEGIN op 1282 ( update custom_format "Anime WEB Tier 04" )
update "custom_formats" set "name" = 'Anime WEB Tier 04' where "name" = 'Anime WEB Tier 4';
-- --- END op 1282

-- --- BEGIN op 1283 ( update quality_profile "Anime 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Anime WEB Tier 04' where "quality_profile_name" = 'Anime 1080p' and "custom_format_name" = 'Anime WEB Tier 4' and "arr_type" = 'all' and "score" = 1700;
-- --- END op 1283

-- --- BEGIN op 1284 ( update custom_format "Anime WEB Tier 03" )
update "custom_formats" set "name" = 'Anime WEB Tier 03' where "name" = 'Anime WEB Tier 3';
-- --- END op 1284

-- --- BEGIN op 1285 ( update quality_profile "Anime 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Anime WEB Tier 03' where "quality_profile_name" = 'Anime 1080p' and "custom_format_name" = 'Anime WEB Tier 3' and "arr_type" = 'all' and "score" = 1800;
-- --- END op 1285

-- --- BEGIN op 1286 ( create regular_expression "BlueLobster" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('BlueLobster', '\b(BlueLobster)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('BlueLobster', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('BlueLobster', 'Anime');
-- --- END op 1286

-- --- BEGIN op 1287 ( create regular_expression "GST" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('GST', '\b(GST)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('GST', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('GST', 'Anime');
-- --- END op 1287

-- --- BEGIN op 1288 ( create regular_expression "HorribleRips" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('HorribleRips', '\b(HorribleRips)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('HorribleRips', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('HorribleRips', 'Anime');
-- --- END op 1288

-- --- BEGIN op 1289 ( update regular_expression "HorribleSubs" )
update "regular_expressions" set "pattern" = '\b(HorribleSubs)\b' where "name" = 'HorribleSubs' and "pattern" = '(?<=^|[\s.-])HorribleSubs\b';
-- --- END op 1289

-- --- BEGIN op 1290 ( update regular_expression "KAN3D2M" )
update "regular_expressions" set "pattern" = '\b(KAN3D2M)\b' where "name" = 'KAN3D2M' and "pattern" = '(?<=^|[\s.-])KAN3D2M\b';
-- --- END op 1290

-- --- BEGIN op 1291 ( create regular_expression "KiyoshiStar" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('KiyoshiStar', '\b(KS|KiyoshiStar)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('KiyoshiStar', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('KiyoshiStar', 'Anime');
-- --- END op 1291

-- --- BEGIN op 1292 ( create regular_expression "Lia" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Lia', '\[Lia\]|-Lia\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Lia', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Lia', 'Anime');
-- --- END op 1292

-- --- BEGIN op 1293 ( create regular_expression "NanDesuKa" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('NanDesuKa', '\b(NanDesuKa)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('NanDesuKa', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('NanDesuKa', 'Anime');
-- --- END op 1293

-- --- BEGIN op 1294 ( create regular_expression "PlayWeb (Release Title)" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('PlayWeb (Release Title)', '\b(PlayWeb)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('PlayWeb (Release Title)', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('PlayWeb (Release Title)', 'Anime');
-- --- END op 1294

-- --- BEGIN op 1295 ( create regular_expression "SobsPlease" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('SobsPlease', '\b(SobsPlease)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SobsPlease', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SobsPlease', 'Anime');
-- --- END op 1295

-- --- BEGIN op 1296 ( create regular_expression "Some-Suffs" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Some-Suffs', '\b(Some-Stuffs)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Some-Suffs', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Some-Suffs', 'Anime');
-- --- END op 1296

-- --- BEGIN op 1297 ( update regular_expression "SubsPlease" )
update "regular_expressions" set "pattern" = '\b(SubsPlease)\b' where "name" = 'SubsPlease' and "pattern" = '(?<=^|[\s.-])SubsPlease\b';
-- --- END op 1297

-- --- BEGIN op 1298 ( create regular_expression "URANIME" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('URANIME', '\b(URANIME)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('URANIME', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('URANIME', 'Anime');
-- --- END op 1298

-- --- BEGIN op 1299 ( create regular_expression "ZigZag" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('ZigZag', '\[ZigZag\]|-ZigZab', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ZigZag', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ZigZag', 'Anime');
-- --- END op 1299

-- --- BEGIN op 1300 ( update custom_format "Anime WEB Tier 05" )
update "custom_formats" set "name" = 'Anime WEB Tier 05' where "name" = 'Anime WEB Tier 5';
-- --- END op 1300

-- --- BEGIN op 1301 ( update quality_profile "Anime 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Anime WEB Tier 05' where "quality_profile_name" = 'Anime 1080p' and "custom_format_name" = 'Anime WEB Tier 5' and "arr_type" = 'all' and "score" = 1600;
-- --- END op 1301

-- --- BEGIN op 1302 ( update custom_format "Anime WEB Tier 05" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Anime WEB Tier 05'
	  AND name = 'Not Bluray'
	  AND type = 'source'
	  AND arr_type = 'all'
	  AND negate = 1
	  AND required = 0;
-- --- END op 1302

-- --- BEGIN op 1303 ( update custom_format "Anime WEB Tier 05" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Anime WEB Tier 05'
	  AND name = 'Not DVD'
	  AND type = 'source'
	  AND arr_type = 'all'
	  AND negate = 1
	  AND required = 0;
-- --- END op 1303

-- --- BEGIN op 1304 ( update custom_format "Anime WEB Tier 05" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime WEB Tier 05', 'WEB-DL', 'source', 'all', 0, 0);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('Anime WEB Tier 05', 'WEB-DL', 'web_dl');
-- --- END op 1304

-- --- BEGIN op 1305 ( update custom_format "Anime WEB Tier 05" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime WEB Tier 05', 'WEBRip', 'source', 'all', 0, 0);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('Anime WEB Tier 05', 'WEBRip', 'webrip');
-- --- END op 1305

-- --- BEGIN op 1306 ( update custom_format "Anime WEB Tier 05" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime WEB Tier 05', 'BlueLobster', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime WEB Tier 05', 'BlueLobster', 'BlueLobster');
-- --- END op 1306

-- --- BEGIN op 1307 ( update custom_format "Anime WEB Tier 05" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime WEB Tier 05', 'GST', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime WEB Tier 05', 'GST', 'GST');
-- --- END op 1307

-- --- BEGIN op 1308 ( update custom_format "Anime WEB Tier 05" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime WEB Tier 05', 'HorribleRips', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime WEB Tier 05', 'HorribleRips', 'HorribleRips');
-- --- END op 1308

-- --- BEGIN op 1309 ( update custom_format "Anime WEB Tier 05" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime WEB Tier 05', 'HorribleSubs', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime WEB Tier 05', 'HorribleSubs', 'HorribleSubs');
-- --- END op 1309

-- --- BEGIN op 1310 ( update custom_format "Anime WEB Tier 05" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime WEB Tier 05', 'KAN3D2M', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime WEB Tier 05', 'KAN3D2M', 'KAN3D2M');
-- --- END op 1310

-- --- BEGIN op 1311 ( update custom_format "Anime WEB Tier 05" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime WEB Tier 05', 'KiyoshiStar', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime WEB Tier 05', 'KiyoshiStar', 'KiyoshiStar');
-- --- END op 1311

-- --- BEGIN op 1312 ( update custom_format "Anime WEB Tier 05" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime WEB Tier 05', 'Lia', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime WEB Tier 05', 'Lia', 'Lia');
-- --- END op 1312

-- --- BEGIN op 1313 ( update custom_format "Anime WEB Tier 05" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime WEB Tier 05', 'NanDesuKa', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime WEB Tier 05', 'NanDesuKa', 'NanDesuKa');
-- --- END op 1313

-- --- BEGIN op 1314 ( update custom_format "Anime WEB Tier 05" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime WEB Tier 05', 'PlayWeb', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime WEB Tier 05', 'PlayWeb', 'PlayWeb (Release Title)');
-- --- END op 1314

-- --- BEGIN op 1315 ( update custom_format "Anime WEB Tier 05" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime WEB Tier 05', 'SobsPlease', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime WEB Tier 05', 'SobsPlease', 'SobsPlease');
-- --- END op 1315

-- --- BEGIN op 1316 ( update custom_format "Anime WEB Tier 05" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime WEB Tier 05', 'Some-Stuffs', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime WEB Tier 05', 'Some-Stuffs', 'Some-Suffs');
-- --- END op 1316

-- --- BEGIN op 1317 ( update regular_expression "Some-Stuffs" )
update "regular_expressions" set "name" = 'Some-Stuffs' where "name" = 'Some-Suffs';
-- --- END op 1317

-- --- BEGIN op 1318 ( update custom_format "Anime WEB Tier 05" )
update "condition_patterns" set "regular_expression_name" = 'Some-Stuffs' where "custom_format_name" = 'Anime WEB Tier 05' and "condition_name" = 'Some-Stuffs' and "regular_expression_name" = 'Some-Suffs';
-- --- END op 1318

-- --- BEGIN op 1319 ( update custom_format "Anime WEB Tier 05" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime WEB Tier 05', 'SubsPlease', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime WEB Tier 05', 'SubsPlease', 'SubsPlease');
-- --- END op 1319

-- --- BEGIN op 1320 ( update custom_format "Anime WEB Tier 05" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime WEB Tier 05', 'URANIME', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime WEB Tier 05', 'URANIME', 'URANIME');
-- --- END op 1320

-- --- BEGIN op 1321 ( update custom_format "Anime WEB Tier 05" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime WEB Tier 05', 'ZigZag', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime WEB Tier 05', 'ZigZag', 'ZigZag');
-- --- END op 1321
