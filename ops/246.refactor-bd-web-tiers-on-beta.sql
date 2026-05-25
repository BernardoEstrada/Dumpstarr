-- @operation: export
-- @entity: batch
-- @name: Refactor BD/WEB tiers on beta
-- @exportedAt: 2026-05-25T21:56:34.807Z
-- @opIds: 1332, 1333, 1334, 1335, 1336, 1337, 1338, 1339, 1340, 1341, 1342, 1343, 1344, 1345, 1346, 1347, 1348, 1349, 1350, 1351, 1352, 1353, 1354, 1355, 1356, 1357, 1358, 1359, 1360, 1361, 1362, 1363, 1364, 1365, 1366, 1367, 1368, 1369, 1370, 1371, 1372, 1373, 1374, 1375, 1376, 1377, 1378, 1379, 1380, 1381, 1382, 1383, 1384, 1385, 1386, 1387, 1388, 1389, 1390, 1391, 1392, 1393, 1394, 1395, 1396, 1397, 1398, 1399, 1400, 1401, 1402, 1403, 1404, 1405, 1406, 1407, 1408, 1409, 1410, 1411, 1412, 1413, 1414, 1415

-- --- BEGIN op 1332 ( delete quality_profile "BETA - Anime 1080p" )
delete from "quality_profile_tags" where "quality_profile_name" = 'BETA - Anime 1080p';

delete from "quality_profile_languages" where "quality_profile_name" = 'BETA - Anime 1080p';

delete from "quality_profile_qualities" where "quality_profile_name" = 'BETA - Anime 1080p';

delete from "quality_profile_custom_formats" where "quality_profile_name" = 'BETA - Anime 1080p';

delete from "quality_groups" where "quality_profile_name" = 'BETA - Anime 1080p';

delete from "quality_profiles" where "name" = 'BETA - Anime 1080p';
-- --- END op 1332

