-- @operation: export
-- @entity: batch
-- @name: Rebuilt Anime WEB Tier 03
-- @exportedAt: 2026-03-03T03:17:12.085Z
-- @opIds: 1255, 1256, 1257, 1258, 1259, 1260, 1261, 1262, 1263, 1264, 1265, 1266, 1267, 1268, 1269

-- --- BEGIN op 1255 ( create regular_expression "AnoZu" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('AnoZu', '\b(AnoZu)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('AnoZu', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('AnoZu', 'Anime');
-- --- END op 1255

-- --- BEGIN op 1256 ( create regular_expression "Dooky" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Dooky', '\b(Dooky)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Dooky', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Dooky', 'Anime');
-- --- END op 1256

-- --- BEGIN op 1257 ( update regular_expression "Kitsune (Release Title)" )
update "regular_expressions" set "name" = 'Kitsune (Release Title)', "pattern" = '\[Kitsune\]|-Kitsune\b' where "name" = 'Kitsune' and "pattern" = '(?<=^|[\s.-])Kitsune\b';

DELETE FROM regular_expression_tags WHERE regular_expression_name IN ('Kitsune', 'Kitsune (Release Title)') AND tag_name = 'WEB-DL';

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name)
SELECT name, 'Anime' FROM regular_expressions WHERE name IN ('Kitsune', 'Kitsune (Release Title)') LIMIT 1;
-- --- END op 1257

-- --- BEGIN op 1258 ( update custom_format "Kitsune" )
update "condition_patterns" set "regular_expression_name" = 'Kitsune (Release Title)' where "custom_format_name" = 'Kitsune' and "condition_name" = 'Kitsune' and "regular_expression_name" = 'Kitsune';
-- --- END op 1258

-- --- BEGIN op 1259 ( update regular_expression "SubsPlus+" )
update "regular_expressions" set "pattern" = '\b(SubsPlus\+?)\b' where "name" = 'SubsPlus+' and "pattern" = '(?<=^|[\s.-])SubsPlus+\b';
-- --- END op 1259

-- --- BEGIN op 1260 ( update regular_expression "ZR" )
update "regular_expressions" set "pattern" = '\b(ZR)\b' where "name" = 'ZR' and "pattern" = '\b(ZR)\b|-ZR-';
-- --- END op 1260

-- --- BEGIN op 1261 ( update custom_format "Anime WEB Tier 3" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Anime WEB Tier 3'
	  AND name = 'Not Bluray'
	  AND type = 'source'
	  AND arr_type = 'all'
	  AND negate = 1
	  AND required = 0;
-- --- END op 1261

-- --- BEGIN op 1262 ( update custom_format "Anime WEB Tier 3" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Anime WEB Tier 3'
	  AND name = 'Not DVD'
	  AND type = 'source'
	  AND arr_type = 'all'
	  AND negate = 1
	  AND required = 0;
-- --- END op 1262

-- --- BEGIN op 1263 ( update custom_format "Anime WEB Tier 3" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime WEB Tier 3', 'WEBRip', 'source', 'all', 0, 0);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('Anime WEB Tier 3', 'WEBRip', 'webrip');
-- --- END op 1263

-- --- BEGIN op 1264 ( update custom_format "Anime WEB Tier 3" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime WEB Tier 3', 'WEB-DL', 'source', 'all', 0, 0);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('Anime WEB Tier 3', 'WEB-DL', 'web_dl');
-- --- END op 1264

-- --- BEGIN op 1265 ( update custom_format "Anime WEB Tier 3" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime WEB Tier 3', 'AnoZu', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime WEB Tier 3', 'AnoZu', 'AnoZu');
-- --- END op 1265

-- --- BEGIN op 1266 ( update custom_format "Anime WEB Tier 3" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime WEB Tier 3', 'Dooky', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime WEB Tier 3', 'Dooky', 'Dooky');
-- --- END op 1266

-- --- BEGIN op 1267 ( update custom_format "Anime WEB Tier 3" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime WEB Tier 3', 'Kitsune', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime WEB Tier 3', 'Kitsune', 'Kitsune (Release Title)');
-- --- END op 1267

-- --- BEGIN op 1268 ( update custom_format "Anime WEB Tier 3" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime WEB Tier 3', 'SubsPlus+', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime WEB Tier 3', 'SubsPlus+', 'SubsPlus+');
-- --- END op 1268

-- --- BEGIN op 1269 ( update custom_format "Anime WEB Tier 3" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime WEB Tier 3', 'ZR', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime WEB Tier 3', 'ZR', 'ZR');
-- --- END op 1269
