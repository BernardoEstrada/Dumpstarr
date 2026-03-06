-- @operation: export
-- @entity: batch
-- @name: Rebuilt 2160p Bluray Tier 06
-- @exportedAt: 2026-03-06T18:59:41.205Z
-- @opIds: 2867, 2868, 2869, 2870, 2871, 2872, 2873, 2874, 2875, 2876, 2877, 2878, 2879, 2880, 2881, 2882, 2883, 2884, 2885, 2886, 2887, 2888, 2889, 2890, 2891, 2892, 2893, 2894, 2895, 2896, 2899, 2900, 2901, 2902, 2903, 2904, 2905, 2906, 2907, 2908, 2909, 2910, 2911, 2912, 2913, 2914, 2915, 2916, 2917, 2918, 2919, 2920, 2921, 2922, 2923

-- --- BEGIN op 2867 ( update regular_expression "ADE" )
update "regular_expressions" set "pattern" = '^(ADE)$' where "name" = 'ADE' and "pattern" = '(?<=^|[\s.-])ADE\b';

DELETE FROM regular_expression_tags WHERE regular_expression_name IN ('ADE') AND tag_name = 'Bluray';
-- --- END op 2867

-- --- BEGIN op 2868 ( update regular_expression "AViATOR" )
update "regular_expressions" set "pattern" = '^(AViATOR)$' where "name" = 'AViATOR' and "pattern" = '(?<=^|[\s.-])AViATOR\b';

DELETE FROM regular_expression_tags WHERE regular_expression_name IN ('AViATOR') AND tag_name = 'Bluray';
-- --- END op 2868

-- --- BEGIN op 2869 ( update regular_expression "beAst" )
update "regular_expressions" set "pattern" = '^(beAst)$' where "name" = 'beAst' and "pattern" = '(?<=^|[\s.-])beAst\b';

DELETE FROM regular_expression_tags WHERE regular_expression_name IN ('beAst') AND tag_name = 'Bluray';
-- --- END op 2869

-- --- BEGIN op 2870 ( update regular_expression "BeiTai" )
update "regular_expressions" set "pattern" = '^(BeiTai)$' where "name" = 'BeiTai' and "pattern" = '(?<=^|[\s.-])BeiTai\b';

DELETE FROM regular_expression_tags WHERE regular_expression_name IN ('BeiTai') AND tag_name = 'Bluray';
-- --- END op 2870

-- --- BEGIN op 2871 ( update regular_expression "CMCT" )
update "regular_expressions" set "pattern" = '^(CMCT)$' where "name" = 'CMCT' and "pattern" = '(?<=^|[\s.-])CMCT\b';

DELETE FROM regular_expression_tags WHERE regular_expression_name IN ('CMCT') AND tag_name = 'Anime';
-- --- END op 2871

-- --- BEGIN op 2872 ( update regular_expression "EMERALD" )
update "regular_expressions" set "pattern" = '^(EMERALD)$' where "name" = 'EMERALD' and "pattern" = '(?<=^|[\s.-])EMERALD\b';

DELETE FROM regular_expression_tags WHERE regular_expression_name IN ('EMERALD') AND tag_name = 'Bluray';
-- --- END op 2872

-- --- BEGIN op 2873 ( update regular_expression "FLAME" )
update "regular_expressions" set "pattern" = '^(FLAME)$' where "name" = 'FLAME' and "pattern" = '(?<=^|[\s.-])FLAME\b';

DELETE FROM regular_expression_tags WHERE regular_expression_name IN ('FLAME') AND tag_name = 'Bluray';
-- --- END op 2873

-- --- BEGIN op 2874 ( update regular_expression "GUHZER" )
update "regular_expressions" set "pattern" = '^(GUHZER)$' where "name" = 'GUHZER' and "pattern" = '(?<=^|[\s.-])GUHZER\b';

DELETE FROM regular_expression_tags WHERE regular_expression_name IN ('GUHZER') AND tag_name = 'Bluray';
-- --- END op 2874

-- --- BEGIN op 2875 ( update regular_expression "HDChina" )
update "regular_expressions" set "pattern" = '^(HDChina)$' where "name" = 'HDChina' and "pattern" = '(?<=^|[\s.-])HDChina\b';

DELETE FROM regular_expression_tags WHERE regular_expression_name IN ('HDChina') AND tag_name = 'Bluray';
-- --- END op 2875

-- --- BEGIN op 2876 ( update regular_expression "HDmux" )
update "regular_expressions" set "pattern" = '^(HDmux)$' where "name" = 'HDmux' and "pattern" = '(?<=^|[\s.-])HDmux\b';

