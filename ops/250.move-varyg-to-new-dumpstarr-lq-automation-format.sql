-- @operation: export
-- @entity: batch
-- @name: Move VARYG to new Dumpstarr LQ (Automation) format
-- @exportedAt: 2026-05-28T14:21:23.072Z
-- @opIds: 1456, 1457, 1458, 1459, 1460, 1461, 1462, 1463, 1464, 1465, 1466, 1467, 1468, 1469, 1470, 1471, 1472, 1473, 1474, 1475

-- --- BEGIN op 1456 ( update quality_profile "TV 1080p" )
UPDATE quality_profile_custom_formats
SET score = 100
WHERE quality_profile_name = 'TV 1080p'
  AND custom_format_name = 'TV Editions'
  AND arr_type = 'sonarr'
  AND score = 101;
-- --- END op 1456

-- --- BEGIN op 1457 ( update quality_profile "TV 2160p" )
UPDATE quality_profile_custom_formats
SET score = 100
WHERE quality_profile_name = 'TV 2160p'
  AND custom_format_name = 'TV Editions'
  AND arr_type = 'sonarr'
  AND score = 101;
-- --- END op 1457

-- --- BEGIN op 1458 ( update regular_expression "Dumpstarr Banned Groups Release Title" )
update "regular_expressions" set "pattern" = '^(E|Tofu4U)$' where "name" = 'Dumpstarr Banned Groups Release Title' and "pattern" = '^(E|Tofu4U|VARYG)$';
-- --- END op 1458

-- --- BEGIN op 1459 ( update regular_expression "Dumpstarr Banned Groups" )
update "regular_expressions" set "pattern" = '\b(DEiMOS|MIRCrew|MuTT|OldT|TiZU|Tofu4U|TVS|ViSiON)\b' where "name" = 'Dumpstarr Banned Groups' and "pattern" = '\b(DEiMOS|MIRCrew|MuTT|OldT|TiZU|Tofu4U|TVS|VARYG|ViSiON)\b';
-- --- END op 1459

-- --- BEGIN op 1460 ( create regular_expression "Dumpstarr LQ (Automation)" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Dumpstarr LQ (Automation)', '^(VARYG)$', 'Release groups that are known to use bad naming conventions which cause issues with imports/automation.', NULL);

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Dumpstarr LQ (Automation)', 'Banned');
-- --- END op 1460

-- --- BEGIN op 1461 ( create custom_format "Dumpstarr LQ (Automation)" )
insert into "custom_formats" ("name", "description") values ('Dumpstarr LQ (Automation)', '');
-- --- END op 1461

-- --- BEGIN op 1462 ( update custom_format "Dumpstarr LQ (Automation)" )
insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('Dumpstarr LQ (Automation)', 'Banned');
-- --- END op 1462

-- --- BEGIN op 1463 ( update custom_format "Dumpstarr LQ (Automation)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dumpstarr LQ (Automation)', 'Dumpstarr LQ (Automation)', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dumpstarr LQ (Automation)', 'Dumpstarr LQ (Automation)', 'Dumpstarr LQ (Automation)');
-- --- END op 1463

-- --- BEGIN op 1464 ( update quality_profile "Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Anime 1080p', 'Dumpstarr LQ (Automation)', 'radarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Anime 1080p'
    AND custom_format_name = 'Dumpstarr LQ (Automation)'
    AND arr_type = 'radarr'
);
-- --- END op 1464

-- --- BEGIN op 1465 ( update quality_profile "Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Anime 1080p', 'Dumpstarr LQ (Automation)', 'sonarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Anime 1080p'
    AND custom_format_name = 'Dumpstarr LQ (Automation)'
    AND arr_type = 'sonarr'
);
-- --- END op 1465

-- --- BEGIN op 1466 ( update quality_profile "Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = -100
WHERE quality_profile_name = 'Anime 1080p'
  AND custom_format_name = 'Dumpstarr LQ (Automation)'
  AND arr_type = 'radarr'
  AND score = -1000;
-- --- END op 1466

-- --- BEGIN op 1467 ( update quality_profile "Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = -100
WHERE quality_profile_name = 'Anime 1080p'
  AND custom_format_name = 'Dumpstarr LQ (Automation)'
  AND arr_type = 'sonarr'
  AND score = -1000;
-- --- END op 1467

-- --- BEGIN op 1468 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'Dumpstarr LQ (Automation)', 'radarr', -10
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'Dumpstarr LQ (Automation)'
    AND arr_type = 'radarr'
);
-- --- END op 1468

-- --- BEGIN op 1469 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'Dumpstarr LQ (Automation)', 'sonarr', -10
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'Dumpstarr LQ (Automation)'
    AND arr_type = 'sonarr'
);
-- --- END op 1469

-- --- BEGIN op 1470 ( update quality_profile "Movies 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p', 'Dumpstarr LQ (Automation)', 'radarr', -500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p'
    AND custom_format_name = 'Dumpstarr LQ (Automation)'
    AND arr_type = 'radarr'
);
-- --- END op 1470

-- --- BEGIN op 1471 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'Dumpstarr LQ (Automation)', 'radarr', -500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'Dumpstarr LQ (Automation)'
    AND arr_type = 'radarr'
);
-- --- END op 1471

-- --- BEGIN op 1472 ( update quality_profile "Movies 2160p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p', 'Dumpstarr LQ (Automation)', 'radarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p'
    AND custom_format_name = 'Dumpstarr LQ (Automation)'
    AND arr_type = 'radarr'
);
-- --- END op 1472

-- --- BEGIN op 1473 ( update quality_profile "Movies 2160p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p HQ', 'Dumpstarr LQ (Automation)', 'radarr', -500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND custom_format_name = 'Dumpstarr LQ (Automation)'
    AND arr_type = 'radarr'
);
-- --- END op 1473

-- --- BEGIN op 1474 ( update quality_profile "TV 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV 1080p', 'Dumpstarr LQ (Automation)', 'sonarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV 1080p'
    AND custom_format_name = 'Dumpstarr LQ (Automation)'
    AND arr_type = 'sonarr'
);
-- --- END op 1474

-- --- BEGIN op 1475 ( update quality_profile "TV 2160p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV 2160p', 'Dumpstarr LQ (Automation)', 'sonarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV 2160p'
    AND custom_format_name = 'Dumpstarr LQ (Automation)'
    AND arr_type = 'sonarr'
);
-- --- END op 1475
