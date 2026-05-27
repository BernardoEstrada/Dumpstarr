-- @operation: export
-- @entity: batch
-- @name: Added Spider-Noir Authentic B&W Regex
-- @exportedAt: 2026-05-27T17:52:04.218Z
-- @opIds: 1427, 1428, 1429, 1430, 1431, 1432, 1433, 1434, 1435, 1436, 1437, 1438, 1439, 1441, 1442, 1443, 1444, 1445, 1446, 1447, 1448, 1449, 1450, 1451, 1452, 1453, 1454

-- --- BEGIN op 1427 ( create test_entity "Spider-Noir" )
insert into "test_entities" ("type", "tmdb_id", "title", "year", "poster_path") values ('series', 220102, 'Spider-Noir', 2026, '/oD8WSVqz84ZRfelkr7JPeJwR9Iv.jpg');
-- --- END op 1427

-- --- BEGIN op 1428 ( create test_release "Spider-Noir S01E08 The Man in the Mask 1080p AMZN " )
insert into "test_releases" ("entity_type", "entity_tmdb_id", "title", "size_bytes", "languages", "indexers", "flags") values ('series', 220102, 'Spider-Noir S01E08 The Man in the Mask 1080p AMZN WEB-DL DDP5 1 Atmos H 264-FLUX', 4724464026, '["English"]', '[]', '[]');
-- --- END op 1428