DELETE FROM regular_expression_tags WHERE regular_expression_name IN ('HDmux') AND tag_name = 'Bluray';
-- --- END op 2876

-- --- BEGIN op 2877 ( update regular_expression "HypStu" )
update "regular_expressions" set "pattern" = '^(HypStu)$' where "name" = 'HypStu' and "pattern" = '(?<=^|[\s.-])HypStu\b';

DELETE FROM regular_expression_tags WHERE regular_expression_name IN ('HypStu') AND tag_name = 'Bluray';
-- --- END op 2877

-- --- BEGIN op 2878 ( update regular_expression "IAMABLE" )
update "regular_expressions" set "pattern" = '^(IAMABLE)$' where "name" = 'IAMABLE' and "pattern" = '(?<=^|[\s.-])IAMABLE\b';

DELETE FROM regular_expression_tags WHERE regular_expression_name IN ('IAMABLE') AND tag_name = 'Bluray';
-- --- END op 2878

-- --- BEGIN op 2879 ( update regular_expression "KAN3D2M" )
DELETE FROM regular_expression_tags WHERE regular_expression_name IN ('KAN3D2M') AND tag_name = 'Bluray';
-- --- END op 2879

-- --- BEGIN op 2880 ( update regular_expression "KAN3D2M Release Title" )
update "regular_expressions" set "name" = 'KAN3D2M Release Title' where "name" = 'KAN3D2M';
-- --- END op 2880

-- --- BEGIN op 2881 ( update custom_format "Anime WEB Tier 05" )
update "condition_patterns" set "regular_expression_name" = 'KAN3D2M Release Title' where "custom_format_name" = 'Anime WEB Tier 05' and "condition_name" = 'KAN3D2M' and "regular_expression_name" = 'KAN3D2M';
-- --- END op 2881