-- --- BEGIN op 1333 ( create quality_profile "BETA - Anime 1080p" )
insert into "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") values ('BETA - Anime 1080p', 'Based on the TRaSH Guides Anime Profile, focusing on media that has Dual Audio.
- This profile will grab between a SDTV - 1080p Bluray file.
- You will be preferring Dual Audio media (ie including English along with original language). If you''d prefer to **only** have the original language (Japanese), remove the Dual Audio format and set your language preference in this profile.
- If you''d prefer to always grab Dual Audio releases, change the Dual Audio format score from 101 to 500', 1, 0, 0, 1);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('BETA - Anime 1080p', 'Anime');

insert into "tags" ("name") values ('Radarr') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('BETA - Anime 1080p', 'Radarr');

insert into "tags" ("name") values ('Sonarr') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('BETA - Anime 1080p', 'Sonarr');

insert into "tags" ("name") values ('TRaSH') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('BETA - Anime 1080p', 'TRaSH');

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('BETA - Anime 1080p', 'Bluray-1080p', NULL, 0, 1, 1);

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('BETA - Anime 1080p', 'WEB 1080p');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('BETA - Anime 1080p', 'WEB 1080p', 'HDTV-1080p', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('BETA - Anime 1080p', 'WEB 1080p', 'WEBDL-1080p', 1);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('BETA - Anime 1080p', 'WEB 1080p', 'WEBRip-1080p', 2);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('BETA - Anime 1080p', NULL, 'WEB 1080p', 1, 1, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('BETA - Anime 1080p', 'Bluray-720p', NULL, 2, 1, 0);

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('BETA - Anime 1080p', 'WEB 720p');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('BETA - Anime 1080p', 'WEB 720p', 'HDTV-720p', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('BETA - Anime 1080p', 'WEB 720p', 'WEBDL-720p', 1);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('BETA - Anime 1080p', 'WEB 720p', 'WEBRip-720p', 2);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('BETA - Anime 1080p', NULL, 'WEB 720p', 3, 1, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('BETA - Anime 1080p', 'Bluray-480p', NULL, 4, 1, 0);

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('BETA - Anime 1080p', 'WEB 480p');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('BETA - Anime 1080p', 'WEB 480p', 'WEBDL-480p', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('BETA - Anime 1080p', 'WEB 480p', 'WEBRip-480p', 1);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('BETA - Anime 1080p', NULL, 'WEB 480p', 5, 1, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('BETA - Anime 1080p', 'DVD', NULL, 6, 1, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('BETA - Anime 1080p', 'SDTV', NULL, 7, 1, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('BETA - Anime 1080p', 'Bluray-2160p', NULL, 8, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('BETA - Anime 1080p', 'Bluray-576p', NULL, 9, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('BETA - Anime 1080p', 'BR-DISK', NULL, 10, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('BETA - Anime 1080p', 'CAM', NULL, 11, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('BETA - Anime 1080p', 'DVD-R', NULL, 12, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('BETA - Anime 1080p', 'DVDSCR', NULL, 13, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('BETA - Anime 1080p', 'HDTV-2160p', NULL, 14, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('BETA - Anime 1080p', 'HDTV-480p', NULL, 15, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('BETA - Anime 1080p', 'Raw-HD', NULL, 16, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('BETA - Anime 1080p', 'REGIONAL', NULL, 17, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('BETA - Anime 1080p', 'Remux-1080p', NULL, 18, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('BETA - Anime 1080p', 'Remux-2160p', NULL, 19, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('BETA - Anime 1080p', 'TELECINE', NULL, 20, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('BETA - Anime 1080p', 'TELESYNC', NULL, 21, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('BETA - Anime 1080p', 'Unknown', NULL, 22, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('BETA - Anime 1080p', 'WEBDL-2160p', NULL, 23, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('BETA - Anime 1080p', 'WEBRip-2160p', NULL, 24, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('BETA - Anime 1080p', 'WORKPRINT', NULL, 25, 0, 0);

INSERT INTO quality_profile_languages (quality_profile_name, language_name, type) VALUES ('BETA - Anime 1080p', 'Original', 'simple');
-- --- END op 1333

-- --- BEGIN op 1334 ( update quality_profile "BETA - Anime 1080p" )
update "quality_profiles" set "upgrade_until_score" = 10000 where "name" = 'BETA - Anime 1080p' and "upgrade_until_score" = 0;
-- --- END op 1334

-- --- BEGIN op 1335 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'ABEMA', 'radarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'ABEMA'
    AND arr_type = 'radarr'
);
-- --- END op 1335

-- --- BEGIN op 1336 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'ABEMA', 'sonarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'ABEMA'
    AND arr_type = 'sonarr'
);
-- --- END op 1336

-- --- BEGIN op 1337 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'ADN', 'radarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'ADN'
    AND arr_type = 'radarr'
);
-- --- END op 1337

-- --- BEGIN op 1338 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'ADN', 'sonarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'ADN'
    AND arr_type = 'sonarr'
);
-- --- END op 1338

-- --- BEGIN op 1339 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'AMZN', 'radarr', 3
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'AMZN'
    AND arr_type = 'radarr'
);
-- --- END op 1339

-- --- BEGIN op 1340 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'AMZN', 'sonarr', 3
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'AMZN'
    AND arr_type = 'sonarr'
);
-- --- END op 1340

-- --- BEGIN op 1341 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'AV1', 'all', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'AV1'
    AND arr_type = 'all'
);
-- --- END op 1341

-- --- BEGIN op 1342 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Accessibility', 'all', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Accessibility'
    AND arr_type = 'all'
);
-- --- END op 1342

-- --- BEGIN op 1343 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Anime BD Tier 01', 'radarr', 1400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Anime BD Tier 01'
    AND arr_type = 'radarr'
);
-- --- END op 1343

-- --- BEGIN op 1344 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Anime BD Tier 01', 'sonarr', 1400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Anime BD Tier 01'
    AND arr_type = 'sonarr'
);
-- --- END op 1344

-- --- BEGIN op 1345 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Anime BD Tier 02', 'radarr', 1300
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Anime BD Tier 02'
    AND arr_type = 'radarr'
);
-- --- END op 1345

-- --- BEGIN op 1346 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Anime BD Tier 02', 'sonarr', 1300
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Anime BD Tier 02'
    AND arr_type = 'sonarr'
);
-- --- END op 1346

-- --- BEGIN op 1347 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Anime BD Tier 03', 'radarr', 1200
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Anime BD Tier 03'
    AND arr_type = 'radarr'
);
-- --- END op 1347

-- --- BEGIN op 1348 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Anime BD Tier 03', 'sonarr', 1200
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Anime BD Tier 03'
    AND arr_type = 'sonarr'
);
-- --- END op 1348

-- --- BEGIN op 1349 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Anime BD Tier 04', 'radarr', 1100
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Anime BD Tier 04'
    AND arr_type = 'radarr'
);
-- --- END op 1349

-- --- BEGIN op 1350 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Anime BD Tier 04', 'sonarr', 1100
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Anime BD Tier 04'
    AND arr_type = 'sonarr'
);
-- --- END op 1350

-- --- BEGIN op 1351 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Anime BD Tier 05', 'radarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Anime BD Tier 05'
    AND arr_type = 'radarr'
);
-- --- END op 1351

-- --- BEGIN op 1352 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Anime BD Tier 05', 'sonarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Anime BD Tier 05'
    AND arr_type = 'sonarr'
);
-- --- END op 1352

-- --- BEGIN op 1353 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Anime BD Tier 06', 'radarr', 900
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Anime BD Tier 06'
    AND arr_type = 'radarr'
);
-- --- END op 1353

-- --- BEGIN op 1354 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Anime BD Tier 06', 'sonarr', 900
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Anime BD Tier 06'
    AND arr_type = 'sonarr'
);
-- --- END op 1354

-- --- BEGIN op 1355 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Anime BD Tier 07', 'radarr', 800
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Anime BD Tier 07'
    AND arr_type = 'radarr'
);
-- --- END op 1355

-- --- BEGIN op 1356 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Anime BD Tier 07', 'sonarr', 800
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Anime BD Tier 07'
    AND arr_type = 'sonarr'
);
-- --- END op 1356

-- --- BEGIN op 1357 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Anime BD Tier 08', 'radarr', 700
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Anime BD Tier 08'
    AND arr_type = 'radarr'
);
-- --- END op 1357

-- --- BEGIN op 1358 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Anime BD Tier 08', 'sonarr', 700
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Anime BD Tier 08'
    AND arr_type = 'sonarr'
);
-- --- END op 1358

-- --- BEGIN op 1359 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Anime Baseline Groups', 'all', 300
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Anime Baseline Groups'
    AND arr_type = 'all'
);
-- --- END op 1359

-- --- BEGIN op 1360 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Anime Dual Audio', 'all', 101
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Anime Dual Audio'
    AND arr_type = 'all'
);
-- --- END op 1360

