-- @operation: export
-- @entity: batch
-- @name: Re-added SIDCA Tier 03 to Radarr
-- @exportedAt: 2026-06-30T17:12:01.594Z
-- @opIds: 2283, 2284, 2285, 2286, 2287, 2288, 2289, 2290, 2291, 2292, 2293, 2294, 2295, 2296, 2297, 2298, 2299, 2300, 2301, 2302, 2303, 2304, 2305, 2306, 2307, 2308, 2309, 2310, 2311, 2312, 2313, 2314, 2315, 2316, 2317, 2318, 2319, 2320, 2321, 2322, 2323, 2324, 2325, 2326, 2327

-- --- BEGIN op 2283 ( update quality_profile "LQ 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'LQ 1080p'
  AND custom_format_name = 'WEB Tier 01'
  AND arr_type = 'radarr'
  AND score = 3;
-- --- END op 2283

-- --- BEGIN op 2284 ( update quality_profile "LQ 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'LQ 1080p'
  AND custom_format_name = 'WEB Tier 02'
  AND arr_type = 'radarr'
  AND score = 2;
-- --- END op 2284

-- --- BEGIN op 2285 ( update quality_profile "LQ 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'LQ 1080p'
  AND custom_format_name = 'WEB Tier 03'
  AND arr_type = 'radarr'
  AND score = 1;
-- --- END op 2285

-- --- BEGIN op 2286 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', '5.1', 'radarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = '5.1'
    AND arr_type = 'radarr'
);
-- --- END op 2286

-- --- BEGIN op 2287 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', '5.1', 'sonarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = '5.1'
    AND arr_type = 'sonarr'
);
-- --- END op 2287

-- --- BEGIN op 2288 ( update quality_profile "LQ 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'LQ 1080p'
  AND custom_format_name = '5.1'
  AND arr_type = 'all'
  AND score = 1;
-- --- END op 2288

-- --- BEGIN op 2289 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', '7.1', 'radarr', 2
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = '7.1'
    AND arr_type = 'radarr'
);
-- --- END op 2289

-- --- BEGIN op 2290 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', '7.1', 'sonarr', 2
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = '7.1'
    AND arr_type = 'sonarr'
);
-- --- END op 2290

-- --- BEGIN op 2291 ( update quality_profile "LQ 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'LQ 1080p'
  AND custom_format_name = '7.1'
  AND arr_type = 'all'
  AND score = 2;
-- --- END op 2291

-- --- BEGIN op 2292 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'Dolby Digital +', 'radarr', 2
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'Dolby Digital +'
    AND arr_type = 'radarr'
);
-- --- END op 2292

-- --- BEGIN op 2293 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'Dolby Digital +', 'sonarr', 2
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'Dolby Digital +'
    AND arr_type = 'sonarr'
);
-- --- END op 2293

