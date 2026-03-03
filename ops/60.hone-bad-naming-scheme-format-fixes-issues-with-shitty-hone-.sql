-- @operation: export
-- @entity: batch
-- @name: HONE Bad Naming Scheme format, fixes issues with shitty HONE naming scheme
-- @exportedAt: 2026-03-03T18:42:01.022Z
-- @opIds: 1451, 1465, 1533, 1534, 1535, 1536, 1537, 1543, 1544, 1545, 1546, 1547, 1548, 1549, 1555, 1556, 1557, 1558

-- --- BEGIN op 1451 ( update quality_profile "Movies 2160p HQ" )
UPDATE quality_profile_custom_formats
SET score = 500
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'Dolby Vision'
  AND arr_type = 'radarr'
  AND score = 1000;
-- --- END op 1451

-- --- BEGIN op 1465 ( update quality_profile "Movies 2160p HQ" )
update "quality_profiles" set "minimum_custom_format_score" = 750 where "name" = 'Movies 2160p HQ' and "minimum_custom_format_score" = 1000;
-- --- END op 1465

-- --- BEGIN op 1533 ( create regular_expression "HONE Bad Naming Scheme" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('HONE Bad Naming Scheme', '(?:[ .]HONE$|HONE-.+)', NULL, NULL);

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('HONE Bad Naming Scheme', 'Banned');
-- --- END op 1533

-- --- BEGIN op 1534 ( create custom_format "Bad Naming Scheme" )
insert into "custom_formats" ("name", "description") values ('Bad Naming Scheme', '');
-- --- END op 1534

-- --- BEGIN op 1535 ( update custom_format "Bad Naming Scheme" )
insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('Bad Naming Scheme', 'Banned');
-- --- END op 1535

-- --- BEGIN op 1536 ( update custom_format "Bad Naming Scheme" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Naming Scheme', 'HONE', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Naming Scheme', 'HONE', 'HONE Bad Naming Scheme');
-- --- END op 1536

-- --- BEGIN op 1537 ( update quality_profile "Movies 2160p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p HQ', 'Bad Naming Scheme', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND custom_format_name = 'Bad Naming Scheme'
    AND arr_type = 'radarr'
);
-- --- END op 1537

-- --- BEGIN op 1543 ( update regular_expression "HONE Bad Naming Scheme" )
update "regular_expressions" set "pattern" = '(?<!-[A-Za-z0-9]+) HONE$|HONE-.+' where "name" = 'HONE Bad Naming Scheme' and "pattern" = '(?:[ .]HONE$|HONE-.+)';
-- --- END op 1543

-- --- BEGIN op 1544 ( update regular_expression "HONE Bad Naming Scheme" )
update "regular_expressions" set "pattern" = 'HONE-(?![A-Za-z0-9]+$).+' where "name" = 'HONE Bad Naming Scheme' and "pattern" = '(?<!-[A-Za-z0-9]+) HONE$|HONE-.+';
-- --- END op 1544

-- --- BEGIN op 1545 ( update regular_expression "HONE Bad Naming Scheme" )
update "regular_expressions" set "pattern" = 'HONE-(?![A-Za-z0-9]+$).+|HONE-(?:REPACK|PROPER|REAL|RERIP)$' where "name" = 'HONE Bad Naming Scheme' and "pattern" = 'HONE-(?![A-Za-z0-9]+$).+';
-- --- END op 1545

-- --- BEGIN op 1546 ( update quality_profile "Movies 2160p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p', 'Bad Naming Scheme', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p'
    AND custom_format_name = 'Bad Naming Scheme'
    AND arr_type = 'radarr'
);
-- --- END op 1546

-- --- BEGIN op 1547 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'Bad Naming Scheme', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'Bad Naming Scheme'
    AND arr_type = 'radarr'
);
-- --- END op 1547

-- --- BEGIN op 1548 ( update quality_profile "Movies 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p', 'Bad Naming Scheme', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p'
    AND custom_format_name = 'Bad Naming Scheme'
    AND arr_type = 'radarr'
);
-- --- END op 1548

-- --- BEGIN op 1549 ( update custom_format "Baseline Groups" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Baseline Groups'
	  AND name = 'Not HONE'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 1
	  AND required = 0;
-- --- END op 1549

-- --- BEGIN op 1555 ( update quality_profile "Movies 2160p HQ" )
UPDATE quality_profile_custom_formats
SET score = 500
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'BHDStudio'
  AND arr_type = 'radarr'
  AND score = 550;
-- --- END op 1555

-- --- BEGIN op 1556 ( update quality_profile "Movies 2160p HQ" )
UPDATE quality_profile_custom_formats
SET score = 550
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'hallowed'
  AND arr_type = 'radarr'
  AND score = 600;
-- --- END op 1556

-- --- BEGIN op 1557 ( update quality_profile "Movies 1080p HQ" )
UPDATE quality_profile_custom_formats
SET score = 500
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND custom_format_name = 'BHDStudio'
  AND arr_type = 'radarr'
  AND score = 550;
-- --- END op 1557

-- --- BEGIN op 1558 ( update quality_profile "Movies 1080p HQ" )
UPDATE quality_profile_custom_formats
SET score = 550
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND custom_format_name = 'hallowed'
  AND arr_type = 'radarr'
  AND score = 600;
-- --- END op 1558
