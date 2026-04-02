-- @operation: export
-- @entity: batch
-- @name: Added Dumpstarr LQ to All/Updated B&W per TRaSH
-- @exportedAt: 2026-04-02T01:03:25.316Z
-- @opIds: 2138, 2139, 2140, 2141, 2142, 2143, 2144, 2145, 2146, 2147, 2148, 2149, 2150, 2151, 2152, 2153, 2154, 2155, 2156, 2157, 2158, 2159, 2160, 2161, 2162, 2163, 2164, 2165, 2166, 2167, 2168, 2175

-- --- BEGIN op 2138 ( create custom_format "Dumpstarr Banned Groups" )
insert into "custom_formats" ("name", "description") values ('Dumpstarr Banned Groups', '');
-- --- END op 2138

-- --- BEGIN op 2139 ( update custom_format "Dumpstarr Banned Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dumpstarr Banned Groups', 'Dumpstarr Banned Groups', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dumpstarr Banned Groups', 'Dumpstarr Banned Groups', 'Dumpstarr Banned Groups');
-- --- END op 2139

-- --- BEGIN op 2140 ( create custom_format "Dumpstarr Banned Release Title" )
insert into "custom_formats" ("name", "description") values ('Dumpstarr Banned Release Title', '');
-- --- END op 2140

-- --- BEGIN op 2141 ( update custom_format "Dumpstarr Banned Release Title" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dumpstarr Banned Release Title', 'Dumpstarr Banned Release Title', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dumpstarr Banned Release Title', 'Dumpstarr Banned Release Title', 'Dumpstarr Banned Groups Release Title');
-- --- END op 2141

-- --- BEGIN op 2142 ( update custom_format "Dumpstarr Banned Release Title" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Dumpstarr Banned Release Title'
	  AND name = 'Dumpstarr Banned Release Title'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2142

-- --- BEGIN op 2143 ( update custom_format "Dumpstarr Banned Release Title" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dumpstarr Banned Release Title', 'Dumpstarr Banned Groups Release Title', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dumpstarr Banned Release Title', 'Dumpstarr Banned Groups Release Title', 'Dumpstarr Banned Groups Release Title');
-- --- END op 2143

-- --- BEGIN op 2144 ( update custom_format "Dumpstarr Banned Groups Release Title" )
update "custom_formats" set "name" = 'Dumpstarr Banned Groups Release Title' where "name" = 'Dumpstarr Banned Release Title';
-- --- END op 2144

-- --- BEGIN op 2145 ( update custom_format "Dumpstarr Banned" )
update "custom_formats" set "name" = 'Dumpstarr Banned' where "name" = 'Dumpstarr Banned Groups';
-- --- END op 2145

-- --- BEGIN op 2146 ( update custom_format "Dumpstarr Banned Release Title" )
update "custom_formats" set "name" = 'Dumpstarr Banned Release Title' where "name" = 'Dumpstarr Banned Groups Release Title';
-- --- END op 2146

-- --- BEGIN op 2147 ( update custom_format "Dumpstarr Banned RT" )
update "custom_formats" set "name" = 'Dumpstarr Banned RT' where "name" = 'Dumpstarr Banned Release Title';
-- --- END op 2147

-- --- BEGIN op 2148 ( update quality_profile "Movies 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p', 'Dumpstarr Banned', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p'
    AND custom_format_name = 'Dumpstarr Banned'
    AND arr_type = 'radarr'
);
-- --- END op 2148

-- --- BEGIN op 2149 ( update quality_profile "Movies 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p', 'Dumpstarr Banned RT', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p'
    AND custom_format_name = 'Dumpstarr Banned RT'
    AND arr_type = 'radarr'
);
-- --- END op 2149

-- --- BEGIN op 2150 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'Dumpstarr Banned', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'Dumpstarr Banned'
    AND arr_type = 'radarr'
);
-- --- END op 2150

-- --- BEGIN op 2151 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'Dumpstarr Banned RT', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'Dumpstarr Banned RT'
    AND arr_type = 'radarr'
);
-- --- END op 2151

-- --- BEGIN op 2152 ( update quality_profile "Movies 2160p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p', 'Dumpstarr Banned', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p'
    AND custom_format_name = 'Dumpstarr Banned'
    AND arr_type = 'radarr'
);
-- --- END op 2152

-- --- BEGIN op 2153 ( update quality_profile "Movies 2160p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p', 'Dumpstarr Banned RT', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p'
    AND custom_format_name = 'Dumpstarr Banned RT'
    AND arr_type = 'radarr'
);
-- --- END op 2153

