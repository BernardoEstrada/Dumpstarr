-- @operation: export
-- @entity: batch
-- @name: Fixed logic for special editions on Sonarr side
-- @exportedAt: 2026-03-28T18:15:37.017Z
-- @opIds: 1433, 1434, 1435, 1436, 1437, 1438

-- --- BEGIN op 1433 ( update regular_expression "Special Edition" )
update "regular_expressions" set "pattern" = '(?<!^)\b(extended|uncut|directors|special|unrated|cut|version|(?<!{)edition)(\b|\d)' where "name" = 'Special Edition' and "pattern" = '(?<!^)\b(extended|uncut|directors|special|unrated|uncensored|cut|version|(?<!{)edition)(\b|\d)';
-- --- END op 1433

-- --- BEGIN op 1434 ( update quality_profile "TV 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV 1080p', 'Special Edition', 'sonarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV 1080p'
    AND custom_format_name = 'Special Edition'
    AND arr_type = 'sonarr'
);
-- --- END op 1434

-- --- BEGIN op 1435 ( update quality_profile "TV 2160p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV 2160p', 'Special Edition', 'sonarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV 2160p'
    AND custom_format_name = 'Special Edition'
    AND arr_type = 'sonarr'
);
-- --- END op 1435

-- --- BEGIN op 1436 ( update custom_format "Special Edition" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Special Edition', 'The Office Superfan', 'release_title', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Special Edition', 'The Office Superfan', 'The Office Superfan Episodes');
-- --- END op 1436

-- --- BEGIN op 1437 ( update custom_format "Special Edition" )
UPDATE custom_format_conditions
SET required = 0
WHERE custom_format_name = 'Special Edition'
  AND name = 'Special Edition'
  AND type = 'release_title'
  AND arr_type = 'radarr'
  AND negate = 0
  AND required = 1;
-- --- END op 1437

-- --- BEGIN op 1438 ( update custom_format "Special Edition" )
UPDATE custom_format_conditions
SET arr_type = 'all'
WHERE custom_format_name = 'Special Edition'
  AND name = 'Special Edition'
  AND type = 'release_title'
  AND arr_type = 'radarr'
  AND negate = 0
  AND required = 0;
-- --- END op 1438
