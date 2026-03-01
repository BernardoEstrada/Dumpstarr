-- @operation: export
-- @entity: batch
-- @name: Rebuilt TRaSH Anime BD Tier 08
-- @exportedAt: 2026-03-01T22:19:29.125Z
-- @opIds: 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876

-- --- BEGIN op 853 ( create regular_expression "AkihitoSubs" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('AkihitoSubs', '\b(AkihitoSubs)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('AkihitoSubs', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('AkihitoSubs', 'Anime');
-- --- END op 853

-- --- BEGIN op 854 ( create regular_expression "Arukoru" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Arukoru', '\b(Arukoru)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Arukoru', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Arukoru', 'Anime');
-- --- END op 854

-- --- BEGIN op 855 ( create regular_expression "EDGE" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('EDGE', '\[EDGE\]|-EDGE\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('EDGE', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('EDGE', 'Anime');
-- --- END op 855

-- --- BEGIN op 856 ( create regular_expression "EMBER" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('EMBER', '\[EMBER\]|-EMBER\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('EMBER', 'Release Group');
-- --- END op 856

-- --- BEGIN op 857 ( update regular_expression "EMBER" )
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name)
SELECT name, 'Anime' FROM regular_expressions WHERE name IN ('EMBER') LIMIT 1;
-- --- END op 857

-- --- BEGIN op 858 ( create regular_expression "GHOST" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('GHOST', '\[GHOST\]|-GHOST\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('GHOST', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('GHOST', 'Anime');
-- --- END op 858

-- --- BEGIN op 859 ( create regular_expression "Judas" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Judas', '\[Judas\]|-Judas', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Judas', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Judas', 'Anime');
-- --- END op 859

-- --- BEGIN op 860 ( create regular_expression "naiyas" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('naiyas', '\[naiyas\]|-naiyas\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('naiyas', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('naiyas', 'Anime');
-- --- END op 860

-- --- BEGIN op 861 ( create regular_expression "Nep_Blanc" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Nep_Blanc', '\b(Nep[ ._-]Blanc)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Nep_Blanc', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Nep_Blanc', 'Anime');
-- --- END op 861

-- --- BEGIN op 862 ( create regular_expression "Prof" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Prof', '\[Prof\]|-Prof\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Prof', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Prof', 'Anime');
-- --- END op 862

-- --- BEGIN op 863 ( create regular_expression "Shirσ" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Shirσ', '\b(Shirσ)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Shirσ', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Shirσ', 'Anime');
-- --- END op 863

-- --- BEGIN op 864 ( update custom_format "Anime BD Tier 8" )
update "custom_formats" set "name" = 'Anime BD Tier 8' where "name" = 'Anime Tier 8';
-- --- END op 864

-- --- BEGIN op 865 ( update quality_profile "Anime 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Anime BD Tier 8' where "quality_profile_name" = 'Anime 1080p' and "custom_format_name" = 'Anime Tier 8' and "arr_type" = 'all' and "score" = 900;
-- --- END op 865

-- --- BEGIN op 866 ( update custom_format "Anime BD Tier 8" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 8', 'Bluray Remux', 'source', 'sonarr', 0, 0);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('Anime BD Tier 8', 'Bluray Remux', 'bluray_raw');
-- --- END op 866

-- --- BEGIN op 867 ( update custom_format "Anime BD Tier 8" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 8', 'AkihitoSubs', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 8', 'AkihitoSubs', 'AkihitoSubs');
-- --- END op 867

-- --- BEGIN op 868 ( update custom_format "Anime BD Tier 8" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 8', 'Arukoru', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 8', 'Arukoru', 'Arukoru');
-- --- END op 868

-- --- BEGIN op 869 ( update custom_format "Anime BD Tier 8" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 8', 'EDGE', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 8', 'EDGE', 'EDGE');
-- --- END op 869

-- --- BEGIN op 870 ( update custom_format "Anime BD Tier 8" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 8', 'EMBER', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 8', 'EMBER', 'EMBER');
-- --- END op 870

-- --- BEGIN op 871 ( update custom_format "Anime BD Tier 8" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 8', 'GHOST', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 8', 'GHOST', 'GHOST');
-- --- END op 871

-- --- BEGIN op 872 ( update custom_format "Anime BD Tier 8" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 8', 'Judas', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 8', 'Judas', 'Judas');
-- --- END op 872

-- --- BEGIN op 873 ( update custom_format "Anime BD Tier 8" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 8', 'naiyas', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 8', 'naiyas', 'naiyas');
-- --- END op 873

-- --- BEGIN op 874 ( update custom_format "Anime BD Tier 8" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 8', 'Nep_Blanc', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 8', 'Nep_Blanc', 'Nep_Blanc');
-- --- END op 874

-- --- BEGIN op 875 ( update custom_format "Anime BD Tier 8" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 8', 'Prof', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 8', 'Prof', 'Prof');
-- --- END op 875

-- --- BEGIN op 876 ( update custom_format "Anime BD Tier 8" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 8', 'Shiro', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 8', 'Shiro', 'Shirσ');
-- --- END op 876
