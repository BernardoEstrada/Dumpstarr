-- @operation: export
-- @entity: batch
-- @name: Add Hybrid Versions to HQ
-- @exportedAt: 2026-06-19T14:05:13.730Z
-- @opIds: 1894, 1895, 1896, 1897, 1898, 1899, 1900, 1901, 1902, 1903, 1904, 1905, 1906

-- --- BEGIN op 1894 ( create regular_expression "Hybrid" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Hybrid', '\bhybrid(\b|\d)', NULL, NULL);
-- --- END op 1894

-- --- BEGIN op 1895 ( update regular_expression "Hybrid" )
insert into "tags" ("name") values ('Version') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Hybrid', 'Version');
-- --- END op 1895

-- --- BEGIN op 1896 ( update regular_expression "Hybrid Versions" )
update "regular_expressions" set "name" = 'Hybrid Versions' where "name" = 'Hybrid';
-- --- END op 1896

-- --- BEGIN op 1897 ( update regular_expression "Hybrid Title" )
update "regular_expressions" set "name" = 'Hybrid Title' where "name" = 'Hybrid Versions';
-- --- END op 1897

-- --- BEGIN op 1898 ( create regular_expression "HYBRID Group" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('HYBRID Group', '\b(HYBRID)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('HYBRID Group', 'Release Group');
-- --- END op 1898

-- --- BEGIN op 1899 ( create custom_format "Hybrid" )
insert into "custom_formats" ("name", "description") values ('Hybrid', '');
-- --- END op 1899

-- --- BEGIN op 1900 ( update custom_format "Hybrid" )
update "custom_formats" set "description" = 'A Hybrid release is a release that combines elements from more than one source to produce the best possible result. For example, the video track may come from one source, such as a Blu-ray disc, while the audio track, subtitles, or additional content come from a different source, such as a streaming service or a different regional release. This approach is used when no single source contains everything needed for the highest quality release, allowing the best available video and audio to be combined into one file.

In general, top tier release groups always try to combine elements from more than one source to produce the best possible result. However, not all release groups mention that their release is a hybrid release.

https://trash-guides.info/Radarr/Radarr-collection-of-custom-formats/#hybrid' where "name" = 'Hybrid' and "description" = '';
-- --- END op 1900

-- --- BEGIN op 1901 ( update custom_format "Hybrid" )
insert into "tags" ("name") values ('Versions') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('Hybrid', 'Versions');
-- --- END op 1901

-- --- BEGIN op 1902 ( update custom_format "Hybrid" )
update "custom_formats" set "include_in_rename" = 1 where "name" = 'Hybrid' and "include_in_rename" = 0;
-- --- END op 1902

-- --- BEGIN op 1903 ( update custom_format "Hybrid" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Hybrid', 'Hybrid', 'release_title', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Hybrid', 'Hybrid', 'Hybrid Title');
-- --- END op 1903

-- --- BEGIN op 1904 ( update custom_format "Hybrid" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Hybrid', 'Not HYBRID Group', 'release_group', 'radarr', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Hybrid', 'Not HYBRID Group', 'HYBRID Group');
-- --- END op 1904

-- --- BEGIN op 1905 ( update quality_profile "Movies 2160p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p HQ', 'Hybrid', 'radarr', 100
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND custom_format_name = 'Hybrid'
    AND arr_type = 'radarr'
);
-- --- END op 1905

-- --- BEGIN op 1906 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'Hybrid', 'radarr', 100
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'Hybrid'
    AND arr_type = 'radarr'
);
-- --- END op 1906