-- --- BEGIN op 1361 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Anime LQ', 'all', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Anime LQ'
    AND arr_type = 'all'
);
-- --- END op 1361

-- --- BEGIN op 1362 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Anime Raws', 'all', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Anime Raws'
    AND arr_type = 'all'
);
-- --- END op 1362

-- --- BEGIN op 1363 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Anime WEB Tier 01', 'radarr', 600
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Anime WEB Tier 01'
    AND arr_type = 'radarr'
);
-- --- END op 1363

-- --- BEGIN op 1364 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Anime WEB Tier 01', 'sonarr', 600
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Anime WEB Tier 01'
    AND arr_type = 'sonarr'
);
-- --- END op 1364

-- --- BEGIN op 1365 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Anime WEB Tier 02', 'radarr', 500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Anime WEB Tier 02'
    AND arr_type = 'radarr'
);
-- --- END op 1365

-- --- BEGIN op 1366 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Anime WEB Tier 02', 'sonarr', 500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Anime WEB Tier 02'
    AND arr_type = 'sonarr'
);
-- --- END op 1366

-- --- BEGIN op 1367 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Anime WEB Tier 03', 'radarr', 400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Anime WEB Tier 03'
    AND arr_type = 'radarr'
);
-- --- END op 1367

-- --- BEGIN op 1368 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Anime WEB Tier 03', 'sonarr', 400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Anime WEB Tier 03'
    AND arr_type = 'sonarr'
);
-- --- END op 1368