-- --- BEGIN op 2154 ( update quality_profile "Movies 2160p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p HQ', 'Dumpstarr Banned', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND custom_format_name = 'Dumpstarr Banned'
    AND arr_type = 'radarr'
);
-- --- END op 2154

-- --- BEGIN op 2155 ( update quality_profile "Movies 2160p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p HQ', 'Dumpstarr Banned RT', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND custom_format_name = 'Dumpstarr Banned RT'
    AND arr_type = 'radarr'
);
-- --- END op 2155

-- --- BEGIN op 2156 ( update quality_profile "TV 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV 1080p', 'Dumpstarr Banned', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV 1080p'
    AND custom_format_name = 'Dumpstarr Banned'
    AND arr_type = 'sonarr'
);
-- --- END op 2156

-- --- BEGIN op 2157 ( update quality_profile "TV 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV 1080p', 'Dumpstarr Banned RT', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV 1080p'
    AND custom_format_name = 'Dumpstarr Banned RT'
    AND arr_type = 'sonarr'
);
-- --- END op 2157

-- --- BEGIN op 2158 ( update quality_profile "TV 2160p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV 2160p', 'Dumpstarr Banned', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV 2160p'
    AND custom_format_name = 'Dumpstarr Banned'
    AND arr_type = 'sonarr'
);
-- --- END op 2158

-- --- BEGIN op 2159 ( update quality_profile "TV 2160p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV 2160p', 'Dumpstarr Banned RT', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV 2160p'
    AND custom_format_name = 'Dumpstarr Banned RT'
    AND arr_type = 'sonarr'
);
-- --- END op 2159

-- --- BEGIN op 2160 ( update custom_format "TRaSH LQ Release Title" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'TRaSH LQ Release Title'
	  AND name = 'Dumpstarr Banned Groups (Title)'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2160

-- --- BEGIN op 2161 ( update custom_format "Dumpstarr LQ" )
update "custom_formats" set "name" = 'Dumpstarr LQ' where "name" = 'Dumpstarr Banned';
-- --- END op 2161

-- --- BEGIN op 2162 ( update quality_profile "Movies 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Dumpstarr LQ' where "quality_profile_name" = 'Movies 1080p' and "custom_format_name" = 'Dumpstarr Banned' and "arr_type" = 'radarr' and "score" = -10000;
-- --- END op 2162

-- --- BEGIN op 2163 ( update quality_profile "Movies 1080p HQ" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Dumpstarr LQ' where "quality_profile_name" = 'Movies 1080p HQ' and "custom_format_name" = 'Dumpstarr Banned' and "arr_type" = 'radarr' and "score" = -10000;
-- --- END op 2163

-- --- BEGIN op 2164 ( update quality_profile "Movies 2160p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Dumpstarr LQ' where "quality_profile_name" = 'Movies 2160p' and "custom_format_name" = 'Dumpstarr Banned' and "arr_type" = 'radarr' and "score" = -10000;
-- --- END op 2164

-- --- BEGIN op 2165 ( update quality_profile "Movies 2160p HQ" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Dumpstarr LQ' where "quality_profile_name" = 'Movies 2160p HQ' and "custom_format_name" = 'Dumpstarr Banned' and "arr_type" = 'radarr' and "score" = -10000;
-- --- END op 2165

-- --- BEGIN op 2166 ( update quality_profile "TV 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Dumpstarr LQ' where "quality_profile_name" = 'TV 1080p' and "custom_format_name" = 'Dumpstarr Banned' and "arr_type" = 'sonarr' and "score" = -10000;
-- --- END op 2166

-- --- BEGIN op 2167 ( update quality_profile "TV 2160p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Dumpstarr LQ' where "quality_profile_name" = 'TV 2160p' and "custom_format_name" = 'Dumpstarr Banned' and "arr_type" = 'sonarr' and "score" = -10000;
-- --- END op 2167

-- --- BEGIN op 2168 ( update custom_format "Dumpstarr LQ Release Title" )
update "custom_formats" set "name" = 'Dumpstarr LQ Release Title' where "name" = 'Dumpstarr Banned RT';
-- --- END op 2168

-- --- BEGIN op 2175 ( update regular_expression "B&W" )
update "regular_expressions" set "pattern" = '(?<=\b[12]\d{3}\b).*\b((B(lack)?[ ._-]?(out|(and|[n&])?[ ._-]?(W(hite)?|Chrome))))\b(?!$)' where "name" = 'B&W' and "pattern" = '(?<=\b[12]\d{3}\b).*\b((B(lack)?[ ._-]?(out|(and|[n&])[ ._-]?(W(hite)?|Chrome))))\b(?!$)';
-- --- END op 2175