-- --- BEGIN op 2294 ( update quality_profile "LQ 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'LQ 1080p'
  AND custom_format_name = 'Dolby Digital +'
  AND arr_type = 'all'
  AND score = 2;
-- --- END op 2294

-- --- BEGIN op 2295 ( update quality_profile "LQ 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'LQ 1080p'
  AND custom_format_name = '5.1'
  AND arr_type = 'radarr'
  AND score = 1;
-- --- END op 2295

-- --- BEGIN op 2296 ( update quality_profile "LQ 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'LQ 1080p'
  AND custom_format_name = '5.1'
  AND arr_type = 'sonarr'
  AND score = 1;
-- --- END op 2296

-- --- BEGIN op 2297 ( update quality_profile "LQ 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'LQ 1080p'
  AND custom_format_name = '7.1'
  AND arr_type = 'radarr'
  AND score = 2;
-- --- END op 2297

-- --- BEGIN op 2298 ( update quality_profile "LQ 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'LQ 1080p'
  AND custom_format_name = '7.1'
  AND arr_type = 'sonarr'
  AND score = 2;
-- --- END op 2298

-- --- BEGIN op 2299 ( update quality_profile "LQ 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'LQ 1080p'
  AND custom_format_name = 'Dolby Digital +'
  AND arr_type = 'radarr'
  AND score = 2;
-- --- END op 2299

-- --- BEGIN op 2300 ( update quality_profile "LQ 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'LQ 1080p'
  AND custom_format_name = 'Dolby Digital +'
  AND arr_type = 'sonarr'
  AND score = 2;
-- --- END op 2300

-- --- BEGIN op 2301 ( update quality_profile "LQ 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'LQ 1080p'
  AND custom_format_name = 'x265 (HD)'
  AND arr_type = 'radarr'
  AND score = 25;
-- --- END op 2301

-- --- BEGIN op 2302 ( update quality_profile "LQ 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'LQ 1080p'
  AND custom_format_name = 'x265 (HD)'
  AND arr_type = 'sonarr'
  AND score = 25;
-- --- END op 2302

-- --- BEGIN op 2303 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'Dolby Digital', 'radarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'Dolby Digital'
    AND arr_type = 'radarr'
);
-- --- END op 2303

-- --- BEGIN op 2304 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'Dolby Digital', 'sonarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'Dolby Digital'
    AND arr_type = 'sonarr'
);
-- --- END op 2304

-- --- BEGIN op 2305 ( update quality_profile "LQ 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'LQ 1080p'
  AND custom_format_name = 'Dolby Digital'
  AND arr_type = 'all'
  AND score = 1;
-- --- END op 2305

-- --- BEGIN op 2306 ( update quality_profile "LQ 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'LQ 1080p'
  AND custom_format_name = 'Dolby Digital'
  AND arr_type = 'radarr'
  AND score = 1;
-- --- END op 2306

-- --- BEGIN op 2307 ( update quality_profile "LQ 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'LQ 1080p'
  AND custom_format_name = 'Dolby Digital'
  AND arr_type = 'sonarr'
  AND score = 1;
-- --- END op 2307

-- --- BEGIN op 2308 ( update quality_profile "LQ 1080p" )
UPDATE quality_profile_custom_formats
SET score = 10
WHERE quality_profile_name = 'LQ 1080p'
  AND custom_format_name = 'SIDCA Tier 01'
  AND arr_type = 'radarr'
  AND score = 150;
-- --- END op 2308

-- --- BEGIN op 2309 ( update quality_profile "LQ 1080p" )
UPDATE quality_profile_custom_formats
SET score = 100
WHERE quality_profile_name = 'LQ 1080p'
  AND custom_format_name = 'SIDCA Tier 01'
  AND arr_type = 'sonarr'
  AND score = 200;
-- --- END op 2309

-- --- BEGIN op 2310 ( update quality_profile "LQ 1080p" )
UPDATE quality_profile_custom_formats
SET score = 5
WHERE quality_profile_name = 'LQ 1080p'
  AND custom_format_name = 'SIDCA Tier 02'
  AND arr_type = 'radarr'
  AND score = 100;
-- --- END op 2310

-- --- BEGIN op 2311 ( update quality_profile "LQ 1080p" )
UPDATE quality_profile_custom_formats
SET score = 50
WHERE quality_profile_name = 'LQ 1080p'
  AND custom_format_name = 'SIDCA Tier 02'
  AND arr_type = 'sonarr'
  AND score = 150;
-- --- END op 2311

-- --- BEGIN op 2312 ( update quality_profile "LQ 1080p" )
UPDATE quality_profile_custom_formats
SET score = 25
WHERE quality_profile_name = 'LQ 1080p'
  AND custom_format_name = 'SIDCA Tier 03'
  AND arr_type = 'sonarr'
  AND score = 100;
-- --- END op 2312

-- --- BEGIN op 2313 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'DTS-HD HRA', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'DTS-HD HRA'
    AND arr_type = 'radarr'
);
-- --- END op 2313

-- --- BEGIN op 2314 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'DTS-HD MA', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'DTS-HD MA'
    AND arr_type = 'radarr'
);
-- --- END op 2314

-- --- BEGIN op 2315 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'DTS-X', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'DTS-X'
    AND arr_type = 'radarr'
);
-- --- END op 2315

-- --- BEGIN op 2316 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'TrueHD', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'TrueHD'
    AND arr_type = 'radarr'
);
-- --- END op 2316

-- --- BEGIN op 2317 ( update quality_profile "LQ 1080p" )
UPDATE quality_profile_custom_formats
SET score = 50
WHERE quality_profile_name = 'LQ 1080p'
  AND custom_format_name = 'SIDCA Tier 01'
  AND arr_type = 'radarr'
  AND score = 10;
-- --- END op 2317

-- --- BEGIN op 2318 ( update quality_profile "LQ 1080p" )
UPDATE quality_profile_custom_formats
SET score = 25
WHERE quality_profile_name = 'LQ 1080p'
  AND custom_format_name = 'SIDCA Tier 02'
  AND arr_type = 'radarr'
  AND score = 5;
-- --- END op 2318

-- --- BEGIN op 2319 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'Atmos', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'Atmos'
    AND arr_type = 'radarr'
);
-- --- END op 2319

-- --- BEGIN op 2320 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'Dolby Vision', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'Dolby Vision'
    AND arr_type = 'radarr'
);
-- --- END op 2320

-- --- BEGIN op 2321 ( create regular_expression "RARBG" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('RARBG', '^(YAWNiX)$', NULL, NULL);

insert into "tags" ("name") values ('LQ') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('RARBG', 'LQ');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('RARBG', 'Release Group');
-- --- END op 2321

-- --- BEGIN op 2322 ( update regular_expression "RARBG" )
update "regular_expressions" set "pattern" = '^(RARBG|RARGB)$' where "name" = 'RARBG' and "pattern" = '^(YAWNiX)$';
-- --- END op 2322

-- --- BEGIN op 2323 ( update custom_format "SIDCA Tier 02" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'SIDCA Tier 02'
	  AND name = 'YIFY'
	  AND type = 'release_group'
	  AND arr_type = 'radarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2323

-- --- BEGIN op 2324 ( update custom_format "SIDCA Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SIDCA Tier 03', 'RARBG', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('SIDCA Tier 03', 'RARBG', 'RARBG');
-- --- END op 2324

-- --- BEGIN op 2325 ( update quality_profile "LQ 1080p" )
UPDATE quality_profile_custom_formats
SET score = 100
WHERE quality_profile_name = 'LQ 1080p'
  AND custom_format_name = 'SIDCA Tier 01'
  AND arr_type = 'radarr'
  AND score = 50;
-- --- END op 2325

-- --- BEGIN op 2326 ( update quality_profile "LQ 1080p" )
UPDATE quality_profile_custom_formats
SET score = 50
WHERE quality_profile_name = 'LQ 1080p'
  AND custom_format_name = 'SIDCA Tier 02'
  AND arr_type = 'radarr'
  AND score = 25;
-- --- END op 2326

-- --- BEGIN op 2327 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'SIDCA Tier 03', 'radarr', 25
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'SIDCA Tier 03'
    AND arr_type = 'radarr'
);
-- --- END op 2327
