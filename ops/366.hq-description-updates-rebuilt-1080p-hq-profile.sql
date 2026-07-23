-- @operation: export
-- @entity: batch
-- @name: HQ Description Updates/Rebuilt 1080p HQ Profile
-- @exportedAt: 2026-07-23T16:43:05.251Z
-- @opIds: 4273, 4274, 4275, 4276, 4277, 4278, 4279, 4280, 4281, 4282, 4283, 4284, 4285, 4286, 4287, 4288, 4289, 4290, 4291, 4292, 4293, 4294, 4295, 4296, 4297, 4298, 4299, 4300, 4301, 4302, 4303, 4304, 4305, 4306, 4307, 4308, 4309, 4310, 4311, 4312, 4313, 4314, 4315, 4316, 4317, 4318, 4319, 4320, 4321, 4322, 4323, 4324, 4325, 4326, 4327, 4328, 4329, 4330, 4331, 4332, 4333, 4334, 4335, 4336, 4337, 4338, 4339, 4340, 4341, 4342, 4343

-- --- BEGIN op 4273 ( update quality_profile "Movies 2160p HQ" )
update "quality_profiles" set "description" = 'This profile follows the same sort of logic like the TRaSH SQP-4 MA Hybrid Profile. This results in higher-quality, WEB releases being preferred. This usually results in higher-quality audio, higher video bitrates and 30% larger file size.
- This profile is recommended for a set-it-and-forget-it setup.
- This profile prefers 4K releases with **HDR** and **Dolby Vision**.
- This profile will allow HD audio like TrueHD, DTS-X, etc but only if the source is WEB-DL
- Releases **without** HDR fallback are not allowed.' where "name" = 'Movies 2160p HQ' and "description" = 'This profile is like the primary Movie profile, but with merged source qualities. This results in higher-quality, WEB releases being preferred. This usually results in higher-quality audio, higher video bitrates and 30% larger file size.
- This profile is recommended for a set-it-and-forget-it setup.
- This profile prefers 4K releases with **HDR** and **Dolby Vision**.
- This profile will allow HD audio like TrueHD, DTS-X, etc but only if the source is WEB-DL
- Releases **without** HDR fallback are not allowed.';
-- --- END op 4273

-- --- BEGIN op 4274 ( update quality_profile "Movies 1080p HQ" )
update "quality_profiles" set "description" = 'This profile follows the same sort of logic like the TRaSH SQP-4 MA Hybrid Profile. This results in higher-quality, WEB releases being preferred. This usually results in higher-quality audio, higher video bitrates and 30% larger file size.
- This profile is recommended for a set-it-and-forget-it setup.
- This profile will allow HD audio like TrueHD, DTS-X, etc but only if the source is WEB-DL.
- This profile prefers releases sources from MA (Movies Anywhere).' where "name" = 'Movies 1080p HQ' and "description" = 'This profile is like the primary Movie profile, but with merged source qualities. This results in higher-quality, WEB releases being preferred. This usually results in higher-quality audio, higher video bitrates and 30% larger file size.
- This profile is recommended for a set-it-and-forget-it setup.
- This profile will allow HD audio like TrueHD, DTS-X, etc but only if the source is WEB-DL';
-- --- END op 4274

-- --- BEGIN op 4275 ( update quality_profile "Movies 2160p HQ" )
update "quality_profiles" set "description" = 'This profile follows the same sort of logic like the TRaSH SQP-4 MA Hybrid Profile. This results in higher-quality, WEB releases being preferred. This usually results in higher-quality audio, higher video bitrates and 30% larger file size.
- This profile is recommended for a set-it-and-forget-it setup.
- This profile prefers releases sources from MA (Movies Anywhere).
- This profile prefers 4K releases with **HDR** and **Dolby Vision**.
- This profile will allow HD audio like TrueHD, DTS-X, etc but only if the source is WEB-DL.
- Releases **without** HDR fallback are not allowed.' where "name" = 'Movies 2160p HQ' and "description" = 'This profile follows the same sort of logic like the TRaSH SQP-4 MA Hybrid Profile. This results in higher-quality, WEB releases being preferred. This usually results in higher-quality audio, higher video bitrates and 30% larger file size.
- This profile is recommended for a set-it-and-forget-it setup.
- This profile prefers 4K releases with **HDR** and **Dolby Vision**.
- This profile will allow HD audio like TrueHD, DTS-X, etc but only if the source is WEB-DL
- Releases **without** HDR fallback are not allowed.';
-- --- END op 4275

