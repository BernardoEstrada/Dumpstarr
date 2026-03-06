-- @operation: export
-- @entity: batch
-- @name: Rebuilt 720p Bluray Tiers
-- @exportedAt: 2026-03-06T19:42:50.023Z
-- @opIds: 2925, 2926, 2927, 2928, 2929, 2930, 2931, 2932, 2933, 2934, 2935, 2936, 2937, 2938, 2939, 2940, 2941, 2942, 2943, 2944, 2945, 2946, 2947, 2948, 2949, 2950, 2951, 2952, 2953, 2954, 2955, 2956, 2957, 2958, 2959, 2960, 2961, 2962, 2963, 2964, 2965, 2966, 2967, 2968, 2969, 2970, 2971, 2972, 2973, 2974, 2975, 2976, 2977, 2978, 2979, 2980, 2981, 2982, 2983, 2984, 2985, 2986, 2987, 2988, 2989, 2990, 2991, 2992, 2993, 2994, 2995, 2996, 2997, 2998, 2999, 3000, 3001, 3002, 3003, 3004, 3005, 3006, 3007

-- --- BEGIN op 2925 ( update custom_format "720p Bluray Tier 01" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '720p Bluray Tier 01'
	  AND name = 'Dictionarry 720p Tier 01'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2925

-- --- BEGIN op 2926 ( update custom_format "720p Bluray Tier 01" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Bluray Tier 01', 'DON', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Bluray Tier 01', 'DON', 'DON');
-- --- END op 2926

-- --- BEGIN op 2927 ( update custom_format "720p Bluray Tier 01" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Bluray Tier 01', 'REBORN', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Bluray Tier 01', 'REBORN', 'REBORN');
-- --- END op 2927

-- --- BEGIN op 2928 ( update custom_format "720p Bluray Tier 01" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Bluray Tier 01', 'SoLaR', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Bluray Tier 01', 'SoLaR', 'SoLaR');
-- --- END op 2928

-- --- BEGIN op 2929 ( update custom_format "720p Bluray Tier 01" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Bluray Tier 01', 'TeamSyndicate', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Bluray Tier 01', 'TeamSyndicate', 'TeamSyndicate');
-- --- END op 2929

-- --- BEGIN op 2930 ( update custom_format "720p Bluray Tier 01" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Bluray Tier 01', 'ZoroSenpai', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Bluray Tier 01', 'ZoroSenpai', 'ZoroSenpai');
-- --- END op 2930

-- --- BEGIN op 2931 ( delete custom_format "720p" )
delete from "custom_formats" where "name" = '720p';
-- --- END op 2931

-- --- BEGIN op 2932 ( update custom_format "720p Bluray Tier 02" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '720p Bluray Tier 02'
	  AND name = 'Dictionarry 720p Tier 02'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2932

-- --- BEGIN op 2933 ( update custom_format "720p Bluray Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Bluray Tier 02', 'c0kE', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Bluray Tier 02', 'c0kE', 'c0kE');
-- --- END op 2933

-- --- BEGIN op 2934 ( update custom_format "720p Bluray Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Bluray Tier 02', 'CRiSC', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Bluray Tier 02', 'CRiSC', 'CRiSC');
-- --- END op 2934

-- --- BEGIN op 2935 ( update custom_format "720p Bluray Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Bluray Tier 02', 'CtrlHD', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Bluray Tier 02', 'CtrlHD', 'CtrlHD');
-- --- END op 2935

-- --- BEGIN op 2936 ( update custom_format "720p Bluray Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Bluray Tier 02', 'EbP', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Bluray Tier 02', 'EbP', 'EbP');
-- --- END op 2936

-- --- BEGIN op 2937 ( update custom_format "720p Bluray Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Bluray Tier 02', 'HiDt', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Bluray Tier 02', 'HiDt', 'HiDt');
-- --- END op 2937

-- --- BEGIN op 2938 ( update custom_format "720p Bluray Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Bluray Tier 02', 'HiFi', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Bluray Tier 02', 'HiFi', 'HiFi');
-- --- END op 2938

-- --- BEGIN op 2939 ( update custom_format "720p Bluray Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Bluray Tier 02', 'IDE', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Bluray Tier 02', 'IDE', 'IDE');
-- --- END op 2939

-- --- BEGIN op 2940 ( update custom_format "720p Bluray Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Bluray Tier 02', 'SbR', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Bluray Tier 02', 'SbR', 'SbR');
-- --- END op 2940

-- --- BEGIN op 2941 ( update custom_format "720p Bluray Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Bluray Tier 02', 'TayTo', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Bluray Tier 02', 'TayTo', 'TayTo');
-- --- END op 2941

-- --- BEGIN op 2942 ( update custom_format "720p Bluray Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Bluray Tier 02', 'VietHD', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Bluray Tier 02', 'VietHD', 'VietHD');
-- --- END op 2942

-- --- BEGIN op 2943 ( update custom_format "720p Bluray Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Bluray Tier 02', 'ZQ', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Bluray Tier 02', 'ZQ', 'ZQ');
-- --- END op 2943

-- --- BEGIN op 2944 ( update custom_format "720p Bluray Tier 03" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '720p Bluray Tier 03'
	  AND name = 'Dictionarry 720p Tier 03'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2944

-- --- BEGIN op 2945 ( update custom_format "720p Bluray Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Bluray Tier 03', 'BMF', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Bluray Tier 03', 'BMF', 'BMF');
-- --- END op 2945

-- --- BEGIN op 2946 ( update custom_format "720p Bluray Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Bluray Tier 03', 'Geek', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Bluray Tier 03', 'Geek', 'Geek');
-- --- END op 2946

-- --- BEGIN op 2947 ( update custom_format "720p Bluray Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Bluray Tier 03', 'LolHD', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Bluray Tier 03', 'LolHD', 'LolHD');
-- --- END op 2947

-- --- BEGIN op 2948 ( update custom_format "720p Bluray Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Bluray Tier 03', 'NCmt', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Bluray Tier 03', 'NCmt', 'NCmt');
-- --- END op 2948

-- --- BEGIN op 2949 ( update custom_format "720p Bluray Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Bluray Tier 03', 'Positive', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Bluray Tier 03', 'Positive', 'Positive');
-- --- END op 2949

-- --- BEGIN op 2950 ( update custom_format "720p Bluray Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Bluray Tier 03', 'rightSIZE', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Bluray Tier 03', 'rightSIZE', 'rightSIZE');
-- --- END op 2950

-- --- BEGIN op 2951 ( update custom_format "720p Bluray Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Bluray Tier 03', 'TBB', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Bluray Tier 03', 'TBB', 'TBB');
-- --- END op 2951

-- --- BEGIN op 2952 ( update custom_format "720p Bluray Tier 04" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '720p Bluray Tier 04'
	  AND name = 'Dictionarry 720p Tier 04'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2952

-- --- BEGIN op 2953 ( update custom_format "720p Bluray Tier 04" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Bluray Tier 04', 'D-Z0N3', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Bluray Tier 04', 'D-Z0N3', 'D-Z0N3');
-- --- END op 2953

-- --- BEGIN op 2954 ( update custom_format "720p Bluray Tier 04" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Bluray Tier 04', 'Dariush', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Bluray Tier 04', 'Dariush', 'Dariush');
-- --- END op 2954

-- --- BEGIN op 2955 ( update custom_format "720p Bluray Tier 04" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Bluray Tier 04', 'decibeL', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Bluray Tier 04', 'decibeL', 'decibeL');
-- --- END op 2955

-- --- BEGIN op 2956 ( update custom_format "720p Bluray Tier 04" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Bluray Tier 04', 'EA', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Bluray Tier 04', 'EA', 'EA');
-- --- END op 2956

-- --- BEGIN op 2957 ( update custom_format "720p Bluray Tier 04" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Bluray Tier 04', 'FoRM', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Bluray Tier 04', 'FoRM', 'FoRM');
-- --- END op 2957

-- --- BEGIN op 2958 ( update custom_format "720p Bluray Tier 04" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Bluray Tier 04', 'NTb', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Bluray Tier 04', 'NTb', 'NTb');
-- --- END op 2958

-- --- BEGIN op 2959 ( update custom_format "720p Bluray Tier 04" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Bluray Tier 04', 'PTer', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Bluray Tier 04', 'PTer', 'PTer');
-- --- END op 2959

-- --- BEGIN op 2960 ( update custom_format "720p Bluray Tier 04" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Bluray Tier 04', 'Skazhutin', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Bluray Tier 04', 'Skazhutin', 'Skazhutin');
-- --- END op 2960

-- --- BEGIN op 2961 ( update custom_format "720p Bluray Tier 04" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Bluray Tier 04', 'TDD', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Bluray Tier 04', 'TDD', 'TDD');
-- --- END op 2961

-- --- BEGIN op 2962 ( update custom_format "720p Bluray Tier 04" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Bluray Tier 04', 'ThD', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Bluray Tier 04', 'ThD', 'ThD');
-- --- END op 2962

-- --- BEGIN op 2963 ( update custom_format "720p Bluray Tier 05" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '720p Bluray Tier 05'
	  AND name = 'Dictionarry 720p Tier 05'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2963

-- --- BEGIN op 2964 ( update custom_format "720p Bluray Tier 05" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Bluray Tier 05', 'ATELiER', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Bluray Tier 05', 'ATELiER', 'ATELiER');
-- --- END op 2964

-- --- BEGIN op 2965 ( update custom_format "720p Bluray Tier 05" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Bluray Tier 05', 'BV', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Bluray Tier 05', 'BV', 'BV');
-- --- END op 2965

-- --- BEGIN op 2966 ( update custom_format "720p Bluray Tier 05" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Bluray Tier 05', 'Chotab', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Bluray Tier 05', 'Chotab', 'Chotab');
-- --- END op 2966

-- --- BEGIN op 2967 ( update custom_format "720p Bluray Tier 05" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Bluray Tier 05', 'de[42]', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Bluray Tier 05', 'de[42]', 'de[42]');
-- --- END op 2967

-- --- BEGIN op 2968 ( update custom_format "720p Bluray Tier 05" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Bluray Tier 05', 'E.N.D', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Bluray Tier 05', 'E.N.D', 'E.N.D');
-- --- END op 2968

-- --- BEGIN op 2969 ( update custom_format "720p Bluray Tier 05" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Bluray Tier 05', 'EA', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Bluray Tier 05', 'EA', 'EA');
-- --- END op 2969

-- --- BEGIN op 2970 ( update custom_format "720p Bluray Tier 05" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Bluray Tier 05', 'EDPH', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Bluray Tier 05', 'EDPH', 'EDPH');
-- --- END op 2970

-- --- BEGIN op 2971 ( update custom_format "720p Bluray Tier 05" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Bluray Tier 05', 'ESiR', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Bluray Tier 05', 'ESiR', 'ESiR');
-- --- END op 2971

-- --- BEGIN op 2972 ( update custom_format "720p Bluray Tier 05" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Bluray Tier 05', 'FraMeSToR', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Bluray Tier 05', 'FraMeSToR', 'FraMeSToR');
-- --- END op 2972

-- --- BEGIN op 2973 ( update custom_format "720p Bluray Tier 05" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Bluray Tier 05', 'GS88', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Bluray Tier 05', 'GS88', 'GS88');
-- --- END op 2973

-- --- BEGIN op 2974 ( update custom_format "720p Bluray Tier 05" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Bluray Tier 05', 'HDMaNiAcS', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Bluray Tier 05', 'HDMaNiAcS', 'HDMaNiAcS');
-- --- END op 2974

-- --- BEGIN op 2975 ( update custom_format "720p Bluray Tier 05" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Bluray Tier 05', 'HiP', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Bluray Tier 05', 'HiP', 'HiP');
-- --- END op 2975

-- --- BEGIN op 2976 ( update custom_format "720p Bluray Tier 05" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Bluray Tier 05', 'iFT', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Bluray Tier 05', 'iFT', 'iFT');
-- --- END op 2976

-- --- BEGIN op 2977 ( update custom_format "720p Bluray Tier 05" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Bluray Tier 05', 'KASHMiR', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Bluray Tier 05', 'KASHMiR', 'KASHMiR');
-- --- END op 2977

-- --- BEGIN op 2978 ( update custom_format "720p Bluray Tier 05" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Bluray Tier 05', 'LiNG', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Bluray Tier 05', 'LiNG', 'LiNG');
-- --- END op 2978

-- --- BEGIN op 2979 ( update custom_format "720p Bluray Tier 05" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Bluray Tier 05', 'LoRD', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Bluray Tier 05', 'LoRD', 'LoRD');
-- --- END op 2979

-- --- BEGIN op 2980 ( update custom_format "720p Bluray Tier 05" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Bluray Tier 05', 'nmd', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Bluray Tier 05', 'nmd', 'nmd');
-- --- END op 2980

-- --- BEGIN op 2981 ( update custom_format "720p Bluray Tier 05" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Bluray Tier 05', 'NyHD', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Bluray Tier 05', 'NyHD', 'NyHD');
-- --- END op 2981

-- --- BEGIN op 2982 ( update custom_format "720p Bluray Tier 05" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Bluray Tier 05', 'ORiGEN', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Bluray Tier 05', 'ORiGEN', 'ORiGEN');
-- --- END op 2982

-- --- BEGIN op 2983 ( update custom_format "720p Bluray Tier 05" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Bluray Tier 05', 'playHD', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Bluray Tier 05', 'playHD', 'playHD');
-- --- END op 2983

-- --- BEGIN op 2984 ( update custom_format "720p Bluray Tier 05" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Bluray Tier 05', 'RiCO', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Bluray Tier 05', 'RiCO', 'RiCO');
-- --- END op 2984

-- --- BEGIN op 2985 ( update custom_format "720p Bluray Tier 05" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Bluray Tier 05', 'RO', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Bluray Tier 05', 'RO', 'RO');
-- --- END op 2985

-- --- BEGIN op 2986 ( update custom_format "720p Bluray Tier 05" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Bluray Tier 05', 'rttr', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Bluray Tier 05', 'rttr', 'rttr');
-- --- END op 2986

-- --- BEGIN op 2987 ( update custom_format "720p Bluray Tier 05" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Bluray Tier 05', 'SaNcTi', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Bluray Tier 05', 'SaNcTi', 'SaNcTi');
-- --- END op 2987

-- --- BEGIN op 2988 ( update custom_format "720p Bluray Tier 05" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Bluray Tier 05', 'SPHD', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Bluray Tier 05', 'SPHD', 'SPHD');
-- --- END op 2988

-- --- BEGIN op 2989 ( update custom_format "720p Bluray Tier 05" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Bluray Tier 05', 'TnP', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Bluray Tier 05', 'TnP', 'TnP');
-- --- END op 2989

-- --- BEGIN op 2990 ( update custom_format "720p Bluray Tier 05" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Bluray Tier 05', 'W4NK3R', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Bluray Tier 05', 'W4NK3R', 'W4NK3R');
-- --- END op 2990

-- --- BEGIN op 2991 ( update custom_format "720p Bluray Tier 05" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Bluray Tier 05', 'WiLF', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Bluray Tier 05', 'WiLF', 'WiLF');
-- --- END op 2991

-- --- BEGIN op 2992 ( update custom_format "720p Bluray Tier 05" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Bluray Tier 05', 'WMING', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Bluray Tier 05', 'WMING', 'WMING');
-- --- END op 2992

-- --- BEGIN op 2993 ( update custom_format "720p Bluray Tier 05" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Bluray Tier 05', 'ZIMBO', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Bluray Tier 05', 'ZIMBO', 'ZIMBO');
-- --- END op 2993

-- --- BEGIN op 2994 ( update custom_format "720p Bluray Tier 06" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '720p Bluray Tier 06'
	  AND name = 'Dictionarry 720p Tier 06'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2994

-- --- BEGIN op 2995 ( update custom_format "720p Bluray Tier 06" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Bluray Tier 06', 'EuReKA', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Bluray Tier 06', 'EuReKA', 'EuReKA');
-- --- END op 2995

-- --- BEGIN op 2996 ( update custom_format "720p Bluray Tier 06" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Bluray Tier 06', 'HANDJOB', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Bluray Tier 06', 'HANDJOB', 'HANDJOB');
-- --- END op 2996

-- --- BEGIN op 2997 ( update custom_format "720p Bluray Tier 06" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Bluray Tier 06', 'Ivandro', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Bluray Tier 06', 'Ivandro', 'Ivandro');
-- --- END op 2997

-- --- BEGIN op 2998 ( update custom_format "720p Bluray Tier 06" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Bluray Tier 06', 'KnG', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Bluray Tier 06', 'KnG', 'KnG');
-- --- END op 2998

-- --- BEGIN op 2999 ( update custom_format "720p Bluray Tier 06" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Bluray Tier 06', 'LEGi0N', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Bluray Tier 06', 'LEGi0N', 'LEGi0N');
-- --- END op 2999

-- --- BEGIN op 3000 ( update custom_format "720p Bluray Tier 06" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Bluray Tier 06', 'Lulz', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Bluray Tier 06', 'Lulz', 'Lulz');
-- --- END op 3000

-- --- BEGIN op 3001 ( update custom_format "720p Bluray Tier 06" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Bluray Tier 06', 'MaG', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Bluray Tier 06', 'MaG', 'MaG');
-- --- END op 3001

-- --- BEGIN op 3002 ( update custom_format "720p Bluray Tier 06" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Bluray Tier 06', 'MTeam', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Bluray Tier 06', 'MTeam', 'MTeam');
-- --- END op 3002

-- --- BEGIN op 3003 ( update custom_format "720p Bluray Tier 06" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Bluray Tier 06', 'NiP', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Bluray Tier 06', 'NiP', 'NiP');
-- --- END op 3003

-- --- BEGIN op 3004 ( update custom_format "720p Bluray Tier 06" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Bluray Tier 06', 'PTP', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Bluray Tier 06', 'PTP', 'PTP');
-- --- END op 3004

-- --- BEGIN op 3005 ( update custom_format "720p Bluray Tier 06" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Bluray Tier 06', 'PuTao', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Bluray Tier 06', 'PuTao', 'PuTao');
-- --- END op 3005

-- --- BEGIN op 3006 ( update custom_format "720p Bluray Tier 06" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Bluray Tier 06', 'Slappy', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Bluray Tier 06', 'Slappy', 'Slappy');
-- --- END op 3006

-- --- BEGIN op 3007 ( update custom_format "720p Bluray Tier 06" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Bluray Tier 06', 'WiKi', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Bluray Tier 06', 'WiKi', 'WiKi');
-- --- END op 3007
