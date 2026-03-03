-- @operation: export
-- @entity: batch
-- @name: Rebuilt Anime WEB Tier 04
-- @exportedAt: 2026-03-03T03:20:01.959Z
-- @opIds: 1271, 1272, 1273, 1274, 1275, 1276, 1277, 1278, 1279, 1280

-- --- BEGIN op 1271 ( update custom_format "Anime WEB Tier 4" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Anime WEB Tier 4'
	  AND name = 'Not Bluray'
	  AND type = 'source'
	  AND arr_type = 'all'
	  AND negate = 1
	  AND required = 0;
-- --- END op 1271

-- --- BEGIN op 1272 ( update custom_format "Anime WEB Tier 4" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Anime WEB Tier 4'
	  AND name = 'Not DVD'
	  AND type = 'source'
	  AND arr_type = 'all'
	  AND negate = 1
	  AND required = 0;
-- --- END op 1272

-- --- BEGIN op 1273 ( update custom_format "Anime WEB Tier 4" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime WEB Tier 4', 'WEB-DL', 'source', 'all', 0, 0);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('Anime WEB Tier 4', 'WEB-DL', 'web_dl');
-- --- END op 1273

-- --- BEGIN op 1274 ( update custom_format "Anime WEB Tier 4" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime WEB Tier 4', 'WEBRip', 'source', 'all', 0, 0);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('Anime WEB Tier 4', 'WEBRip', 'webrip');
-- --- END op 1274

-- --- BEGIN op 1275 ( update regular_expression "Erai-Raws" )
update "regular_expressions" set "pattern" = '\b(Erai-raws)\b' where "name" = 'Erai-Raws' and "pattern" = '(?<=^|[\s.-])Erai-Raws\b';
-- --- END op 1275

-- --- BEGIN op 1276 ( create regular_expression "ToonsHub" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('ToonsHub', '\b(ToonsHub)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ToonsHub', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ToonsHub', 'Anime');
-- --- END op 1276

-- --- BEGIN op 1277 ( update regular_expression "VARYG" )
update "regular_expressions" set "pattern" = '\b(VARYG)\b' where "name" = 'VARYG' and "pattern" = '(?<=^|[\s.-])VARYG\b';
-- --- END op 1277

-- --- BEGIN op 1278 ( update custom_format "Anime WEB Tier 4" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime WEB Tier 4', 'Erai-Raws', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime WEB Tier 4', 'Erai-Raws', 'Erai-Raws');
-- --- END op 1278

-- --- BEGIN op 1279 ( update custom_format "Anime WEB Tier 4" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime WEB Tier 4', 'ToonsHub', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime WEB Tier 4', 'ToonsHub', 'ToonsHub');
-- --- END op 1279

-- --- BEGIN op 1280 ( update custom_format "Anime WEB Tier 4" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime WEB Tier 4', 'VARYG', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime WEB Tier 4', 'VARYG', 'VARYG');
-- --- END op 1280
