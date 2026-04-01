-- @operation: export
-- @entity: batch
-- @name: Cleaned up TRaSH Tier names and formats
-- @exportedAt: 2026-04-01T15:35:48.617Z
-- @opIds: 2091, 2092, 2093, 2094, 2095, 2096, 2097, 2098, 2099, 2100, 2101, 2102, 2103, 2104, 2105, 2106, 2107, 2108, 2109, 2110, 2111, 2112, 2113, 2114, 2115, 2116, 2117, 2118, 2119, 2120, 2121, 2122, 2123, 2124, 2125, 2126, 2127, 2128, 2129, 2130, 2131, 2132, 2133

-- --- BEGIN op 2091 ( update custom_format "TRaSH 1080p Bluray Tier 03" )
DELETE FROM condition_patterns WHERE custom_format_name = 'TRaSH 1080p Bluray Tier 03' AND condition_name = 'TRaSH 1080p Tier 03' AND regular_expression_name = 'TRaSH HD Bluray Tier 02';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('TRaSH 1080p Bluray Tier 03', 'TRaSH 1080p Tier 03', 'TRaSH HD Bluray Tier 03');
-- --- END op 2091

-- --- BEGIN op 2092 ( update custom_format "TRaSH HD Bluray Tier 01" )
update "custom_formats" set "name" = 'TRaSH HD Bluray Tier 01' where "name" = 'TRaSH 1080p Bluray Tier 01';
-- --- END op 2092

-- --- BEGIN op 2093 ( update quality_profile "Movies 2160p HQ" )
update "quality_profile_custom_formats" set "custom_format_name" = 'TRaSH HD Bluray Tier 01' where "quality_profile_name" = 'Movies 2160p HQ' and "custom_format_name" = 'TRaSH 1080p Bluray Tier 01' and "arr_type" = 'radarr' and "score" = 1500;
-- --- END op 2093

-- --- BEGIN op 2094 ( update quality_profile "Movies 1080p HQ" )
update "quality_profile_custom_formats" set "custom_format_name" = 'TRaSH HD Bluray Tier 01' where "quality_profile_name" = 'Movies 1080p HQ' and "custom_format_name" = 'TRaSH 1080p Bluray Tier 01' and "arr_type" = 'radarr' and "score" = 1500;
-- --- END op 2094

