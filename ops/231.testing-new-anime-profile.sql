-- @operation: export
-- @entity: batch
-- @name: Testing new Anime profile
-- @exportedAt: 2026-05-21T13:23:40.863Z
-- @opIds: 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930

-- --- BEGIN op 865 ( create quality_profile "BETA - Anime 1080p" )
insert into "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") values ('BETA - Anime 1080p', 'Based on the TRaSH Guides Anime Profile, focusing on media that has Dual Audio.
- This profile will grab between a SDTV - 1080p Bluray file.
- You will be preferring Dual Audio media (ie including English along with original language). If you''d prefer to **only** have the original language (Japanese), remove the Dual Audio format and set you language settings in this profile.
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
-- --- END op 865

-- --- BEGIN op 866 ( update quality_profile "BETA - Anime 1080p" )
update "quality_profiles" set "upgrade_until_score" = 10000 where "name" = 'BETA - Anime 1080p' and "upgrade_until_score" = 0;
-- --- END op 866

-- --- BEGIN op 867 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'ABEMA', 'radarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'ABEMA'
    AND arr_type = 'radarr'
);
-- --- END op 867

-- --- BEGIN op 868 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'ABEMA', 'sonarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'ABEMA'
    AND arr_type = 'sonarr'
);
-- --- END op 868

-- --- BEGIN op 869 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'ADN', 'radarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'ADN'
    AND arr_type = 'radarr'
);
-- --- END op 869

-- --- BEGIN op 870 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'ADN', 'sonarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'ADN'
    AND arr_type = 'sonarr'
);
-- --- END op 870

-- --- BEGIN op 871 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'AMZN', 'radarr', 3
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'AMZN'
    AND arr_type = 'radarr'
);
-- --- END op 871

-- --- BEGIN op 872 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'AMZN', 'sonarr', 3
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'AMZN'
    AND arr_type = 'sonarr'
);
-- --- END op 872

-- --- BEGIN op 873 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'AV1', 'all', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'AV1'
    AND arr_type = 'all'
);
-- --- END op 873

-- --- BEGIN op 874 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Accessibility', 'all', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Accessibility'
    AND arr_type = 'all'
);
-- --- END op 874

-- --- BEGIN op 875 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Anime BD Tier 01', 'radarr', 1400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Anime BD Tier 01'
    AND arr_type = 'radarr'
);
-- --- END op 875

-- --- BEGIN op 876 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Anime BD Tier 01', 'sonarr', 1400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Anime BD Tier 01'
    AND arr_type = 'sonarr'
);
-- --- END op 876

-- --- BEGIN op 877 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Anime BD Tier 02', 'radarr', 1300
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Anime BD Tier 02'
    AND arr_type = 'radarr'
);
-- --- END op 877

-- --- BEGIN op 878 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Anime BD Tier 02', 'sonarr', 1300
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Anime BD Tier 02'
    AND arr_type = 'sonarr'
);
-- --- END op 878

-- --- BEGIN op 879 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Anime BD Tier 03', 'radarr', 1200
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Anime BD Tier 03'
    AND arr_type = 'radarr'
);
-- --- END op 879

-- --- BEGIN op 880 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Anime BD Tier 03', 'sonarr', 1200
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Anime BD Tier 03'
    AND arr_type = 'sonarr'
);
-- --- END op 880

-- --- BEGIN op 881 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Anime BD Tier 04', 'radarr', 1100
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Anime BD Tier 04'
    AND arr_type = 'radarr'
);
-- --- END op 881

-- --- BEGIN op 882 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Anime BD Tier 04', 'sonarr', 1100
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Anime BD Tier 04'
    AND arr_type = 'sonarr'
);
-- --- END op 882

-- --- BEGIN op 883 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Anime BD Tier 05', 'radarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Anime BD Tier 05'
    AND arr_type = 'radarr'
);
-- --- END op 883

