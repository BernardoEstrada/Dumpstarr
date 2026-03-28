-- @operation: export
-- @entity: batch
-- @name: Cleaned up custom Banned Groups/Added The Office (US) Banned Groups to Bad Source/Renamed Incorrect Source to Bad Source
-- @exportedAt: 2026-03-28T22:19:11.600Z
-- @opIds: 1444, 1445, 1446, 1447, 1448, 1449, 1450, 1451, 1452, 1453, 1454, 1455, 1456, 1457, 1458, 1459, 1460, 1461, 1462, 1463, 1464, 1467, 1468, 1469, 1470, 1471, 1472, 1473, 1474, 1475, 1476, 1477, 1478, 1479, 1480

-- --- BEGIN op 1444 ( create custom_format "The Office" )
insert into "custom_formats" ("name", "description") values ('The Office', '');
-- --- END op 1444

-- --- BEGIN op 1445 ( update custom_format "The Office" )
update "custom_formats" set "description" = 'Negates certain groups that cause import/automation issues with The Office (US).' where "name" = 'The Office' and "description" = '';
-- --- END op 1445

-- --- BEGIN op 1446 ( update custom_format "The Office" )
insert into "tags" ("name") values ('Custom') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('The Office', 'Custom');
-- --- END op 1446

-- --- BEGIN op 1447 ( update custom_format "The Office (US)" )
update "custom_formats" set "name" = 'The Office (US)' where "name" = 'The Office';
-- --- END op 1447

