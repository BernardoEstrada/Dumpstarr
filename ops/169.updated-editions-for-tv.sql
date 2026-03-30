-- @operation: export
-- @entity: batch
-- @name: Updated editions for TV
-- @exportedAt: 2026-03-30T16:12:35.650Z
-- @opIds: 1661, 1662, 1663, 1664, 1665, 1666, 1667, 1668, 1669, 1670, 1671, 1672, 1673, 1674, 1675, 1676, 1677

-- --- BEGIN op 1661 ( create custom_format "Special Edition" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('Special Edition', 'Friends.S01E12.The.One.with.the.Dozen.Lasagnas.1080p.HMAX.WEB-DL.DDP5.1.H.264-Kitsune', 'series', 0, NULL);
-- --- END op 1661

-- --- BEGIN op 1662 ( update custom_format "Special Edition" )
UPDATE custom_format_conditions
SET required = 1
WHERE custom_format_name = 'Special Edition'
  AND name = 'Special Edition'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 1662

-- --- BEGIN op 1663 ( update custom_format "Special Edition" )
UPDATE custom_format_conditions
SET required = 1
WHERE custom_format_name = 'Special Edition'
  AND name = 'The Office Superfan'
  AND type = 'release_title'
  AND arr_type = 'sonarr'
  AND negate = 0
  AND required = 0;
-- --- END op 1663

-- --- BEGIN op 1664 ( update custom_format "Special Edition" )
UPDATE custom_format_conditions
SET required = 0
WHERE custom_format_name = 'Special Edition'
  AND name = 'The Office Superfan'
  AND type = 'release_title'
  AND arr_type = 'sonarr'
  AND negate = 0
  AND required = 1;
-- --- END op 1664

-- --- BEGIN op 1665 ( update custom_format "Special Edition" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Special Edition'
	  AND name = 'The Office Superfan'
	  AND type = 'release_title'
	  AND arr_type = 'sonarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 1665

-- --- BEGIN op 1666 ( update custom_format "Special Edition" )
UPDATE custom_format_tests SET should_match = 1 WHERE custom_format_name = 'Special Edition' AND title = 'Friends.S01E12.The.One.with.the.Dozen.Lasagnas.1080p.HMAX.WEB-DL.DDP5.1.H.264-Kitsune' AND type = 'series' AND should_match = 0;
-- --- END op 1666

-- --- BEGIN op 1667 ( update custom_format "Special Edition" )
UPDATE custom_format_tests SET should_match = 0 WHERE custom_format_name = 'Special Edition' AND title = 'Friends.S01E12.The.One.with.the.Dozen.Lasagnas.1080p.HMAX.WEB-DL.DDP5.1.H.264-Kitsune' AND type = 'series' AND should_match = 1;
-- --- END op 1667

-- --- BEGIN op 1668 ( update custom_format "Special Edition" )
UPDATE custom_format_conditions
SET required = 0
WHERE custom_format_name = 'Special Edition'
  AND name = 'Special Edition'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 1;
-- --- END op 1668

-- --- BEGIN op 1669 ( update custom_format "Special Edition" )
UPDATE custom_format_conditions
SET required = 1
WHERE custom_format_name = 'Special Edition'
  AND name = 'Special Edition'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 1669

-- --- BEGIN op 1670 ( delete custom_format "Special Edition" )
DELETE FROM custom_format_tests
WHERE custom_format_name = 'Special Edition'
  AND title = 'Friends.S01E12.The.One.with.the.Dozen.Lasagnas.1080p.HMAX.WEB-DL.DDP5.1.H.264-Kitsune'
  AND type = 'series'
  AND should_match = 0
  AND description IS NULL;
-- --- END op 1670

-- --- BEGIN op 1671 ( update custom_format "Special Edition" )
UPDATE custom_format_conditions
SET required = 0
WHERE custom_format_name = 'Special Edition'
  AND name = 'Special Edition'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 1;
-- --- END op 1671

-- --- BEGIN op 1672 ( update custom_format "Special Edition" )
UPDATE custom_format_conditions
SET required = 1
WHERE custom_format_name = 'Special Edition'
  AND name = 'Special Edition'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 1672

-- --- BEGIN op 1673 ( update custom_format "TV Editions" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'TV Editions'
	  AND name = 'Special Edition'
	  AND type = 'release_title'
	  AND arr_type = 'sonarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 1673

-- --- BEGIN op 1674 ( update custom_format "TV Editions" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TV Editions', 'The Office (US) Superfan Episodes', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('TV Editions', 'The Office (US) Superfan Episodes', 'The Office Superfan Episodes');
-- --- END op 1674

-- --- BEGIN op 1675 ( update quality_profile "TV 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV 1080p', 'TV Editions', 'sonarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV 1080p'
    AND custom_format_name = 'TV Editions'
    AND arr_type = 'sonarr'
);
-- --- END op 1675

-- --- BEGIN op 1676 ( update quality_profile "TV 2160p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV 2160p', 'TV Editions', 'sonarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV 2160p'
    AND custom_format_name = 'TV Editions'
    AND arr_type = 'sonarr'
);
-- --- END op 1676

-- --- BEGIN op 1677 ( update custom_format "TV Editions" )
update "custom_formats" set "description" = 'Matches against specialized releases of TV shows.' where "name" = 'TV Editions' and "description" = 'Matches TV epsiodes that are marked as uncensored, extended, etc.';
-- --- END op 1677