-- --- BEGIN op 1369 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Anime WEB Tier 04', 'radarr', 300
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Anime WEB Tier 04'
    AND arr_type = 'radarr'
);
-- --- END op 1369

-- --- BEGIN op 1370 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Anime WEB Tier 04', 'sonarr', 300
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Anime WEB Tier 04'
    AND arr_type = 'sonarr'
);
-- --- END op 1370

-- --- BEGIN op 1371 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Anime WEB Tier 05', 'radarr', 200
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Anime WEB Tier 05'
    AND arr_type = 'radarr'
);
-- --- END op 1371

-- --- BEGIN op 1372 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Anime WEB Tier 05', 'sonarr', 200
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Anime WEB Tier 05'
    AND arr_type = 'sonarr'
);
-- --- END op 1372

-- --- BEGIN op 1373 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Anime WEB Tier 6', 'radarr', 100
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Anime WEB Tier 6'
    AND arr_type = 'radarr'
);
-- --- END op 1373

-- --- BEGIN op 1374 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Anime WEB Tier 6', 'sonarr', 100
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Anime WEB Tier 6'
    AND arr_type = 'sonarr'
);
-- --- END op 1374

-- --- BEGIN op 1375 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'BR-DISK', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'BR-DISK'
    AND arr_type = 'radarr'
);
-- --- END op 1375

-- --- BEGIN op 1376 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'BR-DISK', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'BR-DISK'
    AND arr_type = 'sonarr'
);
-- --- END op 1376

-- --- BEGIN op 1377 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Bad Multis', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Bad Multis'
    AND arr_type = 'sonarr'
);
-- --- END op 1377

-- --- BEGIN op 1378 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Bad Source', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Bad Source'
    AND arr_type = 'sonarr'
);
-- --- END op 1378

-- --- BEGIN op 1379 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'CR', 'radarr', 6
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'CR'
    AND arr_type = 'radarr'
);
-- --- END op 1379

-- --- BEGIN op 1380 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'CR', 'sonarr', 6
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'CR'
    AND arr_type = 'sonarr'
);
-- --- END op 1380

-- --- BEGIN op 1381 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'DSNP', 'radarr', 5
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'DSNP'
    AND arr_type = 'radarr'
);
-- --- END op 1381

-- --- BEGIN op 1382 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'DSNP', 'sonarr', 5
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'DSNP'
    AND arr_type = 'sonarr'
);
-- --- END op 1382

-- --- BEGIN op 1383 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Dubs Only', 'all', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Dubs Only'
    AND arr_type = 'all'
);
-- --- END op 1383

-- --- BEGIN op 1384 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Dumpstarr LQ', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Dumpstarr LQ'
    AND arr_type = 'radarr'
);
-- --- END op 1384

-- --- BEGIN op 1385 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Dumpstarr LQ', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Dumpstarr LQ'
    AND arr_type = 'sonarr'
);
-- --- END op 1385

-- --- BEGIN op 1386 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Dumpstarr LQ Release Title', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Dumpstarr LQ Release Title'
    AND arr_type = 'radarr'
);
-- --- END op 1386

-- --- BEGIN op 1387 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Dumpstarr LQ Release Title', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Dumpstarr LQ Release Title'
    AND arr_type = 'sonarr'
);
-- --- END op 1387

-- --- BEGIN op 1388 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'FUNI', 'radarr', 2
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'FUNI'
    AND arr_type = 'radarr'
);
-- --- END op 1388

-- --- BEGIN op 1389 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'FUNI', 'sonarr', 2
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'FUNI'
    AND arr_type = 'sonarr'
);
-- --- END op 1389

-- --- BEGIN op 1390 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Multi-Audio', 'all', 101
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Multi-Audio'
    AND arr_type = 'all'
);
-- --- END op 1390

