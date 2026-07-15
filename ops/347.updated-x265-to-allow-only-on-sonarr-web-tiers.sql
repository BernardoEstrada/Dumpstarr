-- @operation: export
-- @entity: batch
-- @name: Updated x265 to allow only on Sonarr WEB Tiers
-- @exportedAt: 2026-07-15T17:43:23.791Z
-- @opIds: 3799, 3800, 3801, 3802, 3803, 3804, 3805, 3806, 3807, 3808, 3809, 3810, 3811, 3812, 3813, 3814, 3815, 3816, 3817, 3818, 3819, 3820, 3821, 3822, 3823, 3824

-- --- BEGIN op 3799 ( update custom_format "x265" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('x265', 'WEB Tier 01', 'release_group', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('x265', 'WEB Tier 01', 'TRaSH WEB Tier 01 (Sonarr)');
-- --- END op 3799

-- --- BEGIN op 3800 ( update custom_format "x265" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('x265', 'WEB Tier 02', 'release_group', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('x265', 'WEB Tier 02', 'TRaSH WEB Tier 02 (Sonarr)');
-- --- END op 3800

-- --- BEGIN op 3801 ( update custom_format "x265" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('x265', 'WEB Tier 03', 'release_group', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('x265', 'WEB Tier 03', 'TRaSH WEB Tier 03 (Sonarr)');
-- --- END op 3801

-- --- BEGIN op 3802 ( update custom_format "x265" )
UPDATE custom_format_conditions
SET negate = 1, required = 1
WHERE custom_format_name = 'x265'
  AND name = 'WEB Tier 01'
  AND type = 'release_group'
  AND arr_type = 'sonarr'
  AND negate = 0
  AND required = 0;
-- --- END op 3802

-- --- BEGIN op 3803 ( update custom_format "x265" )
UPDATE custom_format_conditions
SET negate = 1, required = 1
WHERE custom_format_name = 'x265'
  AND name = 'WEB Tier 02'
  AND type = 'release_group'
  AND arr_type = 'sonarr'
  AND negate = 0
  AND required = 0;
-- --- END op 3803

-- --- BEGIN op 3804 ( update custom_format "x265" )
UPDATE custom_format_conditions
SET negate = 1, required = 1
WHERE custom_format_name = 'x265'
  AND name = 'WEB Tier 03'
  AND type = 'release_group'
  AND arr_type = 'sonarr'
  AND negate = 0
  AND required = 0;
-- --- END op 3804

-- --- BEGIN op 3805 ( update quality_profile "TV 1080p" )
UPDATE quality_profile_custom_formats
SET score = -10000
WHERE quality_profile_name = 'TV 1080p'
  AND custom_format_name = 'x265'
  AND arr_type = 'sonarr'
  AND score = -50;
-- --- END op 3805

-- --- BEGIN op 3806 ( update custom_format "x265" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('x265', 'Not 2160p', 'resolution', 'all', 1, 1);

INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('x265', 'Not 2160p', '2160p');
-- --- END op 3806

-- --- BEGIN op 3807 ( update quality_profile "TV 2160p" )
UPDATE quality_profile_custom_formats
SET score = -10000
WHERE quality_profile_name = 'TV 2160p'
  AND custom_format_name = 'x265'
  AND arr_type = 'sonarr'
  AND score = 1;
-- --- END op 3807

-- --- BEGIN op 3808 ( update custom_format "x265" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'x265'
	  AND name = 'WEB Tier 01'
	  AND type = 'release_group'
	  AND arr_type = 'sonarr'
	  AND negate = 1
	  AND required = 1;
-- --- END op 3808

-- --- BEGIN op 3809 ( update custom_format "x265" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'x265'
	  AND name = 'WEB Tier 02'
	  AND type = 'release_group'
	  AND arr_type = 'sonarr'
	  AND negate = 1
	  AND required = 1;
-- --- END op 3809

-- --- BEGIN op 3810 ( update custom_format "x265" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'x265'
	  AND name = 'WEB Tier 03'
	  AND type = 'release_group'
	  AND arr_type = 'sonarr'
	  AND negate = 1
	  AND required = 1;
-- --- END op 3810

-- --- BEGIN op 3811 ( update custom_format "x265" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('x265', 'WEB Tier 01 (Sonarr)', 'release_group', 'sonarr', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('x265', 'WEB Tier 01 (Sonarr)', 'TRaSH WEB Tier 01 (Sonarr)');
-- --- END op 3811

-- --- BEGIN op 3812 ( update custom_format "x265" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('x265', 'WEB Tier 02 (Sonarr)', 'release_group', 'sonarr', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('x265', 'WEB Tier 02 (Sonarr)', 'TRaSH WEB Tier 02 (Sonarr)');
-- --- END op 3812

-- --- BEGIN op 3813 ( update custom_format "x265" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('x265', 'WEB Tier 03 (Sonarr)', 'release_group', 'sonarr', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('x265', 'WEB Tier 03 (Sonarr)', 'TRaSH WEB Tier 03 (Sonarr)');
-- --- END op 3813

-- --- BEGIN op 3814 ( update custom_format "x265" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('x265', 'WEB Tier 01 (Radarr)', 'release_group', 'radarr', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('x265', 'WEB Tier 01 (Radarr)', 'TRaSH WEB Tier 01 (Radarr)');
-- --- END op 3814

-- --- BEGIN op 3815 ( update custom_format "x265" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('x265', 'WEB Tier 02 (Radarr)', 'release_group', 'radarr', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('x265', 'WEB Tier 02 (Radarr)', 'TRaSH WEB Tier 02 (Radarr)');
-- --- END op 3815

-- --- BEGIN op 3816 ( update custom_format "x265" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('x265', 'WEB Tier 03 (Radarr)', 'release_group', 'radarr', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('x265', 'WEB Tier 03 (Radarr)', 'TRaSH WEB Tier 03 (Radarr)');
-- --- END op 3816

-- --- BEGIN op 3817 ( update quality_profile "LQ 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'LQ 1080p'
  AND custom_format_name = 'AV1'
  AND arr_type = 'sonarr'
  AND score = 1;
-- --- END op 3817

-- --- BEGIN op 3818 ( update quality_profile "LQ 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'LQ 1080p'
  AND custom_format_name = 'x265'
  AND arr_type = 'sonarr'
  AND score = 5;
-- --- END op 3818

-- --- BEGIN op 3819 ( update quality_profile "LQ 1080p" )
update "quality_profiles" set "description" = '- This profile is for **SIDCA** (Sh*t I Don''t Care About). The primary tier and LQ groups are not scored to allow "low quality" releases. For example, user requests "Keeping Up with the Kardashians" and you would prefer to save as much storage space as humanly possible so this user can watch this "show".
- You can expect to grab **MeGusta** or **iVy** releases 99% of the time.
- AV1 and x265 codecs are allowed.' where "name" = 'LQ 1080p' and "description" = '- This profile is for **SIDCA** (Sh*t I Don''t Care About). The primary tier and LQ groups are not scored to allow "low quality" releases. For example, user requests "Keeping Up with the Kardashians" and you would prefer to save as much storage space as humanly possible so this user can watch this "show".
- You can expect to grab **MeGusta** or **iVy** releases 99% of the time.
- AV1 and x265 codecs are allowed and scored for preference of x265. **NOTE! you may encounter transcoding if the client side does not support these codecs.**';
-- --- END op 3819

-- --- BEGIN op 3820 ( update custom_format "x265" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('x265', 'Not Remux', 'quality_modifier', 'all', 0, 0);

INSERT INTO condition_quality_modifiers (custom_format_name, condition_name, quality_modifier) VALUES ('x265', 'Not Remux', 'remux');
-- --- END op 3820

-- --- BEGIN op 3821 ( update custom_format "x265" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'x265'
	  AND name = 'WEB Tier 01 (Radarr)'
	  AND type = 'release_group'
	  AND arr_type = 'radarr'
	  AND negate = 1
	  AND required = 1;
-- --- END op 3821

-- --- BEGIN op 3822 ( update custom_format "x265" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'x265'
	  AND name = 'WEB Tier 02 (Radarr)'
	  AND type = 'release_group'
	  AND arr_type = 'radarr'
	  AND negate = 1
	  AND required = 1;
-- --- END op 3822

-- --- BEGIN op 3823 ( update custom_format "x265" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'x265'
	  AND name = 'WEB Tier 03 (Radarr)'
	  AND type = 'release_group'
	  AND arr_type = 'radarr'
	  AND negate = 1
	  AND required = 1;
-- --- END op 3823

-- --- BEGIN op 3824 ( update custom_format "x265" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'x265'
	  AND name = 'Not Remux'
	  AND type = 'quality_modifier'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 3824