-- --- BEGIN op 4276 ( update quality_profile "Movies 1080p HQ" )
update "quality_profiles" set "description" = 'This profile follows the same sort of logic like the TRaSH SQP-4 MA Hybrid Profile. This results in higher-quality, WEB releases being preferred. This usually results in higher-quality audio, higher video bitrates and 30% larger file size.
- This profile is recommended for a set-it-and-forget-it setup.
- This profile prefers releases sources from MA (Movies Anywhere).
- This profile will allow HD audio like TrueHD, DTS-X, etc but only if the source is WEB-DL.' where "name" = 'Movies 1080p HQ' and "description" = 'This profile follows the same sort of logic like the TRaSH SQP-4 MA Hybrid Profile. This results in higher-quality, WEB releases being preferred. This usually results in higher-quality audio, higher video bitrates and 30% larger file size.
- This profile is recommended for a set-it-and-forget-it setup.
- This profile will allow HD audio like TrueHD, DTS-X, etc but only if the source is WEB-DL.
- This profile prefers releases sources from MA (Movies Anywhere).';
-- --- END op 4276

-- --- BEGIN op 4277 ( delete quality_profile "Movies 1080p HQ" )
delete from "quality_profile_tags" where "quality_profile_name" = 'Movies 1080p HQ';

delete from "quality_profile_languages" where "quality_profile_name" = 'Movies 1080p HQ';

delete from "quality_profile_qualities" where "quality_profile_name" = 'Movies 1080p HQ';

delete from "quality_profile_custom_formats" where "quality_profile_name" = 'Movies 1080p HQ';

delete from "quality_groups" where "quality_profile_name" = 'Movies 1080p HQ';

delete from "quality_profiles" where "name" = 'Movies 1080p HQ';
-- --- END op 4277

-- --- BEGIN op 4278 ( create quality_profile "Movies 1080p HQ" )
insert into "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") values ('Movies 1080p HQ', 'This profile follows the same sort of logic like the TRaSH SQP-4 MA Hybrid Profile. This results in higher-quality, WEB releases being preferred. This usually results in higher-quality audio, higher video bitrates and 30% larger file size.
- This profile is recommended for a set-it-and-forget-it setup.
- This profile prefers releases sources from MA (Movies Anywhere).
- This profile prefers 4K releases with **HDR** and **Dolby Vision**.
- This profile will allow HD audio like TrueHD, DTS-X, etc but only if the source is WEB-DL.
- Releases **without** HDR fallback are not allowed.', 1, 0, 0, 1);

insert into "tags" ("name") values ('2160p') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('Movies 1080p HQ', '2160p');

insert into "tags" ("name") values ('Radarr') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('Movies 1080p HQ', 'Radarr');

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('Movies 1080p HQ', '2160p');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Movies 1080p HQ', '2160p', 'WEBDL-2160p', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Movies 1080p HQ', '2160p', 'WEBRip-2160p', 1);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Movies 1080p HQ', '2160p', 'Bluray-2160p', 2);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Movies 1080p HQ', NULL, '2160p', 0, 1, 1);

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('Movies 1080p HQ', '1080p');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Movies 1080p HQ', '1080p', 'WEBDL-1080p', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Movies 1080p HQ', '1080p', 'WEBRip-1080p', 1);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Movies 1080p HQ', '1080p', 'Bluray-1080p', 2);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Movies 1080p HQ', NULL, '1080p', 1, 1, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Movies 1080p HQ', 'Bluray-720p', NULL, 2, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Movies 1080p HQ', 'WEBDL-720p', NULL, 3, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Movies 1080p HQ', 'WEBRip-720p', NULL, 4, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Movies 1080p HQ', 'Bluray-480p', NULL, 5, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Movies 1080p HQ', 'Bluray-576p', NULL, 6, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Movies 1080p HQ', 'BR-DISK', NULL, 7, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Movies 1080p HQ', 'CAM', NULL, 8, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Movies 1080p HQ', 'DVD', NULL, 9, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Movies 1080p HQ', 'DVD-R', NULL, 10, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Movies 1080p HQ', 'DVDSCR', NULL, 11, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Movies 1080p HQ', 'HDTV-1080p', NULL, 12, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Movies 1080p HQ', 'HDTV-2160p', NULL, 13, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Movies 1080p HQ', 'HDTV-480p', NULL, 14, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Movies 1080p HQ', 'HDTV-720p', NULL, 15, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Movies 1080p HQ', 'Raw-HD', NULL, 16, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Movies 1080p HQ', 'REGIONAL', NULL, 17, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Movies 1080p HQ', 'Remux-1080p', NULL, 18, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Movies 1080p HQ', 'Remux-2160p', NULL, 19, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Movies 1080p HQ', 'SDTV', NULL, 20, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Movies 1080p HQ', 'TELECINE', NULL, 21, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Movies 1080p HQ', 'TELESYNC', NULL, 22, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Movies 1080p HQ', 'Unknown', NULL, 23, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Movies 1080p HQ', 'WEBDL-480p', NULL, 24, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Movies 1080p HQ', 'WEBRip-480p', NULL, 25, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Movies 1080p HQ', 'WORKPRINT', NULL, 26, 0, 0);

