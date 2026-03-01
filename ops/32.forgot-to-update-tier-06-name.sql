-- @operation: export
-- @entity: batch
-- @name: Forgot to update Tier 06 name
-- @exportedAt: 2026-03-01T22:08:08.439Z
-- @opIds: 812, 813

-- --- BEGIN op 812 ( update custom_format "Anime BD Tier 6" )
update "custom_formats" set "name" = 'Anime BD Tier 6' where "name" = 'Anime Tier 6';
-- --- END op 812

-- --- BEGIN op 813 ( update quality_profile "Anime 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Anime BD Tier 6' where "quality_profile_name" = 'Anime 1080p' and "custom_format_name" = 'Anime Tier 6' and "arr_type" = 'all' and "score" = 1100;
-- --- END op 813
