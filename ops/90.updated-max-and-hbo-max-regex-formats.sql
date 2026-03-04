-- @operation: export
-- @entity: batch
-- @name: Updated Max and HBO Max regex/formats
-- @exportedAt: 2026-03-04T21:07:52.446Z
-- @opIds: 2286, 2287, 2288, 2289, 2290, 2291, 2292, 2293, 2294, 2295, 2296, 2297, 2298, 2299, 2300, 2301, 2302, 2303, 2304, 2305, 2306

-- --- BEGIN op 2286 ( create custom_format "MAX" )
insert into "custom_formats" ("name", "description") values ('MAX', '');
-- --- END op 2286

-- --- BEGIN op 2287 ( update custom_format "MAX" )
update "custom_formats" set "description" = 'Max, formerly and in some markets still HBO Max, is an American subscription video on-demand over-the-top streaming service. It is a proprietary unit of Warner Bros. Discovery Global Streaming & Interactive Entertainment, which is itself a division of Warner Bros. Discovery (WBD). First launched (as HBO Max) in the United States on May 27, 2020, the service offers content from the libraries of Warner Bros., Discovery Channel, HBO, CNN, Cartoon Network, Adult Swim, Animal Planet, Eurosport, and their related brands.' where "name" = 'MAX' and "description" = '';
-- --- END op 2287

-- --- BEGIN op 2288 ( update custom_format "MAX" )
insert into "tags" ("name") values ('Streaming Service') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('MAX', 'Streaming Service');
-- --- END op 2288

-- --- BEGIN op 2289 ( update custom_format "MAX" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('MAX', 'Max', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('MAX', 'Max', 'Max');
-- --- END op 2289

-- --- BEGIN op 2290 ( update custom_format "MAX" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('MAX', 'Max Rename', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('MAX', 'Max Rename', 'Max Rename');
-- --- END op 2290

-- --- BEGIN op 2291 ( update regular_expression "HBO Max" )
update "regular_expressions" set "pattern" = '\b(hmax|hbom|hbo[ ._-]?max)\b(?=[ ._-]web[ ._-]?(dl|rip)\b)' where "name" = 'HBO Max' and "pattern" = '\b(?:HMAX|HBOM|(?:HBO[ ._-]?MAX)(?=\s*.(?:WEB-?DL|WEBRIP)))\b';
-- --- END op 2291

-- --- BEGIN op 2292 ( create regular_expression "HMAX Rename" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('HMAX Rename', '\[(HMAX)\b|\b(HMAX)\]', NULL, NULL);

insert into "tags" ("name") values ('Streaming Service') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('HMAX Rename', 'Streaming Service');
-- --- END op 2292

-- --- BEGIN op 2293 ( update regular_expression "HBO Max Rename" )
update "regular_expressions" set "name" = 'HBO Max Rename' where "name" = 'HMAX Rename';
-- --- END op 2293

-- --- BEGIN op 2294 ( update regular_expression "HBO Max Rename" )
update "regular_expressions" set "description" = 'HBO Max is an American subscription video-on-demand streaming service that offers a range of original programming and content from WarnerMedia''s vast library, encompassing brands such as Warner Bros., CNN, Cartoon Network, TBS, and Turner Classic Movies. In mid-to-late 2023, HBO Max underwent a rebranding to "Max".' where "name" = 'HBO Max Rename' and "description" is null;
-- --- END op 2294

-- --- BEGIN op 2295 ( update custom_format "HMAX" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'HMAX'
	  AND name = 'MAX'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2295

-- --- BEGIN op 2296 ( update custom_format "HMAX" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'HMAX'
	  AND name = 'MAX Rename'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2296

-- --- BEGIN op 2297 ( update custom_format "HMAX" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HMAX', 'HMAX', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HMAX', 'HMAX', 'HBO Max');
-- --- END op 2297

-- --- BEGIN op 2298 ( update custom_format "HMAX" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HMAX', 'HBO Max Rename', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HMAX', 'HBO Max Rename', 'HBO Max Rename');
-- --- END op 2298

-- --- BEGIN op 2299 ( update custom_format "MAX" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('MAX', 'WEBRip', 'source', 'all', 0, 0);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('MAX', 'WEBRip', 'webrip');
-- --- END op 2299

-- --- BEGIN op 2300 ( update custom_format "MAX" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('MAX', 'WEB-DL', 'source', 'all', 0, 0);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('MAX', 'WEB-DL', 'web_dl');
-- --- END op 2300

-- --- BEGIN op 2301 ( update quality_profile "Movies 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p', 'MAX', 'radarr', 25
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p'
    AND custom_format_name = 'MAX'
    AND arr_type = 'radarr'
);
-- --- END op 2301

-- --- BEGIN op 2302 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'MAX', 'radarr', 25
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'MAX'
    AND arr_type = 'radarr'
);
-- --- END op 2302

-- --- BEGIN op 2303 ( update quality_profile "Movies 2160p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p', 'MAX', 'radarr', 25
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p'
    AND custom_format_name = 'MAX'
    AND arr_type = 'radarr'
);
-- --- END op 2303

-- --- BEGIN op 2304 ( update quality_profile "Movies 2160p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p HQ', 'MAX', 'radarr', 25
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND custom_format_name = 'MAX'
    AND arr_type = 'radarr'
);
-- --- END op 2304

-- --- BEGIN op 2305 ( update quality_profile "TV 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV 1080p', 'MAX', 'sonarr', 75
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV 1080p'
    AND custom_format_name = 'MAX'
    AND arr_type = 'sonarr'
);
-- --- END op 2305

-- --- BEGIN op 2306 ( update quality_profile "TV 2160p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV 2160p', 'MAX', 'sonarr', 75
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV 2160p'
    AND custom_format_name = 'MAX'
    AND arr_type = 'sonarr'
);
-- --- END op 2306
