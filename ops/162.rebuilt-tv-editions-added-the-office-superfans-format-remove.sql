-- @operation: export
-- @entity: batch
-- @name: Rebuilt TV Editions/Added The Office Superfans format/Removed TV Editions from TV/Added Uncensored to TV
-- @exportedAt: 2026-03-28T18:06:46.040Z
-- @opIds: 1407, 1408, 1409, 1410, 1411, 1414, 1415, 1416, 1417, 1418, 1419, 1420, 1421, 1422, 1423, 1424, 1425, 1426, 1427, 1428, 1429, 1430

-- --- BEGIN op 1407 ( update quality_profile "TV 1080p" )
update "quality_profiles" set "upgrade_until_score" = 5000 where "name" = 'TV 1080p' and "upgrade_until_score" = 10000;
-- --- END op 1407

-- --- BEGIN op 1408 ( update quality_profile "TV 2160p" )
update "quality_profiles" set "upgrade_until_score" = 5000 where "name" = 'TV 2160p' and "upgrade_until_score" = 10000;
-- --- END op 1408

-- --- BEGIN op 1409 ( update custom_format "TVED" )
update "custom_formats" set "description" = 'Matches TV epsiodes that are marked as uncensored, extended, etc.' where "name" = 'TV Editions' and "description" = '';
-- --- END op 1409

-- --- BEGIN op 1410 ( update custom_format "TVED" )
update "custom_formats" set "include_in_rename" = 1 where "name" = 'TV Editions' and "include_in_rename" = 0;
-- --- END op 1410

-- --- BEGIN op 1411 ( update custom_format "TVED" )
update "custom_formats" set "name" = 'TVED' where "name" = 'TV Editions';
-- --- END op 1411

-- --- BEGIN op 1414 ( update custom_format "TVED" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'TVED'
	  AND name = 'Special Edition'
	  AND type = 'release_title'
	  AND arr_type = 'sonarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 1414

-- --- BEGIN op 1415 ( update custom_format "TVED" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TVED', 'TV Edition', 'release_title', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('TVED', 'TV Edition', 'Special Edition');
-- --- END op 1415

-- --- BEGIN op 1416 ( update regular_expression "Special Edition" )
update "regular_expressions" set "pattern" = '(?<!^)\b(extended|uncut|directors|special|unrated|uncensored|cut|version|(?<!{)edition)(\b|\d)' where "name" = 'Special Edition' and "pattern" = '(?<!^)\b(extended|superfan|uncut|directors|special|unrated|uncensored|cut|version|(?<!{)edition)(\b|\d)';
-- --- END op 1416

-- --- BEGIN op 1417 ( update regular_expression "TV Editions" )
update "regular_expressions" set "pattern" = '(?<!^|{)\b(extended|special|uncensored)(\b|\d)' where "name" = 'TV Editions' and "pattern" = '(?<!^|{)\b(extended|special|uncensored|superfan)(\b|\d)';
-- --- END op 1417

-- --- BEGIN op 1418 ( create regular_expression "The Office Superfan Episodes" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('The Office Superfan Episodes', '(?<!^|{)\b(extended|special|uncensored)(\b|\d)', 'Covers special versions of TV shows like The Office Superfan Episodes as well as uncensored, etc.', NULL);

insert into "tags" ("name") values ('Sonarr') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('The Office Superfan Episodes', 'Sonarr');

insert into "tags" ("name") values ('Versions') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('The Office Superfan Episodes', 'Versions');
-- --- END op 1418

-- --- BEGIN op 1419 ( update regular_expression "The Office Superfan Episodes" )
update "regular_expressions" set "pattern" = '(?<!^|{)\b(superfan)(\b|\d)', "description" = 'Covers special versions of TV shows like The Office Superfan Episodes.' where "name" = 'The Office Superfan Episodes' and "pattern" = '(?<!^|{)\b(extended|special|uncensored)(\b|\d)' and "description" = 'Covers special versions of TV shows like The Office Superfan Episodes as well as uncensored, etc.';
-- --- END op 1419

-- --- BEGIN op 1420 ( update regular_expression "TV Editions" )
update "regular_expressions" set "description" = 'Covers special versions of TV shows like uncensored, etc.' where "name" = 'TV Editions' and "description" = 'Covers special versions of TV shows like The Office Superfan Episodes as well as uncensored, etc.';
-- --- END op 1420

-- --- BEGIN op 1421 ( update custom_format "TVED" )
DELETE FROM condition_patterns WHERE custom_format_name = 'TVED' AND condition_name = 'TV Edition' AND regular_expression_name = 'Special Edition';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('TVED', 'TV Edition', 'TV Editions');
-- --- END op 1421

-- --- BEGIN op 1422 ( update custom_format "TVED" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'TVED'
	  AND name = 'TV Edition'
	  AND type = 'release_title'
	  AND arr_type = 'sonarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 1422

-- --- BEGIN op 1423 ( update custom_format "TVED" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TVED', 'Special Edition', 'release_title', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('TVED', 'Special Edition', 'Special Edition');
-- --- END op 1423

-- --- BEGIN op 1424 ( delete regular_expression "TV Editions" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'TV Editions' AND tag_name = 'Sonarr';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'TV Editions' AND tag_name = 'Versions';

delete from "regular_expressions" where "name" = 'TV Editions' and "pattern" = '(?<!^|{)\b(extended|special|uncensored)(\b|\d)';
-- --- END op 1424

-- --- BEGIN op 1425 ( update quality_profile "TV 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 1080p'
  AND custom_format_name = 'TVED'
  AND arr_type = 'sonarr'
  AND score = 125;
-- --- END op 1425

-- --- BEGIN op 1426 ( update quality_profile "TV 2160p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 2160p'
  AND custom_format_name = 'TVED'
  AND arr_type = 'sonarr'
  AND score = 125;
-- --- END op 1426

-- --- BEGIN op 1427 ( update custom_format "Uncensored" )
UPDATE custom_format_conditions
SET arr_type = 'sonarr'
WHERE custom_format_name = 'Uncensored'
  AND name = 'Uncensored'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 1;
-- --- END op 1427

-- --- BEGIN op 1428 ( update custom_format "Uncensored" )
UPDATE custom_format_conditions
SET arr_type = 'all'
WHERE custom_format_name = 'Uncensored'
  AND name = 'Uncensored'
  AND type = 'release_title'
  AND arr_type = 'sonarr'
  AND negate = 0
  AND required = 1;
-- --- END op 1428

-- --- BEGIN op 1429 ( update quality_profile "TV 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV 1080p', 'Uncensored', 'sonarr', 125
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV 1080p'
    AND custom_format_name = 'Uncensored'
    AND arr_type = 'sonarr'
);
-- --- END op 1429

-- --- BEGIN op 1430 ( update quality_profile "TV 2160p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV 2160p', 'Uncensored', 'sonarr', 125
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV 2160p'
    AND custom_format_name = 'Uncensored'
    AND arr_type = 'sonarr'
);
-- --- END op 1430