-- --- BEGIN op 884 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Anime BD Tier 05', 'sonarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Anime BD Tier 05'
    AND arr_type = 'sonarr'
);
-- --- END op 884

-- --- BEGIN op 885 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Anime BD Tier 06', 'radarr', 900
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Anime BD Tier 06'
    AND arr_type = 'radarr'
);
-- --- END op 885

-- --- BEGIN op 886 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Anime BD Tier 06', 'sonarr', 900
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Anime BD Tier 06'
    AND arr_type = 'sonarr'
);
-- --- END op 886

-- --- BEGIN op 887 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Anime BD Tier 07', 'radarr', 800
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Anime BD Tier 07'
    AND arr_type = 'radarr'
);
-- --- END op 887

-- --- BEGIN op 888 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Anime BD Tier 07', 'sonarr', 800
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Anime BD Tier 07'
    AND arr_type = 'sonarr'
);
-- --- END op 888

-- --- BEGIN op 889 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Anime BD Tier 08', 'radarr', 700
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Anime BD Tier 08'
    AND arr_type = 'radarr'
);
-- --- END op 889

-- --- BEGIN op 890 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Anime BD Tier 08', 'sonarr', 700
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Anime BD Tier 08'
    AND arr_type = 'sonarr'
);
-- --- END op 890

-- --- BEGIN op 891 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Anime Baseline Groups', 'all', 300
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Anime Baseline Groups'
    AND arr_type = 'all'
);
-- --- END op 891

-- --- BEGIN op 892 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Anime Dual Audio', 'all', 101
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Anime Dual Audio'
    AND arr_type = 'all'
);
-- --- END op 892

-- --- BEGIN op 893 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Anime LQ', 'all', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Anime LQ'
    AND arr_type = 'all'
);
-- --- END op 893

-- --- BEGIN op 894 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Anime Raws', 'all', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Anime Raws'
    AND arr_type = 'all'
);
-- --- END op 894

-- --- BEGIN op 895 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Anime WEB Tier 01', 'radarr', 600
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Anime WEB Tier 01'
    AND arr_type = 'radarr'
);
-- --- END op 895

-- --- BEGIN op 896 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Anime WEB Tier 01', 'sonarr', 600
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Anime WEB Tier 01'
    AND arr_type = 'sonarr'
);
-- --- END op 896

-- --- BEGIN op 897 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Anime WEB Tier 02', 'radarr', 500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Anime WEB Tier 02'
    AND arr_type = 'radarr'
);
-- --- END op 897

-- --- BEGIN op 898 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Anime WEB Tier 02', 'sonarr', 500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Anime WEB Tier 02'
    AND arr_type = 'sonarr'
);
-- --- END op 898

-- --- BEGIN op 899 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Anime WEB Tier 03', 'radarr', 400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Anime WEB Tier 03'
    AND arr_type = 'radarr'
);
-- --- END op 899

-- --- BEGIN op 900 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Anime WEB Tier 03', 'sonarr', 400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Anime WEB Tier 03'
    AND arr_type = 'sonarr'
);
-- --- END op 900

-- --- BEGIN op 901 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Anime WEB Tier 04', 'radarr', 300
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Anime WEB Tier 04'
    AND arr_type = 'radarr'
);
-- --- END op 901

-- --- BEGIN op 902 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Anime WEB Tier 04', 'sonarr', 300
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Anime WEB Tier 04'
    AND arr_type = 'sonarr'
);
-- --- END op 902

-- --- BEGIN op 903 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Anime WEB Tier 05', 'radarr', 200
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Anime WEB Tier 05'
    AND arr_type = 'radarr'
);
-- --- END op 903

-- --- BEGIN op 904 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Anime WEB Tier 05', 'sonarr', 200
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Anime WEB Tier 05'
    AND arr_type = 'sonarr'
);
-- --- END op 904

-- --- BEGIN op 905 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Anime WEB Tier 6', 'radarr', 100
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Anime WEB Tier 6'
    AND arr_type = 'radarr'
);
-- --- END op 905

