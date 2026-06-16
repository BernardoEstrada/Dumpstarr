-- @operation: export
-- @entity: batch
-- @name: Renamed TV Editions to TVE
-- @exportedAt: 2026-06-16T03:38:01.219Z
-- @opIds: 1812, 1813, 1814

-- --- BEGIN op 1812 ( update custom_format "TVE" )
update "custom_formats" set "name" = 'TVE' where "name" = 'TV Editions';
-- --- END op 1812

-- --- BEGIN op 1813 ( update quality_profile "TV 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'TVE' where "quality_profile_name" = 'TV 1080p' and "custom_format_name" = 'TV Editions' and "arr_type" = 'sonarr' and "score" = 100;
-- --- END op 1813

-- --- BEGIN op 1814 ( update quality_profile "TV 2160p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'TVE' where "quality_profile_name" = 'TV 2160p' and "custom_format_name" = 'TV Editions' and "arr_type" = 'sonarr' and "score" = 100;
-- --- END op 1814
