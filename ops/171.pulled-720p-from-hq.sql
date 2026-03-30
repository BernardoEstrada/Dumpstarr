-- @operation: export
-- @entity: batch
-- @name: Pulled 720p from HQ
-- @exportedAt: 2026-03-30T18:03:51.422Z
-- @opIds: 1729, 1730, 1731, 1732, 1733, 1734, 1735, 1736, 1737, 1738, 1739, 1740, 1741, 1742, 1743, 1744

-- --- BEGIN op 1729 ( update quality_profile "Movies 2160p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = '720p Bluray Tier 01'
  AND arr_type = 'radarr'
  AND score = 1100;
-- --- END op 1729

-- --- BEGIN op 1730 ( update quality_profile "Movies 2160p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = '720p Bluray Tier 02'
  AND arr_type = 'radarr'
  AND score = 1050;
-- --- END op 1730

-- --- BEGIN op 1731 ( update quality_profile "Movies 2160p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = '720p Bluray Tier 03'
  AND arr_type = 'radarr'
  AND score = 1000;
-- --- END op 1731

-- --- BEGIN op 1732 ( update quality_profile "Movies 2160p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = '720p Bluray Tier 04'
  AND arr_type = 'radarr'
  AND score = 950;
-- --- END op 1732

-- --- BEGIN op 1733 ( update quality_profile "Movies 2160p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = '720p Bluray Tier 05'
  AND arr_type = 'radarr'
  AND score = 900;
-- --- END op 1733

-- --- BEGIN op 1734 ( update quality_profile "Movies 2160p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = '720p Bluray Tier 06'
  AND arr_type = 'radarr'
  AND score = 850;
-- --- END op 1734

-- --- BEGIN op 1735 ( update quality_profile "Movies 2160p HQ" )
DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND quality_group_name = '720p'
  AND quality_name IS NULL
  AND position = 2
  AND enabled = 1
  AND upgrade_until = 0;

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND quality_group_name = '720p'
  AND quality_name = 'Bluray-720p';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND quality_group_name = '720p'
  AND quality_name = 'WEBDL-720p';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND quality_group_name = '720p'
  AND quality_name = 'WEBRip-720p';

DELETE FROM quality_groups
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND name = '720p';

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 2160p HQ', 'Bluray-720p', NULL, 2, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND quality_name = 'Bluray-720p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 2160p HQ', 'WEBDL-720p', NULL, 3, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND quality_name = 'WEBDL-720p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 2160p HQ', 'WEBRip-720p', NULL, 4, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND quality_name = 'WEBRip-720p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 2160p HQ', 'Bluray-480p', NULL, 5, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND quality_name = 'Bluray-480p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 2160p HQ', 'Bluray-576p', NULL, 6, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND quality_name = 'Bluray-576p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 2160p HQ', 'BR-DISK', NULL, 7, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND quality_name = 'BR-DISK'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 2160p HQ', 'CAM', NULL, 8, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND quality_name = 'CAM'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 2160p HQ', 'DVD', NULL, 9, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND quality_name = 'DVD'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 2160p HQ', 'DVD-R', NULL, 10, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND quality_name = 'DVD-R'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 2160p HQ', 'DVDSCR', NULL, 11, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND quality_name = 'DVDSCR'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 2160p HQ', 'HDTV-1080p', NULL, 12, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND quality_name = 'HDTV-1080p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 2160p HQ', 'HDTV-2160p', NULL, 13, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND quality_name = 'HDTV-2160p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 2160p HQ', 'HDTV-480p', NULL, 14, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND quality_name = 'HDTV-480p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 2160p HQ', 'HDTV-720p', NULL, 15, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND quality_name = 'HDTV-720p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 2160p HQ', 'Raw-HD', NULL, 16, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND quality_name = 'Raw-HD'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 2160p HQ', 'REGIONAL', NULL, 17, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND quality_name = 'REGIONAL'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 2160p HQ', 'Remux-1080p', NULL, 18, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND quality_name = 'Remux-1080p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 2160p HQ', 'Remux-2160p', NULL, 19, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND quality_name = 'Remux-2160p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 2160p HQ', 'SDTV', NULL, 20, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND quality_name = 'SDTV'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 2160p HQ', 'TELECINE', NULL, 21, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND quality_name = 'TELECINE'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 2160p HQ', 'TELESYNC', NULL, 22, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND quality_name = 'TELESYNC'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 2160p HQ', 'Unknown', NULL, 23, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND quality_name = 'Unknown'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 2160p HQ', 'WEBDL-480p', NULL, 24, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND quality_name = 'WEBDL-480p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 2160p HQ', 'WEBRip-480p', NULL, 25, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND quality_name = 'WEBRip-480p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 2160p HQ', 'WORKPRINT', NULL, 26, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND quality_name = 'WORKPRINT'
    AND quality_group_name IS NULL
);
-- --- END op 1735

-- --- BEGIN op 1736 ( update quality_profile "Movies 1080p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND custom_format_name = '720p Bluray Tier 01'
  AND arr_type = 'radarr'
  AND score = 1100;
-- --- END op 1736

-- --- BEGIN op 1737 ( update quality_profile "Movies 1080p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND custom_format_name = '720p Bluray Tier 02'
  AND arr_type = 'radarr'
  AND score = 1050;
-- --- END op 1737

-- --- BEGIN op 1738 ( update quality_profile "Movies 1080p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND custom_format_name = '720p Bluray Tier 03'
  AND arr_type = 'radarr'
  AND score = 1000;
-- --- END op 1738

-- --- BEGIN op 1739 ( update quality_profile "Movies 1080p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND custom_format_name = '720p Bluray Tier 04'
  AND arr_type = 'radarr'
  AND score = 950;
-- --- END op 1739

-- --- BEGIN op 1740 ( update quality_profile "Movies 1080p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND custom_format_name = '720p Bluray Tier 05'
  AND arr_type = 'radarr'
  AND score = 900;
-- --- END op 1740

-- --- BEGIN op 1741 ( update quality_profile "Movies 1080p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND custom_format_name = '720p Bluray Tier 06'
  AND arr_type = 'radarr'
  AND score = 850;
-- --- END op 1741

-- --- BEGIN op 1742 ( update quality_profile "Movies 1080p HQ" )
DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND quality_group_name = '720p'
  AND quality_name IS NULL
  AND position = 1
  AND enabled = 1
  AND upgrade_until = 0;

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND quality_group_name = '720p'
  AND quality_name = 'Bluray-720p';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND quality_group_name = '720p'
  AND quality_name = 'WEBDL-720p';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND quality_group_name = '720p'
  AND quality_name = 'WEBRip-720p';

DELETE FROM quality_groups
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND name = '720p';

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 1080p HQ', 'Bluray-720p', NULL, 1, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND quality_name = 'Bluray-720p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 1080p HQ', 'WEBDL-720p', NULL, 2, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND quality_name = 'WEBDL-720p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 1080p HQ', 'WEBRip-720p', NULL, 3, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND quality_name = 'WEBRip-720p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 1080p HQ', 'Bluray-2160p', NULL, 4, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND quality_name = 'Bluray-2160p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 1080p HQ', 'Bluray-480p', NULL, 5, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND quality_name = 'Bluray-480p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 1080p HQ', 'Bluray-576p', NULL, 6, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND quality_name = 'Bluray-576p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 1080p HQ', 'BR-DISK', NULL, 7, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND quality_name = 'BR-DISK'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 1080p HQ', 'CAM', NULL, 8, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND quality_name = 'CAM'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 1080p HQ', 'DVD', NULL, 9, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND quality_name = 'DVD'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 1080p HQ', 'DVD-R', NULL, 10, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND quality_name = 'DVD-R'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 1080p HQ', 'DVDSCR', NULL, 11, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND quality_name = 'DVDSCR'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 1080p HQ', 'HDTV-1080p', NULL, 12, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND quality_name = 'HDTV-1080p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 1080p HQ', 'HDTV-2160p', NULL, 13, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND quality_name = 'HDTV-2160p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 1080p HQ', 'HDTV-480p', NULL, 14, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND quality_name = 'HDTV-480p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 1080p HQ', 'HDTV-720p', NULL, 15, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND quality_name = 'HDTV-720p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 1080p HQ', 'Raw-HD', NULL, 16, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND quality_name = 'Raw-HD'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 1080p HQ', 'REGIONAL', NULL, 17, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND quality_name = 'REGIONAL'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 1080p HQ', 'Remux-1080p', NULL, 18, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND quality_name = 'Remux-1080p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 1080p HQ', 'Remux-2160p', NULL, 19, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND quality_name = 'Remux-2160p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 1080p HQ', 'SDTV', NULL, 20, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND quality_name = 'SDTV'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 1080p HQ', 'TELECINE', NULL, 21, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND quality_name = 'TELECINE'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 1080p HQ', 'TELESYNC', NULL, 22, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND quality_name = 'TELESYNC'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 1080p HQ', 'Unknown', NULL, 23, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND quality_name = 'Unknown'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 1080p HQ', 'WEBDL-2160p', NULL, 24, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND quality_name = 'WEBDL-2160p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 1080p HQ', 'WEBDL-480p', NULL, 25, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND quality_name = 'WEBDL-480p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 1080p HQ', 'WEBRip-2160p', NULL, 26, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND quality_name = 'WEBRip-2160p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 1080p HQ', 'WEBRip-480p', NULL, 27, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND quality_name = 'WEBRip-480p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 1080p HQ', 'WORKPRINT', NULL, 28, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND quality_name = 'WORKPRINT'
    AND quality_group_name IS NULL
);
-- --- END op 1742

-- --- BEGIN op 1743 ( update quality_profile "Movies 1080p HQ" )
DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND quality_group_name = '1080p'
  AND quality_name IS NULL
  AND position = 0
  AND enabled = 1
  AND upgrade_until = 1;

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND quality_group_name = '1080p'
  AND quality_name = 'Bluray-1080p';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND quality_group_name = '1080p'
  AND quality_name = 'WEBDL-1080p';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND quality_group_name = '1080p'
  AND quality_name = 'WEBRip-1080p';

DELETE FROM quality_groups
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND name = '1080p';

INSERT INTO quality_groups (quality_profile_name, name)
SELECT 'Movies 1080p HQ', 'WEB-1080p'
WHERE NOT EXISTS (
  SELECT 1 FROM quality_groups
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND name = 'WEB-1080p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Movies 1080p HQ', 'WEB-1080p', 'WEBDL-1080p', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND quality_group_name = 'WEB-1080p'
    AND quality_name = 'WEBDL-1080p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Movies 1080p HQ', 'WEB-1080p', 'WEBRip-1080p', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND quality_group_name = 'WEB-1080p'
    AND quality_name = 'WEBRip-1080p'
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 1080p HQ', NULL, 'WEB-1080p', 0, 1, 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND quality_name IS NULL
    AND quality_group_name = 'WEB-1080p'
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 1080p HQ', 'Bluray-1080p', NULL, 1, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND quality_name = 'Bluray-1080p'
    AND quality_group_name IS NULL
);

UPDATE quality_profile_qualities
SET position = 2
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND quality_name = 'Bluray-720p'
  AND quality_group_name IS NULL
  AND position = 1
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 3
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND quality_name = 'WEBDL-720p'
  AND quality_group_name IS NULL
  AND position = 2
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 4
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND quality_name = 'WEBRip-720p'
  AND quality_group_name IS NULL
  AND position = 3
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 5
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND quality_name = 'Bluray-2160p'
  AND quality_group_name IS NULL
  AND position = 4
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 6
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND quality_name = 'Bluray-480p'
  AND quality_group_name IS NULL
  AND position = 5
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 7
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND quality_name = 'Bluray-576p'
  AND quality_group_name IS NULL
  AND position = 6
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 8
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND quality_name = 'BR-DISK'
  AND quality_group_name IS NULL
  AND position = 7
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 9
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND quality_name = 'CAM'
  AND quality_group_name IS NULL
  AND position = 8
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 10
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND quality_name = 'DVD'
  AND quality_group_name IS NULL
  AND position = 9
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 11
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND quality_name = 'DVD-R'
  AND quality_group_name IS NULL
  AND position = 10
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 12
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND quality_name = 'DVDSCR'
  AND quality_group_name IS NULL
  AND position = 11
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 13
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND quality_name = 'HDTV-1080p'
  AND quality_group_name IS NULL
  AND position = 12
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 14
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND quality_name = 'HDTV-2160p'
  AND quality_group_name IS NULL
  AND position = 13
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 15
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND quality_name = 'HDTV-480p'
  AND quality_group_name IS NULL
  AND position = 14
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 16
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND quality_name = 'HDTV-720p'
  AND quality_group_name IS NULL
  AND position = 15
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 17
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND quality_name = 'Raw-HD'
  AND quality_group_name IS NULL
  AND position = 16
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 18
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND quality_name = 'REGIONAL'
  AND quality_group_name IS NULL
  AND position = 17
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 19
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND quality_name = 'Remux-1080p'
  AND quality_group_name IS NULL
  AND position = 18
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 20
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND quality_name = 'Remux-2160p'
  AND quality_group_name IS NULL
  AND position = 19
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 21
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND quality_name = 'SDTV'
  AND quality_group_name IS NULL
  AND position = 20
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 22
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND quality_name = 'TELECINE'
  AND quality_group_name IS NULL
  AND position = 21
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 23
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND quality_name = 'TELESYNC'
  AND quality_group_name IS NULL
  AND position = 22
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 24
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND quality_name = 'Unknown'
  AND quality_group_name IS NULL
  AND position = 23
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 25
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND quality_name = 'WEBDL-2160p'
  AND quality_group_name IS NULL
  AND position = 24
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 26
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND quality_name = 'WEBDL-480p'
  AND quality_group_name IS NULL
  AND position = 25
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 27
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND quality_name = 'WEBRip-2160p'
  AND quality_group_name IS NULL
  AND position = 26
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 28
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND quality_name = 'WEBRip-480p'
  AND quality_group_name IS NULL
  AND position = 27
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 29
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND quality_name = 'WORKPRINT'
  AND quality_group_name IS NULL
  AND position = 28
  AND enabled = 0
  AND upgrade_until = 0;
-- --- END op 1743

-- --- BEGIN op 1744 ( update quality_profile "Movies 2160p HQ" )
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

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 2160p HQ', 'Bluray-2160p', NULL, 1, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND quality_name = 'Bluray-2160p'
    AND quality_group_name IS NULL
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
SELECT 'Movies 2160p HQ', NULL, 'WEB-1080p', 2, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND quality_name IS NULL
    AND quality_group_name = 'WEB-1080p'
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 2160p HQ', 'Bluray-1080p', NULL, 3, 1, 0
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
-- --- END op 1744
