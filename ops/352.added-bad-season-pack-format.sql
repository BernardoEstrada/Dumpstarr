-- @operation: export
-- @entity: batch
-- @name: Added Bad Season Pack format
-- @exportedAt: 2026-07-16T14:51:40.891Z
-- @opIds: 3852, 3853, 3854, 3855, 3856, 3857, 3858, 3859, 3860, 3861, 3862, 3863

-- --- BEGIN op 3852 ( create regular_expression "Release Name (Spaces)" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Release Name (Spaces)', '/^[A-Za-z0-9]+\s+[A-Za-z0-9]+\s+[A-Za-z0-9]+/i', 'Targets releases that use spaces in the release name.', NULL);

insert into "tags" ("name") values ('Custom') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Release Name (Spaces)', 'Custom');
-- --- END op 3852

-- --- BEGIN op 3853 ( create custom_format "Bad Season Pack" )
insert into "custom_formats" ("name", "description") values ('Bad Season Pack', '');
-- --- END op 3853

-- --- BEGIN op 3854 ( update custom_format "Bad Season Pack" )
insert into "tags" ("name") values ('Custom') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('Bad Season Pack', 'Custom');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('Bad Season Pack', 'Banned');
-- --- END op 3854

-- --- BEGIN op 3855 ( update custom_format "Bad Season Pack" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Season Pack', 'Season Pack', 'release_type', 'sonarr', 0, 0);

INSERT INTO condition_release_types (custom_format_name, condition_name, release_type) VALUES ('Bad Season Pack', 'Season Pack', 'season_pack');
-- --- END op 3855

-- --- BEGIN op 3856 ( update custom_format "Bad Season Pack" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Season Pack', 'Kitsune', 'release_group', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Season Pack', 'Kitsune', 'Kitsune');
-- --- END op 3856

-- --- BEGIN op 3857 ( update custom_format "Bad Season Pack" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Season Pack', 'Release Name (Spaces)', 'release_title', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Season Pack', 'Release Name (Spaces)', 'Release Name (Spaces)');
-- --- END op 3857

-- --- BEGIN op 3858 ( update quality_profile "TV 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV 1080p', 'Bad Season Pack', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV 1080p'
    AND custom_format_name = 'Bad Season Pack'
    AND arr_type = 'sonarr'
);
-- --- END op 3858

-- --- BEGIN op 3859 ( update regular_expression "Release Name (Spaces)" )
update "regular_expressions" set "pattern" = '^[A-Za-z0-9]+\s+[A-Za-z0-9]+\s+[A-Za-z0-9]+' where "name" = 'Release Name (Spaces)' and "pattern" = '/^[A-Za-z0-9]+\s+[A-Za-z0-9]+\s+[A-Za-z0-9]+/i';
-- --- END op 3859

-- --- BEGIN op 3860 ( update custom_format "Bad Season Pack" )
UPDATE custom_format_conditions
SET required = 1
WHERE custom_format_name = 'Bad Season Pack'
  AND name = 'Release Name (Spaces)'
  AND type = 'release_title'
  AND arr_type = 'sonarr'
  AND negate = 0
  AND required = 0;
-- --- END op 3860

-- --- BEGIN op 3861 ( update custom_format "Bad Season Pack" )
UPDATE custom_format_conditions
SET required = 1
WHERE custom_format_name = 'Bad Season Pack'
  AND name = 'Season Pack'
  AND type = 'release_type'
  AND arr_type = 'sonarr'
  AND negate = 0
  AND required = 0;
-- --- END op 3861

-- --- BEGIN op 3862 ( update custom_format "Bad Source" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Bad Source'
	  AND name = 'Friends S09'
	  AND type = 'release_title'
	  AND arr_type = 'sonarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 3862

-- --- BEGIN op 3863 ( delete regular_expression "Friends S09" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Friends S09' AND tag_name = 'Custom';

delete from "regular_expressions" where "name" = 'Friends S09';
-- --- END op 3863
