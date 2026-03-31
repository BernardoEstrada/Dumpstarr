-- @operation: export
-- @entity: batch
-- @name: Renamed 5.1/7.1
-- @exportedAt: 2026-03-31T04:19:53.576Z
-- @opIds: 1979, 1980, 1981, 1982, 1983, 1984, 1985, 1986, 1987, 1988, 1989, 1990, 1991, 1992, 1993, 1994

-- --- BEGIN op 1979 ( update custom_format "5.1" )
update "custom_formats" set "description" = 'Matches releases with 5.1 surround sound.' where "name" = '5.1 Surround' and "description" = 'Matches releases with 5.1 surround sound. ';
-- --- END op 1979

-- --- BEGIN op 1980 ( update custom_format "5.1" )
update "custom_formats" set "name" = '5.1' where "name" = '5.1 Surround';
-- --- END op 1980

-- --- BEGIN op 1981 ( update quality_profile "LQ 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = '5.1' where "quality_profile_name" = 'LQ 1080p' and "custom_format_name" = '5.1 Surround' and "arr_type" = 'all' and "score" = 1;
-- --- END op 1981

-- --- BEGIN op 1982 ( update quality_profile "Movies 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = '5.1' where "quality_profile_name" = 'Movies 1080p' and "custom_format_name" = '5.1 Surround' and "arr_type" = 'radarr' and "score" = 5;
-- --- END op 1982

-- --- BEGIN op 1983 ( update quality_profile "Movies 2160p" )
update "quality_profile_custom_formats" set "custom_format_name" = '5.1' where "quality_profile_name" = 'Movies 2160p' and "custom_format_name" = '5.1 Surround' and "arr_type" = 'radarr' and "score" = 5;
-- --- END op 1983

-- --- BEGIN op 1984 ( update quality_profile "TV 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = '5.1' where "quality_profile_name" = 'TV 1080p' and "custom_format_name" = '5.1 Surround' and "arr_type" = 'sonarr' and "score" = 5;
-- --- END op 1984

-- --- BEGIN op 1985 ( update quality_profile "TV 2160p" )
update "quality_profile_custom_formats" set "custom_format_name" = '5.1' where "quality_profile_name" = 'TV 2160p' and "custom_format_name" = '5.1 Surround' and "arr_type" = 'sonarr' and "score" = 5;
-- --- END op 1985

-- --- BEGIN op 1986 ( update custom_format "7.1" )
update "custom_formats" set "description" = 'Matches releases with 7.1 surround sound.' where "name" = '7.1 Surround' and "description" = 'Matches releases with 7.1 surround sound. ';
-- --- END op 1986

-- --- BEGIN op 1987 ( update custom_format "7.1" )
update "custom_formats" set "name" = '7.1' where "name" = '7.1 Surround';
-- --- END op 1987

-- --- BEGIN op 1988 ( update quality_profile "LQ 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = '7.1' where "quality_profile_name" = 'LQ 1080p' and "custom_format_name" = '7.1 Surround' and "arr_type" = 'all' and "score" = 2;
-- --- END op 1988

-- --- BEGIN op 1989 ( update quality_profile "Movies 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = '7.1' where "quality_profile_name" = 'Movies 1080p' and "custom_format_name" = '7.1 Surround' and "arr_type" = 'radarr' and "score" = 10;
-- --- END op 1989

-- --- BEGIN op 1990 ( update quality_profile "Movies 2160p" )
update "quality_profile_custom_formats" set "custom_format_name" = '7.1' where "quality_profile_name" = 'Movies 2160p' and "custom_format_name" = '7.1 Surround' and "arr_type" = 'radarr' and "score" = 10;
-- --- END op 1990

-- --- BEGIN op 1991 ( update quality_profile "TV 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = '7.1' where "quality_profile_name" = 'TV 1080p' and "custom_format_name" = '7.1 Surround' and "arr_type" = 'sonarr' and "score" = 10;
-- --- END op 1991

-- --- BEGIN op 1992 ( update quality_profile "TV 2160p" )
update "quality_profile_custom_formats" set "custom_format_name" = '7.1' where "quality_profile_name" = 'TV 2160p' and "custom_format_name" = '7.1 Surround' and "arr_type" = 'sonarr' and "score" = 10;
-- --- END op 1992

-- --- BEGIN op 1993 ( update quality_profile "Movies 2160p HQ" )
update "quality_profile_custom_formats" set "custom_format_name" = '7.1' where "quality_profile_name" = 'Movies 2160p HQ' and "custom_format_name" = '7.1 Surround' and "arr_type" = 'radarr' and "score" = 5;
-- --- END op 1993

-- --- BEGIN op 1994 ( update quality_profile "Movies 1080p HQ" )
update "quality_profile_custom_formats" set "custom_format_name" = '7.1' where "quality_profile_name" = 'Movies 1080p HQ' and "custom_format_name" = '7.1 Surround' and "arr_type" = 'radarr' and "score" = 5;
-- --- END op 1994