INSERT INTO quality_profile_languages (quality_profile_name, language_name, type) VALUES ('Movies 1080p HQ', 'Original', 'simple');
-- --- END op 4278

-- --- BEGIN op 4279 ( update quality_profile "Movies 1080p HQ" )
update "quality_profiles" set "minimum_custom_format_score" = 500 where "name" = 'Movies 1080p HQ' and "minimum_custom_format_score" = 0;
-- --- END op 4279

-- --- BEGIN op 4280 ( update quality_profile "Movies 1080p HQ" )
update "quality_profiles" set "upgrade_until_score" = 10000 where "name" = 'Movies 1080p HQ' and "upgrade_until_score" = 0;
-- --- END op 4280

-- --- BEGIN op 4281 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', '3D', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = '3D'
    AND arr_type = 'radarr'
);
-- --- END op 4281

-- --- BEGIN op 4282 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', '4K Remaster', 'radarr', 25
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = '4K Remaster'
    AND arr_type = 'radarr'
);
-- --- END op 4282

-- --- BEGIN op 4283 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', '7.1', 'radarr', 5
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = '7.1'
    AND arr_type = 'radarr'
);
-- --- END op 4283

-- --- BEGIN op 4284 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'AMZN', 'radarr', 10
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'AMZN'
    AND arr_type = 'radarr'
);
-- --- END op 4284

-- --- BEGIN op 4285 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'ATVP', 'radarr', 25
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'ATVP'
    AND arr_type = 'radarr'
);
-- --- END op 4285

-- --- BEGIN op 4286 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'AV1', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'AV1'
    AND arr_type = 'radarr'
);
-- --- END op 4286

-- --- BEGIN op 4287 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'Accessibility', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'Accessibility'
    AND arr_type = 'radarr'
);
-- --- END op 4287

-- --- BEGIN op 4288 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'Atmos', 'radarr', 50
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'Atmos'
    AND arr_type = 'radarr'
);
-- --- END op 4288

-- --- BEGIN op 4289 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'B&W', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'B&W'
    AND arr_type = 'radarr'
);
-- --- END op 4289

-- --- BEGIN op 4290 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'BCORE', 'radarr', -500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'BCORE'
    AND arr_type = 'radarr'
);
-- --- END op 4290

-- --- BEGIN op 4291 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'BHDStudio', 'radarr', 450
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'BHDStudio'
    AND arr_type = 'radarr'
);
-- --- END op 4291

-- --- BEGIN op 4292 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'BR-DISK', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'BR-DISK'
    AND arr_type = 'radarr'
);
-- --- END op 4292

-- --- BEGIN op 4293 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'Bad Source', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'Bad Source'
    AND arr_type = 'radarr'
);
-- --- END op 4293

-- --- BEGIN op 4294 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'Baseline Groups', 'radarr', 500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'Baseline Groups'
    AND arr_type = 'radarr'
);
-- --- END op 4294

-- --- BEGIN op 4295 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'CRIT', 'radarr', 50
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'CRIT'
    AND arr_type = 'radarr'
);
-- --- END op 4295

-- --- BEGIN op 4296 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'DSNP', 'radarr', 50
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'DSNP'
    AND arr_type = 'radarr'
);
-- --- END op 4296

-- --- BEGIN op 4297 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'DTS', 'radarr', 10
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'DTS'
    AND arr_type = 'radarr'
);
-- --- END op 4297

-- --- BEGIN op 4298 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'DTS-ES', 'radarr', 10
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'DTS-ES'
    AND arr_type = 'radarr'
);
-- --- END op 4298

-- --- BEGIN op 4299 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'DTS-HD HRA', 'radarr', 50
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'DTS-HD HRA'
    AND arr_type = 'radarr'
);
-- --- END op 4299

-- --- BEGIN op 4300 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'DTS-HD MA', 'radarr', 50
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'DTS-HD MA'
    AND arr_type = 'radarr'
);
-- --- END op 4300

