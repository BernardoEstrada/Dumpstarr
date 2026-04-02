-- @operation: export
-- @entity: batch
-- @name: Moved Scrubs 2001 Banned into Dumpstarr LQ
-- @exportedAt: 2026-04-02T23:39:15.411Z
-- @opIds: 2434, 2435, 2436, 2437, 2438, 2439, 2440, 2441, 2442, 2443, 2444, 2445, 2446, 2447, 2448, 2449, 2450, 2451, 2452, 2455, 2456, 2457, 2458, 2459

-- --- BEGIN op 2434 ( create test_entity "Scrubs" )
insert into "test_entities" ("type", "tmdb_id", "title", "year", "poster_path") values ('series', 4556, 'Scrubs', 2001, '/w7ri7byEYLdciSZOwWHj6TUAX7j.jpg');
-- --- END op 2434

-- --- BEGIN op 2435 ( create test_release "Scrubs.S01E15.My.Bed.Banter.Beyond.Upscale.Hybrid." )
insert into "test_releases" ("entity_type", "entity_tmdb_id", "title", "size_bytes", "languages", "indexers", "flags") values ('series', 4556, 'Scrubs.S01E15.My.Bed.Banter.Beyond.Upscale.Hybrid.1080p.WEBRip.DD2.0.H.264-DEADBADUGLY', NULL, '[]', '[]', '[]');
-- --- END op 2435

-- --- BEGIN op 2436 ( create test_release "Scrubs.S01E15.My.Bed.Banter.Beyond.Upscale.Hybrid." )
insert into "test_releases" ("entity_type", "entity_tmdb_id", "title", "size_bytes", "languages", "indexers", "flags") values ('series', 4556, 'Scrubs.S01E15.My.Bed.Banter.Beyond.Upscale.Hybrid.1080p.WEBRip.DD2.0.H.264-BoOK', NULL, '[]', '[]', '[]');
-- --- END op 2436

-- --- BEGIN op 2437 ( update custom_format "Dumpstarr LQ Release Title" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dumpstarr LQ Release Title', 'Scrubs (2001) Banned Groups', 'release_title', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dumpstarr LQ Release Title', 'Scrubs (2001) Banned Groups', 'Scrubs 2001 Approved Groups');
-- --- END op 2437

