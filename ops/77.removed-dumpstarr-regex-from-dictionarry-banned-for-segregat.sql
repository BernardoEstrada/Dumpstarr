-- @operation: export
-- @entity: batch
-- @name: Removed Dumpstarr regex from Dictionarry Banned for segregation
-- @exportedAt: 2026-03-04T02:43:23.554Z
-- @opIds: 1958, 1959, 1960, 1961, 1962, 1963, 1964, 1965, 1966

-- --- BEGIN op 1958 ( update custom_format "Dictionarry Banned Groups" )
update "custom_formats" set "name" = 'Dictionarry Banned Groups' where "name" = 'Banned Groups';
-- --- END op 1958

-- --- BEGIN op 1959 ( update quality_profile "Anime 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Dictionarry Banned Groups' where "quality_profile_name" = 'Anime 1080p' and "custom_format_name" = 'Banned Groups' and "arr_type" = 'all' and "score" = -10000;
-- --- END op 1959

-- --- BEGIN op 1960 ( update quality_profile "Movies 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Dictionarry Banned Groups' where "quality_profile_name" = 'Movies 1080p' and "custom_format_name" = 'Banned Groups' and "arr_type" = 'radarr' and "score" = -10000;
-- --- END op 1960

-- --- BEGIN op 1961 ( update quality_profile "Movies 1080p HQ" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Dictionarry Banned Groups' where "quality_profile_name" = 'Movies 1080p HQ' and "custom_format_name" = 'Banned Groups' and "arr_type" = 'radarr' and "score" = -10000;
-- --- END op 1961

-- --- BEGIN op 1962 ( update quality_profile "Movies 2160p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Dictionarry Banned Groups' where "quality_profile_name" = 'Movies 2160p' and "custom_format_name" = 'Banned Groups' and "arr_type" = 'radarr' and "score" = -10000;
-- --- END op 1962

-- --- BEGIN op 1963 ( update quality_profile "Movies 2160p HQ" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Dictionarry Banned Groups' where "quality_profile_name" = 'Movies 2160p HQ' and "custom_format_name" = 'Banned Groups' and "arr_type" = 'radarr' and "score" = -10000;
-- --- END op 1963

-- --- BEGIN op 1964 ( update quality_profile "TV 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Dictionarry Banned Groups' where "quality_profile_name" = 'TV 1080p' and "custom_format_name" = 'Banned Groups' and "arr_type" = 'sonarr' and "score" = -10000;
-- --- END op 1964

-- --- BEGIN op 1965 ( update quality_profile "TV 2160p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Dictionarry Banned Groups' where "quality_profile_name" = 'TV 2160p' and "custom_format_name" = 'Banned Groups' and "arr_type" = 'sonarr' and "score" = -10000;
-- --- END op 1965

-- --- BEGIN op 1966 ( update custom_format "Dictionarry Banned Groups" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Dictionarry Banned Groups'
	  AND name = 'Dumpstarr Banned Groups'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 1966
