-- @operation: export
-- @entity: batch
-- @name: Rebuilt TRaSH Anime WEB Tier 01
-- @exportedAt: 2026-03-01T22:26:10.003Z
-- @opIds: 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897

-- --- BEGIN op 878 ( update custom_format "Anime WEB Tier 1" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Anime WEB Tier 1'
	  AND name = 'Not Bluray'
	  AND type = 'source'
	  AND arr_type = 'all'
	  AND negate = 1
	  AND required = 0;
-- --- END op 878

-- --- BEGIN op 879 ( update custom_format "Anime WEB Tier 1" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Anime WEB Tier 1'
	  AND name = 'Not DVD'
	  AND type = 'source'
	  AND arr_type = 'all'
	  AND negate = 1
	  AND required = 0;
-- --- END op 879

-- --- BEGIN op 880 ( update custom_format "Anime WEB Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime WEB Tier 1', 'WEB-DL', 'source', 'all', 0, 0);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('Anime WEB Tier 1', 'WEB-DL', 'web_dl');
-- --- END op 880

-- --- BEGIN op 881 ( update custom_format "Anime WEB Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime WEB Tier 1', 'WEBRip', 'source', 'all', 0, 0);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('Anime WEB Tier 1', 'WEBRip', 'webrip');
-- --- END op 881

-- --- BEGIN op 882 ( update custom_format "Anime WEB Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime WEB Tier 1', 'Arg0', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime WEB Tier 1', 'Arg0', 'Arg0');
-- --- END op 882

-- --- BEGIN op 883 ( update custom_format "Anime WEB Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime WEB Tier 1', 'Arid', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime WEB Tier 1', 'Arid', 'Arid');
-- --- END op 883

-- --- BEGIN op 884 ( create regular_expression "Setsugen" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Setsugen', '\b(Setsugen)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Setsugen', 'Release Group');
-- --- END op 884

-- --- BEGIN op 885 ( create regular_expression "Z4ST1N" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Z4ST1N', '\b(Z4ST1N)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Z4ST1N', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Z4ST1N', 'Anime');
-- --- END op 885

-- --- BEGIN op 886 ( update custom_format "Anime WEB Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime WEB Tier 1', 'Baws', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime WEB Tier 1', 'Baws', 'Baws');
-- --- END op 886

-- --- BEGIN op 887 ( update custom_format "Anime WEB Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime WEB Tier 1', 'FLE', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime WEB Tier 1', 'FLE', 'FLE');
-- --- END op 887

-- --- BEGIN op 888 ( update custom_format "Anime WEB Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime WEB Tier 1', 'LostYears', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime WEB Tier 1', 'LostYears', 'LostYears');
-- --- END op 888

-- --- BEGIN op 889 ( update custom_format "Anime WEB Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime WEB Tier 1', 'LYS1TH3A', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime WEB Tier 1', 'LYS1TH3A', 'LYS1TH3A');
-- --- END op 889

-- --- BEGIN op 890 ( update custom_format "Anime WEB Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime WEB Tier 1', 'sam', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime WEB Tier 1', 'sam', 'sam');
-- --- END op 890

-- --- BEGIN op 891 ( update custom_format "Anime WEB Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime WEB Tier 1', 'SCY', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime WEB Tier 1', 'SCY', 'SCY');
-- --- END op 891

-- --- BEGIN op 892 ( update custom_format "Anime WEB Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime WEB Tier 1', 'Setsugen', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime WEB Tier 1', 'Setsugen', 'Setsugen');
-- --- END op 892

-- --- BEGIN op 893 ( update custom_format "Anime WEB Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime WEB Tier 1', 'smol', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime WEB Tier 1', 'smol', 'smol');
-- --- END op 893

-- --- BEGIN op 894 ( update custom_format "Anime WEB Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime WEB Tier 1', 'SoM', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime WEB Tier 1', 'SoM', 'SoM');
-- --- END op 894

-- --- BEGIN op 895 ( update custom_format "Anime WEB Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime WEB Tier 1', 'Vodes', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime WEB Tier 1', 'Vodes', 'Vodes');
-- --- END op 895

-- --- BEGIN op 896 ( update custom_format "Anime WEB Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime WEB Tier 1', 'Z4ST1N', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime WEB Tier 1', 'Z4ST1N', 'Z4ST1N');
-- --- END op 896

-- --- BEGIN op 897 ( update custom_format "Anime WEB Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime WEB Tier 1', 'ZeroBuild', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime WEB Tier 1', 'ZeroBuild', 'ZeroBuild');
-- --- END op 897
