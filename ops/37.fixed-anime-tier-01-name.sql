-- @operation: export
-- @entity: batch
-- @name: Fixed Anime Tier 01 name
-- @exportedAt: 2026-03-02T04:29:27.665Z
-- @opIds: 935, 936

-- --- BEGIN op 935 ( update custom_format "Anime WEB Tier 01" )
update "custom_formats" set "name" = 'Anime WEB Tier 01' where "name" = 'Anime WEB Tier 1';
-- --- END op 935

-- --- BEGIN op 936 ( update quality_profile "Anime 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Anime WEB Tier 01' where "quality_profile_name" = 'Anime 1080p' and "custom_format_name" = 'Anime WEB Tier 1' and "arr_type" = 'all' and "score" = 2000;
-- --- END op 936
