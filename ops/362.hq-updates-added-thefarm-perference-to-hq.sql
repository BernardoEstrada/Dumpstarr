-- @operation: export
-- @entity: batch
-- @name: HQ Updates/Added TheFarm Perference to HQ
-- @exportedAt: 2026-07-21T17:46:37.866Z
-- @opIds: 4117, 4118, 4119, 4120, 4121, 4122, 4123, 4124, 4125, 4126, 4127, 4128, 4129, 4130, 4131, 4132, 4133, 4134, 4135, 4136, 4137, 4138, 4139, 4140, 4141, 4142, 4143, 4151, 4152, 4153, 4154, 4155, 4156, 4157, 4158, 4159, 4160, 4161, 4162, 4163, 4164, 4165, 4166, 4167, 4168, 4169, 4170

-- --- BEGIN op 4117 ( update quality_profile "Movies 2160p HQ" )
DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND quality_group_name = '2160p'
  AND quality_name IS NULL
  AND position = 0
  AND enabled = 1
  AND upgrade_until = 1;

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND quality_group_name = '2160p'
  AND quality_name = 'Bluray-2160p';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND quality_group_name = '2160p'
  AND quality_name = 'WEBDL-2160p';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND quality_group_name = '2160p'
  AND quality_name = 'WEBRip-2160p';

DELETE FROM quality_groups
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND name = '2160p';

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND quality_group_name = '1080p'
  AND quality_name IS NULL
  AND position = 1
  AND enabled = 1
  AND upgrade_until = 0;

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND quality_group_name = '1080p'
  AND quality_name = 'Bluray-1080p';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND quality_group_name = '1080p'
  AND quality_name = 'WEBDL-1080p';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND quality_group_name = '1080p'
  AND quality_name = 'WEBRip-1080p';

DELETE FROM quality_groups
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND name = '1080p';

INSERT INTO quality_groups (quality_profile_name, name)
SELECT 'Movies 2160p HQ', 'WEB-2160p'
WHERE NOT EXISTS (
  SELECT 1 FROM quality_groups
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND name = 'WEB-2160p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Movies 2160p HQ', 'WEB-2160p', 'WEBDL-2160p', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND quality_group_name = 'WEB-2160p'
    AND quality_name = 'WEBDL-2160p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Movies 2160p HQ', 'WEB-2160p', 'WEBRip-2160p', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND quality_group_name = 'WEB-2160p'
    AND quality_name = 'WEBRip-2160p'
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 2160p HQ', NULL, 'WEB-2160p', 0, 1, 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND quality_name IS NULL
    AND quality_group_name = 'WEB-2160p'
);

INSERT INTO quality_groups (quality_profile_name, name)
SELECT 'Movies 2160p HQ', 'WEB-1080p'
WHERE NOT EXISTS (
  SELECT 1 FROM quality_groups
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND name = 'WEB-1080p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Movies 2160p HQ', 'WEB-1080p', 'WEBDL-1080p', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND quality_group_name = 'WEB-1080p'
    AND quality_name = 'WEBDL-1080p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Movies 2160p HQ', 'WEB-1080p', 'WEBRip-1080p', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND quality_group_name = 'WEB-1080p'
    AND quality_name = 'WEBRip-1080p'
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 2160p HQ', NULL, 'WEB-1080p', 1, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND quality_name IS NULL
    AND quality_group_name = 'WEB-1080p'
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 2160p HQ', 'Bluray-2160p', NULL, 2, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND quality_name = 'Bluray-2160p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 2160p HQ', 'Bluray-1080p', NULL, 3, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND quality_name = 'Bluray-1080p'
    AND quality_group_name IS NULL
);

