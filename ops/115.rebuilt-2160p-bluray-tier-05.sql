-- @operation: export
-- @entity: batch
-- @name: Rebuilt 2160p Bluray Tier 05
-- @exportedAt: 2026-03-06T18:43:58.032Z
-- @opIds: 2839, 2840, 2841, 2842, 2843, 2844, 2845, 2846, 2847, 2848, 2849, 2850, 2851, 2852, 2853, 2854, 2855, 2856, 2857, 2858, 2859, 2860, 2861, 2862, 2863, 2864, 2865

-- --- BEGIN op 2839 ( update regular_expression "4KDVS" )
update "regular_expressions" set "pattern" = '^(4KDVS)$', "description" = NULL where "name" = '4KDVS' and "pattern" = '(?<=^|[\s.-])4KDVS\b' and "description" = 'Matches "4KDVS" when preceded by whitespace, a hyphen or dot';

DELETE FROM regular_expression_tags WHERE regular_expression_name IN ('4KDVS') AND tag_name = 'Bluray';
-- --- END op 2839

-- --- BEGIN op 2840 ( create regular_expression "b0mbardiers" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('b0mbardiers', '^(GROUP)$', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('b0mbardiers', 'Release Group');
-- --- END op 2840

-- --- BEGIN op 2841 ( update regular_expression "b0mbardiers" )
update "regular_expressions" set "pattern" = '^(b0mbardiers)$' where "name" = 'b0mbardiers' and "pattern" = '^(GROUP)$';
-- --- END op 2841

-- --- BEGIN op 2842 ( create regular_expression "BakedFEL" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('BakedFEL', '^(GROUP)$', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('BakedFEL', 'Release Group');
-- --- END op 2842

-- --- BEGIN op 2843 ( update regular_expression "BakedFEL" )
update "regular_expressions" set "pattern" = '^(BakedFEL)$' where "name" = 'BakedFEL' and "pattern" = '^(GROUP)$';
-- --- END op 2843

-- --- BEGIN op 2844 ( update regular_expression "DEFLATE" )
update "regular_expressions" set "pattern" = '^(DEFLATE)$' where "name" = 'DEFLATE' and "pattern" = '(?<=^|[\s.-])DEFLATE\b';

DELETE FROM regular_expression_tags WHERE regular_expression_name IN ('DEFLATE') AND tag_name = 'Bluray';
-- --- END op 2844

-- --- BEGIN op 2845 ( update regular_expression "DEPTH" )
update "regular_expressions" set "pattern" = '^(DEPTH)$' where "name" = 'DEPTH' and "pattern" = '(?<=^|[\s.-])DEPTH\b';

DELETE FROM regular_expression_tags WHERE regular_expression_name IN ('DEPTH') AND tag_name = 'Bluray';
-- --- END op 2845

-- --- BEGIN op 2846 ( update regular_expression "JustWatch" )
update "regular_expressions" set "pattern" = '^(JustWatch)$' where "name" = 'JustWatch' and "pattern" = '(?<=^|[\s.-])JustWatch\b';

DELETE FROM regular_expression_tags WHERE regular_expression_name IN ('JustWatch') AND tag_name = 'Bluray';
-- --- END op 2846

-- --- BEGIN op 2847 ( create regular_expression "ORBiT" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('ORBiT', '^(GROUP)$', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ORBiT', 'Release Group');
-- --- END op 2847

-- --- BEGIN op 2848 ( update regular_expression "ORBiT" )
update "regular_expressions" set "pattern" = '^(ORBiT)$' where "name" = 'ORBiT' and "pattern" = '^(GROUP)$';
-- --- END op 2848

-- --- BEGIN op 2849 ( create regular_expression "RandomBytes" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('RandomBytes', '^(GROUP)$', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('RandomBytes', 'Release Group');
-- --- END op 2849

-- --- BEGIN op 2850 ( update regular_expression "RandomBytes" )
update "regular_expressions" set "pattern" = '^(RandomBytes)$' where "name" = 'RandomBytes' and "pattern" = '^(GROUP)$';
-- --- END op 2850

-- --- BEGIN op 2851 ( update regular_expression "SURCODE" )
update "regular_expressions" set "pattern" = '^(SURCODE)$' where "name" = 'SURCODE' and "pattern" = '(?<=^|[\s.-])SURCODE\b';

DELETE FROM regular_expression_tags WHERE regular_expression_name IN ('SURCODE') AND tag_name = 'Bluray';
-- --- END op 2851

-- --- BEGIN op 2852 ( update regular_expression "WATCHABLE" )
update "regular_expressions" set "pattern" = '^(WATCHABLE)$' where "name" = 'WATCHABLE' and "pattern" = '(?<=^|[\s.-])WATCHABLE\b';

DELETE FROM regular_expression_tags WHERE regular_expression_name IN ('WATCHABLE') AND tag_name = 'Bluray';
-- --- END op 2852

-- --- BEGIN op 2853 ( update custom_format "2160p Bluray Tier 05" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '2160p Bluray Tier 05'
	  AND name = 'Dictionarry 2160p Tier 05'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2853

-- --- BEGIN op 2854 ( update custom_format "2160p Bluray Tier 05" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2160p Bluray Tier 05', '4KDVS', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('2160p Bluray Tier 05', '4KDVS', '4KDVS');
-- --- END op 2854

-- --- BEGIN op 2855 ( update custom_format "2160p Bluray Tier 05" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2160p Bluray Tier 05', 'b0mbardiers', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('2160p Bluray Tier 05', 'b0mbardiers', 'b0mbardiers');
-- --- END op 2855

-- --- BEGIN op 2856 ( update custom_format "2160p Bluray Tier 05" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2160p Bluray Tier 05', 'BakedFEL', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('2160p Bluray Tier 05', 'BakedFEL', 'BakedFEL');
-- --- END op 2856

-- --- BEGIN op 2857 ( update custom_format "2160p Bluray Tier 05" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2160p Bluray Tier 05', 'DEFLATE', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('2160p Bluray Tier 05', 'DEFLATE', 'DEFLATE');
-- --- END op 2857

-- --- BEGIN op 2858 ( update custom_format "2160p Bluray Tier 05" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2160p Bluray Tier 05', 'DEPTH', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('2160p Bluray Tier 05', 'DEPTH', 'DEPTH');
-- --- END op 2858

-- --- BEGIN op 2859 ( update custom_format "2160p Bluray Tier 05" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2160p Bluray Tier 05', 'j3rico', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('2160p Bluray Tier 05', 'j3rico', 'j3rico');
-- --- END op 2859

-- --- BEGIN op 2860 ( update custom_format "2160p Bluray Tier 05" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2160p Bluray Tier 05', 'JustWatch', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('2160p Bluray Tier 05', 'JustWatch', 'JustWatch');
-- --- END op 2860

-- --- BEGIN op 2861 ( update custom_format "2160p Bluray Tier 05" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2160p Bluray Tier 05', 'ORBiT', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('2160p Bluray Tier 05', 'ORBiT', 'ORBiT');
-- --- END op 2861

-- --- BEGIN op 2862 ( update custom_format "2160p Bluray Tier 05" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2160p Bluray Tier 05', 'RandomBytes', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('2160p Bluray Tier 05', 'RandomBytes', 'RandomBytes');
-- --- END op 2862

-- --- BEGIN op 2863 ( update custom_format "2160p Bluray Tier 05" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2160p Bluray Tier 05', 'SURCODE', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('2160p Bluray Tier 05', 'SURCODE', 'SURCODE');
-- --- END op 2863

-- --- BEGIN op 2864 ( update custom_format "2160p Bluray Tier 05" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2160p Bluray Tier 05', 'WATCHABLE', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('2160p Bluray Tier 05', 'WATCHABLE', 'WATCHABLE');
-- --- END op 2864

-- --- BEGIN op 2865 ( update custom_format "2160p Bluray Tier 05" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2160p Bluray Tier 05', 'WiKi', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('2160p Bluray Tier 05', 'WiKi', 'WiKi');
-- --- END op 2865
