-- @operation: export
-- @entity: batch
-- @name: Added Kitsune CF to TV
-- @exportedAt: 2026-06-15T14:52:37.268Z
-- @opIds: 1702, 1709, 1710, 1711, 1712, 1713, 1714, 1715, 1716, 1717, 1718

-- --- BEGIN op 1702 ( create regular_expression "Kitsune" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Kitsune', '^(Kitsune)$', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Kitsune', 'Release Group');
-- --- END op 1702

-- --- BEGIN op 1709 ( delete custom_format "Kitsune" )
delete from "custom_formats" where "name" = 'Kitsune';
-- --- END op 1709

-- --- BEGIN op 1710 ( create custom_format "Kitsune" )
insert into "custom_formats" ("name", "description") values ('Kitsune', '');
-- --- END op 1710

-- --- BEGIN op 1711 ( update custom_format "Kitsune" )
insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('Kitsune', 'Release Group');
-- --- END op 1711

-- --- BEGIN op 1712 ( update custom_format "Kitsune" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Kitsune', 'Kitsune', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Kitsune', 'Kitsune', 'Kitsune');
-- --- END op 1712

-- --- BEGIN op 1713 ( update quality_profile "TV 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV 1080p', 'Kitsune', 'sonarr', 2
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV 1080p'
    AND custom_format_name = 'Kitsune'
    AND arr_type = 'sonarr'
);
-- --- END op 1713

-- --- BEGIN op 1714 ( update quality_profile "TV 1080p" )
UPDATE quality_profile_custom_formats
SET score = 3
WHERE quality_profile_name = 'TV 1080p'
  AND custom_format_name = 'Kitsune'
  AND arr_type = 'sonarr'
  AND score = 2;
-- --- END op 1714

-- --- BEGIN op 1715 ( update quality_profile "TV 2160p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV 2160p', 'Kitsune', 'sonarr', 3
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV 2160p'
    AND custom_format_name = 'Kitsune'
    AND arr_type = 'sonarr'
);
-- --- END op 1715

-- --- BEGIN op 1716 ( create test_entity "Rick and Morty" )
insert into "test_entities" ("type", "tmdb_id", "title", "year", "poster_path") values ('series', 60625, 'Rick and Morty', 2013, '/owhkU6KRqdXoUQpjV8uyZGPtX58.jpg');
-- --- END op 1716

-- --- BEGIN op 1717 ( create test_release "	Rick and Morty S09E04 A Ricker Runs Through It 10" )
insert into "test_releases" ("entity_type", "entity_tmdb_id", "title", "size_bytes", "languages", "indexers", "flags") values ('series', 60625, '	Rick and Morty S09E04 A Ricker Runs Through It 1080p AMZN WEB-DL DDP5 1 H 264-Kitsune', 858993459, '["English"]', '[]', '[]');
-- --- END op 1717

-- --- BEGIN op 1718 ( create test_release "Rick.and.Morty.S09E04.A.Ricker.Runs.Through.It.108" )
insert into "test_releases" ("entity_type", "entity_tmdb_id", "title", "size_bytes", "languages", "indexers", "flags") values ('series', 60625, 'Rick.and.Morty.S09E04.A.Ricker.Runs.Through.It.1080p.AMZN.WEB-DL.DDP5.1.H.264-NTb', 858993459, '["English"]', '[]', '[]');
-- --- END op 1718