-- --- BEGIN op 2882 ( create regular_expression "KAN3D2M" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('KAN3D2M', '\b(KAN3D2M)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('KAN3D2M', 'Release Group');
-- --- END op 2882

-- --- BEGIN op 2883 ( update regular_expression "KAN3D2M" )
update "regular_expressions" set "pattern" = '^(KAN3D2M)$' where "name" = 'KAN3D2M' and "pattern" = '\b(KAN3D2M)\b';
-- --- END op 2883

-- --- BEGIN op 2884 ( update regular_expression "LAZARUS" )
update "regular_expressions" set "pattern" = '^(LAZARUS)$' where "name" = 'LAZARUS' and "pattern" = '(?<=^|[\s.-])LAZARUS\b';

DELETE FROM regular_expression_tags WHERE regular_expression_name IN ('LAZARUS') AND tag_name = 'Bluray';
-- --- END op 2884

-- --- BEGIN op 2885 ( update regular_expression "MiMiC" )
update "regular_expressions" set "pattern" = '^(MiMiC)$' where "name" = 'MiMiC' and "pattern" = '(?<=^|[\s.-])MiMiC\b';

DELETE FROM regular_expression_tags WHERE regular_expression_name IN ('MiMiC') AND tag_name = 'Bluray';
-- --- END op 2885

-- --- BEGIN op 2886 ( update regular_expression "PussyFoot" )
update "regular_expressions" set "pattern" = '^(PussyFoot)$' where "name" = 'PussyFoot' and "pattern" = '(?<=^|[\s.-])PussyFoot\b';

DELETE FROM regular_expression_tags WHERE regular_expression_name IN ('PussyFoot') AND tag_name = 'Bluray';
-- --- END op 2886

-- --- BEGIN op 2887 ( update regular_expression "ReaLHD" )
update "regular_expressions" set "pattern" = '^(ReaLHD)$' where "name" = 'ReaLHD' and "pattern" = '(?<=^|[\s.-])ReaLHD\b';

DELETE FROM regular_expression_tags WHERE regular_expression_name IN ('ReaLHD') AND tag_name = 'Bluray';
-- --- END op 2887

-- --- BEGIN op 2888 ( update regular_expression "ReQuEsT" )
update "regular_expressions" set "pattern" = '^(ReQuEsT)$' where "name" = 'ReQuEsT' and "pattern" = '(?<=^|[\s.-])ReQuEsT\b';

DELETE FROM regular_expression_tags WHERE regular_expression_name IN ('ReQuEsT') AND tag_name = 'Bluray';
-- --- END op 2888

-- --- BEGIN op 2889 ( update regular_expression "STRiKES" )
update "regular_expressions" set "pattern" = '^(STRiKES)$' where "name" = 'STRiKES' and "pattern" = '(?<=^|[\s.-])STRiKES\b';

DELETE FROM regular_expression_tags WHERE regular_expression_name IN ('STRiKES') AND tag_name = 'Bluray';
-- --- END op 2889

-- --- BEGIN op 2890 ( update regular_expression "SWTYBLZ Release Title" )
update "regular_expressions" set "name" = 'SWTYBLZ Release Title' where "name" = 'SWTYBLZ';

DELETE FROM regular_expression_tags WHERE regular_expression_name IN ('SWTYBLZ', 'SWTYBLZ Release Title') AND tag_name = 'Bluray';
-- --- END op 2890

-- --- BEGIN op 2891 ( update custom_format "TRaSH LQ Release Title" )
update "condition_patterns" set "regular_expression_name" = 'SWTYBLZ Release Title' where "custom_format_name" = 'TRaSH LQ Release Title' and "condition_name" = 'SWTYBLZ' and "regular_expression_name" = 'SWTYBLZ';
-- --- END op 2891

-- --- BEGIN op 2892 ( create regular_expression "SWTYBLZ" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('SWTYBLZ', '\b(SWTYBLZ)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SWTYBLZ', 'Release Group');
-- --- END op 2892

-- --- BEGIN op 2893 ( update regular_expression "SWTYBLZ" )
update "regular_expressions" set "pattern" = '^(SWTYBLZ)$' where "name" = 'SWTYBLZ' and "pattern" = '\b(SWTYBLZ)\b';
-- --- END op 2893

-- --- BEGIN op 2894 ( update regular_expression "TERMiNAL" )
update "regular_expressions" set "pattern" = '^(TERMiNAL)$' where "name" = 'TERMiNAL' and "pattern" = '(?<=^|[\s.-])TERMiNAL\b';

DELETE FROM regular_expression_tags WHERE regular_expression_name IN ('TERMiNAL') AND tag_name = 'Bluray';
-- --- END op 2894

-- --- BEGIN op 2895 ( update regular_expression "ULTRAHDCLUB" )
update "regular_expressions" set "pattern" = '^(ULTRAHDCLUB)$' where "name" = 'ULTRAHDCLUB' and "pattern" = '(?<=^|[\s.-])ULTRAHDCLUB\b';

DELETE FROM regular_expression_tags WHERE regular_expression_name IN ('ULTRAHDCLUB') AND tag_name = 'Bluray';
-- --- END op 2895

-- --- BEGIN op 2896 ( update regular_expression "WhiteRhino" )
update "regular_expressions" set "pattern" = '^(WhiteRhino)$' where "name" = 'WhiteRhino' and "pattern" = '(?<=^|[\s.-])WhiteRhino\b';

DELETE FROM regular_expression_tags WHERE regular_expression_name IN ('WhiteRhino') AND tag_name = 'Bluray';
-- --- END op 2896

-- --- BEGIN op 2899 ( update custom_format "2160p Bluray Tier 06" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '2160p Bluray Tier 06'
	  AND name = 'Dictionarry 2160p Tier 06'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2899

-- --- BEGIN op 2900 ( update custom_format "2160p Bluray Tier 06" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2160p Bluray Tier 06', 'ADE', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('2160p Bluray Tier 06', 'ADE', 'ADE');
-- --- END op 2900

-- --- BEGIN op 2901 ( update custom_format "2160p Bluray Tier 06" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2160p Bluray Tier 06', 'AViATOR', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('2160p Bluray Tier 06', 'AViATOR', 'AViATOR');
-- --- END op 2901

-- --- BEGIN op 2902 ( update custom_format "2160p Bluray Tier 06" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2160p Bluray Tier 06', 'beAst', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('2160p Bluray Tier 06', 'beAst', 'beAst');
-- --- END op 2902

-- --- BEGIN op 2903 ( update custom_format "2160p Bluray Tier 06" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2160p Bluray Tier 06', 'BeiTai', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('2160p Bluray Tier 06', 'BeiTai', 'BeiTai');
-- --- END op 2903

-- --- BEGIN op 2904 ( update custom_format "2160p Bluray Tier 06" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2160p Bluray Tier 06', 'CHD', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('2160p Bluray Tier 06', 'CHD', 'CHD');
-- --- END op 2904

-- --- BEGIN op 2905 ( update custom_format "2160p Bluray Tier 06" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2160p Bluray Tier 06', 'CMCT', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('2160p Bluray Tier 06', 'CMCT', 'CMCT');
-- --- END op 2905

-- --- BEGIN op 2906 ( update custom_format "2160p Bluray Tier 06" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2160p Bluray Tier 06', 'EMERALD', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('2160p Bluray Tier 06', 'EMERALD', 'EMERALD');
-- --- END op 2906

-- --- BEGIN op 2907 ( update custom_format "2160p Bluray Tier 06" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2160p Bluray Tier 06', 'FLAME', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('2160p Bluray Tier 06', 'FLAME', 'FLAME');
-- --- END op 2907

-- --- BEGIN op 2908 ( update custom_format "2160p Bluray Tier 06" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2160p Bluray Tier 06', 'GUHZER', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('2160p Bluray Tier 06', 'GUHZER', 'GUHZER');
-- --- END op 2908

-- --- BEGIN op 2909 ( update custom_format "2160p Bluray Tier 06" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2160p Bluray Tier 06', 'HDChina', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('2160p Bluray Tier 06', 'HDChina', 'HDChina');
-- --- END op 2909

-- --- BEGIN op 2910 ( update custom_format "2160p Bluray Tier 06" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2160p Bluray Tier 06', 'HDmux', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('2160p Bluray Tier 06', 'HDmux', 'HDmux');
-- --- END op 2910

-- --- BEGIN op 2911 ( update custom_format "2160p Bluray Tier 06" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2160p Bluray Tier 06', 'HypStu', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('2160p Bluray Tier 06', 'HypStu', 'HypStu');
-- --- END op 2911

-- --- BEGIN op 2912 ( update custom_format "2160p Bluray Tier 06" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2160p Bluray Tier 06', 'IAMABLE', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('2160p Bluray Tier 06', 'IAMABLE', 'IAMABLE');
-- --- END op 2912

-- --- BEGIN op 2913 ( update custom_format "2160p Bluray Tier 06" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2160p Bluray Tier 06', 'KAN3D2M', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('2160p Bluray Tier 06', 'KAN3D2M', 'KAN3D2M');
-- --- END op 2913

-- --- BEGIN op 2914 ( update custom_format "2160p Bluray Tier 06" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2160p Bluray Tier 06', 'LAZARUS', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('2160p Bluray Tier 06', 'LAZARUS', 'LAZARUS');
-- --- END op 2914

-- --- BEGIN op 2915 ( update custom_format "2160p Bluray Tier 06" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2160p Bluray Tier 06', 'MiMiC', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('2160p Bluray Tier 06', 'MiMiC', 'MiMiC');
-- --- END op 2915

-- --- BEGIN op 2916 ( update custom_format "2160p Bluray Tier 06" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2160p Bluray Tier 06', 'PussyFoot', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('2160p Bluray Tier 06', 'PussyFoot', 'PussyFoot');
-- --- END op 2916

-- --- BEGIN op 2917 ( update custom_format "2160p Bluray Tier 06" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2160p Bluray Tier 06', 'ReaLHD', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('2160p Bluray Tier 06', 'ReaLHD', 'ReaLHD');
-- --- END op 2917

-- --- BEGIN op 2918 ( update custom_format "2160p Bluray Tier 06" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2160p Bluray Tier 06', 'ReQuEsT', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('2160p Bluray Tier 06', 'ReQuEsT', 'ReQuEsT');
-- --- END op 2918

-- --- BEGIN op 2919 ( update custom_format "2160p Bluray Tier 06" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2160p Bluray Tier 06', 'STRiKES', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('2160p Bluray Tier 06', 'STRiKES', 'STRiKES');
-- --- END op 2919

-- --- BEGIN op 2920 ( update custom_format "2160p Bluray Tier 06" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2160p Bluray Tier 06', 'SWTYBLZ', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('2160p Bluray Tier 06', 'SWTYBLZ', 'SWTYBLZ');
-- --- END op 2920

-- --- BEGIN op 2921 ( update custom_format "2160p Bluray Tier 06" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2160p Bluray Tier 06', 'TERMiNAL', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('2160p Bluray Tier 06', 'TERMiNAL', 'TERMiNAL');
-- --- END op 2921

-- --- BEGIN op 2922 ( update custom_format "2160p Bluray Tier 06" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2160p Bluray Tier 06', 'ULTRAHDCLUB', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('2160p Bluray Tier 06', 'ULTRAHDCLUB', 'ULTRAHDCLUB');
-- --- END op 2922

-- --- BEGIN op 2923 ( update custom_format "2160p Bluray Tier 06" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2160p Bluray Tier 06', 'Whiterhino', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('2160p Bluray Tier 06', 'Whiterhino', 'WhiteRhino');
-- --- END op 2923