-- --- BEGIN op 1429 ( create regular_expression "Spider-Noir" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Spider-Noir', '(?i)^spider[ ._-]+noir.*?\b', NULL, NULL);
-- --- END op 1429

-- --- BEGIN op 1430 ( update regular_expression "Spider-Noir" )
update "regular_expressions" set "description" = 'Matches releases for the show "Spider-Noir"' where "name" = 'Spider-Noir' and "description" is null;
-- --- END op 1430

-- --- BEGIN op 1431 ( update regular_expression "Spider-Noir" )
insert into "tags" ("name") values ('Custom') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Spider-Noir', 'Custom');
-- --- END op 1431

-- --- BEGIN op 1432 ( create custom_format "Spider-Noir Authentic B&W" )
insert into "custom_formats" ("name", "description") values ('Spider-Noir Authentic B&W', '');
-- --- END op 1432

-- --- BEGIN op 1433 ( update custom_format "Spider-Noir Authentic B&W" )
update "custom_formats" set "description" = 'Matches release of Spider-Noir in the "Authentic Black and White" variant.' where "name" = 'Spider-Noir Authentic B&W' and "description" = '';
-- --- END op 1433

-- --- BEGIN op 1434 ( update custom_format "Spider-Noir Authentic B&W" )
insert into "tags" ("name") values ('Custom') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('Spider-Noir Authentic B&W', 'Custom');
-- --- END op 1434

-- --- BEGIN op 1435 ( update custom_format "Spider-Noir Authentic B&W" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Spider-Noir Authentic B&W', 'Spider-Noir', 'release_title', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Spider-Noir Authentic B&W', 'Spider-Noir', 'Spider-Noir');
-- --- END op 1435

-- --- BEGIN op 1436 ( update custom_format "Spider-Noir Authentic B&W" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Spider-Noir Authentic B&W', 'B&W', 'release_title', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Spider-Noir Authentic B&W', 'B&W', 'B&W');
-- --- END op 1436

-- --- BEGIN op 1437 ( update quality_profile "TV 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV 1080p', 'Spider-Noir Authentic B&W', 'sonarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV 1080p'
    AND custom_format_name = 'Spider-Noir Authentic B&W'
    AND arr_type = 'sonarr'
);
-- --- END op 1437

-- --- BEGIN op 1438 ( update custom_format "Spider-Noir Authentic B&W" )
UPDATE custom_format_conditions
SET required = 1
WHERE custom_format_name = 'Spider-Noir Authentic B&W'
  AND name = 'B&W'
  AND type = 'release_title'
  AND arr_type = 'sonarr'
  AND negate = 0
  AND required = 0;
-- --- END op 1438

-- --- BEGIN op 1439 ( update custom_format "Spider-Noir Authentic B&W" )
UPDATE custom_format_conditions
SET required = 1
WHERE custom_format_name = 'Spider-Noir Authentic B&W'
  AND name = 'Spider-Noir'
  AND type = 'release_title'
  AND arr_type = 'sonarr'
  AND negate = 0
  AND required = 0;
-- --- END op 1439

-- --- BEGIN op 1441 ( update quality_profile "TV 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 1080p'
  AND custom_format_name = 'Spider-Noir Authentic B&W'
  AND arr_type = 'sonarr'
  AND score = 1000;
-- --- END op 1441

-- --- BEGIN op 1442 ( update custom_format "Spider-Noir Authentic B&W" )
update "custom_formats" set "description" = 'Matches release of Spider-Noir in the "Authentic Black and White" variant. Add this format to your TV profile(s) and score it at 1500 to always prefer the authentic version.' where "name" = 'Spider-Noir Authentic B&W' and "description" = 'Matches release of Spider-Noir in the "Authentic Black and White" variant.';
-- --- END op 1442

-- --- BEGIN op 1443 ( update regular_expression "Spider-Noir" )
update "regular_expressions" set "description" = 'Matches the Black and White version of releases for the show "Spider-Noir".' where "name" = 'Spider-Noir' and "description" = 'Matches releases for the show "Spider-Noir"';
-- --- END op 1443

-- --- BEGIN op 1444 ( update regular_expression "Spider-Noir" )
update "regular_expressions" set "pattern" = '(?i)^spider[ ._-]+noir.*?\bBW\b' where "name" = 'Spider-Noir' and "pattern" = '(?i)^spider[ ._-]+noir.*?\b';
-- --- END op 1444

-- --- BEGIN op 1445 ( update regular_expression "Spider-Noir Authentic B&W" )
update "regular_expressions" set "name" = 'Spider-Noir Authentic B&W' where "name" = 'Spider-Noir';
-- --- END op 1445

-- --- BEGIN op 1446 ( update custom_format "Spider-Noir Authentic B&W" )
update "condition_patterns" set "regular_expression_name" = 'Spider-Noir Authentic B&W' where "custom_format_name" = 'Spider-Noir Authentic B&W' and "condition_name" = 'Spider-Noir' and "regular_expression_name" in ('Spider-Noir', 'Spider-Noir Authentic B&W');
-- --- END op 1446

-- --- BEGIN op 1447 ( update custom_format "TV Editions" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TV Editions', 'Spider-Noir Authentic B&W', 'release_title', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('TV Editions', 'Spider-Noir Authentic B&W', 'Spider-Noir Authentic B&W');
-- --- END op 1447

-- --- BEGIN op 1448 ( update custom_format "TV Editions" )
UPDATE custom_format_conditions
SET arr_type = 'sonarr'
WHERE custom_format_name = 'TV Editions'
  AND name = 'The Office (US) Superfan Episodes'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 1448

-- --- BEGIN op 1449 ( delete custom_format "Spider-Noir Authentic B&W" )
delete from "custom_formats" where "name" = 'Spider-Noir Authentic B&W';
-- --- END op 1449

-- --- BEGIN op 1450 ( update quality_profile "TV 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1000
WHERE quality_profile_name = 'TV 1080p'
  AND custom_format_name = 'TV Editions'
  AND arr_type = 'sonarr'
  AND score = -1000;
-- --- END op 1450

-- --- BEGIN op 1451 ( update quality_profile "TV 2160p" )
UPDATE quality_profile_custom_formats
SET score = 1000
WHERE quality_profile_name = 'TV 2160p'
  AND custom_format_name = 'TV Editions'
  AND arr_type = 'sonarr'
  AND score = -1000;
-- --- END op 1451

-- --- BEGIN op 1452 ( create test_release "Spider-Noir S01E01 Step Into My Office BW 1080p AM" )
insert into "test_releases" ("entity_type", "entity_tmdb_id", "title", "size_bytes", "languages", "indexers", "flags") values ('series', 220102, 'Spider-Noir S01E01 Step Into My Office BW 1080p AMZN WEB-DL DDP5 1 Atmos H 264-playWEB', 4617089843, '["English"]', '[]', '[]');
-- --- END op 1452

-- --- BEGIN op 1453 ( update quality_profile "TV 1080p" )
UPDATE quality_profile_custom_formats
SET score = 101
WHERE quality_profile_name = 'TV 1080p'
  AND custom_format_name = 'TV Editions'
  AND arr_type = 'sonarr'
  AND score = 1000;
-- --- END op 1453

-- --- BEGIN op 1454 ( update quality_profile "TV 2160p" )
UPDATE quality_profile_custom_formats
SET score = 101
WHERE quality_profile_name = 'TV 2160p'
  AND custom_format_name = 'TV Editions'
  AND arr_type = 'sonarr'
  AND score = 1000;
-- --- END op 1454
