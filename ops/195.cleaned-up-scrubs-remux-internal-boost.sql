-- @operation: export
-- @entity: batch
-- @name: Cleaned up Scrubs Remux/INTERNAL Boost
-- @exportedAt: 2026-04-03T15:22:31.965Z
-- @opIds: 2481, 2482, 2483, 2484, 2485, 2486, 2487, 2488, 2489, 2490, 2491, 2492, 2493, 2494

-- --- BEGIN op 2481 ( update regular_expression "Scrubs 2001 Approved Groups" )
update "regular_expressions" set "name" = 'Scrubs 2001 Approved Groups', "pattern" = '(?i)\bScrubs\b(?!.*2026)(?!.*-(BoOk|BMF|DBTV|DEFiANCE|FoV|GAMEOVER|NTROPiC-FTP|SiNNERS|WELP)(\b|$)).*' where "name" = 'Scrubs 2001 Banned Groups' and "pattern" = '(?i)\bScrubs\b(?!.*2026)(?!.*-(BoOk|BMF|DBTV|DEFiANCE|FoV|GAMEOVER|NTROPiC-FTP|SiNNERS)(\b|$)).*';
-- --- END op 2481

-- --- BEGIN op 2482 ( update custom_format "Dumpstarr LQ Release Title" )
update "condition_patterns" set "regular_expression_name" = 'Scrubs 2001 Approved Groups' where "custom_format_name" = 'Dumpstarr LQ Release Title' and "condition_name" = 'Scrubs 2001 Banned Groups' and "regular_expression_name" = 'Scrubs 2001 Banned Groups';
-- --- END op 2482

-- --- BEGIN op 2483 ( create regular_expression "Scrubs 2001 Boost" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Scrubs 2001 Boost', '(?i)\bScrubs\b(?!.*2026)(?=.*(REMUX|INTERNAL))', NULL, NULL);
-- --- END op 2483

-- --- BEGIN op 2484 ( update regular_expression "Scrubs 2001 Boost" )
insert into "tags" ("name") values ('Custom') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name)
SELECT name, 'Custom' FROM regular_expressions WHERE name IN ('Scrubs 2001 Boost') LIMIT 1;

insert into "tags" ("name") values ('Scrubs') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name)
SELECT name, 'Scrubs' FROM regular_expressions WHERE name IN ('Scrubs 2001 Boost') LIMIT 1;
-- --- END op 2484

-- --- BEGIN op 2485 ( update custom_format "Scrubs (2001) Boost" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Scrubs (2001) Boost'
	  AND name = 'Internal'
	  AND type = 'release_title'
	  AND arr_type = 'sonarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2485

-- --- BEGIN op 2486 ( update custom_format "Scrubs (2001) Boost" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Scrubs (2001) Boost'
	  AND name = 'Remux'
	  AND type = 'release_title'
	  AND arr_type = 'sonarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2486

-- --- BEGIN op 2487 ( update custom_format "Scrubs (2001) Boost" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Scrubs (2001) Boost'
	  AND name = 'Scrubs'
	  AND type = 'release_title'
	  AND arr_type = 'sonarr'
	  AND negate = 0
	  AND required = 1;
-- --- END op 2487

-- --- BEGIN op 2488 ( update custom_format "Scrubs (2001) Boost" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Scrubs (2001) Boost', 'Scrubs 2001 Boost', 'release_title', 'sonarr', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Scrubs (2001) Boost', 'Scrubs 2001 Boost', 'Scrubs 2001 Boost');
-- --- END op 2488

-- --- BEGIN op 2489 ( update custom_format "Scrubs 2001 Banned Title" )
update "custom_formats" set "name" = 'Scrubs 2001 Banned Title' where "name" = 'Scrubs (2001) Banned Title';
-- --- END op 2489

-- --- BEGIN op 2490 ( update quality_profile "TV 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Scrubs 2001 Banned Title' where "quality_profile_name" = 'TV 1080p' and "custom_format_name" = 'Scrubs (2001) Banned Title' and "arr_type" = 'sonarr' and "score" = -10000;
-- --- END op 2490

-- --- BEGIN op 2491 ( update quality_profile "TV 2160p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Scrubs 2001 Banned Title' where "quality_profile_name" = 'TV 2160p' and "custom_format_name" = 'Scrubs (2001) Banned Title' and "arr_type" = 'sonarr' and "score" = -10000;
-- --- END op 2491

-- --- BEGIN op 2492 ( update custom_format "Scrubs 2001 Boost" )
update "custom_formats" set "name" = 'Scrubs 2001 Boost' where "name" = 'Scrubs (2001) Boost';
-- --- END op 2492

-- --- BEGIN op 2493 ( update quality_profile "TV 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Scrubs 2001 Boost' where "quality_profile_name" = 'TV 1080p' and "custom_format_name" = 'Scrubs (2001) Boost' and "arr_type" = 'sonarr' and "score" = 10;
-- --- END op 2493

-- --- BEGIN op 2494 ( update quality_profile "TV 2160p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Scrubs 2001 Boost' where "quality_profile_name" = 'TV 2160p' and "custom_format_name" = 'Scrubs (2001) Boost' and "arr_type" = 'sonarr' and "score" = 10;
-- --- END op 2494
