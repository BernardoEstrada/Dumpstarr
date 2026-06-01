-- @operation: export
-- @entity: batch
-- @name: Added LQ Group Automation foramt|Added WADU to LQ Group Automation
-- @exportedAt: 2026-06-01T17:32:59.122Z
-- @opIds: 1526, 1527, 1528, 1529, 1530, 1531, 1532, 1533, 1534, 1535, 1536, 1537, 1538, 1539, 1540, 1541, 1542, 1543, 1544, 1545, 1546, 1547, 1548, 1549, 1550, 1551, 1552, 1553, 1554, 1555, 1556, 1557, 1558

-- --- BEGIN op 1526 ( update custom_format "Dumpstarr LQ (Automation)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dumpstarr LQ (Automation)', 'SEV', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dumpstarr LQ (Automation)', 'SEV', 'SEV');
-- --- END op 1526

-- --- BEGIN op 1527 ( create regular_expression "WADU" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('WADU', '^(WADU)$', NULL, NULL);

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('WADU', 'Banned');
-- --- END op 1527

-- --- BEGIN op 1528 ( update regular_expression "WADU" )
insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('WADU', 'Release Group');
-- --- END op 1528

-- --- BEGIN op 1529 ( update custom_format "Dumpstarr LQ (Automation)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dumpstarr LQ (Automation)', 'WADU', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dumpstarr LQ (Automation)', 'WADU', 'WADU');
-- --- END op 1529

-- --- BEGIN op 1530 ( update custom_format "Dumpstarr LQ (Automation)" )
UPDATE custom_format_conditions
SET type = 'release_group'
WHERE custom_format_name = 'Dumpstarr LQ (Automation)'
  AND name = 'WADU'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;

DELETE FROM condition_patterns WHERE custom_format_name = 'Dumpstarr LQ (Automation)' AND condition_name = 'WADU' AND regular_expression_name = 'WADU';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dumpstarr LQ (Automation)', 'WADU', 'WADU');
-- --- END op 1530

-- --- BEGIN op 1531 ( update custom_format "Dumpstarr LQ (Automation)" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Dumpstarr LQ (Automation)'
	  AND name = 'WADU'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 1531

-- --- BEGIN op 1532 ( update custom_format "Dumpstarr LQ Title (Automation)" )
update "custom_formats" set "name" = 'Dumpstarr LQ Title (Automation)' where "name" = 'Dumpstarr LQ (Automation)';
-- --- END op 1532

-- --- BEGIN op 1533 ( update quality_profile "Anime 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Dumpstarr LQ Title (Automation)' where "quality_profile_name" = 'Anime 1080p' and "custom_format_name" = 'Dumpstarr LQ (Automation)' and "arr_type" = 'radarr' and "score" = -100;

update "quality_profile_custom_formats" set "custom_format_name" = 'Dumpstarr LQ Title (Automation)' where "quality_profile_name" = 'Anime 1080p' and "custom_format_name" = 'Dumpstarr LQ (Automation)' and "arr_type" = 'sonarr' and "score" = -100;
-- --- END op 1533

-- --- BEGIN op 1534 ( update quality_profile "LQ 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Dumpstarr LQ Title (Automation)' where "quality_profile_name" = 'LQ 1080p' and "custom_format_name" = 'Dumpstarr LQ (Automation)' and "arr_type" = 'radarr' and "score" = -10;

update "quality_profile_custom_formats" set "custom_format_name" = 'Dumpstarr LQ Title (Automation)' where "quality_profile_name" = 'LQ 1080p' and "custom_format_name" = 'Dumpstarr LQ (Automation)' and "arr_type" = 'sonarr' and "score" = -10;
-- --- END op 1534

-- --- BEGIN op 1535 ( update quality_profile "Movies 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Dumpstarr LQ Title (Automation)' where "quality_profile_name" = 'Movies 1080p' and "custom_format_name" = 'Dumpstarr LQ (Automation)' and "arr_type" = 'radarr' and "score" = -500;
-- --- END op 1535

-- --- BEGIN op 1536 ( update quality_profile "Movies 1080p HQ" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Dumpstarr LQ Title (Automation)' where "quality_profile_name" = 'Movies 1080p HQ' and "custom_format_name" = 'Dumpstarr LQ (Automation)' and "arr_type" = 'radarr' and "score" = -500;
-- --- END op 1536

-- --- BEGIN op 1537 ( update quality_profile "Movies 2160p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Dumpstarr LQ Title (Automation)' where "quality_profile_name" = 'Movies 2160p' and "custom_format_name" = 'Dumpstarr LQ (Automation)' and "arr_type" = 'radarr' and "score" = -1000;
-- --- END op 1537

-- --- BEGIN op 1538 ( update quality_profile "Movies 2160p HQ" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Dumpstarr LQ Title (Automation)' where "quality_profile_name" = 'Movies 2160p HQ' and "custom_format_name" = 'Dumpstarr LQ (Automation)' and "arr_type" = 'radarr' and "score" = -500;
-- --- END op 1538

-- --- BEGIN op 1539 ( update quality_profile "TV 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Dumpstarr LQ Title (Automation)' where "quality_profile_name" = 'TV 1080p' and "custom_format_name" = 'Dumpstarr LQ (Automation)' and "arr_type" = 'sonarr' and "score" = -1000;
-- --- END op 1539

-- --- BEGIN op 1540 ( update quality_profile "TV 2160p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Dumpstarr LQ Title (Automation)' where "quality_profile_name" = 'TV 2160p' and "custom_format_name" = 'Dumpstarr LQ (Automation)' and "arr_type" = 'sonarr' and "score" = -1000;
-- --- END op 1540

-- --- BEGIN op 1541 ( create custom_format "Dumpstarr LQ RG (Automation)" )
insert into "custom_formats" ("name", "description") values ('Dumpstarr LQ RG (Automation)', '');
-- --- END op 1541

-- --- BEGIN op 1542 ( update custom_format "Dumpstarr LQ RG (Automation)" )
insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('Dumpstarr LQ RG (Automation)', 'Banned');
-- --- END op 1542

-- --- BEGIN op 1543 ( update custom_format "Dumpstarr LQ RG (Automation)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dumpstarr LQ RG (Automation)', 'WADU', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dumpstarr LQ RG (Automation)', 'WADU', 'WADU');
-- --- END op 1543

-- --- BEGIN op 1544 ( update quality_profile "TV 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV 1080p', 'Dumpstarr LQ RG (Automation)', 'sonarr', 100
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV 1080p'
    AND custom_format_name = 'Dumpstarr LQ RG (Automation)'
    AND arr_type = 'sonarr'
);
-- --- END op 1544

-- --- BEGIN op 1545 ( update quality_profile "TV 2160p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV 2160p', 'Dumpstarr LQ RG (Automation)', 'sonarr', -100
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV 2160p'
    AND custom_format_name = 'Dumpstarr LQ RG (Automation)'
    AND arr_type = 'sonarr'
);
-- --- END op 1545

-- --- BEGIN op 1546 ( update quality_profile "TV 1080p" )
UPDATE quality_profile_custom_formats
SET score = -100
WHERE quality_profile_name = 'TV 1080p'
  AND custom_format_name = 'Dumpstarr LQ RG (Automation)'
  AND arr_type = 'sonarr'
  AND score = 100;
-- --- END op 1546

-- --- BEGIN op 1547 ( update quality_profile "TV 1080p" )
UPDATE quality_profile_custom_formats
SET score = -1000
WHERE quality_profile_name = 'TV 1080p'
  AND custom_format_name = 'Dumpstarr LQ RG (Automation)'
  AND arr_type = 'sonarr'
  AND score = -100;
-- --- END op 1547

-- --- BEGIN op 1548 ( update quality_profile "TV 2160p" )
UPDATE quality_profile_custom_formats
SET score = -1000
WHERE quality_profile_name = 'TV 2160p'
  AND custom_format_name = 'Dumpstarr LQ RG (Automation)'
  AND arr_type = 'sonarr'
  AND score = -100;
-- --- END op 1548

-- --- BEGIN op 1549 ( update custom_format "Dumpstarr LQ Group (Automation)" )
update "custom_formats" set "name" = 'Dumpstarr LQ Group (Automation)' where "name" = 'Dumpstarr LQ RG (Automation)';
-- --- END op 1549

-- --- BEGIN op 1550 ( update quality_profile "TV 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Dumpstarr LQ Group (Automation)' where "quality_profile_name" = 'TV 1080p' and "custom_format_name" = 'Dumpstarr LQ RG (Automation)' and "arr_type" = 'sonarr' and "score" = -1000;
-- --- END op 1550

-- --- BEGIN op 1551 ( update quality_profile "TV 2160p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Dumpstarr LQ Group (Automation)' where "quality_profile_name" = 'TV 2160p' and "custom_format_name" = 'Dumpstarr LQ RG (Automation)' and "arr_type" = 'sonarr' and "score" = -1000;
-- --- END op 1551

-- --- BEGIN op 1552 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'Dumpstarr LQ Group (Automation)', 'radarr', -500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'Dumpstarr LQ Group (Automation)'
    AND arr_type = 'radarr'
);
-- --- END op 1552

-- --- BEGIN op 1553 ( update quality_profile "Movies 2160p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p', 'Dumpstarr LQ Group (Automation)', 'radarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p'
    AND custom_format_name = 'Dumpstarr LQ Group (Automation)'
    AND arr_type = 'radarr'
);
-- --- END op 1553

-- --- BEGIN op 1554 ( update quality_profile "Movies 2160p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p HQ', 'Dumpstarr LQ Group (Automation)', 'radarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND custom_format_name = 'Dumpstarr LQ Group (Automation)'
    AND arr_type = 'radarr'
);
-- --- END op 1554

-- --- BEGIN op 1555 ( update quality_profile "Movies 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p', 'Dumpstarr LQ Group (Automation)', 'radarr', -500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p'
    AND custom_format_name = 'Dumpstarr LQ Group (Automation)'
    AND arr_type = 'radarr'
);
-- --- END op 1555

-- --- BEGIN op 1556 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'Dumpstarr LQ Group (Automation)', 'radarr', -10
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'Dumpstarr LQ Group (Automation)'
    AND arr_type = 'radarr'
);
-- --- END op 1556

-- --- BEGIN op 1557 ( update quality_profile "Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Anime 1080p', 'Dumpstarr LQ Group (Automation)', 'radarr', -100
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Anime 1080p'
    AND custom_format_name = 'Dumpstarr LQ Group (Automation)'
    AND arr_type = 'radarr'
);
-- --- END op 1557

-- --- BEGIN op 1558 ( update quality_profile "Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Anime 1080p', 'Dumpstarr LQ Group (Automation)', 'sonarr', -100
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Anime 1080p'
    AND custom_format_name = 'Dumpstarr LQ Group (Automation)'
    AND arr_type = 'sonarr'
);
-- --- END op 1558
