-- @operation: export
-- @entity: batch
-- @name: Combined Scrubs Boosts
-- @exportedAt: 2026-04-02T23:23:38.317Z
-- @opIds: 2424, 2425, 2426, 2427, 2428, 2429, 2430, 2431, 2432

-- --- BEGIN op 2424 ( update quality_profile "TV 1080p" )
delete from "quality_profile_custom_formats" where "quality_profile_name" = 'TV 1080p' and "custom_format_name" = 'Scrubs (2001) Remux Boost' and "arr_type" = 'sonarr' and "score" = 10;
-- --- END op 2424

-- --- BEGIN op 2425 ( update quality_profile "TV 2160p" )
delete from "quality_profile_custom_formats" where "quality_profile_name" = 'TV 2160p' and "custom_format_name" = 'Scrubs (2001) Remux Boost' and "arr_type" = 'sonarr' and "score" = 10;
-- --- END op 2425

-- --- BEGIN op 2426 ( delete custom_format "Scrubs (2001) Remux Boost" )
delete from "custom_formats" where "name" = 'Scrubs (2001) Remux Boost';
-- --- END op 2426

-- --- BEGIN op 2427 ( update custom_format "Scrubs (2001) Boost" )
update "custom_formats" set "name" = 'Scrubs (2001) Boost' where "name" = 'Scrubs (2001) Internal Boost';
-- --- END op 2427

-- --- BEGIN op 2428 ( update quality_profile "TV 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Scrubs (2001) Boost' where "quality_profile_name" = 'TV 1080p' and "custom_format_name" = 'Scrubs (2001) Internal Boost' and "arr_type" = 'sonarr' and "score" = 10;
-- --- END op 2428

-- --- BEGIN op 2429 ( update quality_profile "TV 2160p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Scrubs (2001) Boost' where "quality_profile_name" = 'TV 2160p' and "custom_format_name" = 'Scrubs (2001) Internal Boost' and "arr_type" = 'sonarr' and "score" = 10;
-- --- END op 2429

-- --- BEGIN op 2430 ( update custom_format "Scrubs (2001) Boost" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Scrubs (2001) Boost', 'Remux', 'release_title', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Scrubs (2001) Boost', 'Remux', 'Remux');
-- --- END op 2430

-- --- BEGIN op 2431 ( update custom_format "Scrubs (2001) Boost" )
UPDATE custom_format_conditions
SET arr_type = 'sonarr', required = 0
WHERE custom_format_name = 'Scrubs (2001) Boost'
  AND name = 'Internal'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 1;
-- --- END op 2431

-- --- BEGIN op 2432 ( update custom_format "Scrubs (2001) Boost" )
UPDATE custom_format_conditions
SET arr_type = 'sonarr'
WHERE custom_format_name = 'Scrubs (2001) Boost'
  AND name = 'Scrubs'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 1;
-- --- END op 2432
