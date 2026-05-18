-- @operation: export
-- @entity: batch
-- @name: Updated name of Fake HDR format
-- @exportedAt: 2026-05-18T15:24:37.421Z
-- @opIds: 851, 852, 853

-- --- BEGIN op 851 ( update custom_format "Fake HDR" )
update "custom_formats" set "name" = 'Fake HDR' where "name" = 'Generated Dynamic HDR';
-- --- END op 851

-- --- BEGIN op 852 ( update quality_profile "Movies 2160p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Fake HDR' where "quality_profile_name" = 'Movies 2160p' and "custom_format_name" = 'Generated Dynamic HDR' and "arr_type" = 'radarr' and "score" = -10000;
-- --- END op 852

-- --- BEGIN op 853 ( update quality_profile "Movies 2160p HQ" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Fake HDR' where "quality_profile_name" = 'Movies 2160p HQ' and "custom_format_name" = 'Generated Dynamic HDR' and "arr_type" = 'radarr' and "score" = -10000;
-- --- END op 853
