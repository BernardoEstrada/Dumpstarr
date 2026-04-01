-- @operation: export
-- @entity: batch
-- @name: Pulled the Missing Audio Channels format
-- @exportedAt: 2026-04-01T14:20:40.886Z
-- @opIds: 2072, 2073, 2074, 2075, 2076, 2077

-- --- BEGIN op 2072 ( update quality_profile "Movies 2160p HQ" )
DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND quality_group_name = 'WEB-2160p'
  AND quality_name IS NULL
  AND position = 0
  AND enabled = 1
  AND upgrade_until = 1;

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND quality_group_name = 'WEB-2160p'
  AND quality_name = 'WEBDL-2160p';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND quality_group_name = 'WEB-2160p'
  AND quality_name = 'WEBRip-2160p';

DELETE FROM quality_groups
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND name = 'WEB-2160p';

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND quality_name = 'Bluray-2160p'
  AND quality_group_name IS NULL
  AND position = 1
  AND enabled = 1
  AND upgrade_until = 0;

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND quality_group_name = 'WEB-1080p'
  AND quality_name IS NULL
  AND position = 2
  AND enabled = 1
  AND upgrade_until = 0;

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND quality_group_name = 'WEB-1080p'
  AND quality_name = 'WEBDL-1080p';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND quality_group_name = 'WEB-1080p'
  AND quality_name = 'WEBRip-1080p';

DELETE FROM quality_groups
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND name = 'WEB-1080p';

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND quality_name = 'Bluray-1080p'
  AND quality_group_name IS NULL
  AND position = 3
  AND enabled = 1
  AND upgrade_until = 0;

INSERT INTO quality_groups (quality_profile_name, name)
SELECT 'Movies 2160p HQ', '2160p'
WHERE NOT EXISTS (
  SELECT 1 FROM quality_groups
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND name = '2160p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Movies 2160p HQ', '2160p', 'WEBDL-2160p', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND quality_group_name = '2160p'
    AND quality_name = 'WEBDL-2160p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Movies 2160p HQ', '2160p', 'WEBRip-2160p', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND quality_group_name = '2160p'
    AND quality_name = 'WEBRip-2160p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Movies 2160p HQ', '2160p', 'Bluray-2160p', 2
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND quality_group_name = '2160p'
    AND quality_name = 'Bluray-2160p'
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 2160p HQ', NULL, '2160p', 0, 1, 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND quality_name IS NULL
    AND quality_group_name = '2160p'
);

INSERT INTO quality_groups (quality_profile_name, name)
SELECT 'Movies 2160p HQ', '1080p'
WHERE NOT EXISTS (
  SELECT 1 FROM quality_groups
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND name = '1080p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Movies 2160p HQ', '1080p', 'WEBDL-1080p', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND quality_group_name = '1080p'
    AND quality_name = 'WEBDL-1080p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Movies 2160p HQ', '1080p', 'WEBRip-1080p', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND quality_group_name = '1080p'
    AND quality_name = 'WEBRip-1080p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Movies 2160p HQ', '1080p', 'Bluray-1080p', 2
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND quality_group_name = '1080p'
    AND quality_name = 'Bluray-1080p'
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 2160p HQ', NULL, '1080p', 1, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND quality_name IS NULL
    AND quality_group_name = '1080p'
);

UPDATE quality_profile_qualities
SET position = 2
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND quality_name = 'Bluray-720p'
  AND quality_group_name IS NULL
  AND position = 4
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 3
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND quality_name = 'WEBDL-720p'
  AND quality_group_name IS NULL
  AND position = 5
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 4
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND quality_name = 'WEBRip-720p'
  AND quality_group_name IS NULL
  AND position = 6
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 5
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND quality_name = 'Bluray-480p'
  AND quality_group_name IS NULL
  AND position = 7
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 6
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND quality_name = 'Bluray-576p'
  AND quality_group_name IS NULL
  AND position = 8
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 7
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND quality_name = 'BR-DISK'
  AND quality_group_name IS NULL
  AND position = 9
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 8
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND quality_name = 'CAM'
  AND quality_group_name IS NULL
  AND position = 10
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 9
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND quality_name = 'DVD'
  AND quality_group_name IS NULL
  AND position = 11
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 10
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND quality_name = 'DVD-R'
  AND quality_group_name IS NULL
  AND position = 12
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 11
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND quality_name = 'DVDSCR'
  AND quality_group_name IS NULL
  AND position = 13
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 12
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND quality_name = 'HDTV-1080p'
  AND quality_group_name IS NULL
  AND position = 14
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 13
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND quality_name = 'HDTV-2160p'
  AND quality_group_name IS NULL
  AND position = 15
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 14
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND quality_name = 'HDTV-480p'
  AND quality_group_name IS NULL
  AND position = 16
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 15
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND quality_name = 'HDTV-720p'
  AND quality_group_name IS NULL
  AND position = 17
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 16
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND quality_name = 'Raw-HD'
  AND quality_group_name IS NULL
  AND position = 18
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 17
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND quality_name = 'REGIONAL'
  AND quality_group_name IS NULL
  AND position = 19
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 18
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND quality_name = 'Remux-1080p'
  AND quality_group_name IS NULL
  AND position = 20
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 19
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND quality_name = 'Remux-2160p'
  AND quality_group_name IS NULL
  AND position = 21
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 20
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND quality_name = 'SDTV'
  AND quality_group_name IS NULL
  AND position = 22
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 21
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND quality_name = 'TELECINE'
  AND quality_group_name IS NULL
  AND position = 23
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 22
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND quality_name = 'TELESYNC'
  AND quality_group_name IS NULL
  AND position = 24
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 23
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND quality_name = 'Unknown'
  AND quality_group_name IS NULL
  AND position = 25
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 24
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND quality_name = 'WEBDL-480p'
  AND quality_group_name IS NULL
  AND position = 26
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 25
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND quality_name = 'WEBRip-480p'
  AND quality_group_name IS NULL
  AND position = 27
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 26
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND quality_name = 'WORKPRINT'
  AND quality_group_name IS NULL
  AND position = 28
  AND enabled = 0
  AND upgrade_until = 0;
-- --- END op 2072

-- --- BEGIN op 2073 ( update quality_profile "Movies 2160p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'Missing Audio Channels'
  AND arr_type = 'radarr'
  AND score = -5;
-- --- END op 2073

-- --- BEGIN op 2074 ( update quality_profile "Movies 1080p" )
delete from "quality_profile_custom_formats" where "quality_profile_name" = 'Movies 1080p' and "custom_format_name" = 'Missing Audio Channels' and "arr_type" = 'radarr' and "score" = -5;
-- --- END op 2074

-- --- BEGIN op 2075 ( update quality_profile "Movies 1080p HQ" )
delete from "quality_profile_custom_formats" where "quality_profile_name" = 'Movies 1080p HQ' and "custom_format_name" = 'Missing Audio Channels' and "arr_type" = 'radarr' and "score" = -5;
-- --- END op 2075

-- --- BEGIN op 2076 ( update quality_profile "Movies 2160p" )
delete from "quality_profile_custom_formats" where "quality_profile_name" = 'Movies 2160p' and "custom_format_name" = 'Missing Audio Channels' and "arr_type" = 'radarr' and "score" = -5;
-- --- END op 2076

-- --- BEGIN op 2077 ( delete custom_format "Missing Audio Channels" )
delete from "custom_formats" where "name" = 'Missing Audio Channels';
-- --- END op 2077
