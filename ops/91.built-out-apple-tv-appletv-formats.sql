-- @operation: export
-- @entity: batch
-- @name: Built out Apple TV/AppleTV+ formats
-- @exportedAt: 2026-03-04T21:11:05.609Z
-- @opIds: 2309, 2310, 2311, 2312, 2313, 2314, 2315, 2316, 2317, 2318, 2319, 2320, 2321, 2322

-- --- BEGIN op 2309 ( create regular_expression "Apple TV" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Apple TV', '\b(ATV)\b', 'Apple TV is Apple Inc.''s video on demand service, offering movies and TV shows that are not Apple Originals.', NULL);

insert into "tags" ("name") values ('Streaming Service') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Apple TV', 'Streaming Service');
-- --- END op 2309

-- --- BEGIN op 2310 ( update custom_format "ATVP" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'ATVP'
	  AND name = 'ATVP Regex'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 1;
-- --- END op 2310

-- --- BEGIN op 2311 ( update custom_format "ATVP" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('ATVP', 'Apple TV+', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('ATVP', 'Apple TV+', 'Apple TV+');
-- --- END op 2311

-- --- BEGIN op 2312 ( create custom_format "ATV" )
insert into "custom_formats" ("name", "description") values ('ATV', '');
-- --- END op 2312

-- --- BEGIN op 2313 ( update custom_format "ATV" )
update "custom_formats" set "description" = 'Matches ''Apple TV+'' WEB-DLs. Negates any encodes.' where "name" = 'ATV' and "description" = '';
-- --- END op 2313

-- --- BEGIN op 2314 ( update custom_format "ATV" )
insert into "tags" ("name") values ('Streaming Service') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('ATV', 'Streaming Service');

insert into "tags" ("name") values ('WEB-DL') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('ATV', 'WEB-DL');
-- --- END op 2314

-- --- BEGIN op 2315 ( update custom_format "ATV" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('ATV', 'Apple TV+', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('ATV', 'Apple TV+', 'Apple TV+');
-- --- END op 2315

-- --- BEGIN op 2316 ( update custom_format "ATV" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('ATV', 'WEB-DL', 'source', 'all', 0, 0);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('ATV', 'WEB-DL', 'web_dl');
-- --- END op 2316

-- --- BEGIN op 2317 ( update custom_format "ATV" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('ATV', 'WEBRip', 'source', 'all', 0, 0);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('ATV', 'WEBRip', 'webrip');
-- --- END op 2317

-- --- BEGIN op 2318 ( update custom_format "ATV" )
update "custom_formats" set "description" = 'Matches ''Apple TV'' WEB-DLs. Negates any encodes.' where "name" = 'ATV' and "description" = 'Matches ''Apple TV+'' WEB-DLs. Negates any encodes.';
-- --- END op 2318

-- --- BEGIN op 2319 ( update custom_format "ATV" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'ATV'
	  AND name = 'Apple TV+'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 1;
-- --- END op 2319

-- --- BEGIN op 2320 ( update custom_format "ATV" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('ATV', 'Apple TV', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('ATV', 'Apple TV', 'Apple TV');
-- --- END op 2320

-- --- BEGIN op 2321 ( update quality_profile "TV 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV 1080p', 'ATV', 'sonarr', 75
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV 1080p'
    AND custom_format_name = 'ATV'
    AND arr_type = 'sonarr'
);
-- --- END op 2321

-- --- BEGIN op 2322 ( update quality_profile "TV 2160p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV 2160p', 'ATV', 'sonarr', 75
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV 2160p'
    AND custom_format_name = 'ATV'
    AND arr_type = 'sonarr'
);
-- --- END op 2322