-- --- BEGIN op 1391 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Multi-Sub', 'all', 101
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Multi-Sub'
    AND arr_type = 'all'
);
-- --- END op 1391

-- --- BEGIN op 1392 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'NF', 'radarr', 4
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'NF'
    AND arr_type = 'radarr'
);
-- --- END op 1392

-- --- BEGIN op 1393 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'NF', 'sonarr', 4
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'NF'
    AND arr_type = 'sonarr'
);
-- --- END op 1393

-- --- BEGIN op 1394 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Uncensored', 'all', 101
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Uncensored'
    AND arr_type = 'all'
);
-- --- END op 1394

-- --- BEGIN op 1395 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'VOSTFR', 'all', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'VOSTFR'
    AND arr_type = 'all'
);
-- --- END op 1395

-- --- BEGIN op 1396 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'VRV', 'radarr', 3
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'VRV'
    AND arr_type = 'radarr'
);
-- --- END op 1396

-- --- BEGIN op 1397 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'VRV', 'sonarr', 3
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'VRV'
    AND arr_type = 'sonarr'
);
-- --- END op 1397

-- --- BEGIN op 1398 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'v0', 'all', -51
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'v0'
    AND arr_type = 'all'
);
-- --- END op 1398

-- --- BEGIN op 1399 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'v1', 'all', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'v1'
    AND arr_type = 'all'
);
-- --- END op 1399

-- --- BEGIN op 1400 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'v2', 'all', 2
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'v2'
    AND arr_type = 'all'
);
-- --- END op 1400

-- --- BEGIN op 1401 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'v3', 'all', 3
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'v3'
    AND arr_type = 'all'
);
-- --- END op 1401

-- --- BEGIN op 1402 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'v4', 'all', 4
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'v4'
    AND arr_type = 'all'
);
-- --- END op 1402

-- --- BEGIN op 1403 ( update quality_profile "BETA - Anime 1080p" )
DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND quality_name = 'Bluray-1080p'
  AND quality_group_name IS NULL
  AND position = 0
  AND enabled = 1
  AND upgrade_until = 1;

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND quality_group_name = 'WEB 1080p'
  AND quality_name IS NULL
  AND position = 1
  AND enabled = 1
  AND upgrade_until = 0;

DELETE FROM quality_group_members
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND quality_group_name = 'WEB 1080p'
  AND quality_name = 'HDTV-1080p';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND quality_group_name = 'WEB 1080p'
  AND quality_name = 'WEBDL-1080p';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND quality_group_name = 'WEB 1080p'
  AND quality_name = 'WEBRip-1080p';

DELETE FROM quality_groups
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND name = 'WEB 1080p';

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND quality_name = 'Bluray-720p'
  AND quality_group_name IS NULL
  AND position = 2
  AND enabled = 1
  AND upgrade_until = 0;

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND quality_group_name = 'WEB 720p'
  AND quality_name IS NULL
  AND position = 3
  AND enabled = 1
  AND upgrade_until = 0;

DELETE FROM quality_group_members
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND quality_group_name = 'WEB 720p'
  AND quality_name = 'HDTV-720p';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND quality_group_name = 'WEB 720p'
  AND quality_name = 'WEBDL-720p';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND quality_group_name = 'WEB 720p'
  AND quality_name = 'WEBRip-720p';

DELETE FROM quality_groups
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND name = 'WEB 720p';

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND quality_name = 'Bluray-480p'
  AND quality_group_name IS NULL
  AND position = 4
  AND enabled = 1
  AND upgrade_until = 0;

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND quality_group_name = 'WEB 480p'
  AND quality_name IS NULL
  AND position = 5
  AND enabled = 1
  AND upgrade_until = 0;

DELETE FROM quality_group_members
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND quality_group_name = 'WEB 480p'
  AND quality_name = 'WEBDL-480p';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND quality_group_name = 'WEB 480p'
  AND quality_name = 'WEBRip-480p';

