-- @operation: export
-- @entity: batch
-- @name: Updated Bad Naming Scheme Name
-- @exportedAt: 2026-03-18T18:44:19.588Z
-- @opIds: 1150, 1151, 1152, 1153, 1154

-- --- BEGIN op 1150 ( update custom_format "HONE (Bad Name)" )
update "custom_formats" set "name" = 'HONE (Bad Name)' where "name" = 'Bad Naming Scheme';
-- --- END op 1150

-- --- BEGIN op 1151 ( update quality_profile "Movies 2160p HQ" )
update "quality_profile_custom_formats" set "custom_format_name" = 'HONE (Bad Name)' where "quality_profile_name" = 'Movies 2160p HQ' and "custom_format_name" = 'Bad Naming Scheme' and "arr_type" = 'radarr' and "score" = -10000;
-- --- END op 1151

-- --- BEGIN op 1152 ( update quality_profile "Movies 2160p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'HONE (Bad Name)' where "quality_profile_name" = 'Movies 2160p' and "custom_format_name" = 'Bad Naming Scheme' and "arr_type" = 'radarr' and "score" = -10000;
-- --- END op 1152

-- --- BEGIN op 1153 ( update quality_profile "Movies 1080p HQ" )
update "quality_profile_custom_formats" set "custom_format_name" = 'HONE (Bad Name)' where "quality_profile_name" = 'Movies 1080p HQ' and "custom_format_name" = 'Bad Naming Scheme' and "arr_type" = 'radarr' and "score" = -10000;
-- --- END op 1153

-- --- BEGIN op 1154 ( update quality_profile "Movies 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'HONE (Bad Name)' where "quality_profile_name" = 'Movies 1080p' and "custom_format_name" = 'Bad Naming Scheme' and "arr_type" = 'radarr' and "score" = -10000;
-- --- END op 1154
