-- @operation: export
-- @entity: batch
-- @name: Cleaned up 3D and Special Editions
-- @exportedAt: 2026-03-25T15:01:24.974Z
-- @opIds: 1376, 1377, 1378, 1379, 1380, 1381, 1382, 1383, 1384, 1385, 1386, 1387

-- --- BEGIN op 1376 ( update regular_expression "3D" )
update "regular_expressions" set "pattern" = '(?<=\b[12]\d{3}\b).*\b((Bluray|BD)?3D|SBS|H[- .]?OU|H[- .]?SBS|Half[ .-]?OU|Half[ .-]?SBS)\b' where "name" = '3D' and "pattern" = '(?<=\b[12]\d{3}\b).*\b(3d|sbs|half[ .-]ou|half[ .-]sbs)\b';
-- --- END op 1376

-- --- BEGIN op 1377 ( update regular_expression "3D" )
DELETE FROM regular_expression_tags WHERE regular_expression_name IN ('3D') AND tag_name = 'TRaSH';
-- --- END op 1377

-- --- BEGIN op 1378 ( update regular_expression "Special Edition" )
update "regular_expressions" set "name" = 'Special Edition', "pattern" = '(?<!^)\b(extended|superfan|uncut|directors|special|unrated|uncensored|cut|version|(?<!{)edition)(\b|\d)' where "name" = 'Special Edition - Radarr' and "pattern" = '(?<!^)\b(extended|uncut|directors|special|unrated|uncensored|cut|version|(?<!{)edition)(\b|\d)';

DELETE FROM regular_expression_tags WHERE regular_expression_name IN ('Special Edition - Radarr', 'Special Edition') AND tag_name = 'TRaSH';
-- --- END op 1378

-- --- BEGIN op 1379 ( update custom_format "Special Edition" )
update "condition_patterns" set "regular_expression_name" = 'Special Edition' where "custom_format_name" = 'Special Edition' and "condition_name" = 'Special Edition' and "regular_expression_name" = 'Special Edition - Radarr';
-- --- END op 1379

-- --- BEGIN op 1380 ( update custom_format "TV Editions" )
delete from "custom_format_conditions" where "custom_format_name" = 'TV Editions' and "name" = 'Editions' and "type" = 'release_title' and "arr_type" = 'all' and "negate" = 0 and "required" = 1;
-- --- END op 1380

-- --- BEGIN op 1381 ( delete regular_expression "Special Edition - Sonarr" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Special Edition - Sonarr' AND tag_name = 'Edition';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Special Edition - Sonarr' AND tag_name = 'TRaSH';

delete from "regular_expressions" where "name" = 'Special Edition - Sonarr' and "pattern" = '(?<!^)\b(extended|superfan|uncut|directors|special|unrated|uncensored|cut|version|(?<!{)edition)(\b|\d)';
-- --- END op 1381

-- --- BEGIN op 1382 ( update custom_format "TV Editions" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TV Editions', 'Special Edition', 'release_title', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('TV Editions', 'Special Edition', 'Special Edition');
-- --- END op 1382

-- --- BEGIN op 1383 ( update custom_format "Special Edition" )
UPDATE custom_format_conditions
SET arr_type = 'radarr'
WHERE custom_format_name = 'Special Edition'
  AND name = 'Not Extended Clip'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 1
  AND required = 1;
-- --- END op 1383

-- --- BEGIN op 1384 ( update custom_format "Special Edition" )
UPDATE custom_format_conditions
SET arr_type = 'radarr'
WHERE custom_format_name = 'Special Edition'
  AND name = 'Not IMAX'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 1
  AND required = 1;
-- --- END op 1384

-- --- BEGIN op 1385 ( update custom_format "Special Edition" )
UPDATE custom_format_conditions
SET arr_type = 'radarr'
WHERE custom_format_name = 'Special Edition'
  AND name = 'Not Open Matte'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 1
  AND required = 1;
-- --- END op 1385

-- --- BEGIN op 1386 ( update custom_format "Special Edition" )
UPDATE custom_format_conditions
SET arr_type = 'radarr'
WHERE custom_format_name = 'Special Edition'
  AND name = 'Not Theatrical Edition'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 1
  AND required = 1;
-- --- END op 1386

-- --- BEGIN op 1387 ( update custom_format "Special Edition" )
UPDATE custom_format_conditions
SET arr_type = 'radarr'
WHERE custom_format_name = 'Special Edition'
  AND name = 'Special Edition'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 1;
-- --- END op 1387
