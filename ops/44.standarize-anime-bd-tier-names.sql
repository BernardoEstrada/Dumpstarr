-- @operation: export
-- @entity: batch
-- @name: Standarize Anime BD Tier names
-- @exportedAt: 2026-03-02T22:14:12.471Z
-- @opIds: 1156, 1157, 1158, 1159, 1160, 1161, 1162, 1163, 1164, 1165, 1166, 1167, 1168, 1169, 1170, 1171

-- --- BEGIN op 1156 ( update custom_format "Anime BD Tier 01" )
update "custom_formats" set "name" = 'Anime BD Tier 01' where "name" = 'Anime BD Tier 1';
-- --- END op 1156

-- --- BEGIN op 1157 ( update quality_profile "Anime 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Anime BD Tier 01' where "quality_profile_name" = 'Anime 1080p' and "custom_format_name" = 'Anime BD Tier 1' and "arr_type" = 'all' and "score" = 1500;
-- --- END op 1157

-- --- BEGIN op 1158 ( update custom_format "Anime BD Tier 02" )
update "custom_formats" set "name" = 'Anime BD Tier 02' where "name" = 'Anime BD Tier 2';
-- --- END op 1158

-- --- BEGIN op 1159 ( update quality_profile "Anime 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Anime BD Tier 02' where "quality_profile_name" = 'Anime 1080p' and "custom_format_name" = 'Anime BD Tier 2' and "arr_type" = 'radarr' and "score" = 800;

update "quality_profile_custom_formats" set "custom_format_name" = 'Anime BD Tier 02' where "quality_profile_name" = 'Anime 1080p' and "custom_format_name" = 'Anime BD Tier 2' and "arr_type" = 'sonarr' and "score" = 800;
-- --- END op 1159

-- --- BEGIN op 1160 ( update custom_format "Anime BD Tier 03" )
update "custom_formats" set "name" = 'Anime BD Tier 03' where "name" = 'Anime BD Tier 3';
-- --- END op 1160

-- --- BEGIN op 1161 ( update quality_profile "Anime 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Anime BD Tier 03' where "quality_profile_name" = 'Anime 1080p' and "custom_format_name" = 'Anime BD Tier 3' and "arr_type" = 'all' and "score" = 1400;
-- --- END op 1161

-- --- BEGIN op 1162 ( update custom_format "Anime BD Tier 04" )
update "custom_formats" set "name" = 'Anime BD Tier 04' where "name" = 'Anime BD Tier 4';
-- --- END op 1162

-- --- BEGIN op 1163 ( update quality_profile "Anime 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Anime BD Tier 04' where "quality_profile_name" = 'Anime 1080p' and "custom_format_name" = 'Anime BD Tier 4' and "arr_type" = 'all' and "score" = 1300;
-- --- END op 1163

-- --- BEGIN op 1164 ( update custom_format "Anime BD Tier 05" )
update "custom_formats" set "name" = 'Anime BD Tier 05' where "name" = 'Anime BD Tier 5';
-- --- END op 1164

-- --- BEGIN op 1165 ( update quality_profile "Anime 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Anime BD Tier 05' where "quality_profile_name" = 'Anime 1080p' and "custom_format_name" = 'Anime BD Tier 5' and "arr_type" = 'all' and "score" = 1200;
-- --- END op 1165

-- --- BEGIN op 1166 ( update custom_format "Anime BD Tier 06" )
update "custom_formats" set "name" = 'Anime BD Tier 06' where "name" = 'Anime BD Tier 6';
-- --- END op 1166

-- --- BEGIN op 1167 ( update quality_profile "Anime 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Anime BD Tier 06' where "quality_profile_name" = 'Anime 1080p' and "custom_format_name" = 'Anime BD Tier 6' and "arr_type" = 'all' and "score" = 1100;
-- --- END op 1167

-- --- BEGIN op 1168 ( update custom_format "Anime BD Tier 07" )
update "custom_formats" set "name" = 'Anime BD Tier 07' where "name" = 'Anime BD Tier 7';
-- --- END op 1168

-- --- BEGIN op 1169 ( update quality_profile "Anime 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Anime BD Tier 07' where "quality_profile_name" = 'Anime 1080p' and "custom_format_name" = 'Anime BD Tier 7' and "arr_type" = 'all' and "score" = 1000;
-- --- END op 1169

-- --- BEGIN op 1170 ( update custom_format "Anime BD Tier 08" )
update "custom_formats" set "name" = 'Anime BD Tier 08' where "name" = 'Anime BD Tier 8';
-- --- END op 1170

-- --- BEGIN op 1171 ( update quality_profile "Anime 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Anime BD Tier 08' where "quality_profile_name" = 'Anime 1080p' and "custom_format_name" = 'Anime BD Tier 8' and "arr_type" = 'all' and "score" = 900;
-- --- END op 1171
