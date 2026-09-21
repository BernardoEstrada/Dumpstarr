-- @operation: export
-- @entity: batch
-- @name: Added new profile SweatyEggs69 Movies and MA Preferred format
-- @exportedAt: 2026-09-21T18:30:02.638Z
-- @opIds: 6585, 6586, 6587, 6588, 6589, 6590, 6591, 6592, 6593, 6594, 6595, 6596, 6597, 6598, 6599, 6600, 6601, 6602, 6603, 6604, 6605, 6606, 6607, 6608, 6609, 6610, 6611, 6612, 6613, 6614, 6615, 6616, 6617, 6618, 6619, 6620, 6621, 6622, 6623, 6624, 6625, 6626, 6627, 6628, 6629, 6630, 6631, 6632, 6633, 6634, 6635, 6636, 6637, 6638, 6639, 6640, 6641, 6642, 6643, 6644, 6645, 6646, 6647, 6648, 6649, 6650, 6651, 6652, 6653, 6654, 6655, 6656, 6657, 6658, 6659, 6660, 6661

-- --- BEGIN op 6585 ( create custom_format "MA Preferred" )
insert into "custom_formats" ("name", "description") values ('MA Preferred', '');
-- --- END op 6585

-- --- BEGIN op 6586 ( update custom_format "MA Preferred" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('MA Preferred', 'WEB-DL', 'source', 'radarr', 0, 1);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('MA Preferred', 'WEB-DL', 'web_dl');
-- --- END op 6586

-- --- BEGIN op 6587 ( update custom_format "MA Preferred" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('MA Preferred', 'Dolby Digital +', 'release_title', 'radarr', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('MA Preferred', 'Dolby Digital +', 'Dolby Digital +');
-- --- END op 6587

-- --- BEGIN op 6588 ( update custom_format "MA Preferred" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('MA Preferred', 'HDR', 'release_title', 'radarr', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('MA Preferred', 'HDR', 'HDR');
-- --- END op 6588

-- --- BEGIN op 6589 ( update custom_format "MA Preferred" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('MA Preferred', 'MA', 'release_title', 'radarr', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('MA Preferred', 'MA', 'Movies Anywhere');
-- --- END op 6589

-- --- BEGIN op 6590 ( update custom_format "MA Preferred" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('MA Preferred', 'TRaSH WEB Tier 01', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('MA Preferred', 'TRaSH WEB Tier 01', 'TRaSH WEB Tier 01 (Radarr)');
-- --- END op 6590

-- --- BEGIN op 6591 ( update custom_format "MA Preferred" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('MA Preferred', 'TRaSH WEB Tier 02', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('MA Preferred', 'TRaSH WEB Tier 02', 'TRaSH WEB Tier 02 (Radarr)');
-- --- END op 6591

-- --- BEGIN op 6592 ( update custom_format "MA Preferred" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('MA Preferred', 'TRaSH WEB Tier 03', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('MA Preferred', 'TRaSH WEB Tier 03', 'TRaSH WEB Tier 03 (Radarr)');
-- --- END op 6592

-- --- BEGIN op 6593 ( create quality_profile "SweatyEgg69 Movies" )
insert into "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") values ('SweatyEgg69 Movies', 'This profile focuses on streaming optimized sources with little to no transcoding needed and is recommended for the average user or if you **do not** use a dedicated streaming box. (i.e. AppleTV, NVIDIA Shield, etc)
- This profile will prefer streaming optimized releases groups like **BHDStudio** and **hallowed**.
- This profile does not allow releases with HD Audio to ensure direct-play compatibility.
- Releases without HDR fallback will be scored negatively to ensure playability across platforms.', 1, 0, 0, 1);

insert into "tags" ("name") values ('2160p') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('SweatyEgg69 Movies', '2160p');

insert into "tags" ("name") values ('Radarr') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('SweatyEgg69 Movies', 'Radarr');

insert into "tags" ("name") values ('Streaming Optimized') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('SweatyEgg69 Movies', 'Streaming Optimized');

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SweatyEgg69 Movies', 'Bluray-2160p', NULL, 0, 1, 1);

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('SweatyEgg69 Movies', 'WEB-2160p');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SweatyEgg69 Movies', 'WEB-2160p', 'WEBDL-2160p', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SweatyEgg69 Movies', 'WEB-2160p', 'WEBRip-2160p', 1);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SweatyEgg69 Movies', NULL, 'WEB-2160p', 1, 1, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SweatyEgg69 Movies', 'Bluray-1080p', NULL, 2, 1, 0);

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('SweatyEgg69 Movies', 'WEB-1080p');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SweatyEgg69 Movies', 'WEB-1080p', 'WEBDL-1080p', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SweatyEgg69 Movies', 'WEB-1080p', 'WEBRip-1080p', 1);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SweatyEgg69 Movies', NULL, 'WEB-1080p', 3, 1, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SweatyEgg69 Movies', 'Bluray-720p', NULL, 4, 1, 0);

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('SweatyEgg69 Movies', 'WEB-720p');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SweatyEgg69 Movies', 'WEB-720p', 'WEBDL-720p', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SweatyEgg69 Movies', 'WEB-720p', 'WEBRip-720p', 1);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SweatyEgg69 Movies', NULL, 'WEB-720p', 5, 1, 0);

INSERT INTO quality_profile_languages (quality_profile_name, language_name, type) VALUES ('SweatyEgg69 Movies', 'Original', 'simple');
-- --- END op 6593

-- --- BEGIN op 6594 ( update quality_profile "SweatyEgg69 Movies" )
update "quality_profiles" set "minimum_custom_format_score" = 1000 where "name" = 'SweatyEgg69 Movies' and "minimum_custom_format_score" = 0;
-- --- END op 6594

-- --- BEGIN op 6595 ( update quality_profile "SweatyEgg69 Movies" )
update "quality_profiles" set "upgrade_until_score" = 10000 where "name" = 'SweatyEgg69 Movies' and "upgrade_until_score" = 0;
-- --- END op 6595

-- --- BEGIN op 6596 ( update quality_profile "SweatyEgg69 Movies" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'SweatyEgg69 Movies', '3D', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND custom_format_name = '3D'
    AND arr_type = 'radarr'
);
-- --- END op 6596

-- --- BEGIN op 6597 ( update quality_profile "SweatyEgg69 Movies" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'SweatyEgg69 Movies', '4K Remaster', 'radarr', 25
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND custom_format_name = '4K Remaster'
    AND arr_type = 'radarr'
);
-- --- END op 6597

-- --- BEGIN op 6598 ( update quality_profile "SweatyEgg69 Movies" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'SweatyEgg69 Movies', '5.1', 'radarr', 5
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND custom_format_name = '5.1'
    AND arr_type = 'radarr'
);
-- --- END op 6598

-- --- BEGIN op 6599 ( update quality_profile "SweatyEgg69 Movies" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'SweatyEgg69 Movies', '7.1', 'radarr', 10
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND custom_format_name = '7.1'
    AND arr_type = 'radarr'
);
-- --- END op 6599

-- --- BEGIN op 6600 ( update quality_profile "SweatyEgg69 Movies" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'SweatyEgg69 Movies', 'AAC', 'radarr', 10
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND custom_format_name = 'AAC'
    AND arr_type = 'radarr'
);
-- --- END op 6600

-- --- BEGIN op 6601 ( update quality_profile "SweatyEgg69 Movies" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'SweatyEgg69 Movies', 'AMZN', 'radarr', 10
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND custom_format_name = 'AMZN'
    AND arr_type = 'radarr'
);
-- --- END op 6601

-- --- BEGIN op 6602 ( update quality_profile "SweatyEgg69 Movies" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'SweatyEgg69 Movies', 'ATVP', 'radarr', 25
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND custom_format_name = 'ATVP'
    AND arr_type = 'radarr'
);
-- --- END op 6602

-- --- BEGIN op 6603 ( update quality_profile "SweatyEgg69 Movies" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'SweatyEgg69 Movies', 'AV1', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND custom_format_name = 'AV1'
    AND arr_type = 'radarr'
);
-- --- END op 6603

-- --- BEGIN op 6604 ( update quality_profile "SweatyEgg69 Movies" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'SweatyEgg69 Movies', 'Accessibility', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND custom_format_name = 'Accessibility'
    AND arr_type = 'radarr'
);
-- --- END op 6604

-- --- BEGIN op 6605 ( update quality_profile "SweatyEgg69 Movies" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'SweatyEgg69 Movies', 'Atmos', 'radarr', 25
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND custom_format_name = 'Atmos'
    AND arr_type = 'radarr'
);
-- --- END op 6605

-- --- BEGIN op 6606 ( update quality_profile "SweatyEgg69 Movies" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'SweatyEgg69 Movies', 'B&W', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND custom_format_name = 'B&W'
    AND arr_type = 'radarr'
);
-- --- END op 6606

-- --- BEGIN op 6607 ( update quality_profile "SweatyEgg69 Movies" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'SweatyEgg69 Movies', 'BCORE', 'radarr', 25
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND custom_format_name = 'BCORE'
    AND arr_type = 'radarr'
);
-- --- END op 6607

-- --- BEGIN op 6608 ( update quality_profile "SweatyEgg69 Movies" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'SweatyEgg69 Movies', 'BHDStudio', 'radarr', 550
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND custom_format_name = 'BHDStudio'
    AND arr_type = 'radarr'
);
-- --- END op 6608

-- --- BEGIN op 6609 ( update quality_profile "SweatyEgg69 Movies" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'SweatyEgg69 Movies', 'BR-DISK', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND custom_format_name = 'BR-DISK'
    AND arr_type = 'radarr'
);
-- --- END op 6609

-- --- BEGIN op 6610 ( update quality_profile "SweatyEgg69 Movies" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'SweatyEgg69 Movies', 'Bad Source', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND custom_format_name = 'Bad Source'
    AND arr_type = 'radarr'
);
-- --- END op 6610

-- --- BEGIN op 6611 ( update quality_profile "SweatyEgg69 Movies" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'SweatyEgg69 Movies', 'Baseline Groups', 'radarr', 500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND custom_format_name = 'Baseline Groups'
    AND arr_type = 'radarr'
);
-- --- END op 6611

-- --- BEGIN op 6612 ( update quality_profile "SweatyEgg69 Movies" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'SweatyEgg69 Movies', 'CRIT', 'radarr', 50
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND custom_format_name = 'CRIT'
    AND arr_type = 'radarr'
);
-- --- END op 6612

-- --- BEGIN op 6613 ( update quality_profile "SweatyEgg69 Movies" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'SweatyEgg69 Movies', 'DSNP', 'radarr', 50
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND custom_format_name = 'DSNP'
    AND arr_type = 'radarr'
);
-- --- END op 6613

-- --- BEGIN op 6614 ( update quality_profile "SweatyEgg69 Movies" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'SweatyEgg69 Movies', 'DTS-HD HRA', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND custom_format_name = 'DTS-HD HRA'
    AND arr_type = 'radarr'
);
-- --- END op 6614

-- --- BEGIN op 6615 ( update quality_profile "SweatyEgg69 Movies" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'SweatyEgg69 Movies', 'DTS-HD MA', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND custom_format_name = 'DTS-HD MA'
    AND arr_type = 'radarr'
);
-- --- END op 6615

-- --- BEGIN op 6616 ( update quality_profile "SweatyEgg69 Movies" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'SweatyEgg69 Movies', 'DTS-X', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND custom_format_name = 'DTS-X'
    AND arr_type = 'radarr'
);
-- --- END op 6616

-- --- BEGIN op 6617 ( update quality_profile "SweatyEgg69 Movies" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'SweatyEgg69 Movies', 'Dolby Digital', 'radarr', 115
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND custom_format_name = 'Dolby Digital'
    AND arr_type = 'radarr'
);
-- --- END op 6617

-- --- BEGIN op 6618 ( update quality_profile "SweatyEgg69 Movies" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'SweatyEgg69 Movies', 'Dolby Digital +', 'radarr', 125
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND custom_format_name = 'Dolby Digital +'
    AND arr_type = 'radarr'
);
-- --- END op 6618

-- --- BEGIN op 6619 ( update quality_profile "SweatyEgg69 Movies" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'SweatyEgg69 Movies', 'Dolby Vision', 'radarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND custom_format_name = 'Dolby Vision'
    AND arr_type = 'radarr'
);
-- --- END op 6619

-- --- BEGIN op 6620 ( update quality_profile "SweatyEgg69 Movies" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'SweatyEgg69 Movies', 'Dolby Vision (No HDR Fallback)', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND custom_format_name = 'Dolby Vision (No HDR Fallback)'
    AND arr_type = 'radarr'
);
-- --- END op 6620

-- --- BEGIN op 6621 ( update quality_profile "SweatyEgg69 Movies" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'SweatyEgg69 Movies', 'Dumpstarr LQ Groups', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND custom_format_name = 'Dumpstarr LQ Groups'
    AND arr_type = 'radarr'
);
-- --- END op 6621

-- --- BEGIN op 6622 ( update quality_profile "SweatyEgg69 Movies" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'SweatyEgg69 Movies', 'Dumpstarr LQ Title', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND custom_format_name = 'Dumpstarr LQ Title'
    AND arr_type = 'radarr'
);
-- --- END op 6622

-- --- BEGIN op 6623 ( update quality_profile "SweatyEgg69 Movies" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'SweatyEgg69 Movies', 'Extras', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND custom_format_name = 'Extras'
    AND arr_type = 'radarr'
);
-- --- END op 6623

-- --- BEGIN op 6624 ( update quality_profile "SweatyEgg69 Movies" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'SweatyEgg69 Movies', 'Fake HDR', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND custom_format_name = 'Fake HDR'
    AND arr_type = 'radarr'
);
-- --- END op 6624

-- --- BEGIN op 6625 ( update quality_profile "SweatyEgg69 Movies" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'SweatyEgg69 Movies', 'Group Missing', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND custom_format_name = 'Group Missing'
    AND arr_type = 'radarr'
);
-- --- END op 6625

-- --- BEGIN op 6626 ( update quality_profile "SweatyEgg69 Movies" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'SweatyEgg69 Movies', 'HD Bluray Tier 01', 'radarr', 1700
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND custom_format_name = 'HD Bluray Tier 01'
    AND arr_type = 'radarr'
);
-- --- END op 6626

-- --- BEGIN op 6627 ( update quality_profile "SweatyEgg69 Movies" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'SweatyEgg69 Movies', 'HD Bluray Tier 02', 'radarr', 1650
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND custom_format_name = 'HD Bluray Tier 02'
    AND arr_type = 'radarr'
);
-- --- END op 6627

-- --- BEGIN op 6628 ( update quality_profile "SweatyEgg69 Movies" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'SweatyEgg69 Movies', 'HD Bluray Tier 03', 'radarr', 1600
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND custom_format_name = 'HD Bluray Tier 03'
    AND arr_type = 'radarr'
);
-- --- END op 6628

-- --- BEGIN op 6629 ( update quality_profile "SweatyEgg69 Movies" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'SweatyEgg69 Movies', 'HDR', 'radarr', 500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND custom_format_name = 'HDR'
    AND arr_type = 'radarr'
);
-- --- END op 6629

-- --- BEGIN op 6630 ( update quality_profile "SweatyEgg69 Movies" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'SweatyEgg69 Movies', 'HDR10+', 'radarr', 100
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND custom_format_name = 'HDR10+'
    AND arr_type = 'radarr'
);
-- --- END op 6630

-- --- BEGIN op 6631 ( update quality_profile "SweatyEgg69 Movies" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'SweatyEgg69 Movies', 'HMAX', 'radarr', 25
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND custom_format_name = 'HMAX'
    AND arr_type = 'radarr'
);
-- --- END op 6631

-- --- BEGIN op 6632 ( update quality_profile "SweatyEgg69 Movies" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'SweatyEgg69 Movies', 'HONE (Bad Name)', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND custom_format_name = 'HONE (Bad Name)'
    AND arr_type = 'radarr'
);
-- --- END op 6632

-- --- BEGIN op 6633 ( update quality_profile "SweatyEgg69 Movies" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'SweatyEgg69 Movies', 'LQ', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND custom_format_name = 'LQ'
    AND arr_type = 'radarr'
);
-- --- END op 6633

-- --- BEGIN op 6634 ( update quality_profile "SweatyEgg69 Movies" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'SweatyEgg69 Movies', 'LQ Release Title', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND custom_format_name = 'LQ Release Title'
    AND arr_type = 'radarr'
);
-- --- END op 6634

-- --- BEGIN op 6635 ( update quality_profile "SweatyEgg69 Movies" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'SweatyEgg69 Movies', 'MA', 'radarr', 75
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND custom_format_name = 'MA'
    AND arr_type = 'radarr'
);
-- --- END op 6635

-- --- BEGIN op 6636 ( update quality_profile "SweatyEgg69 Movies" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'SweatyEgg69 Movies', 'MAX', 'radarr', 25
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND custom_format_name = 'MAX'
    AND arr_type = 'radarr'
);
-- --- END op 6636

-- --- BEGIN op 6637 ( update quality_profile "SweatyEgg69 Movies" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'SweatyEgg69 Movies', 'NF', 'radarr', 10
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND custom_format_name = 'NF'
    AND arr_type = 'radarr'
);
-- --- END op 6637

-- --- BEGIN op 6638 ( update quality_profile "SweatyEgg69 Movies" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'SweatyEgg69 Movies', 'No Audio', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND custom_format_name = 'No Audio'
    AND arr_type = 'radarr'
);
-- --- END op 6638

-- --- BEGIN op 6639 ( update quality_profile "SweatyEgg69 Movies" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'SweatyEgg69 Movies', 'ProRes', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND custom_format_name = 'ProRes'
    AND arr_type = 'radarr'
);
-- --- END op 6639

-- --- BEGIN op 6640 ( update quality_profile "SweatyEgg69 Movies" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'SweatyEgg69 Movies', 'Remaster', 'radarr', 25
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND custom_format_name = 'Remaster'
    AND arr_type = 'radarr'
);
-- --- END op 6640

-- --- BEGIN op 6641 ( update quality_profile "SweatyEgg69 Movies" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'SweatyEgg69 Movies', 'Repack1', 'radarr', 5
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND custom_format_name = 'Repack1'
    AND arr_type = 'radarr'
);
-- --- END op 6641

-- --- BEGIN op 6642 ( update quality_profile "SweatyEgg69 Movies" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'SweatyEgg69 Movies', 'Repack2', 'radarr', 6
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND custom_format_name = 'Repack2'
    AND arr_type = 'radarr'
);
-- --- END op 6642

-- --- BEGIN op 6643 ( update quality_profile "SweatyEgg69 Movies" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'SweatyEgg69 Movies', 'Repack3', 'radarr', 7
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND custom_format_name = 'Repack3'
    AND arr_type = 'radarr'
);
-- --- END op 6643

-- --- BEGIN op 6644 ( update quality_profile "SweatyEgg69 Movies" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'SweatyEgg69 Movies', 'Sing Along', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND custom_format_name = 'Sing Along'
    AND arr_type = 'radarr'
);
-- --- END op 6644

-- --- BEGIN op 6645 ( update quality_profile "SweatyEgg69 Movies" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'SweatyEgg69 Movies', 'Special Edition', 'radarr', 125
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND custom_format_name = 'Special Edition'
    AND arr_type = 'radarr'
);
-- --- END op 6645

-- --- BEGIN op 6646 ( update quality_profile "SweatyEgg69 Movies" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'SweatyEgg69 Movies', 'TrueHD', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND custom_format_name = 'TrueHD'
    AND arr_type = 'radarr'
);
-- --- END op 6646

-- --- BEGIN op 6647 ( update quality_profile "SweatyEgg69 Movies" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'SweatyEgg69 Movies', 'TrueHD Missing', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND custom_format_name = 'TrueHD Missing'
    AND arr_type = 'radarr'
);
-- --- END op 6647

-- --- BEGIN op 6648 ( update quality_profile "SweatyEgg69 Movies" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'SweatyEgg69 Movies', 'UHD Bluray Tier 01', 'radarr', 1900
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND custom_format_name = 'UHD Bluray Tier 01'
    AND arr_type = 'radarr'
);
-- --- END op 6648

-- --- BEGIN op 6649 ( update quality_profile "SweatyEgg69 Movies" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'SweatyEgg69 Movies', 'UHD Bluray Tier 02', 'radarr', 1850
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND custom_format_name = 'UHD Bluray Tier 02'
    AND arr_type = 'radarr'
);
-- --- END op 6649

-- --- BEGIN op 6650 ( update quality_profile "SweatyEgg69 Movies" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'SweatyEgg69 Movies', 'UHD Bluray Tier 03', 'radarr', 1800
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND custom_format_name = 'UHD Bluray Tier 03'
    AND arr_type = 'radarr'
);
-- --- END op 6650

-- --- BEGIN op 6651 ( update quality_profile "SweatyEgg69 Movies" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'SweatyEgg69 Movies', 'Upscaled', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND custom_format_name = 'Upscaled'
    AND arr_type = 'radarr'
);
-- --- END op 6651

-- --- BEGIN op 6652 ( update quality_profile "SweatyEgg69 Movies" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'SweatyEgg69 Movies', 'WEB Tier 01', 'radarr', 1500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND custom_format_name = 'WEB Tier 01'
    AND arr_type = 'radarr'
);
-- --- END op 6652

-- --- BEGIN op 6653 ( update quality_profile "SweatyEgg69 Movies" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'SweatyEgg69 Movies', 'WEB Tier 02', 'radarr', 1450
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND custom_format_name = 'WEB Tier 02'
    AND arr_type = 'radarr'
);
-- --- END op 6653

-- --- BEGIN op 6654 ( update quality_profile "SweatyEgg69 Movies" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'SweatyEgg69 Movies', 'WEB Tier 03', 'radarr', 1400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND custom_format_name = 'WEB Tier 03'
    AND arr_type = 'radarr'
);
-- --- END op 6654

-- --- BEGIN op 6655 ( update quality_profile "SweatyEgg69 Movies" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'SweatyEgg69 Movies', 'hallowed', 'radarr', 600
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND custom_format_name = 'hallowed'
    AND arr_type = 'radarr'
);
-- --- END op 6655

-- --- BEGIN op 6656 ( update quality_profile "SweatyEgg69 Movies" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'SweatyEgg69 Movies', 'iT', 'radarr', 50
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND custom_format_name = 'iT'
    AND arr_type = 'radarr'
);
-- --- END op 6656

-- --- BEGIN op 6657 ( update quality_profile "SweatyEgg69 Movies" )
update "quality_profiles" set "description" = 'This profile focuses on streaming optimized sources with little to no transcoding needed and is recommended for the average user or if you **do not** use a dedicated streaming box. (i.e. AppleTV, NVIDIA Shield, etc)
- This profile prefers MA (Movies Anywhere) WEB-DL releases from tiered groups that contain HDR and Dolby Digital +.
- This profile will fallback to streaming optimized releases groups like **BHDStudio** and **hallowed**.
- This profile does not allow releases with HD Audio to ensure direct-play compatibility.
- Releases without HDR fallback will be scored negatively to ensure playability across platforms.' where "name" = 'SweatyEgg69 Movies' and "description" = 'This profile focuses on streaming optimized sources with little to no transcoding needed and is recommended for the average user or if you **do not** use a dedicated streaming box. (i.e. AppleTV, NVIDIA Shield, etc)
- This profile will prefer streaming optimized releases groups like **BHDStudio** and **hallowed**.
- This profile does not allow releases with HD Audio to ensure direct-play compatibility.
- Releases without HDR fallback will be scored negatively to ensure playability across platforms.';
-- --- END op 6657

-- --- BEGIN op 6658 ( update quality_profile "SweatyEgg69 Movies" )
DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'SweatyEgg69 Movies'
  AND quality_name = 'Bluray-2160p'
  AND quality_group_name IS NULL
  AND position = 0
  AND enabled = 1
  AND upgrade_until = 1;

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'SweatyEgg69 Movies'
  AND quality_group_name = 'WEB-2160p'
  AND quality_name IS NULL
  AND position = 1
  AND enabled = 1
  AND upgrade_until = 0;

DELETE FROM quality_group_members
WHERE quality_profile_name = 'SweatyEgg69 Movies'
  AND quality_group_name = 'WEB-2160p'
  AND quality_name = 'WEBDL-2160p';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'SweatyEgg69 Movies'
  AND quality_group_name = 'WEB-2160p'
  AND quality_name = 'WEBRip-2160p';

DELETE FROM quality_groups
WHERE quality_profile_name = 'SweatyEgg69 Movies'
  AND name = 'WEB-2160p';

INSERT INTO quality_groups (quality_profile_name, name)
SELECT 'SweatyEgg69 Movies', '2160p'
WHERE NOT EXISTS (
  SELECT 1 FROM quality_groups
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND name = '2160p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'SweatyEgg69 Movies', '2160p', 'WEBDL-2160p', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND quality_group_name = '2160p'
    AND quality_name = 'WEBDL-2160p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'SweatyEgg69 Movies', '2160p', 'WEBRip-2160p', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND quality_group_name = '2160p'
    AND quality_name = 'WEBRip-2160p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'SweatyEgg69 Movies', '2160p', 'Bluray-2160p', 2
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND quality_group_name = '2160p'
    AND quality_name = 'Bluray-2160p'
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'SweatyEgg69 Movies', NULL, '2160p', 0, 1, 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND quality_name IS NULL
    AND quality_group_name = '2160p'
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'SweatyEgg69 Movies', 'Bluray-480p', NULL, 5, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND quality_name = 'Bluray-480p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'SweatyEgg69 Movies', 'Bluray-576p', NULL, 6, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND quality_name = 'Bluray-576p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'SweatyEgg69 Movies', 'BR-DISK', NULL, 7, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND quality_name = 'BR-DISK'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'SweatyEgg69 Movies', 'CAM', NULL, 8, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND quality_name = 'CAM'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'SweatyEgg69 Movies', 'DVD', NULL, 9, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND quality_name = 'DVD'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'SweatyEgg69 Movies', 'DVD-R', NULL, 10, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND quality_name = 'DVD-R'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'SweatyEgg69 Movies', 'DVDSCR', NULL, 11, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND quality_name = 'DVDSCR'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'SweatyEgg69 Movies', 'HDTV-1080p', NULL, 12, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND quality_name = 'HDTV-1080p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'SweatyEgg69 Movies', 'HDTV-2160p', NULL, 13, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND quality_name = 'HDTV-2160p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'SweatyEgg69 Movies', 'HDTV-480p', NULL, 14, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND quality_name = 'HDTV-480p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'SweatyEgg69 Movies', 'HDTV-720p', NULL, 15, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND quality_name = 'HDTV-720p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'SweatyEgg69 Movies', 'Raw-HD', NULL, 16, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND quality_name = 'Raw-HD'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'SweatyEgg69 Movies', 'REGIONAL', NULL, 17, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND quality_name = 'REGIONAL'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'SweatyEgg69 Movies', 'Remux-1080p', NULL, 18, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND quality_name = 'Remux-1080p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'SweatyEgg69 Movies', 'Remux-2160p', NULL, 19, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND quality_name = 'Remux-2160p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'SweatyEgg69 Movies', 'SDTV', NULL, 20, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND quality_name = 'SDTV'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'SweatyEgg69 Movies', 'TELECINE', NULL, 21, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND quality_name = 'TELECINE'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'SweatyEgg69 Movies', 'TELESYNC', NULL, 22, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND quality_name = 'TELESYNC'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'SweatyEgg69 Movies', 'Unknown', NULL, 23, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND quality_name = 'Unknown'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'SweatyEgg69 Movies', 'WEBDL-480p', NULL, 24, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND quality_name = 'WEBDL-480p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'SweatyEgg69 Movies', 'WEBRip-480p', NULL, 25, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND quality_name = 'WEBRip-480p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'SweatyEgg69 Movies', 'WORKPRINT', NULL, 26, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND quality_name = 'WORKPRINT'
    AND quality_group_name IS NULL
);

UPDATE quality_profile_qualities
SET position = 1
WHERE quality_profile_name = 'SweatyEgg69 Movies'
  AND quality_name = 'Bluray-1080p'
  AND quality_group_name IS NULL
  AND position = 2
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 2
WHERE quality_profile_name = 'SweatyEgg69 Movies'
  AND quality_group_name = 'WEB-1080p'
  AND quality_name IS NULL
  AND position = 3
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 3
WHERE quality_profile_name = 'SweatyEgg69 Movies'
  AND quality_name = 'Bluray-720p'
  AND quality_group_name IS NULL
  AND position = 4
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 4
WHERE quality_profile_name = 'SweatyEgg69 Movies'
  AND quality_group_name = 'WEB-720p'
  AND quality_name IS NULL
  AND position = 5
  AND enabled = 1
  AND upgrade_until = 0;
-- --- END op 6658

-- --- BEGIN op 6659 ( update quality_profile "SweatyEgg69 Movies" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'SweatyEgg69 Movies', 'MA Preferred', 'radarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'SweatyEgg69 Movies'
    AND custom_format_name = 'MA Preferred'
    AND arr_type = 'radarr'
);
-- --- END op 6659

-- --- BEGIN op 6660 ( update quality_profile "SweatyEgg69 Movies" )
insert into "tags" ("name") values ('MA') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('SweatyEgg69 Movies', 'MA');
-- --- END op 6660

-- --- BEGIN op 6661 ( update quality_profile "SweatyEgg69 Movies" )
update "quality_profiles" set "description" = 'This profile focuses on streaming optimized sources with little to no transcoding needed and is recommended for the average user or if you **do not** use a dedicated streaming box. (i.e. AppleTV, NVIDIA Shield, etc)
- This profile uses the preferred settings for SweatyEggs69.
- This profile prefers MA (Movies Anywhere) WEB-DL releases from tiered groups that contain HDR and Dolby Digital +.
- This profile will fallback to streaming optimized releases groups like **BHDStudio** and **hallowed**.
- This profile does not allow releases with HD Audio to ensure direct-play compatibility.
- Releases without HDR fallback will be scored negatively to ensure playability across platforms.' where "name" = 'SweatyEgg69 Movies' and "description" = 'This profile focuses on streaming optimized sources with little to no transcoding needed and is recommended for the average user or if you **do not** use a dedicated streaming box. (i.e. AppleTV, NVIDIA Shield, etc)
- This profile prefers MA (Movies Anywhere) WEB-DL releases from tiered groups that contain HDR and Dolby Digital +.
- This profile will fallback to streaming optimized releases groups like **BHDStudio** and **hallowed**.
- This profile does not allow releases with HD Audio to ensure direct-play compatibility.
- Releases without HDR fallback will be scored negatively to ensure playability across platforms.';
-- --- END op 6661