DELETE FROM quality_groups
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND name = 'WEB 480p';

INSERT INTO quality_groups (quality_profile_name, name)
SELECT 'BETA - Anime 1080p', '1080p'
WHERE NOT EXISTS (
  SELECT 1 FROM quality_groups
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND name = '1080p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'BETA - Anime 1080p', '1080p', 'HDTV-1080p', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND quality_group_name = '1080p'
    AND quality_name = 'HDTV-1080p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'BETA - Anime 1080p', '1080p', 'WEBDL-1080p', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND quality_group_name = '1080p'
    AND quality_name = 'WEBDL-1080p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'BETA - Anime 1080p', '1080p', 'WEBRip-1080p', 2
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND quality_group_name = '1080p'
    AND quality_name = 'WEBRip-1080p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'BETA - Anime 1080p', '1080p', 'Bluray-1080p', 3
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND quality_group_name = '1080p'
    AND quality_name = 'Bluray-1080p'
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'BETA - Anime 1080p', NULL, '1080p', 0, 1, 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND quality_name IS NULL
    AND quality_group_name = '1080p'
);

INSERT INTO quality_groups (quality_profile_name, name)
SELECT 'BETA - Anime 1080p', '720p'
WHERE NOT EXISTS (
  SELECT 1 FROM quality_groups
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND name = '720p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'BETA - Anime 1080p', '720p', 'HDTV-720p', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND quality_group_name = '720p'
    AND quality_name = 'HDTV-720p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'BETA - Anime 1080p', '720p', 'WEBDL-720p', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND quality_group_name = '720p'
    AND quality_name = 'WEBDL-720p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'BETA - Anime 1080p', '720p', 'WEBRip-720p', 2
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND quality_group_name = '720p'
    AND quality_name = 'WEBRip-720p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'BETA - Anime 1080p', '720p', 'Bluray-720p', 3
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND quality_group_name = '720p'
    AND quality_name = 'Bluray-720p'
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'BETA - Anime 1080p', NULL, '720p', 1, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND quality_name IS NULL
    AND quality_group_name = '720p'
);

INSERT INTO quality_groups (quality_profile_name, name)
SELECT 'BETA - Anime 1080p', '480p'
WHERE NOT EXISTS (
  SELECT 1 FROM quality_groups
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND name = '480p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'BETA - Anime 1080p', '480p', 'WEBDL-480p', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND quality_group_name = '480p'
    AND quality_name = 'WEBDL-480p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'BETA - Anime 1080p', '480p', 'WEBRip-480p', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND quality_group_name = '480p'
    AND quality_name = 'WEBRip-480p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'BETA - Anime 1080p', '480p', 'Bluray-480p', 2
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND quality_group_name = '480p'
    AND quality_name = 'Bluray-480p'
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'BETA - Anime 1080p', NULL, '480p', 2, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND quality_name IS NULL
    AND quality_group_name = '480p'
);

