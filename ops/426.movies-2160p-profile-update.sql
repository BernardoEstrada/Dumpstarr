-- @operation: export
-- @entity: batch
-- @name: Movies 2160p Profile Update
-- @exportedAt: 2026-10-02T15:21:43.037Z
-- @opIds: 6690, 6691, 6692, 6693, 6694, 6695

-- --- BEGIN op 6690 ( update quality_profile "Movies 2160p" )
update "quality_profiles" set "description" = 'This profile focuses on streaming optimized sources with little to no transcoding needed and is recommended for the average user or if you **do not** use a dedicated streaming box. (i.e. AppleTV, NVIDIA Shield, etc)
- This profile uses the preferred settings for SweatyEggs69.
- This profile prefers MA (Movies Anywhere) WEB-DL releases from tiered groups that contain HDR and Dolby Digital +.
- This profile will fallback to streaming optimized releases groups like **BHDStudio** and **hallowed**.
- This profile does not allow releases with HD Audio to ensure direct-play compatibility.
- Releases without HDR fallback will be scored negatively to ensure playability across platforms.' where "name" = 'Movies 2160p' and "description" = 'This profile focuses on streaming optimized sources with little to no transcoding needed and is recommended for the average user or if you **do not** use a dedicated streaming box. (i.e. AppleTV, NVIDIA Shield, etc)
- This profile will prefer streaming optimized releases groups like **BHDStudio** and **hallowed**.
- This profile does not allow releases with HD Audio to ensure direct-play compatibility.
- Releases without HDR fallback will be scored negatively to ensure playability across platforms.';
-- --- END op 6690

-- --- BEGIN op 6691 ( update quality_profile "Movies 2160p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p', 'MA Preferred', 'radarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p'
    AND custom_format_name = 'MA Preferred'
    AND arr_type = 'radarr'
);
-- --- END op 6691

-- --- BEGIN op 6692 ( update quality_profile "Movies 2160p" )
DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'Movies 2160p'
  AND quality_name = 'Bluray-2160p'
  AND quality_group_name IS NULL
  AND position = 0
  AND enabled = 1
  AND upgrade_until = 1;

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'Movies 2160p'
  AND quality_group_name = 'WEB-2160p'
  AND quality_name IS NULL
  AND position = 1
  AND enabled = 1
  AND upgrade_until = 0;

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Movies 2160p'
  AND quality_group_name = 'WEB-2160p'
  AND quality_name = 'WEBDL-2160p';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Movies 2160p'
  AND quality_group_name = 'WEB-2160p'
  AND quality_name = 'WEBRip-2160p';

DELETE FROM quality_groups
WHERE quality_profile_name = 'Movies 2160p'
  AND name = 'WEB-2160p';

INSERT INTO quality_groups (quality_profile_name, name)
SELECT 'Movies 2160p', '2160p'
WHERE NOT EXISTS (
  SELECT 1 FROM quality_groups
  WHERE quality_profile_name = 'Movies 2160p'
    AND name = '2160p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Movies 2160p', '2160p', 'Bluray-2160p', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'Movies 2160p'
    AND quality_group_name = '2160p'
    AND quality_name = 'Bluray-2160p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Movies 2160p', '2160p', 'WEBDL-2160p', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'Movies 2160p'
    AND quality_group_name = '2160p'
    AND quality_name = 'WEBDL-2160p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Movies 2160p', '2160p', 'WEBRip-2160p', 2
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'Movies 2160p'
    AND quality_group_name = '2160p'
    AND quality_name = 'WEBRip-2160p'
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 2160p', NULL, '2160p', 0, 1, 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 2160p'
    AND quality_name IS NULL
    AND quality_group_name = '2160p'
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 2160p', 'Bluray-480p', NULL, 5, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 2160p'
    AND quality_name = 'Bluray-480p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 2160p', 'Bluray-576p', NULL, 6, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 2160p'
    AND quality_name = 'Bluray-576p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 2160p', 'BR-DISK', NULL, 7, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 2160p'
    AND quality_name = 'BR-DISK'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 2160p', 'CAM', NULL, 8, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 2160p'
    AND quality_name = 'CAM'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 2160p', 'DVD', NULL, 9, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 2160p'
    AND quality_name = 'DVD'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 2160p', 'DVD-R', NULL, 10, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 2160p'
    AND quality_name = 'DVD-R'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 2160p', 'DVDSCR', NULL, 11, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 2160p'
    AND quality_name = 'DVDSCR'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 2160p', 'HDTV-1080p', NULL, 12, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 2160p'
    AND quality_name = 'HDTV-1080p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 2160p', 'HDTV-2160p', NULL, 13, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 2160p'
    AND quality_name = 'HDTV-2160p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 2160p', 'HDTV-480p', NULL, 14, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 2160p'
    AND quality_name = 'HDTV-480p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 2160p', 'HDTV-720p', NULL, 15, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 2160p'
    AND quality_name = 'HDTV-720p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 2160p', 'Raw-HD', NULL, 16, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 2160p'
    AND quality_name = 'Raw-HD'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 2160p', 'REGIONAL', NULL, 17, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 2160p'
    AND quality_name = 'REGIONAL'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 2160p', 'Remux-1080p', NULL, 18, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 2160p'
    AND quality_name = 'Remux-1080p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 2160p', 'Remux-2160p', NULL, 19, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 2160p'
    AND quality_name = 'Remux-2160p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 2160p', 'SDTV', NULL, 20, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 2160p'
    AND quality_name = 'SDTV'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 2160p', 'TELECINE', NULL, 21, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 2160p'
    AND quality_name = 'TELECINE'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 2160p', 'TELESYNC', NULL, 22, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 2160p'
    AND quality_name = 'TELESYNC'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 2160p', 'Unknown', NULL, 23, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 2160p'
    AND quality_name = 'Unknown'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 2160p', 'WEBDL-480p', NULL, 24, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 2160p'
    AND quality_name = 'WEBDL-480p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 2160p', 'WEBRip-480p', NULL, 25, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 2160p'
    AND quality_name = 'WEBRip-480p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 2160p', 'WORKPRINT', NULL, 26, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 2160p'
    AND quality_name = 'WORKPRINT'
    AND quality_group_name IS NULL
);

