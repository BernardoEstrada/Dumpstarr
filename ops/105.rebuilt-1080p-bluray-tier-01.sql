-- @operation: export
-- @entity: batch
-- @name: Rebuilt 1080p Bluray Tier 01
-- @exportedAt: 2026-03-06T17:12:22.089Z
-- @opIds: 2544, 2546, 2548, 2549, 2550, 2551, 2552, 2553, 2554, 2555, 2556, 2557, 2558, 2559, 2560, 2561, 2562, 2563

-- --- BEGIN op 2544 ( create regular_expression "coffee" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('coffee', '^(coffee)$', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('coffee', 'Release Group');
-- --- END op 2544

-- --- BEGIN op 2546 ( create regular_expression "TeamSyndicate" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('TeamSyndicate', '^(coffee)$', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TeamSyndicate', 'Release Group');
-- --- END op 2546

-- --- BEGIN op 2548 ( update regular_expression "DON" )
update "regular_expressions" set "pattern" = '^(DON)$' where "name" = 'DON' and "pattern" = '(?<=^|[\s.-])DON\b';

DELETE FROM regular_expression_tags WHERE regular_expression_name IN ('DON') AND tag_name = 'Bluray';
-- --- END op 2548

-- --- BEGIN op 2549 ( update regular_expression "REBORN" )
update "regular_expressions" set "pattern" = '^(REBORN)$' where "name" = 'REBORN' and "pattern" = '(?<=^|[\s.-])REBORN\b';
-- --- END op 2549

-- --- BEGIN op 2550 ( update regular_expression "SA89" )
update "regular_expressions" set "pattern" = '^(SA89)$' where "name" = 'SA89' and "pattern" = '(?<=^|[\s.-])SA89\b';
-- --- END op 2550

-- --- BEGIN op 2551 ( update regular_expression "SoLaR" )
update "regular_expressions" set "pattern" = '^(SoLaR)$' where "name" = 'SoLaR' and "pattern" = '(?<=^|[\s.-])SoLaR\b';

DELETE FROM regular_expression_tags WHERE regular_expression_name IN ('SoLaR') AND tag_name = 'Bluray';
-- --- END op 2551

-- --- BEGIN op 2552 ( update regular_expression "REBORN" )
DELETE FROM regular_expression_tags WHERE regular_expression_name IN ('REBORN') AND tag_name = 'Bluray';
-- --- END op 2552

-- --- BEGIN op 2553 ( update regular_expression "TeamSyndicate" )
update "regular_expressions" set "pattern" = '^(TeamSyndicate)$' where "name" = 'TeamSyndicate' and "pattern" = '^(coffee)$';
-- --- END op 2553

-- --- BEGIN op 2554 ( update regular_expression "ZoroSenpai" )
update "regular_expressions" set "pattern" = '^(ZoroSenpai)$' where "name" = 'ZoroSenpai' and "pattern" = '(?<=^|[\s.-])ZoroSenpai\b';

DELETE FROM regular_expression_tags WHERE regular_expression_name IN ('ZoroSenpai') AND tag_name = 'Bluray';
-- --- END op 2554

-- --- BEGIN op 2555 ( update custom_format "1080p Bluray Tier 01" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '1080p Bluray Tier 01'
	  AND name = 'Dictionarry 1080p Tier 01'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2555

-- --- BEGIN op 2556 ( update custom_format "1080p Bluray Tier 01" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Bluray Tier 01', 'coffee', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Bluray Tier 01', 'coffee', 'coffee');
-- --- END op 2556

-- --- BEGIN op 2557 ( update custom_format "1080p Bluray Tier 01" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Bluray Tier 01', 'DON', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Bluray Tier 01', 'DON', 'DON');
-- --- END op 2557

-- --- BEGIN op 2558 ( update custom_format "1080p Bluray Tier 01" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Bluray Tier 01', 'REBORN', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Bluray Tier 01', 'REBORN', 'REBORN');
-- --- END op 2558

-- --- BEGIN op 2559 ( update custom_format "1080p Bluray Tier 01" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Bluray Tier 01', 'SA89', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Bluray Tier 01', 'SA89', 'SA89');
-- --- END op 2559

-- --- BEGIN op 2560 ( update custom_format "1080p Bluray Tier 01" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Bluray Tier 01', 'SoLaR', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Bluray Tier 01', 'SoLaR', 'SA89');
-- --- END op 2560

-- --- BEGIN op 2561 ( update custom_format "1080p Bluray Tier 01" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Bluray Tier 01', 'TeamSyndicate', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Bluray Tier 01', 'TeamSyndicate', 'TeamSyndicate');
-- --- END op 2561

-- --- BEGIN op 2562 ( update custom_format "1080p Bluray Tier 01" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Bluray Tier 01', 'ZoroSenpai', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Bluray Tier 01', 'ZoroSenpai', 'ZoroSenpai');
-- --- END op 2562

-- --- BEGIN op 2563 ( delete regular_expression "Dictionarry 1080p Tier 01" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dictionarry 1080p Tier 01' AND tag_name = 'Dictionarry';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dictionarry 1080p Tier 01' AND tag_name = 'Release Group Tier';

delete from "regular_expressions" where "name" = 'Dictionarry 1080p Tier 01' and "pattern" = '^(coffee|DON|REBORN|SA89|SoLaR|TeamSyndicate|ZoroSenpai)$';
-- --- END op 2563