-- --- BEGIN op 906 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Anime WEB Tier 6', 'sonarr', 100
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Anime WEB Tier 6'
    AND arr_type = 'sonarr'
);
-- --- END op 906

-- --- BEGIN op 907 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'BR-DISK', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'BR-DISK'
    AND arr_type = 'radarr'
);
-- --- END op 907

-- --- BEGIN op 908 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'BR-DISK', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'BR-DISK'
    AND arr_type = 'sonarr'
);
-- --- END op 908

-- --- BEGIN op 909 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'CR', 'radarr', 6
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'CR'
    AND arr_type = 'radarr'
);
-- --- END op 909

-- --- BEGIN op 910 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'CR', 'sonarr', 6
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'CR'
    AND arr_type = 'sonarr'
);
-- --- END op 910

-- --- BEGIN op 911 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'DSNP', 'radarr', 5
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'DSNP'
    AND arr_type = 'radarr'
);
-- --- END op 911

-- --- BEGIN op 912 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'DSNP', 'sonarr', 5
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'DSNP'
    AND arr_type = 'sonarr'
);
-- --- END op 912

-- --- BEGIN op 913 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Dubs Only', 'all', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Dubs Only'
    AND arr_type = 'all'
);
-- --- END op 913

-- --- BEGIN op 914 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'FUNI', 'radarr', 2
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'FUNI'
    AND arr_type = 'radarr'
);
-- --- END op 914

-- --- BEGIN op 915 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'FUNI', 'sonarr', 2
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'FUNI'
    AND arr_type = 'sonarr'
);
-- --- END op 915

-- --- BEGIN op 916 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Multi-Audio', 'all', 101
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Multi-Audio'
    AND arr_type = 'all'
);
-- --- END op 916

-- --- BEGIN op 917 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Multi-Sub', 'all', 101
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Multi-Sub'
    AND arr_type = 'all'
);
-- --- END op 917

-- --- BEGIN op 918 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'NF', 'radarr', 4
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'NF'
    AND arr_type = 'radarr'
);
-- --- END op 918

-- --- BEGIN op 919 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'NF', 'sonarr', 4
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'NF'
    AND arr_type = 'sonarr'
);
-- --- END op 919

-- --- BEGIN op 920 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Uncensored', 'all', 101
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Uncensored'
    AND arr_type = 'all'
);
-- --- END op 920

-- --- BEGIN op 921 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'VOSTFR', 'all', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'VOSTFR'
    AND arr_type = 'all'
);
-- --- END op 921

-- --- BEGIN op 922 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'VRV', 'radarr', 3
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'VRV'
    AND arr_type = 'radarr'
);
-- --- END op 922

-- --- BEGIN op 923 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'VRV', 'sonarr', 3
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'VRV'
    AND arr_type = 'sonarr'
);
-- --- END op 923

-- --- BEGIN op 924 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'v0', 'all', -51
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'v0'
    AND arr_type = 'all'
);
-- --- END op 924

-- --- BEGIN op 925 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'v1', 'all', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'v1'
    AND arr_type = 'all'
);
-- --- END op 925

-- --- BEGIN op 926 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'v2', 'all', 2
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'v2'
    AND arr_type = 'all'
);
-- --- END op 926

-- --- BEGIN op 927 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'v3', 'all', 3
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'v3'
    AND arr_type = 'all'
);
-- --- END op 927

-- --- BEGIN op 928 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'v4', 'all', 4
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'v4'
    AND arr_type = 'all'
);
-- --- END op 928

-- --- BEGIN op 929 ( update quality_profile "BETA - Anime 1080p" )
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
-- --- END op 929

-- --- BEGIN op 930 ( update quality_profile "BETA - Anime 1080p" )
update "quality_profiles" set "minimum_custom_format_score" = 100 where "name" = 'BETA - Anime 1080p' and "minimum_custom_format_score" = 0;
-- --- END op 930
