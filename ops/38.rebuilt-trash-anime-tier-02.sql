-- @operation: export
-- @entity: batch
-- @name: Rebuilt TRaSH Anime Tier 02
-- @exportedAt: 2026-03-02T04:29:46.713Z
-- @opIds: 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934

-- --- BEGIN op 899 ( update custom_format "Anime WEB Tier 2" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Anime WEB Tier 2'
	  AND name = 'Not Bluray'
	  AND type = 'source'
	  AND arr_type = 'all'
	  AND negate = 1
	  AND required = 0;
-- --- END op 899

-- --- BEGIN op 900 ( update custom_format "Anime WEB Tier 2" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Anime WEB Tier 2'
	  AND name = 'Not DVD'
	  AND type = 'source'
	  AND arr_type = 'all'
	  AND negate = 1
	  AND required = 0;
-- --- END op 900

-- --- BEGIN op 901 ( update custom_format "Anime WEB Tier 2" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime WEB Tier 2', 'WEB-DL', 'source', 'all', 0, 0);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('Anime WEB Tier 2', 'WEB-DL', 'web_dl');
-- --- END op 901

-- --- BEGIN op 902 ( update custom_format "Anime WEB Tier 2" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime WEB Tier 2', 'WEBRip', 'source', 'all', 0, 0);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('Anime WEB Tier 2', 'WEBRip', 'webrip');
-- --- END op 902

-- --- BEGIN op 903 ( create regular_expression "0x539" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('0x539', '\b(0x539)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('0x539', 'Release Group');
-- --- END op 903

-- --- BEGIN op 904 ( create regular_expression "Cyan" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Cyan', '\[Cyan\]|-Cyan\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Cyan', 'Release Group');
-- --- END op 904

-- --- BEGIN op 905 ( create regular_expression "Cytox" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Cytox', '\b(Cytox)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Cytox', 'Release Group');
-- --- END op 905

-- --- BEGIN op 906 ( create regular_expression "Gao" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Gao', '\[Gao\]|-Gao\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Gao', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Gao', 'Anime');
-- --- END op 906

-- --- BEGIN op 907 ( create regular_expression "Half-Baked" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Half-Baked', '\b(Half-Baked)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Half-Baked', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Half-Baked', 'Anime');
-- --- END op 907

-- --- BEGIN op 908 ( create regular_expression "HatSubs" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('HatSubs', '\b(HatSubs)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('HatSubs', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('HatSubs', 'Anime');
-- --- END op 908

-- --- BEGIN op 909 ( create regular_expression "MALD" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('MALD', '\b(MALD)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('MALD', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('MALD', 'Anime');
-- --- END op 909

-- --- BEGIN op 910 ( create regular_expression "Slyfix" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Slyfix', '\b(Slyfox)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Slyfix', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Slyfix', 'Anime');
-- --- END op 910

-- --- BEGIN op 911 ( create regular_expression "SoLCE" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('SoLCE', '\b(SoLCE)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SoLCE', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SoLCE', 'Anime');
-- --- END op 911

-- --- BEGIN op 912 ( create regular_expression "Tenshi" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Tenshi', '\[tenshi\]|-tenshi$', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Tenshi', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Tenshi', 'Anime');
-- --- END op 912

-- --- BEGIN op 913 ( update custom_format "Anime WEB Tier 2" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime WEB Tier 2', '0x539', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime WEB Tier 2', '0x539', '0x539');
-- --- END op 913

-- --- BEGIN op 914 ( update custom_format "Anime WEB Tier 2" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime WEB Tier 2', 'Asakura', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime WEB Tier 2', 'Asakura', 'Asakura');
-- --- END op 914

-- --- BEGIN op 915 ( update custom_format "Anime WEB Tier 2" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime WEB Tier 2', 'Cyan', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime WEB Tier 2', 'Cyan', 'Cyan');
-- --- END op 915

-- --- BEGIN op 916 ( update custom_format "Anime WEB Tier 2" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime WEB Tier 2', 'Cytox', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime WEB Tier 2', 'Cytox', 'Cytox');
-- --- END op 916

-- --- BEGIN op 917 ( update custom_format "Anime WEB Tier 2" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime WEB Tier 2', 'Dae', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime WEB Tier 2', 'Dae', 'Dae');
-- --- END op 917

-- --- BEGIN op 918 ( update custom_format "Anime WEB Tier 2" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime WEB Tier 2', 'Foxtrot', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime WEB Tier 2', 'Foxtrot', 'Foxtrot');
-- --- END op 918

-- --- BEGIN op 919 ( update custom_format "Anime WEB Tier 2" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime WEB Tier 2', 'Gao', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime WEB Tier 2', 'Gao', 'Gao');
-- --- END op 919

-- --- BEGIN op 920 ( update custom_format "Anime WEB Tier 2" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime WEB Tier 2', 'GSK_kun', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime WEB Tier 2', 'GSK_kun', 'GSK_kun');
-- --- END op 920

-- --- BEGIN op 921 ( update custom_format "Anime WEB Tier 2" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime WEB Tier 2', 'Half-Baked', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime WEB Tier 2', 'Half-Baked', 'Half-Baked');
-- --- END op 921

-- --- BEGIN op 922 ( update custom_format "Anime WEB Tier 2" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime WEB Tier 2', 'HatSubs', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime WEB Tier 2', 'HatSubs', 'HatSubs');
-- --- END op 922

-- --- BEGIN op 923 ( update custom_format "Anime WEB Tier 2" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime WEB Tier 2', 'MALD', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime WEB Tier 2', 'MALD', 'MALD');
-- --- END op 923

-- --- BEGIN op 924 ( update custom_format "Anime WEB Tier 2" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime WEB Tier 2', 'MTBB', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime WEB Tier 2', 'MTBB', 'MTBB');
-- --- END op 924

-- --- BEGIN op 925 ( create regular_expression "Not-Vodes" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Not-Vodes', '\[Not-Vodes\]|-Not-Vodes\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Not-Vodes', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Not-Vodes', 'Anime');
-- --- END op 925

-- --- BEGIN op 926 ( update custom_format "Anime WEB Tier 2" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime WEB Tier 2', 'Not-Vodes', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime WEB Tier 2', 'Not-Vodes', 'Not-Vodes');
-- --- END op 926

-- --- BEGIN op 927 ( update custom_format "Anime WEB Tier 2" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime WEB Tier 2', 'Okay-Subs', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime WEB Tier 2', 'Okay-Subs', 'Okay-Subs');
-- --- END op 927

-- --- BEGIN op 928 ( update custom_format "Anime WEB Tier 2" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime WEB Tier 2', 'Pizza', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime WEB Tier 2', 'Pizza', 'Pizza');
-- --- END op 928

-- --- BEGIN op 929 ( update custom_format "Anime WEB Tier 2" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime WEB Tier 2', 'Reza', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime WEB Tier 2', 'Reza', 'Reza');
-- --- END op 929

-- --- BEGIN op 930 ( update custom_format "Anime WEB Tier 2" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime WEB Tier 2', 'Slyfox', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime WEB Tier 2', 'Slyfox', 'Slyfix');
-- --- END op 930

-- --- BEGIN op 931 ( update custom_format "Anime WEB Tier 2" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime WEB Tier 2', 'SoLCE', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime WEB Tier 2', 'SoLCE', 'SoLCE');
-- --- END op 931

-- --- BEGIN op 932 ( update custom_format "Anime WEB Tier 2" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime WEB Tier 2', 'Tenshi', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime WEB Tier 2', 'Tenshi', 'Tenshi');
-- --- END op 932

-- --- BEGIN op 933 ( update custom_format "Anime WEB Tier 02" )
update "custom_formats" set "name" = 'Anime WEB Tier 02' where "name" = 'Anime WEB Tier 2';
-- --- END op 933

-- --- BEGIN op 934 ( update quality_profile "Anime 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Anime WEB Tier 02' where "quality_profile_name" = 'Anime 1080p' and "custom_format_name" = 'Anime WEB Tier 2' and "arr_type" = 'all' and "score" = 1900;
-- --- END op 934