-- --- BEGIN op 4301 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'DTS-X', 'radarr', 100
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'DTS-X'
    AND arr_type = 'radarr'
);
-- --- END op 4301

-- --- BEGIN op 4302 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'Dolby Digital', 'radarr', 10
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'Dolby Digital'
    AND arr_type = 'radarr'
);
-- --- END op 4302

-- --- BEGIN op 4303 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'Dolby Digital +', 'radarr', 25
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'Dolby Digital +'
    AND arr_type = 'radarr'
);
-- --- END op 4303

-- --- BEGIN op 4304 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'Dolby Vision', 'radarr', 100
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'Dolby Vision'
    AND arr_type = 'radarr'
);
-- --- END op 4304

-- --- BEGIN op 4305 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'Dolby Vision (No HDR Fallback)', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'Dolby Vision (No HDR Fallback)'
    AND arr_type = 'radarr'
);
-- --- END op 4305

-- --- BEGIN op 4306 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'Dumpstarr LQ Groups', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'Dumpstarr LQ Groups'
    AND arr_type = 'radarr'
);
-- --- END op 4306

-- --- BEGIN op 4307 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'Dumpstarr LQ Groups (Automation)', 'radarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'Dumpstarr LQ Groups (Automation)'
    AND arr_type = 'radarr'
);
-- --- END op 4307

-- --- BEGIN op 4308 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'Dumpstarr LQ Title', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'Dumpstarr LQ Title'
    AND arr_type = 'radarr'
);
-- --- END op 4308

-- --- BEGIN op 4309 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'Dumpstarr LQ Title (Automation)', 'radarr', -500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'Dumpstarr LQ Title (Automation)'
    AND arr_type = 'radarr'
);
-- --- END op 4309

-- --- BEGIN op 4310 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'Extras', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'Extras'
    AND arr_type = 'radarr'
);
-- --- END op 4310

-- --- BEGIN op 4311 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'Fake HDR', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'Fake HDR'
    AND arr_type = 'radarr'
);
-- --- END op 4311

-- --- BEGIN op 4312 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'Group Missing', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'Group Missing'
    AND arr_type = 'radarr'
);
-- --- END op 4312

-- --- BEGIN op 4313 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'HDR', 'radarr', 200
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'HDR'
    AND arr_type = 'radarr'
);
-- --- END op 4313

-- --- BEGIN op 4314 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'HDR10+', 'radarr', 10
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'HDR10+'
    AND arr_type = 'radarr'
);
-- --- END op 4314

-- --- BEGIN op 4315 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'HMAX', 'radarr', 25
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'HMAX'
    AND arr_type = 'radarr'
);
-- --- END op 4315

-- --- BEGIN op 4316 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'HONE (Bad Name)', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'HONE (Bad Name)'
    AND arr_type = 'radarr'
);
-- --- END op 4316

-- --- BEGIN op 4317 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'IMAX', 'radarr', 50
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'IMAX'
    AND arr_type = 'radarr'
);
-- --- END op 4317

-- --- BEGIN op 4318 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'IMAX Enhanced', 'radarr', 50
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'IMAX Enhanced'
    AND arr_type = 'radarr'
);
-- --- END op 4318

-- --- BEGIN op 4319 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'LQ', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'LQ'
    AND arr_type = 'radarr'
);
-- --- END op 4319

-- --- BEGIN op 4320 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'LQ Release Title', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'LQ Release Title'
    AND arr_type = 'radarr'
);
-- --- END op 4320

-- --- BEGIN op 4321 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'MA', 'radarr', 100
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'MA'
    AND arr_type = 'radarr'
);
-- --- END op 4321

-- --- BEGIN op 4322 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'MAX', 'radarr', 25
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'MAX'
    AND arr_type = 'radarr'
);
-- --- END op 4322

-- --- BEGIN op 4323 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'NF', 'radarr', 10
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'NF'
    AND arr_type = 'radarr'
);
-- --- END op 4323

-- --- BEGIN op 4324 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'Remaster', 'radarr', 25
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'Remaster'
    AND arr_type = 'radarr'
);
-- --- END op 4324

-- --- BEGIN op 4325 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'Repack1', 'radarr', 5
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'Repack1'
    AND arr_type = 'radarr'
);
-- --- END op 4325

-- --- BEGIN op 4326 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'Repack2', 'radarr', 6
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'Repack2'
    AND arr_type = 'radarr'
);
-- --- END op 4326

-- --- BEGIN op 4327 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'Repack3', 'radarr', 7
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'Repack3'
    AND arr_type = 'radarr'
);
-- --- END op 4327