UPDATE quality_profile_qualities
SET position = 3
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND quality_name = 'DVD'
  AND quality_group_name IS NULL
  AND position = 6
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 4
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND quality_name = 'SDTV'
  AND quality_group_name IS NULL
  AND position = 7
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 5
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND quality_name = 'Bluray-2160p'
  AND quality_group_name IS NULL
  AND position = 8
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 6
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND quality_name = 'Bluray-576p'
  AND quality_group_name IS NULL
  AND position = 9
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 7
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND quality_name = 'BR-DISK'
  AND quality_group_name IS NULL
  AND position = 10
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 8
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND quality_name = 'CAM'
  AND quality_group_name IS NULL
  AND position = 11
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 9
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND quality_name = 'DVD-R'
  AND quality_group_name IS NULL
  AND position = 12
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 10
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND quality_name = 'DVDSCR'
  AND quality_group_name IS NULL
  AND position = 13
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 11
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND quality_name = 'HDTV-2160p'
  AND quality_group_name IS NULL
  AND position = 14
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 12
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND quality_name = 'HDTV-480p'
  AND quality_group_name IS NULL
  AND position = 15
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 13
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND quality_name = 'Raw-HD'
  AND quality_group_name IS NULL
  AND position = 16
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 14
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND quality_name = 'REGIONAL'
  AND quality_group_name IS NULL
  AND position = 17
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 15
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND quality_name = 'Remux-1080p'
  AND quality_group_name IS NULL
  AND position = 18
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 16
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND quality_name = 'Remux-2160p'
  AND quality_group_name IS NULL
  AND position = 19
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 17
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND quality_name = 'TELECINE'
  AND quality_group_name IS NULL
  AND position = 20
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 18
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND quality_name = 'TELESYNC'
  AND quality_group_name IS NULL
  AND position = 21
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 19
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND quality_name = 'Unknown'
  AND quality_group_name IS NULL
  AND position = 22
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 20
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND quality_name = 'WEBDL-2160p'
  AND quality_group_name IS NULL
  AND position = 23
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 21
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND quality_name = 'WEBRip-2160p'
  AND quality_group_name IS NULL
  AND position = 24
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 22
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND quality_name = 'WORKPRINT'
  AND quality_group_name IS NULL
  AND position = 25
  AND enabled = 0
  AND upgrade_until = 0;
-- --- END op 1403

-- --- BEGIN op 1404 ( update quality_profile "BETA - Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1100
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND custom_format_name = 'Anime WEB Tier 01'
  AND arr_type = 'radarr'
  AND score = 600;
-- --- END op 1404

-- --- BEGIN op 1405 ( update quality_profile "BETA - Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1100
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND custom_format_name = 'Anime WEB Tier 01'
  AND arr_type = 'sonarr'
  AND score = 600;
-- --- END op 1405

-- --- BEGIN op 1406 ( update quality_profile "BETA - Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1000
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND custom_format_name = 'Anime WEB Tier 02'
  AND arr_type = 'radarr'
  AND score = 500;
-- --- END op 1406

-- --- BEGIN op 1407 ( update quality_profile "BETA - Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1000
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND custom_format_name = 'Anime WEB Tier 02'
  AND arr_type = 'sonarr'
  AND score = 500;
-- --- END op 1407

-- --- BEGIN op 1408 ( update quality_profile "BETA - Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 900
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND custom_format_name = 'Anime WEB Tier 03'
  AND arr_type = 'radarr'
  AND score = 400;
-- --- END op 1408

-- --- BEGIN op 1409 ( update quality_profile "BETA - Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 900
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND custom_format_name = 'Anime WEB Tier 03'
  AND arr_type = 'sonarr'
  AND score = 400;
-- --- END op 1409

-- --- BEGIN op 1410 ( update quality_profile "BETA - Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 800
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND custom_format_name = 'Anime WEB Tier 04'
  AND arr_type = 'radarr'
  AND score = 300;
-- --- END op 1410

-- --- BEGIN op 1411 ( update quality_profile "BETA - Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 800
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND custom_format_name = 'Anime WEB Tier 04'
  AND arr_type = 'sonarr'
  AND score = 300;
-- --- END op 1411

-- --- BEGIN op 1412 ( update quality_profile "BETA - Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 700
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND custom_format_name = 'Anime WEB Tier 05'
  AND arr_type = 'radarr'
  AND score = 200;
-- --- END op 1412

-- --- BEGIN op 1413 ( update quality_profile "BETA - Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 700
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND custom_format_name = 'Anime WEB Tier 05'
  AND arr_type = 'sonarr'
  AND score = 200;
-- --- END op 1413

-- --- BEGIN op 1414 ( update quality_profile "BETA - Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 600
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND custom_format_name = 'Anime WEB Tier 6'
  AND arr_type = 'radarr'
  AND score = 100;
-- --- END op 1414

-- --- BEGIN op 1415 ( update quality_profile "BETA - Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 600
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND custom_format_name = 'Anime WEB Tier 6'
  AND arr_type = 'sonarr'
  AND score = 100;
-- --- END op 1415