-- --- BEGIN op 2438 ( update custom_format "Dumpstarr LQ Release Title" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Dumpstarr LQ Release Title'
	  AND name = 'Scrubs (2001) Banned Groups'
	  AND type = 'release_title'
	  AND arr_type = 'sonarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2438

-- --- BEGIN op 2439 ( update custom_format "Dumpstarr LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dumpstarr LQ', 'Scrubs Banned Groups', 'release_group', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dumpstarr LQ', 'Scrubs Banned Groups', 'Scrubs 2001 Approved Groups');
-- --- END op 2439

-- --- BEGIN op 2440 ( update custom_format "Dumpstarr LQ" )
UPDATE custom_format_conditions
SET negate = 1
WHERE custom_format_name = 'Dumpstarr LQ'
  AND name = 'Scrubs Banned Groups'
  AND type = 'release_group'
  AND arr_type = 'sonarr'
  AND negate = 0
  AND required = 0;
-- --- END op 2440

-- --- BEGIN op 2441 ( create regular_expression "Scrubs (2001) Banned Groups" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Scrubs (2001) Banned Groups', '(?i)\bScrubs\b(?!.*2026)(?!.*\b(BoOk|BMF|DBTV|DEFiANCE|FoV|GAMEOVER|NTROPiC-FTP|SiNNERS)\b).*', NULL, NULL);
-- --- END op 2441

-- --- BEGIN op 2442 ( update custom_format "Dumpstarr LQ" )
UPDATE custom_format_conditions
SET negate = 0
WHERE custom_format_name = 'Dumpstarr LQ'
  AND name = 'Scrubs Banned Groups'
  AND type = 'release_group'
  AND arr_type = 'sonarr'
  AND negate = 1
  AND required = 0;

DELETE FROM condition_patterns WHERE custom_format_name = 'Dumpstarr LQ' AND condition_name = 'Scrubs Banned Groups' AND regular_expression_name = 'Scrubs 2001 Approved Groups';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dumpstarr LQ', 'Scrubs Banned Groups', 'Scrubs (2001) Banned Groups');
-- --- END op 2442

-- --- BEGIN op 2443 ( update regular_expression "Scrubs 2001 Banned Groups" )
update "regular_expressions" set "name" = 'Scrubs 2001 Banned Groups', "pattern" = '(?i)\bScrubs\b.*(\b(BoOk|BMF|DBTV|DEFiANCE|FoV|GAMEOVER|NTROPiC-FTP|SiNNERS)\b|2026)' where "name" = 'Scrubs (2001) Banned Groups' and "pattern" = '(?i)\bScrubs\b(?!.*2026)(?!.*\b(BoOk|BMF|DBTV|DEFiANCE|FoV|GAMEOVER|NTROPiC-FTP|SiNNERS)\b).*';
-- --- END op 2443

-- --- BEGIN op 2444 ( update custom_format "Dumpstarr LQ" )
update "condition_patterns" set "regular_expression_name" = 'Scrubs 2001 Banned Groups' where "custom_format_name" = 'Dumpstarr LQ' and "condition_name" = 'Scrubs Banned Groups' and "regular_expression_name" = 'Scrubs (2001) Banned Groups';
-- --- END op 2444

-- --- BEGIN op 2445 ( update custom_format "Dumpstarr LQ" )
UPDATE custom_format_conditions
SET negate = 1
WHERE custom_format_name = 'Dumpstarr LQ'
  AND name = 'Scrubs Banned Groups'
  AND type = 'release_group'
  AND arr_type = 'sonarr'
  AND negate = 0
  AND required = 0;
-- --- END op 2445

-- --- BEGIN op 2446 ( update regular_expression "Scrubs 2001 Banned Groups" )
update "regular_expressions" set "pattern" = '\bScrubs\b(?!.*2026).*(\b(BoOk|BMF|DBTV|DEFiANCE|FoV|GAMEOVER|NTROPiC-FTP|SiNNERS)\b|2026)' where "name" = 'Scrubs 2001 Banned Groups' and "pattern" = '(?i)\bScrubs\b.*(\b(BoOk|BMF|DBTV|DEFiANCE|FoV|GAMEOVER|NTROPiC-FTP|SiNNERS)\b|2026)';
-- --- END op 2446

-- --- BEGIN op 2447 ( update regular_expression "Scrubs 2001 Banned Groups" )
update "regular_expressions" set "pattern" = '\bScrubs\b(?!.*2026).*(\b(BoOk|BMF|DBTV|DEFiANCE|FoV|GAMEOVER|NTROPiC-FTP|SiNNERS))' where "name" = 'Scrubs 2001 Banned Groups' and "pattern" = '\bScrubs\b(?!.*2026).*(\b(BoOk|BMF|DBTV|DEFiANCE|FoV|GAMEOVER|NTROPiC-FTP|SiNNERS)\b|2026)';
-- --- END op 2447

-- --- BEGIN op 2448 ( update regular_expression "Scrubs 2001 Banned Groups" )
update "regular_expressions" set "pattern" = '(?i)\bScrubs\b(?!.*2026)(?!.*\b(BoOk|BMF|DBTV|DEFiANCE|FoV|GAMEOVER|NTROPiC-FTP|SiNNERS)\b).*' where "name" = 'Scrubs 2001 Banned Groups' and "pattern" = '\bScrubs\b(?!.*2026).*(\b(BoOk|BMF|DBTV|DEFiANCE|FoV|GAMEOVER|NTROPiC-FTP|SiNNERS))';
-- --- END op 2448

-- --- BEGIN op 2449 ( update regular_expression "Scrubs 2001 Banned Groups" )
update "regular_expressions" set "pattern" = '(?i)\bScrubs\b(?!.*2026)(?!.*-(BoOk|BMF|DBTV|DEFiANCE|FoV|GAMEOVER|NTROPiC-FTP|SiNNERS)(\b|$)).*' where "name" = 'Scrubs 2001 Banned Groups' and "pattern" = '(?i)\bScrubs\b(?!.*2026)(?!.*\b(BoOk|BMF|DBTV|DEFiANCE|FoV|GAMEOVER|NTROPiC-FTP|SiNNERS)\b).*';
-- --- END op 2449

-- --- BEGIN op 2450 ( update regular_expression "Scrubs 2001 Banned Groups" )
update "regular_expressions" set "pattern" = '(?i)\bScrubs\b(?!.*2026)(?!(?:.*[-. ])\b(BoOk|BMF|DBTV|DEFiANCE|FoV|GAMEOVER|NTROPiC-FTP|SiNNERS)\b).*' where "name" = 'Scrubs 2001 Banned Groups' and "pattern" = '(?i)\bScrubs\b(?!.*2026)(?!.*-(BoOk|BMF|DBTV|DEFiANCE|FoV|GAMEOVER|NTROPiC-FTP|SiNNERS)(\b|$)).*';
-- --- END op 2450

-- --- BEGIN op 2451 ( update custom_format "Dumpstarr LQ" )
UPDATE custom_format_conditions
SET negate = 0
WHERE custom_format_name = 'Dumpstarr LQ'
  AND name = 'Scrubs Banned Groups'
  AND type = 'release_group'
  AND arr_type = 'sonarr'
  AND negate = 1
  AND required = 0;
-- --- END op 2451

-- --- BEGIN op 2452 ( update regular_expression "Scrubs 2001 Banned Groups" )
update "regular_expressions" set "pattern" = '(?i)\bScrubs\b(?!.*2026)(?!.*-(BoOk|BMF|DBTV|DEFiANCE|FoV|GAMEOVER|NTROPiC-FTP|SiNNERS)(\b|$)).*' where "name" = 'Scrubs 2001 Banned Groups' and "pattern" = '(?i)\bScrubs\b(?!.*2026)(?!(?:.*[-. ])\b(BoOk|BMF|DBTV|DEFiANCE|FoV|GAMEOVER|NTROPiC-FTP|SiNNERS)\b).*';
-- --- END op 2452

-- --- BEGIN op 2455 ( update quality_profile "TV 1080p" )
delete from "quality_profile_custom_formats" where "quality_profile_name" = 'TV 1080p' and "custom_format_name" = 'Scrubs (2001) Banned Groups' and "arr_type" = 'sonarr' and "score" = -10000;
-- --- END op 2455

-- --- BEGIN op 2456 ( update quality_profile "TV 2160p" )
delete from "quality_profile_custom_formats" where "quality_profile_name" = 'TV 2160p' and "custom_format_name" = 'Scrubs (2001) Banned Groups' and "arr_type" = 'sonarr' and "score" = -10000;
-- --- END op 2456

-- --- BEGIN op 2457 ( delete custom_format "Scrubs (2001) Banned Groups" )
delete from "custom_formats" where "name" = 'Scrubs (2001) Banned Groups';
-- --- END op 2457

-- --- BEGIN op 2458 ( delete regular_expression "Scrubs 2001 Approved Groups" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Scrubs 2001 Approved Groups' AND tag_name = 'Custom';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Scrubs 2001 Approved Groups' AND tag_name = 'Scrubs';

delete from "regular_expressions" where "name" = 'Scrubs 2001 Approved Groups' and "pattern" = '\b(BoOk|BMF|DBTV|DEFiANCE|FoV|GAMEOVER|NTROPiC-FTP|SiNNERS)\b';
-- --- END op 2458

-- --- BEGIN op 2459 ( update regular_expression "Scrubs 2001 Banned Groups" )
update "regular_expressions" set "description" = 'Matches any group not in the list one the 2001 version of Scrubs.' where "name" = 'Scrubs 2001 Banned Groups' and "description" is null;
-- --- END op 2459