-- --- BEGIN op 1448 ( update custom_format "The Office (US)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('The Office (US)', 'HONE', 'release_group', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('The Office (US)', 'HONE', 'HONE');
-- --- END op 1448

-- --- BEGIN op 1449 ( create regular_expression "The Office (US)" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('The Office (US)', '\bScrubs\b(?!.*2026)', NULL, NULL);

insert into "tags" ("name") values ('Custom') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('The Office (US)', 'Custom');

insert into "tags" ("name") values ('Scrubs') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('The Office (US)', 'Scrubs');
-- --- END op 1449

-- --- BEGIN op 1450 ( update regular_expression "The Office (US)" )
update "regular_expressions" set "pattern" = '\bThe.Office\b(?!.*2005)' where "name" = 'The Office (US)' and "pattern" = '\bScrubs\b(?!.*2026)';
-- --- END op 1450

-- --- BEGIN op 1451 ( update regular_expression "The Office (US)" )
update "regular_expressions" set "pattern" = '\bthe[ ._-]+office\b(?!.*2005)' where "name" = 'The Office (US)' and "pattern" = '\bThe.Office\b(?!.*2005)';
-- --- END op 1451

-- --- BEGIN op 1452 ( update regular_expression "The Office (US)" )
DELETE FROM regular_expression_tags WHERE regular_expression_name IN ('The Office (US)') AND tag_name = 'Scrubs';
-- --- END op 1452

-- --- BEGIN op 1453 ( update custom_format "The Office (US)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('The Office (US)', 'The Office (US)', 'release_title', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('The Office (US)', 'The Office (US)', 'The Office (US)');
-- --- END op 1453

-- --- BEGIN op 1454 ( create custom_format "The Office (US)" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('The Office (US)', 'The.Office.(2005).S04.(1080p.AMZN.WEB-DL.H265.SDR.DDP.5.1.English.-.HONE)', 'series', 1, NULL);
-- --- END op 1454

-- --- BEGIN op 1455 ( update regular_expression "The Office (US)" )
update "regular_expressions" set "pattern" = '\bthe[ ._-]+office\b(?=.*2005)' where "name" = 'The Office (US)' and "pattern" = '\bthe[ ._-]+office\b(?!.*2005)';
-- --- END op 1455

-- --- BEGIN op 1456 ( update custom_format "The Office (US) Banned Groups" )
update "custom_formats" set "name" = 'The Office (US) Banned Groups' where "name" = 'The Office (US)';
-- --- END op 1456

-- --- BEGIN op 1457 ( update quality_profile "TV 2160p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV 2160p', 'The Office (US) Banned Groups', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV 2160p'
    AND custom_format_name = 'The Office (US) Banned Groups'
    AND arr_type = 'sonarr'
);
-- --- END op 1457

-- --- BEGIN op 1458 ( update quality_profile "TV 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV 1080p', 'The Office (US) Banned Groups', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV 1080p'
    AND custom_format_name = 'The Office (US) Banned Groups'
    AND arr_type = 'sonarr'
);
-- --- END op 1458

-- --- BEGIN op 1459 ( update custom_format "Bad Source" )
update "custom_formats" set "description" = 'This is a format that helps deny grabbing specific releases for specific shows due to issues with automation.' where "name" = 'Incorrect Source' and "description" = 'This is a format that helps deny grabbing specific releases for specific shows. ';
-- --- END op 1459

-- --- BEGIN op 1460 ( update custom_format "Bad Source" )
update "custom_formats" set "name" = 'Bad Source' where "name" = 'Incorrect Source';
-- --- END op 1460

-- --- BEGIN op 1461 ( update quality_profile "TV 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Bad Source' where "quality_profile_name" = 'TV 1080p' and "custom_format_name" = 'Incorrect Source' and "arr_type" = 'sonarr' and "score" = -10000;
-- --- END op 1461

-- --- BEGIN op 1462 ( update quality_profile "TV 2160p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Bad Source' where "quality_profile_name" = 'TV 2160p' and "custom_format_name" = 'Incorrect Source' and "arr_type" = 'sonarr' and "score" = -10000;
-- --- END op 1462

-- --- BEGIN op 1463 ( update regular_expression "The Office (US) Banned Groups" )
update "regular_expressions" set "name" = 'The Office (US) Banned Groups', "pattern" = '\bthe[ ._-]+office\b.*2005.*-(HONE)$' where "name" = 'The Office (US)' and "pattern" = '\bthe[ ._-]+office\b(?=.*2005)';
-- --- END op 1463

-- --- BEGIN op 1464 ( update custom_format "The Office (US) Banned Groups" )
update "condition_patterns" set "regular_expression_name" = 'The Office (US) Banned Groups' where "custom_format_name" = 'The Office (US) Banned Groups' and "condition_name" = 'The Office (US)' and "regular_expression_name" = 'The Office (US)';
-- --- END op 1464

-- --- BEGIN op 1467 ( delete custom_format "The Office (US) Banned Groups" )
delete from "custom_formats" where "name" = 'The Office (US) Banned Groups';
-- --- END op 1467

-- --- BEGIN op 1468 ( update regular_expression "The Office (US) Banned Groups" )
update "regular_expressions" set "description" = 'Negates certain groups that cause import/automation issues with The Office (US).' where "name" = 'The Office (US) Banned Groups' and "description" is null;
-- --- END op 1468

-- --- BEGIN op 1469 ( update custom_format "Bad Source" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Source', 'The Office (US)', 'release_title', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Source', 'The Office (US)', 'The Office (US) Banned Groups');
-- --- END op 1469

-- --- BEGIN op 1470 ( update custom_format "Bad Source" )
UPDATE custom_format_conditions
SET arr_type = 'sonarr'
WHERE custom_format_name = 'Bad Source'
  AND name = 'Adventure Time Season 8'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 1470

-- --- BEGIN op 1471 ( update custom_format "Bad Source" )
UPDATE custom_format_conditions
SET arr_type = 'sonarr'
WHERE custom_format_name = 'Bad Source'
  AND name = 'House Season 6'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 1471

-- --- BEGIN op 1472 ( update custom_format "Bad Source" )
UPDATE custom_format_conditions
SET arr_type = 'sonarr'
WHERE custom_format_name = 'Bad Source'
  AND name = 'Parks and Recreation'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 1472

-- --- BEGIN op 1473 ( update regular_expression "Adventure Time Season 8 Banned Groups" )
update "regular_expressions" set "name" = 'Adventure Time Season 8 Banned Groups' where "name" = 'Adventure Time Season 8';
-- --- END op 1473

-- --- BEGIN op 1474 ( update custom_format "Bad Source" )
update "condition_patterns" set "regular_expression_name" = 'Adventure Time Season 8 Banned Groups' where "custom_format_name" = 'Bad Source' and "condition_name" = 'Adventure Time Season 8' and "regular_expression_name" = 'Adventure Time Season 8';
-- --- END op 1474

-- --- BEGIN op 1475 ( update regular_expression "House Season 6 Banned Groups" )
update "regular_expressions" set "name" = 'House Season 6 Banned Groups' where "name" = 'House Season 6';
-- --- END op 1475

-- --- BEGIN op 1476 ( update custom_format "Bad Source" )
update "condition_patterns" set "regular_expression_name" = 'House Season 6 Banned Groups' where "custom_format_name" = 'Bad Source' and "condition_name" = 'House Season 6' and "regular_expression_name" = 'House Season 6';
-- --- END op 1476

-- --- BEGIN op 1477 ( update regular_expression "Parks and Recreation Banned Groups" )
update "regular_expressions" set "name" = 'Parks and Recreation Banned Groups' where "name" = 'Parks and Recreation';
-- --- END op 1477

-- --- BEGIN op 1478 ( update custom_format "Bad Source" )
update "condition_patterns" set "regular_expression_name" = 'Parks and Recreation Banned Groups' where "custom_format_name" = 'Bad Source' and "condition_name" = 'Parks and Recreation' and "regular_expression_name" = 'Parks and Recreation';
-- --- END op 1478

-- --- BEGIN op 1479 ( update regular_expression "House Season 6 Banned Groups" )
update "regular_expressions" set "pattern" = '^(Dr\.\s*)?House.*S06.*-(d3g|DBTV|DUSKLiGHT|HONE|NERO|NINJACENTRAL|LiPAN|SiGMA|TVARCHiV|WADU)$' where "name" = 'House Season 6 Banned Groups' and "pattern" = '^(Dr\.\s*)?House.*S06.*-(d3g|DBTV|DUSKLiGHT|HONE|NERO|NINJACENTRAL|LiPAN|SiGMA|TVARCHiV|WADU).*';
-- --- END op 1479

-- --- BEGIN op 1480 ( update regular_expression "Adventure Time Season 8 Banned Groups" )
update "regular_expressions" set "pattern" = '(?i)^adventure[ ._-]+time[ ._-]+S08.*-(CtrlHD|EPSiLON|H3B|NTb|RTN)$' where "name" = 'Adventure Time Season 8 Banned Groups' and "pattern" = '(?i)^adventure[ ._-]+time[ ._-]+S08.*-(CtrlHD|EPSiLON|H3B|NTb|RTN).*';
-- --- END op 1480
