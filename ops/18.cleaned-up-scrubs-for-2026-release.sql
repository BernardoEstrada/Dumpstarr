-- @operation: export
-- @entity: batch
-- @name: Cleaned up Scrubs for 2026 release
-- @exportedAt: 2026-02-26T13:47:38.549Z
-- @opIds: 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 371, 372, 373, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387

-- --- BEGIN op 347 ( create quality_profile "LQ 720p" )
insert into "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") values ('LQ 720p', '- This profile is for **SIDCA** (Sh*t I Don''t Care About). The primary tier and LQ groups are not scored to allow "low quality" releases. For example, user requests "Keeping Up with the Kardashians" and you would prefer to save as much storage space as humanly possible so this user can watch this "show".
- You can expect to grab **MeGusta** releases 99% of the time.
- AV1 and x265 codecs are allowed and scored for preference of x265. **NOTE! you may encounter transcoding if the client side does not support these codecs.**', 1, 0, 0, 1);

insert into "tags" ("name") values ('1080p') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('LQ 720p', '1080p');

insert into "tags" ("name") values ('LQ') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('LQ 720p', 'LQ');

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('LQ 720p', 'WEB 1080p');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name) VALUES ('LQ 720p', 'WEB 1080p', 'WEBDL-1080p');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name) VALUES ('LQ 720p', 'WEB 1080p', 'WEBRip-1080p');

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('LQ 720p', 'Pre-releases');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name) VALUES ('LQ 720p', 'Pre-releases', 'REGIONAL');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name) VALUES ('LQ 720p', 'Pre-releases', 'DVDSCR');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name) VALUES ('LQ 720p', 'Pre-releases', 'TELECINE');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name) VALUES ('LQ 720p', 'Pre-releases', 'TELESYNC');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name) VALUES ('LQ 720p', 'Pre-releases', 'CAM');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name) VALUES ('LQ 720p', 'Pre-releases', 'WORKPRINT');

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('LQ 720p', 'Unwanted');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name) VALUES ('LQ 720p', 'Unwanted', 'Unknown');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name) VALUES ('LQ 720p', 'Unwanted', 'Raw-HD');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name) VALUES ('LQ 720p', 'Unwanted', 'BR-DISK');

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('LQ 720p', 'Remux-2160p', NULL, 1, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('LQ 720p', 'Bluray-2160p', NULL, 2, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('LQ 720p', 'WEBDL-2160p', NULL, 3, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('LQ 720p', 'WEBRip-2160p', NULL, 4, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('LQ 720p', 'HDTV-2160p', NULL, 5, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('LQ 720p', 'Remux-1080p', NULL, 6, 1, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('LQ 720p', 'Bluray-1080p', NULL, 7, 1, 1);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('LQ 720p', NULL, 'WEB 1080p', 8, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('LQ 720p', 'HDTV-1080p', NULL, 9, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('LQ 720p', 'Bluray-720p', NULL, 10, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('LQ 720p', 'WEBDL-720p', NULL, 11, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('LQ 720p', 'WEBRip-720p', NULL, 12, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('LQ 720p', 'HDTV-720p', NULL, 13, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('LQ 720p', 'Bluray-576p', NULL, 14, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('LQ 720p', 'Bluray-480p', NULL, 15, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('LQ 720p', 'WEBDL-480p', NULL, 16, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('LQ 720p', 'WEBRip-480p', NULL, 17, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('LQ 720p', 'HDTV-480p', NULL, 18, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('LQ 720p', 'DVD-R', NULL, 19, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('LQ 720p', 'DVD', NULL, 20, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('LQ 720p', 'SDTV', NULL, 21, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('LQ 720p', NULL, 'Pre-releases', 22, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('LQ 720p', NULL, 'Unwanted', 23, 0, 0);

INSERT INTO quality_profile_languages (quality_profile_name, language_name, type) VALUES ('LQ 720p', 'Original', 'simple');
-- --- END op 347

-- --- BEGIN op 348 ( update quality_profile "LQ 720p" )
DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'LQ 720p'
  AND quality_name = 'Remux-2160p'
  AND quality_group_name IS NULL
  AND position = 1
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'LQ 720p'
  AND quality_name = 'Bluray-2160p'
  AND quality_group_name IS NULL
  AND position = 2
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'LQ 720p'
  AND quality_name = 'WEBDL-2160p'
  AND quality_group_name IS NULL
  AND position = 3
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'LQ 720p'
  AND quality_name = 'WEBRip-2160p'
  AND quality_group_name IS NULL
  AND position = 4
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'LQ 720p'
  AND quality_name = 'HDTV-2160p'
  AND quality_group_name IS NULL
  AND position = 5
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'LQ 720p'
  AND quality_name = 'Remux-1080p'
  AND quality_group_name IS NULL
  AND position = 6
  AND enabled = 1
  AND upgrade_until = 0;

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'LQ 720p'
  AND quality_name = 'Bluray-1080p'
  AND quality_group_name IS NULL
  AND position = 7
  AND enabled = 1
  AND upgrade_until = 1;

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'LQ 720p'
  AND quality_group_name = 'WEB 1080p'
  AND quality_name IS NULL
  AND position = 8
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_group_members
WHERE quality_profile_name = 'LQ 720p'
  AND quality_group_name = 'WEB 1080p'
  AND quality_name = 'WEBDL-1080p';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'LQ 720p'
  AND quality_group_name = 'WEB 1080p'
  AND quality_name = 'WEBRip-1080p';

DELETE FROM quality_groups
WHERE quality_profile_name = 'LQ 720p'
  AND name = 'WEB 1080p';

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'LQ 720p'
  AND quality_name = 'HDTV-1080p'
  AND quality_group_name IS NULL
  AND position = 9
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'LQ 720p'
  AND quality_name = 'Bluray-720p'
  AND quality_group_name IS NULL
  AND position = 10
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'LQ 720p'
  AND quality_name = 'WEBDL-720p'
  AND quality_group_name IS NULL
  AND position = 11
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'LQ 720p'
  AND quality_name = 'WEBRip-720p'
  AND quality_group_name IS NULL
  AND position = 12
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'LQ 720p'
  AND quality_name = 'HDTV-720p'
  AND quality_group_name IS NULL
  AND position = 13
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'LQ 720p'
  AND quality_name = 'Bluray-576p'
  AND quality_group_name IS NULL
  AND position = 14
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'LQ 720p'
  AND quality_name = 'Bluray-480p'
  AND quality_group_name IS NULL
  AND position = 15
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'LQ 720p'
  AND quality_name = 'WEBDL-480p'
  AND quality_group_name IS NULL
  AND position = 16
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'LQ 720p'
  AND quality_name = 'WEBRip-480p'
  AND quality_group_name IS NULL
  AND position = 17
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'LQ 720p'
  AND quality_name = 'HDTV-480p'
  AND quality_group_name IS NULL
  AND position = 18
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'LQ 720p'
  AND quality_name = 'DVD-R'
  AND quality_group_name IS NULL
  AND position = 19
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'LQ 720p'
  AND quality_group_name = 'Pre-releases'
  AND quality_name IS NULL
  AND position = 22
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_group_members
WHERE quality_profile_name = 'LQ 720p'
  AND quality_group_name = 'Pre-releases'
  AND quality_name = 'CAM';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'LQ 720p'
  AND quality_group_name = 'Pre-releases'
  AND quality_name = 'DVDSCR';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'LQ 720p'
  AND quality_group_name = 'Pre-releases'
  AND quality_name = 'REGIONAL';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'LQ 720p'
  AND quality_group_name = 'Pre-releases'
  AND quality_name = 'TELECINE';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'LQ 720p'
  AND quality_group_name = 'Pre-releases'
  AND quality_name = 'TELESYNC';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'LQ 720p'
  AND quality_group_name = 'Pre-releases'
  AND quality_name = 'WORKPRINT';

DELETE FROM quality_groups
WHERE quality_profile_name = 'LQ 720p'
  AND name = 'Pre-releases';

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'LQ 720p'
  AND quality_group_name = 'Unwanted'
  AND quality_name IS NULL
  AND position = 23
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_group_members
WHERE quality_profile_name = 'LQ 720p'
  AND quality_group_name = 'Unwanted'
  AND quality_name = 'BR-DISK';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'LQ 720p'
  AND quality_group_name = 'Unwanted'
  AND quality_name = 'Raw-HD';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'LQ 720p'
  AND quality_group_name = 'Unwanted'
  AND quality_name = 'Unknown';

DELETE FROM quality_groups
WHERE quality_profile_name = 'LQ 720p'
  AND name = 'Unwanted';

INSERT INTO quality_groups (quality_profile_name, name)
SELECT 'LQ 720p', '1080p'
WHERE NOT EXISTS (
  SELECT 1 FROM quality_groups
  WHERE quality_profile_name = 'LQ 720p'
    AND name = '1080p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name)
SELECT 'LQ 720p', '1080p', 'Bluray-1080p'
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'LQ 720p'
    AND quality_group_name = '1080p'
    AND quality_name = 'Bluray-1080p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name)
SELECT 'LQ 720p', '1080p', 'HDTV-1080p'
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'LQ 720p'
    AND quality_group_name = '1080p'
    AND quality_name = 'HDTV-1080p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name)
SELECT 'LQ 720p', '1080p', 'WEBDL-1080p'
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'LQ 720p'
    AND quality_group_name = '1080p'
    AND quality_name = 'WEBDL-1080p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name)
SELECT 'LQ 720p', '1080p', 'WEBRip-1080p'
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'LQ 720p'
    AND quality_group_name = '1080p'
    AND quality_name = 'WEBRip-1080p'
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'LQ 720p', NULL, '1080p', 0, 1, 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'LQ 720p'
    AND quality_name IS NULL
    AND quality_group_name = '1080p'
);

INSERT INTO quality_groups (quality_profile_name, name)
SELECT 'LQ 720p', '720p'
WHERE NOT EXISTS (
  SELECT 1 FROM quality_groups
  WHERE quality_profile_name = 'LQ 720p'
    AND name = '720p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name)
SELECT 'LQ 720p', '720p', 'Bluray-720p'
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'LQ 720p'
    AND quality_group_name = '720p'
    AND quality_name = 'Bluray-720p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name)
SELECT 'LQ 720p', '720p', 'HDTV-720p'
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'LQ 720p'
    AND quality_group_name = '720p'
    AND quality_name = 'HDTV-720p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name)
SELECT 'LQ 720p', '720p', 'WEBDL-720p'
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'LQ 720p'
    AND quality_group_name = '720p'
    AND quality_name = 'WEBDL-720p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name)
SELECT 'LQ 720p', '720p', 'WEBRip-720p'
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'LQ 720p'
    AND quality_group_name = '720p'
    AND quality_name = 'WEBRip-720p'
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'LQ 720p', NULL, '720p', 1, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'LQ 720p'
    AND quality_name IS NULL
    AND quality_group_name = '720p'
);

INSERT INTO quality_groups (quality_profile_name, name)
SELECT 'LQ 720p', '480p'
WHERE NOT EXISTS (
  SELECT 1 FROM quality_groups
  WHERE quality_profile_name = 'LQ 720p'
    AND name = '480p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name)
SELECT 'LQ 720p', '480p', 'Bluray-480p'
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'LQ 720p'
    AND quality_group_name = '480p'
    AND quality_name = 'Bluray-480p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name)
SELECT 'LQ 720p', '480p', 'WEBDL-480p'
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'LQ 720p'
    AND quality_group_name = '480p'
    AND quality_name = 'WEBDL-480p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name)
SELECT 'LQ 720p', '480p', 'WEBRip-480p'
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'LQ 720p'
    AND quality_group_name = '480p'
    AND quality_name = 'WEBRip-480p'
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'LQ 720p', NULL, '480p', 2, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'LQ 720p'
    AND quality_name IS NULL
    AND quality_group_name = '480p'
);

UPDATE quality_profile_qualities
SET position = 3, enabled = 1
WHERE quality_profile_name = 'LQ 720p'
  AND quality_name = 'DVD'
  AND quality_group_name IS NULL
  AND position = 20
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 4, enabled = 1
WHERE quality_profile_name = 'LQ 720p'
  AND quality_name = 'SDTV'
  AND quality_group_name IS NULL
  AND position = 21
  AND enabled = 0
  AND upgrade_until = 0;
-- --- END op 348

-- --- BEGIN op 349 ( update quality_profile "LQ 720p" )
update "quality_profiles" set "minimum_custom_format_score" = 1 where "name" = 'LQ 720p' and "minimum_custom_format_score" = 0;
-- --- END op 349

-- --- BEGIN op 350 ( update quality_profile "LQ 720p" )
update "quality_profiles" set "upgrade_until_score" = 10000 where "name" = 'LQ 720p' and "upgrade_until_score" = 0;
-- --- END op 350

-- --- BEGIN op 351 ( update quality_profile "LQ 720p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 720p', '5.1 Surround', 'all', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 720p'
    AND custom_format_name = '5.1 Surround'
    AND arr_type = 'all'
);
-- --- END op 351

-- --- BEGIN op 352 ( update quality_profile "LQ 720p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 720p', '7.1 Surround', 'all', 2
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 720p'
    AND custom_format_name = '7.1 Surround'
    AND arr_type = 'all'
);
-- --- END op 352

-- --- BEGIN op 353 ( update quality_profile "LQ 720p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 720p', 'ASL', 'all', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 720p'
    AND custom_format_name = 'ASL'
    AND arr_type = 'all'
);
-- --- END op 353

-- --- BEGIN op 354 ( update quality_profile "LQ 720p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 720p', 'Dolby Digital', 'all', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 720p'
    AND custom_format_name = 'Dolby Digital'
    AND arr_type = 'all'
);
-- --- END op 354

-- --- BEGIN op 355 ( update quality_profile "LQ 720p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 720p', 'Dolby Digital +', 'all', 2
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 720p'
    AND custom_format_name = 'Dolby Digital +'
    AND arr_type = 'all'
);
-- --- END op 355

-- --- BEGIN op 356 ( update quality_profile "LQ 720p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 720p', 'Group Missing', 'all', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 720p'
    AND custom_format_name = 'Group Missing'
    AND arr_type = 'all'
);
-- --- END op 356

-- --- BEGIN op 357 ( update quality_profile "LQ 720p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 720p', 'SIDCA Fallback Groups', 'all', 250
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 720p'
    AND custom_format_name = 'SIDCA Fallback Groups'
    AND arr_type = 'all'
);
-- --- END op 357

-- --- BEGIN op 358 ( update quality_profile "LQ 720p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 720p', 'SIDCA Groups', 'all', 300
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 720p'
    AND custom_format_name = 'SIDCA Groups'
    AND arr_type = 'all'
);
-- --- END op 358

-- --- BEGIN op 359 ( update quality_profile "LQ 720p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 720p', 'x265 (HD)', 'all', 50
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 720p'
    AND custom_format_name = 'x265 (HD)'
    AND arr_type = 'all'
);
-- --- END op 359

-- --- BEGIN op 360 ( update quality_profile "LQ 720p" )
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'LQ 720p', 'Bluray-2160p', NULL, 5, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'LQ 720p'
    AND quality_name = 'Bluray-2160p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'LQ 720p', 'Bluray-576p', NULL, 6, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'LQ 720p'
    AND quality_name = 'Bluray-576p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'LQ 720p', 'BR-DISK', NULL, 7, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'LQ 720p'
    AND quality_name = 'BR-DISK'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'LQ 720p', 'CAM', NULL, 8, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'LQ 720p'
    AND quality_name = 'CAM'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'LQ 720p', 'DVD-R', NULL, 9, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'LQ 720p'
    AND quality_name = 'DVD-R'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'LQ 720p', 'DVDSCR', NULL, 10, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'LQ 720p'
    AND quality_name = 'DVDSCR'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'LQ 720p', 'HDTV-2160p', NULL, 11, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'LQ 720p'
    AND quality_name = 'HDTV-2160p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'LQ 720p', 'HDTV-480p', NULL, 12, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'LQ 720p'
    AND quality_name = 'HDTV-480p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'LQ 720p', 'Raw-HD', NULL, 13, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'LQ 720p'
    AND quality_name = 'Raw-HD'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'LQ 720p', 'REGIONAL', NULL, 14, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'LQ 720p'
    AND quality_name = 'REGIONAL'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'LQ 720p', 'Remux-1080p', NULL, 15, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'LQ 720p'
    AND quality_name = 'Remux-1080p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'LQ 720p', 'Remux-2160p', NULL, 16, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'LQ 720p'
    AND quality_name = 'Remux-2160p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'LQ 720p', 'TELECINE', NULL, 17, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'LQ 720p'
    AND quality_name = 'TELECINE'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'LQ 720p', 'TELESYNC', NULL, 18, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'LQ 720p'
    AND quality_name = 'TELESYNC'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'LQ 720p', 'Unknown', NULL, 19, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'LQ 720p'
    AND quality_name = 'Unknown'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'LQ 720p', 'WEBDL-2160p', NULL, 20, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'LQ 720p'
    AND quality_name = 'WEBDL-2160p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'LQ 720p', 'WEBRip-2160p', NULL, 21, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'LQ 720p'
    AND quality_name = 'WEBRip-2160p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'LQ 720p', 'WORKPRINT', NULL, 22, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'LQ 720p'
    AND quality_name = 'WORKPRINT'
    AND quality_group_name IS NULL
);

UPDATE quality_profile_qualities
SET position = 1
WHERE quality_profile_name = 'LQ 720p'
  AND quality_group_name = '480p'
  AND quality_name IS NULL
  AND position = 2
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 2, enabled = 0, upgrade_until = 0
WHERE quality_profile_name = 'LQ 720p'
  AND quality_group_name = '1080p'
  AND quality_name IS NULL
  AND position = 0
  AND enabled = 1
  AND upgrade_until = 1;

UPDATE quality_profile_qualities
SET position = 0, upgrade_until = 1
WHERE quality_profile_name = 'LQ 720p'
  AND quality_group_name = '720p'
  AND quality_name IS NULL
  AND position = 1
  AND enabled = 1
  AND upgrade_until = 0;
-- --- END op 360

-- --- BEGIN op 361 ( update quality_profile "LQ 720p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 720p', 'HDTV', 'sonarr', 50
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 720p'
    AND custom_format_name = 'HDTV'
    AND arr_type = 'sonarr'
);
-- --- END op 361

-- --- BEGIN op 362 ( update regular_expression "Scrubs" )
update "regular_expressions" set "pattern" = '\bScrubs\b(?!.*2026)' where "name" = 'Scrubs' and "pattern" = '\bScrubs\b';
-- --- END op 362

-- --- BEGIN op 363 ( delete quality_profile "LQ 720p" )
delete from "quality_profile_tags" where "quality_profile_name" = 'LQ 720p';

delete from "quality_profile_languages" where "quality_profile_name" = 'LQ 720p';

delete from "quality_profile_qualities" where "quality_profile_name" = 'LQ 720p';

delete from "quality_profile_custom_formats" where "quality_profile_name" = 'LQ 720p';

delete from "quality_groups" where "quality_profile_name" = 'LQ 720p';

delete from "quality_profiles" where "name" = 'LQ 720p';
-- --- END op 363

-- --- BEGIN op 364 ( update regular_expression "Scrubs (2001)" )
update "regular_expressions" set "name" = 'Scrubs (2001)' where "name" = 'Scrubs';
-- --- END op 364

-- --- BEGIN op 365 ( update custom_format "Scrubs (Banned Groups)" )
update "condition_patterns" set "regular_expression_name" = 'Scrubs (2001)' where "custom_format_name" = 'Scrubs (Banned Groups)' and "condition_name" = 'Scrubs' and "regular_expression_name" = 'Scrubs';
-- --- END op 365

-- --- BEGIN op 366 ( update custom_format "Scrubs (Banned Title)" )
update "condition_patterns" set "regular_expression_name" = 'Scrubs (2001)' where "custom_format_name" = 'Scrubs (Banned Title)' and "condition_name" = 'Scrubs' and "regular_expression_name" = 'Scrubs';
-- --- END op 366

-- --- BEGIN op 367 ( update custom_format "Scrubs (Internal Boost)" )
update "condition_patterns" set "regular_expression_name" = 'Scrubs (2001)' where "custom_format_name" = 'Scrubs (Internal Boost)' and "condition_name" = 'Scrubs' and "regular_expression_name" = 'Scrubs';
-- --- END op 367

-- --- BEGIN op 368 ( update custom_format "Scrubs (Remux Boost)" )
update "condition_patterns" set "regular_expression_name" = 'Scrubs (2001)' where "custom_format_name" = 'Scrubs (Remux Boost)' and "condition_name" = 'Scrubs' and "regular_expression_name" = 'Scrubs';
-- --- END op 368

-- --- BEGIN op 369 ( update regular_expression "Scrubs (2001) (Banned Title)" )
update "regular_expressions" set "name" = 'Scrubs (2001) (Banned Title)' where "name" = 'Scrubs (Banned Title)';
-- --- END op 369

-- --- BEGIN op 371 ( update regular_expression "Scrubs (2001) Approved Groups" )
update "regular_expressions" set "name" = 'Scrubs (2001) Approved Groups' where "name" = 'Scrubs Approved Groups';
-- --- END op 371

-- --- BEGIN op 372 ( update custom_format "Scrubs (Banned Groups)" )
update "condition_patterns" set "regular_expression_name" = 'Scrubs (2001) Approved Groups' where "custom_format_name" = 'Scrubs (Banned Groups)' and "condition_name" = 'Allowed Groups' and "regular_expression_name" = 'Scrubs Approved Groups';
-- --- END op 372

-- --- BEGIN op 373 ( update regular_expression "Scrubs (2001) Banned Title" )
update "regular_expressions" set "name" = 'Scrubs (2001) Banned Title' where "name" = 'Scrubs (2001) (Banned Title)';
-- --- END op 373

-- --- BEGIN op 375 ( update regular_expression "Scrubs (2001) Approved Groups" )
insert into "tags" ("name") values ('Custom') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name)
SELECT name, 'Custom' FROM regular_expressions WHERE name IN ('Scrubs (2001) Approved Groups') LIMIT 1;
-- --- END op 375

-- --- BEGIN op 376 ( update custom_format "Scrubs (2001) Banned Groups" )
update "custom_formats" set "name" = 'Scrubs (2001) Banned Groups' where "name" = 'Scrubs (Banned Groups)';
-- --- END op 376

-- --- BEGIN op 377 ( update quality_profile "TV 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Scrubs (2001) Banned Groups' where "quality_profile_name" = 'TV 1080p' and "custom_format_name" = 'Scrubs (Banned Groups)' and "arr_type" = 'sonarr' and "score" = -10000;
-- --- END op 377

-- --- BEGIN op 378 ( update quality_profile "TV 2160p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Scrubs (2001) Banned Groups' where "quality_profile_name" = 'TV 2160p' and "custom_format_name" = 'Scrubs (Banned Groups)' and "arr_type" = 'sonarr' and "score" = -10000;
-- --- END op 378

-- --- BEGIN op 379 ( update custom_format "Scrubs (2001) Banned Title" )
update "custom_formats" set "name" = 'Scrubs (2001) Banned Title' where "name" = 'Scrubs (Banned Title)';
-- --- END op 379

-- --- BEGIN op 380 ( update quality_profile "TV 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Scrubs (2001) Banned Title' where "quality_profile_name" = 'TV 1080p' and "custom_format_name" = 'Scrubs (Banned Title)' and "arr_type" = 'sonarr' and "score" = -10000;
-- --- END op 380

-- --- BEGIN op 381 ( update quality_profile "TV 2160p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Scrubs (2001) Banned Title' where "quality_profile_name" = 'TV 2160p' and "custom_format_name" = 'Scrubs (Banned Title)' and "arr_type" = 'sonarr' and "score" = -10000;
-- --- END op 381

-- --- BEGIN op 382 ( update custom_format "Scrubs (2001) Internal Boost" )
update "custom_formats" set "name" = 'Scrubs (2001) Internal Boost' where "name" = 'Scrubs (Internal Boost)';
-- --- END op 382

-- --- BEGIN op 383 ( update quality_profile "TV 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Scrubs (2001) Internal Boost' where "quality_profile_name" = 'TV 1080p' and "custom_format_name" = 'Scrubs (Internal Boost)' and "arr_type" = 'sonarr' and "score" = 10;
-- --- END op 383

-- --- BEGIN op 384 ( update quality_profile "TV 2160p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Scrubs (2001) Internal Boost' where "quality_profile_name" = 'TV 2160p' and "custom_format_name" = 'Scrubs (Internal Boost)' and "arr_type" = 'sonarr' and "score" = 10;
-- --- END op 384

-- --- BEGIN op 385 ( update custom_format "Scrubs (2001) Remux Boost)l" )
update "custom_formats" set "name" = 'Scrubs (2001) Remux Boost)l' where "name" = 'Scrubs (Remux Boost)';
-- --- END op 385

-- --- BEGIN op 386 ( update quality_profile "TV 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Scrubs (2001) Remux Boost)l' where "quality_profile_name" = 'TV 1080p' and "custom_format_name" = 'Scrubs (Remux Boost)' and "arr_type" = 'sonarr' and "score" = 10;
-- --- END op 386

-- --- BEGIN op 387 ( update quality_profile "TV 2160p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Scrubs (2001) Remux Boost)l' where "quality_profile_name" = 'TV 2160p' and "custom_format_name" = 'Scrubs (Remux Boost)' and "arr_type" = 'sonarr' and "score" = 10;
-- --- END op 387