UPDATE quality_profile_qualities
SET position = 1
WHERE quality_profile_name = 'Movies 2160p'
  AND quality_name = 'Bluray-1080p'
  AND quality_group_name IS NULL
  AND position = 2
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 2
WHERE quality_profile_name = 'Movies 2160p'
  AND quality_group_name = 'WEB-1080p'
  AND quality_name IS NULL
  AND position = 3
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 3
WHERE quality_profile_name = 'Movies 2160p'
  AND quality_name = 'Bluray-720p'
  AND quality_group_name IS NULL
  AND position = 4
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 4
WHERE quality_profile_name = 'Movies 2160p'
  AND quality_group_name = 'WEB-720p'
  AND quality_name IS NULL
  AND position = 5
  AND enabled = 1
  AND upgrade_until = 0;
-- --- END op 6692

-- --- BEGIN op 6693 ( update quality_profile "Movies 2160p" )
insert into "tags" ("name") values ('MA') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('Movies 2160p', 'MA');
-- --- END op 6693

-- --- BEGIN op 6694 ( delete quality_profile "SweatyEgg69 Movies" )
delete from "quality_profile_tags" where "quality_profile_name" = 'SweatyEgg69 Movies';

delete from "quality_profile_languages" where "quality_profile_name" = 'SweatyEgg69 Movies';

delete from "quality_profile_qualities" where "quality_profile_name" = 'SweatyEgg69 Movies';

delete from "quality_profile_custom_formats" where "quality_profile_name" = 'SweatyEgg69 Movies';

delete from "quality_groups" where "quality_profile_name" = 'SweatyEgg69 Movies';

delete from "quality_profiles" where "name" = 'SweatyEgg69 Movies';
-- --- END op 6694

-- --- BEGIN op 6695 ( update quality_profile "Movies 2160p" )
update "quality_profiles" set "description" = 'This profile focuses on streaming optimized sources with little to no transcoding needed and is recommended for the average user or if you **do not** use a dedicated streaming box. (i.e. AppleTV, NVIDIA Shield, etc)
- This profile prefers MA (Movies Anywhere) WEB-DL releases from tiered groups that contain HDR and Dolby Digital +.
- This profile will fallback to streaming optimized releases groups like **BHDStudio** and **hallowed**.
- This profile does not allow releases with HD Audio to ensure direct-play compatibility.
- Releases without HDR fallback will be scored negatively to ensure playability across platforms.' where "name" = 'Movies 2160p' and "description" = 'This profile focuses on streaming optimized sources with little to no transcoding needed and is recommended for the average user or if you **do not** use a dedicated streaming box. (i.e. AppleTV, NVIDIA Shield, etc)
- This profile uses the preferred settings for SweatyEggs69.
- This profile prefers MA (Movies Anywhere) WEB-DL releases from tiered groups that contain HDR and Dolby Digital +.
- This profile will fallback to streaming optimized releases groups like **BHDStudio** and **hallowed**.
- This profile does not allow releases with HD Audio to ensure direct-play compatibility.
- Releases without HDR fallback will be scored negatively to ensure playability across platforms.';
-- --- END op 6695
