-- @operation: export
-- @entity: batch
-- @name: Added Accessibility format and combined AD, ASL, BASL, BSL
-- @exportedAt: 2026-04-26T15:46:57.348Z
-- @opIds: 2720, 2721, 2722, 2723, 2724, 2725, 2726, 2727, 2728, 2729, 2730, 2731, 2732, 2733, 2734, 2735, 2736, 2737, 2738, 2740, 2741, 2742, 2743, 2744, 2745, 2746, 2747, 2748

-- --- BEGIN op 2720 ( create regular_expression "Audio Description" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Audio Description', '\b((FRENCH|MULTi|WiTH|((BA?|A)SL[ ._-]and))[ ._-](AD|Audio[ ._-]Description))\b', 'Audio Description (AD) is an extra narration track that describes key visual details — such as scenery, costumes, and actions — for blind or visually impaired viewers. It makes TV and film content more accessible by explaining what cannot be heard in the main audio.

Some releases include Audio Description, marked as WITH AD or AD. Note: this is not the same as advertisements.', NULL);

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Audio Description', 'Banned');
-- --- END op 2720

-- --- BEGIN op 2721 ( create regular_expression "WiTH ASL" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('WiTH ASL', '\b((WiTH)[ ._-](ASL))\b', 'ASL is a sign language used in the United States and English-speaking Canada. It uses a one-handed alphabet and was heavily influenced by French Sign Language (LSF). ASL relies on spatial organization and facial expressions to convey meaning and grammar.', NULL);

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('WiTH ASL', 'Banned');
-- --- END op 2721

-- --- BEGIN op 2722 ( create regular_expression "BASL" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('BASL', '\b(BASL)\b', 'BASL is a dialect of ASL used primarily by Black Deaf Americans, originating from segregated schools in the South. Compared to mainstream ASL, it uses a larger signing space, more two-handed signs, and greater emotional expression.', NULL);

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('BASL', 'Banned');
-- --- END op 2722

-- --- BEGIN op 2723 ( create regular_expression "BSL" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('BSL', '\b((WiTH)[ ._-](BSL))\b', 'BSL is a sign language used across the United Kingdom. It uses a two-handed alphabet and is part of the BANZSL language family, alongside Australian and New Zealand sign languages. BSL relies on body movement and hand shapes to convey meaning, and often follows a topic-comment sentence structure.', NULL);

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('BSL', 'Banned');
-- --- END op 2723

-- --- BEGIN op 2724 ( update custom_format "Accessibility" )
update "custom_formats" set "description" = 'Targets releases with AD, ASL, BASL, BSL, etc' where "name" = 'ASL' and "description" = 'Targets releases with ASL (American Sign Language) overlays.';
-- --- END op 2724

-- --- BEGIN op 2725 ( update custom_format "Accessibility" )
update "custom_formats" set "name" = 'Accessibility' where "name" = 'ASL';
-- --- END op 2725

-- --- BEGIN op 2726 ( update quality_profile "LQ 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Accessibility' where "quality_profile_name" = 'LQ 1080p' and "custom_format_name" = 'ASL' and "arr_type" = 'all' and "score" = -10000;
-- --- END op 2726

-- --- BEGIN op 2727 ( update quality_profile "Anime 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Accessibility' where "quality_profile_name" = 'Anime 1080p' and "custom_format_name" = 'ASL' and "arr_type" = 'all' and "score" = -10000;
-- --- END op 2727

-- --- BEGIN op 2728 ( update quality_profile "TV 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Accessibility' where "quality_profile_name" = 'TV 1080p' and "custom_format_name" = 'ASL' and "arr_type" = 'sonarr' and "score" = -10000;
-- --- END op 2728

-- --- BEGIN op 2729 ( update quality_profile "TV 2160p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Accessibility' where "quality_profile_name" = 'TV 2160p' and "custom_format_name" = 'ASL' and "arr_type" = 'sonarr' and "score" = -10000;
-- --- END op 2729

-- --- BEGIN op 2730 ( update quality_profile "Movies 2160p HQ" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Accessibility' where "quality_profile_name" = 'Movies 2160p HQ' and "custom_format_name" = 'ASL' and "arr_type" = 'radarr' and "score" = -10000;
-- --- END op 2730

-- --- BEGIN op 2731 ( update quality_profile "Movies 2160p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Accessibility' where "quality_profile_name" = 'Movies 2160p' and "custom_format_name" = 'ASL' and "arr_type" = 'radarr' and "score" = -10000;
-- --- END op 2731

-- --- BEGIN op 2732 ( update quality_profile "Movies 1080p HQ" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Accessibility' where "quality_profile_name" = 'Movies 1080p HQ' and "custom_format_name" = 'ASL' and "arr_type" = 'radarr' and "score" = -10000;
-- --- END op 2732

-- --- BEGIN op 2733 ( update quality_profile "Movies 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Accessibility' where "quality_profile_name" = 'Movies 1080p' and "custom_format_name" = 'ASL' and "arr_type" = 'radarr' and "score" = -10000;
-- --- END op 2733

-- --- BEGIN op 2734 ( update custom_format "Accessibility" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Accessibility', 'BSL', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Accessibility', 'BSL', 'BSL');
-- --- END op 2734

-- --- BEGIN op 2735 ( update custom_format "Accessibility" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Accessibility', 'BASL', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Accessibility', 'BASL', 'BASL');
-- --- END op 2735

-- --- BEGIN op 2736 ( update custom_format "Accessibility" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Accessibility', 'AD', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Accessibility', 'AD', 'Audio Description');
-- --- END op 2736

-- --- BEGIN op 2737 ( update custom_format "Accessibility" )
UPDATE custom_format_conditions
SET required = 0
WHERE custom_format_name = 'Accessibility'
  AND name = 'ASL'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 1;
-- --- END op 2737

-- --- BEGIN op 2738 ( update regular_expression "ASL" )
update "regular_expressions" set "name" = 'ASL' where "name" = 'WiTH ASL';
-- --- END op 2738

-- --- BEGIN op 2740 ( delete regular_expression "American Sign Language" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'American Sign Language' AND tag_name = 'Banned';

delete from "regular_expressions" where "name" = 'American Sign Language' and "pattern" = '\b(ASL|BSL|Audio[ ._-]Description)\b';
-- --- END op 2740

-- --- BEGIN op 2741 ( update regular_expression "American Sign Language" )
update "regular_expressions" set "name" = 'American Sign Language' where "name" = 'ASL';
-- --- END op 2741

-- --- BEGIN op 2742 ( update regular_expression "Black American Sign Language" )
update "regular_expressions" set "name" = 'Black American Sign Language' where "name" = 'BASL';
-- --- END op 2742

-- --- BEGIN op 2743 ( update custom_format "Accessibility" )
update "condition_patterns" set "regular_expression_name" = 'Black American Sign Language' where "custom_format_name" = 'Accessibility' and "condition_name" = 'BASL' and "regular_expression_name" = 'BASL';
-- --- END op 2743

-- --- BEGIN op 2744 ( update regular_expression "British Sign Language" )
update "regular_expressions" set "name" = 'British Sign Language' where "name" = 'BSL';
-- --- END op 2744

-- --- BEGIN op 2745 ( update custom_format "Accessibility" )
update "condition_patterns" set "regular_expression_name" = 'British Sign Language' where "custom_format_name" = 'Accessibility' and "condition_name" = 'BSL' and "regular_expression_name" = 'BSL';
-- --- END op 2745

-- --- BEGIN op 2746 ( update custom_format "Accessibility" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Accessibility', 'ASL', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Accessibility', 'ASL', 'American Sign Language');
-- --- END op 2746

-- --- BEGIN op 2747 ( create test_entity "Sinners" )
insert into "test_entities" ("type", "tmdb_id", "title", "year", "poster_path") values ('movie', 1233413, 'Sinners', 2025, '/705nQHqe4JGdEisrQmVYmXyjs1U.jpg');
-- --- END op 2747

-- --- BEGIN op 2748 ( create test_release "Sinners.2025.with.BASL.2160p.MAX.WEB-DL.TrueHD.7.1" )
insert into "test_releases" ("entity_type", "entity_tmdb_id", "title", "size_bytes", "languages", "indexers", "flags") values ('movie', 1233413, 'Sinners.2025.with.BASL.2160p.MAX.WEB-DL.TrueHD.7.1.Atmos.DV.HDR.H.265-Kitsune', 27487790694, '["English"]', '[]', '[]');
-- --- END op 2748
