-- @operation: export
-- @entity: batch
-- @name: Anime Tier Updates per TRaSH
-- @exportedAt: 2026-06-28T15:42:19.890Z
-- @opIds: 1939, 1940, 1941, 1942, 1943, 1944, 1945, 1946, 1947, 1948, 1949, 1950, 1951, 1952, 1953, 1954, 1955, 1956, 1957, 1958, 1959, 1960, 1961, 1962, 1963, 1964

-- --- BEGIN op 1939 ( update custom_format "Anime BD Tier 01" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Anime BD Tier 01'
	  AND name = 'NAN0'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 1939

-- --- BEGIN op 1940 ( update custom_format "Anime BD Tier 01" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Anime BD Tier 01'
	  AND name = 'ZR'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 1940

-- --- BEGIN op 1941 ( create regular_expression "BlackRose" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('BlackRose', '\b(BlackRose)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('BlackRose', 'Anime');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('BlackRose', 'Release Group');
-- --- END op 1941

-- --- BEGIN op 1942 ( update custom_format "Anime BD Tier 02" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Anime BD Tier 02'
	  AND name = 'PMR'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 1942

-- --- BEGIN op 1943 ( update custom_format "Anime BD Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 02', 'BlackRose', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 02', 'BlackRose', 'BlackRose');
-- --- END op 1943

-- --- BEGIN op 1944 ( update custom_format "Anime BD Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 03', 'NAN0', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 03', 'NAN0', 'NAN0');
-- --- END op 1944

-- --- BEGIN op 1945 ( update custom_format "Anime BD Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 03', 'PMR', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 03', 'PMR', 'PMR');
-- --- END op 1945

-- --- BEGIN op 1946 ( update custom_format "Anime BD Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 03', 'ZR', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 03', 'ZR', 'ZR');
-- --- END op 1946

-- --- BEGIN op 1947 ( create regular_expression "Sylvar" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Sylvar', '\b(Sylvar)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Sylvar', 'Anime');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Sylvar', 'Release Group');
-- --- END op 1947

-- --- BEGIN op 1948 ( create regular_expression "ZR (Sonarr)" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('ZR (Sonarr)', '\b(ZR)\b|-ZR-', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ZR (Sonarr)', 'Anime');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ZR (Sonarr)', 'Release Group');
-- --- END op 1948

-- --- BEGIN op 1949 ( update regular_expression "ZR (Radarr)" )
update "regular_expressions" set "name" = 'ZR (Radarr)' where "name" = 'ZR (Sonarr)';
-- --- END op 1949

-- --- BEGIN op 1950 ( update regular_expression "ZR (Sonarr)" )
update "regular_expressions" set "name" = 'ZR (Sonarr)' where "name" = 'ZR';
-- --- END op 1950

-- --- BEGIN op 1951 ( update custom_format "Anime BD Tier 03" )
update "condition_patterns" set "regular_expression_name" = 'ZR (Sonarr)' where "custom_format_name" = 'Anime BD Tier 03' and "condition_name" = 'ZR' and "regular_expression_name" in ('ZR', 'ZR (Sonarr)');
-- --- END op 1951

-- --- BEGIN op 1952 ( update custom_format "Anime WEB Tier 03" )
update "condition_patterns" set "regular_expression_name" = 'ZR (Sonarr)' where "custom_format_name" = 'Anime WEB Tier 03' and "condition_name" = 'ZR' and "regular_expression_name" in ('ZR', 'ZR (Sonarr)');
-- --- END op 1952

-- --- BEGIN op 1953 ( update custom_format "Anime BD Tier 03" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Anime BD Tier 03'
	  AND name = 'ZR'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 1953

-- --- BEGIN op 1954 ( update custom_format "Anime BD Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 03', 'ZR (Radarr)', 'release_title', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 03', 'ZR (Radarr)', 'ZR (Radarr)');
-- --- END op 1954

-- --- BEGIN op 1955 ( update custom_format "Anime BD Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 03', 'Sylvar', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 03', 'Sylvar', 'Sylvar');
-- --- END op 1955

-- --- BEGIN op 1956 ( update custom_format "Anime BD Tier 03" )
UPDATE custom_format_conditions
SET arr_type = 'all'
WHERE custom_format_name = 'Anime BD Tier 03'
  AND name = 'ZR (Radarr)'
  AND type = 'release_title'
  AND arr_type = 'radarr'
  AND negate = 0
  AND required = 0;
-- --- END op 1956

-- --- BEGIN op 1957 ( update regular_expression "ZR (Bluray)" )
update "regular_expressions" set "name" = 'ZR (Bluray)' where "name" = 'ZR (Radarr)';
-- --- END op 1957

-- --- BEGIN op 1958 ( update custom_format "Anime BD Tier 03" )
update "condition_patterns" set "regular_expression_name" = 'ZR (Bluray)' where "custom_format_name" = 'Anime BD Tier 03' and "condition_name" = 'ZR (Radarr)' and "regular_expression_name" in ('ZR (Radarr)', 'ZR (Bluray)');
-- --- END op 1958

-- --- BEGIN op 1959 ( update regular_expression "ZR (WEB)" )
update "regular_expressions" set "name" = 'ZR (WEB)' where "name" = 'ZR (Sonarr)';
-- --- END op 1959

-- --- BEGIN op 1960 ( update custom_format "Anime WEB Tier 03" )
update "condition_patterns" set "regular_expression_name" = 'ZR (WEB)' where "custom_format_name" = 'Anime WEB Tier 03' and "condition_name" = 'ZR' and "regular_expression_name" in ('ZR (Sonarr)', 'ZR (WEB)');
-- --- END op 1960

-- --- BEGIN op 1961 ( update custom_format "Anime BD Tier 03" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Anime BD Tier 03'
	  AND name = 'ZR (Radarr)'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 1961

-- --- BEGIN op 1962 ( update custom_format "Anime BD Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 03', 'ZR (Bluray)', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 03', 'ZR (Bluray)', 'ZR (Bluray)');
-- --- END op 1962

-- --- BEGIN op 1963 ( update custom_format "Anime WEB Tier 03" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Anime WEB Tier 03'
	  AND name = 'ZR'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 1963

-- --- BEGIN op 1964 ( update custom_format "Anime WEB Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime WEB Tier 03', 'ZR (WEB)', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime WEB Tier 03', 'ZR (WEB)', 'ZR (WEB)');
-- --- END op 1964