UPDATE quality_profile_qualities
SET position = 4
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND quality_name = 'Bluray-720p'
  AND quality_group_name IS NULL
  AND position = 2
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 5
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND quality_name = 'WEBDL-720p'
  AND quality_group_name IS NULL
  AND position = 3
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 6
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND quality_name = 'WEBRip-720p'
  AND quality_group_name IS NULL
  AND position = 4
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 7
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND quality_name = 'Bluray-480p'
  AND quality_group_name IS NULL
  AND position = 5
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 8
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND quality_name = 'Bluray-576p'
  AND quality_group_name IS NULL
  AND position = 6
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 9
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND quality_name = 'BR-DISK'
  AND quality_group_name IS NULL
  AND position = 7
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 10
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND quality_name = 'CAM'
  AND quality_group_name IS NULL
  AND position = 8
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 11
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND quality_name = 'DVD'
  AND quality_group_name IS NULL
  AND position = 9
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 12
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND quality_name = 'DVD-R'
  AND quality_group_name IS NULL
  AND position = 10
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 13
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND quality_name = 'DVDSCR'
  AND quality_group_name IS NULL
  AND position = 11
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 14
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND quality_name = 'HDTV-1080p'
  AND quality_group_name IS NULL
  AND position = 12
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 15
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND quality_name = 'HDTV-2160p'
  AND quality_group_name IS NULL
  AND position = 13
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 16
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND quality_name = 'HDTV-480p'
  AND quality_group_name IS NULL
  AND position = 14
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 17
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND quality_name = 'HDTV-720p'
  AND quality_group_name IS NULL
  AND position = 15
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 18
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND quality_name = 'Raw-HD'
  AND quality_group_name IS NULL
  AND position = 16
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 19
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND quality_name = 'REGIONAL'
  AND quality_group_name IS NULL
  AND position = 17
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 20
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND quality_name = 'Remux-1080p'
  AND quality_group_name IS NULL
  AND position = 18
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 21
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND quality_name = 'Remux-2160p'
  AND quality_group_name IS NULL
  AND position = 19
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 22
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND quality_name = 'SDTV'
  AND quality_group_name IS NULL
  AND position = 20
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 23
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND quality_name = 'TELECINE'
  AND quality_group_name IS NULL
  AND position = 21
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 24
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND quality_name = 'TELESYNC'
  AND quality_group_name IS NULL
  AND position = 22
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 25
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND quality_name = 'Unknown'
  AND quality_group_name IS NULL
  AND position = 23
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 26
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND quality_name = 'WEBDL-480p'
  AND quality_group_name IS NULL
  AND position = 24
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 27
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND quality_name = 'WEBRip-480p'
  AND quality_group_name IS NULL
  AND position = 25
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 28
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND quality_name = 'WORKPRINT'
  AND quality_group_name IS NULL
  AND position = 26
  AND enabled = 0
  AND upgrade_until = 0;
-- --- END op 4117

-- --- BEGIN op 4118 ( update quality_profile "Movies 1080p HQ" )
UPDATE quality_profile_qualities
SET enabled = 0
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND quality_name = 'Bluray-1080p'
  AND quality_group_name IS NULL
  AND position = 1
  AND enabled = 1
  AND upgrade_until = 0;
-- --- END op 4118