-- --- BEGIN op 2095 ( update quality_profile "Movies 2160p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'TRaSH HD Bluray Tier 01' where "quality_profile_name" = 'Movies 2160p' and "custom_format_name" = 'TRaSH 1080p Bluray Tier 01' and "arr_type" = 'radarr' and "score" = 1700;
-- --- END op 2095

-- --- BEGIN op 2096 ( update quality_profile "Movies 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'TRaSH HD Bluray Tier 01' where "quality_profile_name" = 'Movies 1080p' and "custom_format_name" = 'TRaSH 1080p Bluray Tier 01' and "arr_type" = 'radarr' and "score" = 1700;
-- --- END op 2096

-- --- BEGIN op 2097 ( update quality_profile "TV 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'TRaSH HD Bluray Tier 01' where "quality_profile_name" = 'TV 1080p' and "custom_format_name" = 'TRaSH 1080p Bluray Tier 01' and "arr_type" = 'sonarr' and "score" = 1500;
-- --- END op 2097

-- --- BEGIN op 2098 ( update quality_profile "TV 2160p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'TRaSH HD Bluray Tier 01' where "quality_profile_name" = 'TV 2160p' and "custom_format_name" = 'TRaSH 1080p Bluray Tier 01' and "arr_type" = 'sonarr' and "score" = 1300;
-- --- END op 2098

-- --- BEGIN op 2099 ( update custom_format "TRaSH HD Bluray Tier 01" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'TRaSH HD Bluray Tier 01'
	  AND name = '1080p'
	  AND type = 'resolution'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 1;
-- --- END op 2099

-- --- BEGIN op 2100 ( update custom_format "TRaSH HD Bluray Tier 01" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TRaSH HD Bluray Tier 01', 'Not 2160p', 'resolution', 'all', 1, 1);

INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('TRaSH HD Bluray Tier 01', 'Not 2160p', '2160p');
-- --- END op 2100

-- --- BEGIN op 2101 ( update custom_format "TRaSH HD Bluray Tier 02" )
update "custom_formats" set "name" = 'TRaSH HD Bluray Tier 02' where "name" = 'TRaSH 1080p Bluray Tier 02';
-- --- END op 2101

-- --- BEGIN op 2102 ( update quality_profile "Movies 2160p HQ" )
update "quality_profile_custom_formats" set "custom_format_name" = 'TRaSH HD Bluray Tier 02' where "quality_profile_name" = 'Movies 2160p HQ' and "custom_format_name" = 'TRaSH 1080p Bluray Tier 02' and "arr_type" = 'radarr' and "score" = 1450;
-- --- END op 2102

-- --- BEGIN op 2103 ( update quality_profile "Movies 1080p HQ" )
update "quality_profile_custom_formats" set "custom_format_name" = 'TRaSH HD Bluray Tier 02' where "quality_profile_name" = 'Movies 1080p HQ' and "custom_format_name" = 'TRaSH 1080p Bluray Tier 02' and "arr_type" = 'radarr' and "score" = 1450;
-- --- END op 2103

-- --- BEGIN op 2104 ( update quality_profile "Movies 2160p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'TRaSH HD Bluray Tier 02' where "quality_profile_name" = 'Movies 2160p' and "custom_format_name" = 'TRaSH 1080p Bluray Tier 02' and "arr_type" = 'radarr' and "score" = 1650;
-- --- END op 2104

-- --- BEGIN op 2105 ( update quality_profile "Movies 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'TRaSH HD Bluray Tier 02' where "quality_profile_name" = 'Movies 1080p' and "custom_format_name" = 'TRaSH 1080p Bluray Tier 02' and "arr_type" = 'radarr' and "score" = 1650;
-- --- END op 2105

-- --- BEGIN op 2106 ( update quality_profile "TV 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'TRaSH HD Bluray Tier 02' where "quality_profile_name" = 'TV 1080p' and "custom_format_name" = 'TRaSH 1080p Bluray Tier 02' and "arr_type" = 'sonarr' and "score" = 1450;
-- --- END op 2106

-- --- BEGIN op 2107 ( update quality_profile "TV 2160p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'TRaSH HD Bluray Tier 02' where "quality_profile_name" = 'TV 2160p' and "custom_format_name" = 'TRaSH 1080p Bluray Tier 02' and "arr_type" = 'sonarr' and "score" = 1250;
-- --- END op 2107

-- --- BEGIN op 2108 ( update custom_format "TRaSH HD Bluray Tier 02" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'TRaSH HD Bluray Tier 02'
	  AND name = '1080p'
	  AND type = 'resolution'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 1;
-- --- END op 2108

-- --- BEGIN op 2109 ( update custom_format "TRaSH HD Bluray Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TRaSH HD Bluray Tier 02', 'Not 2160p', 'resolution', 'all', 1, 1);

INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('TRaSH HD Bluray Tier 02', 'Not 2160p', '2160p');
-- --- END op 2109

-- --- BEGIN op 2110 ( update custom_format "TRaSH HD Bluray Tier 03" )
update "custom_formats" set "name" = 'TRaSH HD Bluray Tier 03' where "name" = 'TRaSH 1080p Bluray Tier 03';
-- --- END op 2110

-- --- BEGIN op 2111 ( update quality_profile "Movies 2160p HQ" )
update "quality_profile_custom_formats" set "custom_format_name" = 'TRaSH HD Bluray Tier 03' where "quality_profile_name" = 'Movies 2160p HQ' and "custom_format_name" = 'TRaSH 1080p Bluray Tier 03' and "arr_type" = 'radarr' and "score" = 1400;
-- --- END op 2111

-- --- BEGIN op 2112 ( update quality_profile "Movies 1080p HQ" )
update "quality_profile_custom_formats" set "custom_format_name" = 'TRaSH HD Bluray Tier 03' where "quality_profile_name" = 'Movies 1080p HQ' and "custom_format_name" = 'TRaSH 1080p Bluray Tier 03' and "arr_type" = 'radarr' and "score" = 1400;
-- --- END op 2112

-- --- BEGIN op 2113 ( update quality_profile "Movies 2160p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'TRaSH HD Bluray Tier 03' where "quality_profile_name" = 'Movies 2160p' and "custom_format_name" = 'TRaSH 1080p Bluray Tier 03' and "arr_type" = 'radarr' and "score" = 1600;
-- --- END op 2113

-- --- BEGIN op 2114 ( update quality_profile "Movies 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'TRaSH HD Bluray Tier 03' where "quality_profile_name" = 'Movies 1080p' and "custom_format_name" = 'TRaSH 1080p Bluray Tier 03' and "arr_type" = 'radarr' and "score" = 1600;
-- --- END op 2114

-- --- BEGIN op 2115 ( update quality_profile "TV 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'TRaSH HD Bluray Tier 03' where "quality_profile_name" = 'TV 1080p' and "custom_format_name" = 'TRaSH 1080p Bluray Tier 03' and "arr_type" = 'sonarr' and "score" = 1400;
-- --- END op 2115

-- --- BEGIN op 2116 ( update quality_profile "TV 2160p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'TRaSH HD Bluray Tier 03' where "quality_profile_name" = 'TV 2160p' and "custom_format_name" = 'TRaSH 1080p Bluray Tier 03' and "arr_type" = 'sonarr' and "score" = 1200;
-- --- END op 2116

-- --- BEGIN op 2117 ( update custom_format "TRaSH HD Bluray Tier 03" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'TRaSH HD Bluray Tier 03'
	  AND name = '1080p'
	  AND type = 'resolution'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 1;
-- --- END op 2117

-- --- BEGIN op 2118 ( update custom_format "TRaSH HD Bluray Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TRaSH HD Bluray Tier 03', 'Not 2160p', 'resolution', 'all', 1, 1);

INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('TRaSH HD Bluray Tier 03', 'Not 2160p', '2160p');
-- --- END op 2118

-- --- BEGIN op 2119 ( update custom_format "TRaSH UHD Bluray Tier 01" )
update "custom_formats" set "name" = 'TRaSH UHD Bluray Tier 01' where "name" = 'TRaSH 2160p Bluray Tier 01';
-- --- END op 2119

-- --- BEGIN op 2120 ( update quality_profile "Movies 2160p HQ" )
update "quality_profile_custom_formats" set "custom_format_name" = 'TRaSH UHD Bluray Tier 01' where "quality_profile_name" = 'Movies 2160p HQ' and "custom_format_name" = 'TRaSH 2160p Bluray Tier 01' and "arr_type" = 'radarr' and "score" = 1500;
-- --- END op 2120

-- --- BEGIN op 2121 ( update quality_profile "Movies 2160p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'TRaSH UHD Bluray Tier 01' where "quality_profile_name" = 'Movies 2160p' and "custom_format_name" = 'TRaSH 2160p Bluray Tier 01' and "arr_type" = 'radarr' and "score" = 1900;
-- --- END op 2121

-- --- BEGIN op 2122 ( update quality_profile "Movies 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'TRaSH UHD Bluray Tier 01' where "quality_profile_name" = 'Movies 1080p' and "custom_format_name" = 'TRaSH 2160p Bluray Tier 01' and "arr_type" = 'radarr' and "score" = 1900;
-- --- END op 2122

-- --- BEGIN op 2123 ( update quality_profile "TV 2160p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'TRaSH UHD Bluray Tier 01' where "quality_profile_name" = 'TV 2160p' and "custom_format_name" = 'TRaSH 2160p Bluray Tier 01' and "arr_type" = 'sonarr' and "score" = 1500;
-- --- END op 2123

-- --- BEGIN op 2124 ( update custom_format "TRaSH UHD Bluray Tier 02" )
update "custom_formats" set "name" = 'TRaSH UHD Bluray Tier 02' where "name" = 'TRaSH 2160p Bluray Tier 02';
-- --- END op 2124

-- --- BEGIN op 2125 ( update quality_profile "Movies 2160p HQ" )
update "quality_profile_custom_formats" set "custom_format_name" = 'TRaSH UHD Bluray Tier 02' where "quality_profile_name" = 'Movies 2160p HQ' and "custom_format_name" = 'TRaSH 2160p Bluray Tier 02' and "arr_type" = 'radarr' and "score" = 1450;
-- --- END op 2125

-- --- BEGIN op 2126 ( update quality_profile "Movies 2160p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'TRaSH UHD Bluray Tier 02' where "quality_profile_name" = 'Movies 2160p' and "custom_format_name" = 'TRaSH 2160p Bluray Tier 02' and "arr_type" = 'radarr' and "score" = 1850;
-- --- END op 2126

-- --- BEGIN op 2127 ( update quality_profile "Movies 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'TRaSH UHD Bluray Tier 02' where "quality_profile_name" = 'Movies 1080p' and "custom_format_name" = 'TRaSH 2160p Bluray Tier 02' and "arr_type" = 'radarr' and "score" = 1850;
-- --- END op 2127

-- --- BEGIN op 2128 ( update quality_profile "TV 2160p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'TRaSH UHD Bluray Tier 02' where "quality_profile_name" = 'TV 2160p' and "custom_format_name" = 'TRaSH 2160p Bluray Tier 02' and "arr_type" = 'sonarr' and "score" = 1450;
-- --- END op 2128

-- --- BEGIN op 2129 ( update custom_format "TRaSH UHD Bluray Tier 03" )
update "custom_formats" set "name" = 'TRaSH UHD Bluray Tier 03' where "name" = 'TRaSH 2160p Bluray Tier 03';
-- --- END op 2129

-- --- BEGIN op 2130 ( update quality_profile "Movies 2160p HQ" )
update "quality_profile_custom_formats" set "custom_format_name" = 'TRaSH UHD Bluray Tier 03' where "quality_profile_name" = 'Movies 2160p HQ' and "custom_format_name" = 'TRaSH 2160p Bluray Tier 03' and "arr_type" = 'radarr' and "score" = 1400;
-- --- END op 2130

-- --- BEGIN op 2131 ( update quality_profile "Movies 2160p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'TRaSH UHD Bluray Tier 03' where "quality_profile_name" = 'Movies 2160p' and "custom_format_name" = 'TRaSH 2160p Bluray Tier 03' and "arr_type" = 'radarr' and "score" = 1800;
-- --- END op 2131

-- --- BEGIN op 2132 ( update quality_profile "Movies 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'TRaSH UHD Bluray Tier 03' where "quality_profile_name" = 'Movies 1080p' and "custom_format_name" = 'TRaSH 2160p Bluray Tier 03' and "arr_type" = 'radarr' and "score" = 1800;
-- --- END op 2132

-- --- BEGIN op 2133 ( update quality_profile "TV 2160p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'TRaSH UHD Bluray Tier 03' where "quality_profile_name" = 'TV 2160p' and "custom_format_name" = 'TRaSH 2160p Bluray Tier 03' and "arr_type" = 'sonarr' and "score" = 1400;
-- --- END op 2133
