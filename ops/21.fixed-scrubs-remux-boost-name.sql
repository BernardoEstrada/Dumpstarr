-- @operation: export
-- @entity: batch
-- @name: Fixed Scrubs Remux Boost name
-- @exportedAt: 2026-02-26T22:42:37.518Z
-- @opIds: 402, 403, 404

-- --- BEGIN op 402 ( update custom_format "Scrubs (2001) Remux Boost" )
update "custom_formats" set "name" = 'Scrubs (2001) Remux Boost' where "name" = 'Scrubs (2001) Remux Boost)l';
-- --- END op 402

-- --- BEGIN op 403 ( update quality_profile "TV 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Scrubs (2001) Remux Boost' where "quality_profile_name" = 'TV 1080p' and "custom_format_name" = 'Scrubs (2001) Remux Boost)l' and "arr_type" = 'sonarr' and "score" = 10;
-- --- END op 403

-- --- BEGIN op 404 ( update quality_profile "TV 2160p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Scrubs (2001) Remux Boost' where "quality_profile_name" = 'TV 2160p' and "custom_format_name" = 'Scrubs (2001) Remux Boost)l' and "arr_type" = 'sonarr' and "score" = 10;
-- --- END op 404