-- --- BEGIN op 4119 ( update quality_profile "Movies 1080p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND custom_format_name = 'DTS-HD HRA (WEB)'
  AND arr_type = 'radarr'
  AND score = -10000;
-- --- END op 4119

-- --- BEGIN op 4120 ( update quality_profile "Movies 1080p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND custom_format_name = 'DTS-HD MA (WEB)'
  AND arr_type = 'radarr'
  AND score = -10000;
-- --- END op 4120

-- --- BEGIN op 4121 ( update quality_profile "Movies 1080p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND custom_format_name = 'DTS-X (WEB)'
  AND arr_type = 'radarr'
  AND score = -10000;
-- --- END op 4121

-- --- BEGIN op 4122 ( update quality_profile "Movies 1080p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND custom_format_name = 'HD Bluray Tier 01'
  AND arr_type = 'radarr'
  AND score = 1100;
-- --- END op 4122

-- --- BEGIN op 4123 ( update quality_profile "Movies 1080p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND custom_format_name = 'HD Bluray Tier 02'
  AND arr_type = 'radarr'
  AND score = 1050;
-- --- END op 4123

-- --- BEGIN op 4124 ( update quality_profile "Movies 1080p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND custom_format_name = 'HD Bluray Tier 03'
  AND arr_type = 'radarr'
  AND score = 1000;
-- --- END op 4124

-- --- BEGIN op 4125 ( update quality_profile "Movies 1080p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND custom_format_name = 'TrueHD (WEB)'
  AND arr_type = 'radarr'
  AND score = -10000;
-- --- END op 4125

-- --- BEGIN op 4126 ( update quality_profile "Movies 2160p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'DTS-HD HRA (WEB)'
  AND arr_type = 'radarr'
  AND score = -10000;
-- --- END op 4126

-- --- BEGIN op 4127 ( update quality_profile "Movies 2160p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'DTS-HD MA (WEB)'
  AND arr_type = 'radarr'
  AND score = -10000;
-- --- END op 4127

-- --- BEGIN op 4128 ( update quality_profile "Movies 2160p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'DTS-X (WEB)'
  AND arr_type = 'radarr'
  AND score = -10000;
-- --- END op 4128

-- --- BEGIN op 4129 ( update quality_profile "Movies 2160p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'HD Bluray Tier 01'
  AND arr_type = 'radarr'
  AND score = 1100;
-- --- END op 4129

-- --- BEGIN op 4130 ( update quality_profile "Movies 2160p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'HD Bluray Tier 02'
  AND arr_type = 'radarr'
  AND score = 1050;
-- --- END op 4130

-- --- BEGIN op 4131 ( update quality_profile "Movies 2160p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'HD Bluray Tier 03'
  AND arr_type = 'radarr'
  AND score = 1000;
-- --- END op 4131

-- --- BEGIN op 4132 ( update quality_profile "Movies 2160p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'TrueHD (WEB)'
  AND arr_type = 'radarr'
  AND score = -10000;
-- --- END op 4132

-- --- BEGIN op 4133 ( update quality_profile "Movies 2160p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'UHD Bluray Tier 01'
  AND arr_type = 'radarr'
  AND score = 1100;
-- --- END op 4133

-- --- BEGIN op 4134 ( update quality_profile "Movies 2160p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'UHD Bluray Tier 02'
  AND arr_type = 'radarr'
  AND score = 1050;
-- --- END op 4134

-- --- BEGIN op 4135 ( update quality_profile "Movies 2160p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'UHD Bluray Tier 03'
  AND arr_type = 'radarr'
  AND score = 1000;
-- --- END op 4135

-- --- BEGIN op 4136 ( update quality_profile "Movies 2160p HQ" )
UPDATE quality_profile_custom_formats
SET score = 500
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'Baseline Groups'
  AND arr_type = 'radarr'
  AND score = 100;
-- --- END op 4136

-- --- BEGIN op 4137 ( update quality_profile "Movies 1080p HQ" )
UPDATE quality_profile_custom_formats
SET score = 500
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND custom_format_name = 'Baseline Groups'
  AND arr_type = 'radarr'
  AND score = 100;
-- --- END op 4137

-- --- BEGIN op 4138 ( update quality_profile "Movies 2160p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p HQ', 'hallowed', 'radarr', 500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND custom_format_name = 'hallowed'
    AND arr_type = 'radarr'
);
-- --- END op 4138

-- --- BEGIN op 4139 ( update quality_profile "Movies 2160p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p HQ', 'BHDStudio', 'radarr', 450
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND custom_format_name = 'BHDStudio'
    AND arr_type = 'radarr'
);
-- --- END op 4139

-- --- BEGIN op 4140 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'BHDStudio', 'radarr', 450
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'BHDStudio'
    AND arr_type = 'radarr'
);
-- --- END op 4140

-- --- BEGIN op 4141 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'hallowed', 'radarr', 500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'hallowed'
    AND arr_type = 'radarr'
);
-- --- END op 4141

-- --- BEGIN op 4142 ( update quality_profile "Movies 2160p HQ" )
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
  AND quality_group_name = 'WEB-1080p'
  AND quality_name IS NULL
  AND position = 1
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
  AND quality_name = 'Bluray-2160p'
  AND quality_group_name IS NULL
  AND position = 2
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND quality_name = 'Bluray-1080p'
  AND quality_group_name IS NULL
  AND position = 3
  AND enabled = 0
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
-- --- END op 4142

-- --- BEGIN op 4143 ( update quality_profile "Movies 1080p HQ" )
DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND quality_group_name = 'WEB-1080p'
  AND quality_name IS NULL
  AND position = 0
  AND enabled = 1
  AND upgrade_until = 1;

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND quality_group_name = 'WEB-1080p'
  AND quality_name = 'WEBDL-1080p';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND quality_group_name = 'WEB-1080p'
  AND quality_name = 'WEBRip-1080p';

DELETE FROM quality_groups
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND name = 'WEB-1080p';

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND quality_name = 'Bluray-1080p'
  AND quality_group_name IS NULL
  AND position = 1
  AND enabled = 0
  AND upgrade_until = 0;

INSERT INTO quality_groups (quality_profile_name, name)
SELECT 'Movies 1080p HQ', '1080p'
WHERE NOT EXISTS (
  SELECT 1 FROM quality_groups
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND name = '1080p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Movies 1080p HQ', '1080p', 'WEBDL-1080p', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND quality_group_name = '1080p'
    AND quality_name = 'WEBDL-1080p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Movies 1080p HQ', '1080p', 'WEBRip-1080p', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND quality_group_name = '1080p'
    AND quality_name = 'WEBRip-1080p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Movies 1080p HQ', '1080p', 'Bluray-1080p', 2
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND quality_group_name = '1080p'
    AND quality_name = 'Bluray-1080p'
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 1080p HQ', NULL, '1080p', 0, 1, 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND quality_name IS NULL
    AND quality_group_name = '1080p'
);

UPDATE quality_profile_qualities
SET position = 1
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND quality_name = 'Bluray-720p'
  AND quality_group_name IS NULL
  AND position = 2
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 2
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND quality_name = 'WEBDL-720p'
  AND quality_group_name IS NULL
  AND position = 3
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 3
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND quality_name = 'WEBRip-720p'
  AND quality_group_name IS NULL
  AND position = 4
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 4
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND quality_name = 'Bluray-2160p'
  AND quality_group_name IS NULL
  AND position = 5
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 5
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND quality_name = 'Bluray-480p'
  AND quality_group_name IS NULL
  AND position = 6
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 6
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND quality_name = 'Bluray-576p'
  AND quality_group_name IS NULL
  AND position = 7
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 7
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND quality_name = 'BR-DISK'
  AND quality_group_name IS NULL
  AND position = 8
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 8
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND quality_name = 'CAM'
  AND quality_group_name IS NULL
  AND position = 9
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 9
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND quality_name = 'DVD'
  AND quality_group_name IS NULL
  AND position = 10
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 10
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND quality_name = 'DVD-R'
  AND quality_group_name IS NULL
  AND position = 11
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 11
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND quality_name = 'DVDSCR'
  AND quality_group_name IS NULL
  AND position = 12
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 12
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND quality_name = 'HDTV-1080p'
  AND quality_group_name IS NULL
  AND position = 13
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 13
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND quality_name = 'HDTV-2160p'
  AND quality_group_name IS NULL
  AND position = 14
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 14
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND quality_name = 'HDTV-480p'
  AND quality_group_name IS NULL
  AND position = 15
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 15
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND quality_name = 'HDTV-720p'
  AND quality_group_name IS NULL
  AND position = 16
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 16
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND quality_name = 'Raw-HD'
  AND quality_group_name IS NULL
  AND position = 17
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 17
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND quality_name = 'REGIONAL'
  AND quality_group_name IS NULL
  AND position = 18
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 18
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND quality_name = 'Remux-1080p'
  AND quality_group_name IS NULL
  AND position = 19
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 19
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND quality_name = 'Remux-2160p'
  AND quality_group_name IS NULL
  AND position = 20
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 20
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND quality_name = 'SDTV'
  AND quality_group_name IS NULL
  AND position = 21
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 21
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND quality_name = 'TELECINE'
  AND quality_group_name IS NULL
  AND position = 22
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 22
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND quality_name = 'TELESYNC'
  AND quality_group_name IS NULL
  AND position = 23
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 23
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND quality_name = 'Unknown'
  AND quality_group_name IS NULL
  AND position = 24
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 24
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND quality_name = 'WEBDL-2160p'
  AND quality_group_name IS NULL
  AND position = 25
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 25
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND quality_name = 'WEBDL-480p'
  AND quality_group_name IS NULL
  AND position = 26
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 26
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND quality_name = 'WEBRip-2160p'
  AND quality_group_name IS NULL
  AND position = 27
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 27
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND quality_name = 'WEBRip-480p'
  AND quality_group_name IS NULL
  AND position = 28
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 28
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND quality_name = 'WORKPRINT'
  AND quality_group_name IS NULL
  AND position = 29
  AND enabled = 0
  AND upgrade_until = 0;
-- --- END op 4143

-- --- BEGIN op 4151 ( update quality_profile "Movies 2160p HQ" )
update "quality_profiles" set "description" = 'This profile targets WEB-DLs from MA (Movies Anywhere) and HQ audio.
- This profile is recommended for a set-it-and-forget-it setup.
- This profile prefers 4K releases with **HDR** and **Dolby Vision**.
- This profile will allow HD audio like TrueHD, DTS-X, etc but only if the source is WEB-DL
- Releases **without** HDR fallback are not allowed.' where "name" = 'Movies 2160p HQ' and "description" = 'This profile is like the primary Movie profile, but with merged source qualities. This results in higher-quality, WEB releases being preferred. This usually results in higher-quality audio, higher video bitrates and 30% larger file size.
- This profile is recommended for a set-it-and-forget-it setup.
- This profile prefers 4K releases with **HDR** and **Dolby Vision**.
- This profile will allow HD audio like TrueHD, DTS-X, etc but only if the source is WEB-DL
- Releases **without** HDR fallback are not allowed.';
-- --- END op 4151

-- --- BEGIN op 4152 ( update quality_profile "Movies 2160p HQ" )
update "quality_profiles" set "description" = 'This profile is like the primary Movie profile, but with merged source qualities. This results in higher-quality, WEB releases being preferred. This usually results in higher-quality audio, higher video bitrates and 30% larger file size.
- This profile is recommended for a set-it-and-forget-it setup.
- This profile prefers 4K releases with **HDR** and **Dolby Vision**.
- This profile will allow HD audio like TrueHD, DTS-X, etc but only if the source is WEB-DL
- Releases **without** HDR fallback are not allowed.' where "name" = 'Movies 2160p HQ' and "description" = 'This profile targets WEB-DLs from MA (Movies Anywhere) and HQ audio.
- This profile is recommended for a set-it-and-forget-it setup.
- This profile prefers 4K releases with **HDR** and **Dolby Vision**.
- This profile will allow HD audio like TrueHD, DTS-X, etc but only if the source is WEB-DL
- Releases **without** HDR fallback are not allowed.';
-- --- END op 4152

-- --- BEGIN op 4153 ( update quality_profile "Movies 2160p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p HQ', 'DTS-HD HRA (WEB)', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND custom_format_name = 'DTS-HD HRA (WEB)'
    AND arr_type = 'radarr'
);
-- --- END op 4153

-- --- BEGIN op 4154 ( update quality_profile "Movies 2160p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p HQ', 'DTS-HD MA (WEB)', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND custom_format_name = 'DTS-HD MA (WEB)'
    AND arr_type = 'radarr'
);
-- --- END op 4154

-- --- BEGIN op 4155 ( update quality_profile "Movies 2160p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p HQ', 'DTS-X (WEB)', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND custom_format_name = 'DTS-X (WEB)'
    AND arr_type = 'radarr'
);
-- --- END op 4155

-- --- BEGIN op 4156 ( update quality_profile "Movies 2160p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p HQ', 'TrueHD (WEB)', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND custom_format_name = 'TrueHD (WEB)'
    AND arr_type = 'radarr'
);
-- --- END op 4156

-- --- BEGIN op 4157 ( update quality_profile "Movies 2160p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'DTS-HD HRA (WEB)'
  AND arr_type = 'radarr'
  AND score = -10000;
-- --- END op 4157

-- --- BEGIN op 4158 ( update quality_profile "Movies 2160p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'DTS-HD MA (WEB)'
  AND arr_type = 'radarr'
  AND score = -10000;
-- --- END op 4158

-- --- BEGIN op 4159 ( update quality_profile "Movies 2160p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'DTS-X (WEB)'
  AND arr_type = 'radarr'
  AND score = -10000;
-- --- END op 4159

-- --- BEGIN op 4160 ( update quality_profile "Movies 2160p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'TrueHD (WEB)'
  AND arr_type = 'radarr'
  AND score = -10000;
-- --- END op 4160

-- --- BEGIN op 4161 ( update quality_profile "Movies 2160p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p HQ', 'Theatrical', 'radarr', -500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND custom_format_name = 'Theatrical'
    AND arr_type = 'radarr'
);
-- --- END op 4161

-- --- BEGIN op 4162 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'Theatrical', 'radarr', -500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'Theatrical'
    AND arr_type = 'radarr'
);
-- --- END op 4162

-- --- BEGIN op 4163 ( update quality_profile "Movies 1080p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND custom_format_name = 'Theatrical'
  AND arr_type = 'radarr'
  AND score = -500;
-- --- END op 4163

-- --- BEGIN op 4164 ( update quality_profile "Movies 2160p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'Theatrical'
  AND arr_type = 'radarr'
  AND score = -500;
-- --- END op 4164

-- --- BEGIN op 4165 ( create regular_expression "TheFarm" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('TheFarm', '^(TheFarm)$', NULL, NULL);
-- --- END op 4165

-- --- BEGIN op 4166 ( create custom_format "TheFarm" )
insert into "custom_formats" ("name", "description") values ('TheFarm', '');
-- --- END op 4166

-- --- BEGIN op 4167 ( update custom_format "TheFarm" )
insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('TheFarm', 'Release Group');
-- --- END op 4167

-- --- BEGIN op 4168 ( update custom_format "TheFarm" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TheFarm', 'TheFarm', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('TheFarm', 'TheFarm', 'TheFarm');
-- --- END op 4168

-- --- BEGIN op 4169 ( update quality_profile "Movies 2160p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p HQ', 'TheFarm', 'radarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND custom_format_name = 'TheFarm'
    AND arr_type = 'radarr'
);
-- --- END op 4169

-- --- BEGIN op 4170 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'TheFarm', 'radarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'TheFarm'
    AND arr_type = 'radarr'
);
-- --- END op 4170