-- --- BEGIN op 4328 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'Sing Along', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'Sing Along'
    AND arr_type = 'radarr'
);
-- --- END op 4328

-- --- BEGIN op 4329 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'Special Edition', 'radarr', 100
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'Special Edition'
    AND arr_type = 'radarr'
);
-- --- END op 4329

-- --- BEGIN op 4330 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'TheFarm', 'radarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'TheFarm'
    AND arr_type = 'radarr'
);
-- --- END op 4330

-- --- BEGIN op 4331 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'TrueHD', 'radarr', 100
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'TrueHD'
    AND arr_type = 'radarr'
);
-- --- END op 4331

-- --- BEGIN op 4332 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'TrueHD Missing', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'TrueHD Missing'
    AND arr_type = 'radarr'
);
-- --- END op 4332

-- --- BEGIN op 4333 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'Upscaled', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'Upscaled'
    AND arr_type = 'radarr'
);
-- --- END op 4333

-- --- BEGIN op 4334 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'WEB Tier 01', 'radarr', 1700
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'WEB Tier 01'
    AND arr_type = 'radarr'
);
-- --- END op 4334

-- --- BEGIN op 4335 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'WEB Tier 02', 'radarr', 1650
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'WEB Tier 02'
    AND arr_type = 'radarr'
);
-- --- END op 4335

-- --- BEGIN op 4336 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'WEB Tier 03', 'radarr', 1600
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'WEB Tier 03'
    AND arr_type = 'radarr'
);
-- --- END op 4336

-- --- BEGIN op 4337 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'hallowed', 'radarr', 500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'hallowed'
    AND arr_type = 'radarr'
);
-- --- END op 4337

-- --- BEGIN op 4338 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'iT', 'radarr', 50
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'iT'
    AND arr_type = 'radarr'
);
-- --- END op 4338

-- --- BEGIN op 4339 ( update quality_profile "Movies 1080p HQ" )
update "quality_profiles" set "description" = 'This profile follows the same sort of logic like the TRaSH SQP-4 MA Hybrid Profile. This results in higher-quality, WEB releases being preferred. This usually results in higher-quality audio, higher video bitrates and 30% larger file size.
- This profile is recommended for a set-it-and-forget-it setup.
- This profile prefers releases sources from MA (Movies Anywhere).
- This profile allows releases with **HDR** and **Dolby Vision**.
- This profile will allow HD audio like TrueHD, DTS-X, etc but only if the source is WEB-DL.
- Releases **without** HDR fallback are not allowed.' where "name" = 'Movies 1080p HQ' and "description" = 'This profile follows the same sort of logic like the TRaSH SQP-4 MA Hybrid Profile. This results in higher-quality, WEB releases being preferred. This usually results in higher-quality audio, higher video bitrates and 30% larger file size.
- This profile is recommended for a set-it-and-forget-it setup.
- This profile prefers releases sources from MA (Movies Anywhere).
- This profile prefers 4K releases with **HDR** and **Dolby Vision**.
- This profile will allow HD audio like TrueHD, DTS-X, etc but only if the source is WEB-DL.
- Releases **without** HDR fallback are not allowed.';
-- --- END op 4339

-- --- BEGIN op 4340 ( update quality_profile "Movies 1080p HQ" )
DELETE FROM quality_profile_tags WHERE quality_profile_name = 'Movies 1080p HQ' AND tag_name = '2160p';

insert into "tags" ("name") values ('1080p') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('Movies 1080p HQ', '1080p');
-- --- END op 4340

-- --- BEGIN op 4341 ( update quality_profile "Movies 1080p HQ" )
UPDATE quality_profile_qualities
SET position = 1, enabled = 0, upgrade_until = 0
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND quality_group_name = '2160p'
  AND quality_name IS NULL
  AND position = 0
  AND enabled = 1
  AND upgrade_until = 1;

UPDATE quality_profile_qualities
SET position = 0, upgrade_until = 1
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND quality_group_name = '1080p'
  AND quality_name IS NULL
  AND position = 1
  AND enabled = 1
  AND upgrade_until = 0;
-- --- END op 4341

-- --- BEGIN op 4342 ( update quality_profile "Movies 1080p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND custom_format_name = '4K Remaster'
  AND arr_type = 'radarr'
  AND score = 25;
-- --- END op 4342

-- --- BEGIN op 4343 ( update quality_profile "Movies 1080p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND custom_format_name = 'Upscaled'
  AND arr_type = 'radarr'
  AND score = -10000;
-- --- END op 4343
