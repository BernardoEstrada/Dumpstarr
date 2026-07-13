-- @operation: export
-- @entity: batch
-- @name: Rebuild Anime LQ Format
-- @exportedAt: 2026-07-13T17:24:53.586Z
-- @opIds: 2941, 2942, 2943, 2944, 2945, 2946, 2947, 2948, 2949, 2950, 2951, 2952, 2953, 2954, 2955, 2956, 2957, 2958, 2959, 2960, 2961, 2962, 2963, 2964, 2965, 2966, 2967, 2968, 2969, 2970, 2971, 2972, 2973, 2974, 2975, 2976, 2977, 2978, 2979, 2980, 2981, 2982, 2983, 2984, 2985, 2986, 2987, 2988, 2989, 2990, 2991, 2992, 2993, 2994, 2995, 2996, 2997, 2998, 2999, 3000, 3001, 3002, 3003, 3004, 3005, 3006, 3007, 3008, 3009, 3010, 3011, 3012, 3013, 3014, 3015, 3016, 3017, 3018, 3019, 3020, 3021, 3022, 3023, 3024, 3025, 3026, 3027, 3028, 3029, 3030, 3031, 3032, 3033, 3034, 3035, 3036, 3037, 3038, 3039, 3040, 3041, 3042, 3043, 3044, 3045, 3046, 3047, 3048, 3049, 3050, 3051, 3052, 3053, 3054, 3055, 3056, 3057, 3058, 3059, 3060, 3061, 3062, 3063, 3064, 3065, 3066, 3067, 3068, 3069, 3070, 3071, 3072, 3073, 3074, 3075, 3076, 3077, 3078, 3079, 3080, 3081, 3082, 3083, 3084, 3085, 3086, 3087, 3088, 3089, 3090, 3091, 3092, 3093, 3094, 3095, 3096, 3097, 3098, 3099, 3100, 3101, 3102, 3103, 3104, 3105, 3106, 3107, 3108, 3109, 3110, 3111, 3112, 3113, 3114, 3115, 3116, 3117, 3118, 3119, 3120, 3121, 3122, 3123, 3124, 3125, 3126, 3127, 3128, 3129, 3130, 3131, 3132, 3133, 3134, 3135, 3136, 3137, 3138, 3139, 3140, 3141, 3142, 3143, 3144, 3145, 3146, 3147, 3148, 3149, 3150, 3151, 3152, 3153, 3154, 3155, 3156, 3157, 3158, 3159, 3160, 3161, 3162, 3163, 3164, 3165, 3166, 3167, 3168, 3169, 3170, 3171, 3172, 3173, 3174, 3175, 3176, 3177, 3178, 3179, 3180, 3181, 3182, 3183, 3184, 3185, 3186, 3187, 3188, 3189, 3190, 3191, 3192, 3193, 3194, 3195, 3196, 3197, 3198, 3199, 3200, 3201, 3202, 3203, 3204, 3205, 3206, 3207, 3208, 3209, 3210, 3211, 3212, 3213, 3214, 3215, 3216, 3217, 3218, 3219, 3220, 3221, 3222, 3223, 3224, 3225, 3226, 3227, 3228, 3229, 3230, 3231, 3232, 3233, 3234, 3235, 3236, 3237, 3238, 3239, 3240, 3241, 3242, 3243, 3244, 3245, 3246, 3247, 3248, 3249, 3250, 3251, 3252, 3253, 3254, 3255, 3256, 3257, 3258, 3259, 3260, 3261, 3262, 3263, 3264, 3265, 3266, 3267, 3268, 3269, 3270, 3271, 3272, 3273, 3274, 3275, 3276, 3277, 3278, 3279, 3280, 3281, 3282, 3283, 3284, 3285, 3286, 3287, 3288, 3289, 3290, 3291, 3292, 3293, 3294, 3295, 3296, 3297, 3298, 3299, 3300, 3301, 3302, 3303, 3304, 3305, 3306, 3307, 3308, 3309, 3310, 3311, 3312, 3313, 3314, 3315, 3316, 3317, 3318, 3319, 3320, 3321, 3322, 3323, 3324, 3325, 3326, 3327, 3328, 3329, 3330, 3331, 3332, 3333, 3334, 3335, 3336, 3337, 3338, 3339, 3340, 3341, 3342, 3343, 3344, 3345, 3346, 3347, 3348, 3349, 3350, 3351, 3352, 3353

-- --- BEGIN op 2941 ( create regular_expression "$tore-Chill" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('$tore-Chill', '\b(\$tore-Chill)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('$tore-Chill', 'Anime');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('$tore-Chill', 'Release Group');
-- --- END op 2941

-- --- BEGIN op 2942 ( update regular_expression "$tore-Chill" )
insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('$tore-Chill', 'Banned');
-- --- END op 2942

-- --- BEGIN op 2943 ( update custom_format "Anime LQ" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Anime LQ'
	  AND name = 'Anime LQ'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 1;
-- --- END op 2943

-- --- BEGIN op 2944 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', '$tore-Chill', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', '$tore-Chill', '$tore-Chill');
-- --- END op 2944

-- --- BEGIN op 2945 ( create regular_expression "0neshot" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('0neshot', '\b(\$tore-Chill)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('0neshot', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('0neshot', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('0neshot', 'Release Group');
-- --- END op 2945

-- --- BEGIN op 2946 ( update regular_expression "0neshot" )
update "regular_expressions" set "pattern" = '\b(0neshot)\b' where "name" = '0neshot' and "pattern" = '\b(\$tore-Chill)\b';
-- --- END op 2946

-- --- BEGIN op 2947 ( create regular_expression "224" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('224', '\b(0neshot)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('224', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('224', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('224', 'Release Group');
-- --- END op 2947

-- --- BEGIN op 2948 ( update regular_expression "224" )
update "regular_expressions" set "pattern" = '\[224\]|-224\b' where "name" = '224' and "pattern" = '\b(0neshot)\b';
-- --- END op 2948

-- --- BEGIN op 2949 ( create regular_expression "A-Destiny" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('A-Destiny', '\[224\]|-224\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('A-Destiny', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('A-Destiny', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('A-Destiny', 'Release Group');
-- --- END op 2949

-- --- BEGIN op 2950 ( update regular_expression "A-Destiny" )
update "regular_expressions" set "pattern" = '\b(A-Destiny)\b' where "name" = 'A-Destiny' and "pattern" = '\[224\]|-224\b';
-- --- END op 2950

-- --- BEGIN op 2951 ( create regular_expression "AceAres" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('AceAres', '\b(A-Destiny)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('AceAres', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('AceAres', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('AceAres', 'Release Group');
-- --- END op 2951

-- --- BEGIN op 2952 ( update regular_expression "AceAres" )
update "regular_expressions" set "pattern" = '\b(AceAres)\b' where "name" = 'AceAres' and "pattern" = '\b(A-Destiny)\b';
-- --- END op 2952

-- --- BEGIN op 2953 ( create regular_expression "AhmadDev" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('AhmadDev', '\b(AceAres)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('AhmadDev', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('AhmadDev', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('AhmadDev', 'Release Group');
-- --- END op 2953

-- --- BEGIN op 2954 ( update regular_expression "AhmadDev" )
update "regular_expressions" set "pattern" = '\b(AhmadDev)\b' where "name" = 'AhmadDev' and "pattern" = '\b(AceAres)\b';
-- --- END op 2954

-- --- BEGIN op 2955 ( create regular_expression "Anime Chap" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Anime Chap', '\b(AhmadDev)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Anime Chap', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Anime Chap', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Anime Chap', 'Release Group');
-- --- END op 2955

-- --- BEGIN op 2956 ( update regular_expression "Anime Chap" )
update "regular_expressions" set "pattern" = '\b(Anime[ .-]?Chap)\b' where "name" = 'Anime Chap' and "pattern" = '\b(AhmadDev)\b';
-- --- END op 2956

-- --- BEGIN op 2957 ( create regular_expression "Anime Land" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Anime Land', '\b(Anime[ .-]?Chap)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Anime Land', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Anime Land', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Anime Land', 'Release Group');
-- --- END op 2957

-- --- BEGIN op 2958 ( update regular_expression "Anime Land" )
update "regular_expressions" set "pattern" = '\b(Anime[ .-]?Land)\b' where "name" = 'Anime Land' and "pattern" = '\b(Anime[ .-]?Chap)\b';
-- --- END op 2958

-- --- BEGIN op 2959 ( create regular_expression "Anime Time" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Anime Time', '\b(Anime[ .-]?Land)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Anime Time', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Anime Time', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Anime Time', 'Release Group');
-- --- END op 2959

-- --- BEGIN op 2960 ( update regular_expression "Anime Time" )
update "regular_expressions" set "pattern" = '\b(Anime[ .-]?Time)\b' where "name" = 'Anime Time' and "pattern" = '\b(Anime[ .-]?Land)\b';
-- --- END op 2960

-- --- BEGIN op 2961 ( create regular_expression "AnimeDynastyEN" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('AnimeDynastyEN', '\b(Anime[ .-]?Time)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('AnimeDynastyEN', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('AnimeDynastyEN', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('AnimeDynastyEN', 'Release Group');
-- --- END op 2961

-- --- BEGIN op 2962 ( update regular_expression "AnimeDynastyEN" )
update "regular_expressions" set "pattern" = '\b(AnimeDynastyEN)\b' where "name" = 'AnimeDynastyEN' and "pattern" = '\b(Anime[ .-]?Time)\b';
-- --- END op 2962

-- --- BEGIN op 2963 ( create regular_expression "AnimeKuro" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('AnimeKuro', '\b(AnimeDynastyEN)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('AnimeKuro', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('AnimeKuro', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('AnimeKuro', 'Release Group');
-- --- END op 2963

-- --- BEGIN op 2964 ( update regular_expression "AnimeKuro" )
update "regular_expressions" set "pattern" = '\b(AnimeKuro)\b' where "name" = 'AnimeKuro' and "pattern" = '\b(AnimeDynastyEN)\b';
-- --- END op 2964

-- --- BEGIN op 2965 ( create regular_expression "AnimeRG" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('AnimeRG', '\b(AnimeDynastyEN)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('AnimeRG', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('AnimeRG', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('AnimeRG', 'Release Group');
-- --- END op 2965

-- --- BEGIN op 2966 ( update regular_expression "AnimeRG" )
update "regular_expressions" set "pattern" = '\b(AnimeRG)\b' where "name" = 'AnimeRG' and "pattern" = '\b(AnimeDynastyEN)\b';
-- --- END op 2966

-- --- BEGIN op 2967 ( create regular_expression "Animesubs" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Animesubs', '\b(AnimeRG)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Animesubs', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Animesubs', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Animesubs', 'Release Group');
-- --- END op 2967

-- --- BEGIN op 2968 ( update regular_expression "Animesubs" )
update "regular_expressions" set "pattern" = '\b(Animesubs)\b' where "name" = 'Animesubs' and "pattern" = '\b(AnimeRG)\b';
-- --- END op 2968

-- --- BEGIN op 2969 ( create regular_expression "AnimeTR" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('AnimeTR', '\b(Animesubs)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('AnimeTR', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('AnimeTR', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('AnimeTR', 'Release Group');
-- --- END op 2969

-- --- BEGIN op 2970 ( update regular_expression "AnimeTR" )
update "regular_expressions" set "pattern" = '\b(AnimeTR)\b' where "name" = 'AnimeTR' and "pattern" = '\b(Animesubs)\b';
-- --- END op 2970

-- --- BEGIN op 2971 ( create regular_expression "Anitsu" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Anitsu', '\b(Animesubs)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Anitsu', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Anitsu', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Anitsu', 'Release Group');
-- --- END op 2971

-- --- BEGIN op 2972 ( update regular_expression "Anitsu" )
update "regular_expressions" set "pattern" = '\b(Anitsu)\b' where "name" = 'Anitsu' and "pattern" = '\b(Animesubs)\b';
-- --- END op 2972

-- --- BEGIN op 2973 ( create regular_expression "AniVoid" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('AniVoid', '\b(Anitsu)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('AniVoid', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('AniVoid', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('AniVoid', 'Release Group');
-- --- END op 2973

-- --- BEGIN op 2974 ( update regular_expression "AniVoid" )
update "regular_expressions" set "pattern" = '\b(AniVoid)\b' where "name" = 'AniVoid' and "pattern" = '\b(Anitsu)\b';
-- --- END op 2974

-- --- BEGIN op 2975 ( create regular_expression "ArataEnc" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('ArataEnc', '\b(AniVoid)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ArataEnc', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ArataEnc', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ArataEnc', 'Release Group');
-- --- END op 2975

-- --- BEGIN op 2976 ( update regular_expression "ArataEnc" )
update "regular_expressions" set "pattern" = '\b(ArataEnc)\b' where "name" = 'ArataEnc' and "pattern" = '\b(AniVoid)\b';
-- --- END op 2976

-- --- BEGIN op 2977 ( create regular_expression "AREY" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('AREY', '\b(ArataEnc)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('AREY', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('AREY', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('AREY', 'Release Group');
-- --- END op 2977

-- --- BEGIN op 2978 ( update regular_expression "AREY" )
update "regular_expressions" set "pattern" = '\b(AREY)\b' where "name" = 'AREY' and "pattern" = '\b(ArataEnc)\b';
-- --- END op 2978

-- --- BEGIN op 2979 ( create regular_expression "Ari" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Ari', '\b(AREY)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Ari', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Ari', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Ari', 'Release Group');
-- --- END op 2979

-- --- BEGIN op 2980 ( update regular_expression "Ari" )
update "regular_expressions" set "pattern" = '^\[Ari\]|-Ari$' where "name" = 'Ari' and "pattern" = '\b(AREY)\b';
-- --- END op 2980

-- --- BEGIN op 2981 ( create regular_expression "ASW" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('ASW', '^\[Ari\]|-Ari$', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ASW', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ASW', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ASW', 'Release Group');
-- --- END op 2981

-- --- BEGIN op 2982 ( update regular_expression "ASW" )
update "regular_expressions" set "pattern" = '\b(ASW)\b' where "name" = 'ASW' and "pattern" = '^\[Ari\]|-Ari$';
-- --- END op 2982

-- --- BEGIN op 2983 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', '0neshot', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', '0neshot', '0neshot');
-- --- END op 2983

-- --- BEGIN op 2984 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', '224', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', '224', '224');
-- --- END op 2984

-- --- BEGIN op 2985 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'A-Destiny', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'A-Destiny', 'A-Destiny');
-- --- END op 2985

-- --- BEGIN op 2986 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'AceAres', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'AceAres', 'AceAres');
-- --- END op 2986

-- --- BEGIN op 2987 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'AhmadDev', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'AhmadDev', 'AhmadDev');
-- --- END op 2987

-- --- BEGIN op 2988 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'Anime Chap', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'Anime Chap', 'Anime Chap');
-- --- END op 2988

-- --- BEGIN op 2989 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'Anime Land', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'Anime Land', 'Anime Land');
-- --- END op 2989

-- --- BEGIN op 2990 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'Anime Time', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'Anime Time', 'Anime Time');
-- --- END op 2990

-- --- BEGIN op 2991 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'AnimeDynastyEN', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'AnimeDynastyEN', 'AnimeDynastyEN');
-- --- END op 2991

-- --- BEGIN op 2992 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'AnimeKuro', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'AnimeKuro', 'AnimeKuro');
-- --- END op 2992

-- --- BEGIN op 2993 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'AnimeRG', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'AnimeRG', 'AnimeRG');
-- --- END op 2993

-- --- BEGIN op 2994 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'Animesubs', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'Animesubs', 'Animesubs');
-- --- END op 2994

-- --- BEGIN op 2995 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'AnimeTR', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'AnimeTR', 'AnimeTR');
-- --- END op 2995

-- --- BEGIN op 2996 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'Anitsu', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'Anitsu', 'Anitsu');
-- --- END op 2996

-- --- BEGIN op 2997 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'AniVoid', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'AniVoid', 'AniVoid');
-- --- END op 2997

-- --- BEGIN op 2998 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'ArataEnc', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'ArataEnc', 'ArataEnc');
-- --- END op 2998

-- --- BEGIN op 2999 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'AREY', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'AREY', 'AREY');
-- --- END op 2999

-- --- BEGIN op 3000 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'Ari', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'Ari', 'Ari');
-- --- END op 3000

-- --- BEGIN op 3001 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'ASW', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'ASW', 'ASW');
-- --- END op 3001

-- --- BEGIN op 3002 ( create regular_expression "BJX" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('BJX', '\b(ASW)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('BJX', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('BJX', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('BJX', 'Release Group');
-- --- END op 3002

-- --- BEGIN op 3003 ( update regular_expression "BJX" )
update "regular_expressions" set "pattern" = '\b(BJX)\b' where "name" = 'BJX' and "pattern" = '\b(ASW)\b';
-- --- END op 3003

-- --- BEGIN op 3004 ( create regular_expression "BlackLuster" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('BlackLuster', '\b(BJX)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('BlackLuster', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('BlackLuster', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('BlackLuster', 'Release Group');
-- --- END op 3004

-- --- BEGIN op 3005 ( update regular_expression "BlackLuster" )
update "regular_expressions" set "pattern" = '\b(BlackLuster)\b' where "name" = 'BlackLuster' and "pattern" = '\b(BJX)\b';
-- --- END op 3005

-- --- BEGIN op 3006 ( create regular_expression "bonkai77" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('bonkai77', '\b(BlackLuster)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('bonkai77', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('bonkai77', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('bonkai77', 'Release Group');
-- --- END op 3006

-- --- BEGIN op 3007 ( update regular_expression "bonkai77" )
update "regular_expressions" set "pattern" = '\b(bonkai77)\b' where "name" = 'bonkai77' and "pattern" = '\b(BlackLuster)\b';
-- --- END op 3007

-- --- BEGIN op 3008 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'BJX', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'BJX', 'BJX');
-- --- END op 3008

-- --- BEGIN op 3009 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'BlackLuster', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'BlackLuster', 'BlackLuster');
-- --- END op 3009

-- --- BEGIN op 3010 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'bonkai77', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'bonkai77', 'bonkai77');
-- --- END op 3010

-- --- BEGIN op 3011 ( create regular_expression "\b(CameEsp)\b" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('\b(CameEsp)\b', '\b(\$tore-Chill)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('\b(CameEsp)\b', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('\b(CameEsp)\b', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('\b(CameEsp)\b', 'Release Group');
-- --- END op 3011

-- --- BEGIN op 3012 ( update regular_expression "\b(CameEsp)\b" )
update "regular_expressions" set "pattern" = '\b(CameEsp)\b' where "name" = '\b(CameEsp)\b' and "pattern" = '\b(\$tore-Chill)\b';
-- --- END op 3012

-- --- BEGIN op 3013 ( update regular_expression "CameEsp" )
update "regular_expressions" set "name" = 'CameEsp' where "name" = '\b(CameEsp)\b';
-- --- END op 3013

-- --- BEGIN op 3014 ( create regular_expression "Cat66" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Cat66', '\b(CameEsp)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Cat66', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Cat66', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Cat66', 'Release Group');
-- --- END op 3014

-- --- BEGIN op 3015 ( update regular_expression "Cat66" )
update "regular_expressions" set "pattern" = '\b(Cat66)\b' where "name" = 'Cat66' and "pattern" = '\b(CameEsp)\b';
-- --- END op 3015

-- --- BEGIN op 3016 ( create regular_expression "CBB" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('CBB', '\b(Cat66)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('CBB', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('CBB', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('CBB', 'Release Group');
-- --- END op 3016

-- --- BEGIN op 3017 ( update regular_expression "CBB" )
update "regular_expressions" set "pattern" = '\b(CBB)\b' where "name" = 'CBB' and "pattern" = '\b(Cat66)\b';
-- --- END op 3017

-- --- BEGIN op 3018 ( create regular_expression "Cerberus" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Cerberus', '\b(CBB)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Cerberus', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Cerberus', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Cerberus', 'Release Group');
-- --- END op 3018

-- --- BEGIN op 3019 ( update regular_expression "Cerberus" )
update "regular_expressions" set "pattern" = '\[Cerberus\]|-Cerberus\b' where "name" = 'Cerberus' and "pattern" = '\b(CBB)\b';
-- --- END op 3019

-- --- BEGIN op 3020 ( create regular_expression "Cleo" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Cleo', '\[Cerberus\]|-Cerberus\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Cleo', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Cleo', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Cleo', 'Release Group');
-- --- END op 3020

-- --- BEGIN op 3021 ( update regular_expression "Cleo" )
update "regular_expressions" set "pattern" = '\[Cleo\]|-Cleo' where "name" = 'Cleo' and "pattern" = '\[Cerberus\]|-Cerberus\b';
-- --- END op 3021

-- --- BEGIN op 3022 ( create regular_expression "CuaP" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('CuaP', '\[Cleo\]|-Cleo', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('CuaP', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('CuaP', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('CuaP', 'Release Group');
-- --- END op 3022

-- --- BEGIN op 3023 ( update regular_expression "CuaP" )
update "regular_expressions" set "pattern" = '\b(CuaP)\b' where "name" = 'CuaP' and "pattern" = '\[Cleo\]|-Cleo';
-- --- END op 3023

-- --- BEGIN op 3024 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'CameEsp', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'CameEsp', 'CameEsp');
-- --- END op 3024

-- --- BEGIN op 3025 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'Cat66', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'Cat66', 'Cat66');
-- --- END op 3025

-- --- BEGIN op 3026 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'CBB', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'CBB', 'CBB');
-- --- END op 3026

-- --- BEGIN op 3027 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'Cerberus', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'Cerberus', 'Cerberus');
-- --- END op 3027

-- --- BEGIN op 3028 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'Cleo', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'Cleo', 'Cleo');
-- --- END op 3028

-- --- BEGIN op 3029 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'CuaP', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'CuaP', 'CuaP');
-- --- END op 3029

-- --- BEGIN op 3030 ( create regular_expression "Daddy Subs" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Daddy Subs', '\b(CuaP)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Daddy Subs', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Daddy Subs', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Daddy Subs', 'Release Group');
-- --- END op 3030

-- --- BEGIN op 3031 ( update regular_expression "Daddy Subs" )
update "regular_expressions" set "pattern" = '\[Daddy(Subs)?\]|-Daddy(Subs)?\b' where "name" = 'Daddy Subs' and "pattern" = '\b(CuaP)\b';
-- --- END op 3031

-- --- BEGIN op 3032 ( create regular_expression "DARKFLiX" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('DARKFLiX', '\[Daddy(Subs)?\]|-Daddy(Subs)?\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('DARKFLiX', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('DARKFLiX', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('DARKFLiX', 'Release Group');
-- --- END op 3032

-- --- BEGIN op 3033 ( update regular_expression "DARKFLiX" )
update "regular_expressions" set "pattern" = '\b(DARKFLiX)\b' where "name" = 'DARKFLiX' and "pattern" = '\[Daddy(Subs)?\]|-Daddy(Subs)?\b';
-- --- END op 3033

-- --- BEGIN op 3034 ( create regular_expression "DB" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('DB', '\b(DARKFLiX)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('DB', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('DB', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('DB', 'Release Group');
-- --- END op 3034

-- --- BEGIN op 3035 ( update regular_expression "DB" )
update "regular_expressions" set "pattern" = '\[DB\]' where "name" = 'DB' and "pattern" = '\b(DARKFLiX)\b';
-- --- END op 3035

-- --- BEGIN op 3036 ( create regular_expression "DBArabic" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('DBArabic', '\[DB\]', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('DBArabic', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('DBArabic', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('DBArabic', 'Release Group');
-- --- END op 3036

-- --- BEGIN op 3037 ( update regular_expression "DBArabic" )
update "regular_expressions" set "pattern" = '\b(DBArabic)\b' where "name" = 'DBArabic' and "pattern" = '\[DB\]';
-- --- END op 3037

-- --- BEGIN op 3038 ( create regular_expression "Deadmau RAWS" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Deadmau RAWS', '\b(DBArabic)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Deadmau RAWS', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Deadmau RAWS', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Deadmau RAWS', 'Release Group');
-- --- END op 3038

-- --- BEGIN op 3039 ( update regular_expression "Deadmau RAWS" )
update "regular_expressions" set "pattern" = '\b(Deadmau[ .-]?[ .-]?RAWS)\b' where "name" = 'Deadmau RAWS' and "pattern" = '\b(DBArabic)\b';
-- --- END op 3039

-- --- BEGIN op 3040 ( create regular_expression "DKB" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('DKB', '\b(Deadmau[ .-]?[ .-]?RAWS)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('DKB', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('DKB', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('DKB', 'Release Group');
-- --- END op 3040

-- --- BEGIN op 3041 ( update regular_expression "DKB" )
update "regular_expressions" set "pattern" = '\b(DKB)\b' where "name" = 'DKB' and "pattern" = '\b(Deadmau[ .-]?[ .-]?RAWS)\b';
-- --- END op 3041

-- --- BEGIN op 3042 ( create regular_expression "DP" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('DP', '\b(DKB)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('DP', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('DP', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('DP', 'Release Group');
-- --- END op 3042

-- --- BEGIN op 3043 ( update regular_expression "DP" )
update "regular_expressions" set "pattern" = '\b(DP)\b' where "name" = 'DP' and "pattern" = '\b(DKB)\b';
-- --- END op 3043

-- --- BEGIN op 3044 ( create regular_expression "DSunS" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('DSunS', '\b(DP)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('DSunS', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('DSunS', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('DSunS', 'Release Group');
-- --- END op 3044

-- --- BEGIN op 3045 ( update regular_expression "DSunS" )
update "regular_expressions" set "pattern" = '\b(DsunS)\b' where "name" = 'DSunS' and "pattern" = '\b(DP)\b';
-- --- END op 3045

-- --- BEGIN op 3046 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'Daddy Subs', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'Daddy Subs', 'Daddy Subs');
-- --- END op 3046

-- --- BEGIN op 3047 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'DARKFLiX', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'DARKFLiX', 'DARKFLiX');
-- --- END op 3047

-- --- BEGIN op 3048 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'DB', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'DB', 'DB');
-- --- END op 3048

-- --- BEGIN op 3049 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'DBArabic', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'DBArabic', 'DBArabic');
-- --- END op 3049

-- --- BEGIN op 3050 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'Deadmau RAWS', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'Deadmau RAWS', 'Deadmau RAWS');
-- --- END op 3050

-- --- BEGIN op 3051 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'DKB', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'DKB', 'DKB');
-- --- END op 3051

-- --- BEGIN op 3052 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'DP', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'DP', 'DP');
-- --- END op 3052

-- --- BEGIN op 3053 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'DsunS', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'DsunS', 'DSunS');
-- --- END op 3053

-- --- BEGIN op 3054 ( delete regular_expression "Anime LQ" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Anime LQ' AND tag_name = 'Anime';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Anime LQ' AND tag_name = 'Banned';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Anime LQ' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'Anime LQ';
-- --- END op 3054

-- --- BEGIN op 3055 ( create regular_expression "Emmid" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Emmid', '\b(DsunS)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Emmid', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Emmid', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Emmid', 'Release Group');
-- --- END op 3055

-- --- BEGIN op 3056 ( update regular_expression "Emmid" )
update "regular_expressions" set "pattern" = '\[Emmid\]|-Emmid\b' where "name" = 'Emmid' and "pattern" = '\b(DsunS)\b';
-- --- END op 3056

-- --- BEGIN op 3057 ( create regular_expression "ExREN" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('ExREN', '\[Emmid\]|-Emmid\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ExREN', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ExREN', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ExREN', 'Release Group');
-- --- END op 3057

-- --- BEGIN op 3058 ( update regular_expression "ExREN" )
update "regular_expressions" set "pattern" = '\b(ExREN)\b' where "name" = 'ExREN' and "pattern" = '\[Emmid\]|-Emmid\b';
-- --- END op 3058

-- --- BEGIN op 3059 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'ExREN', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'ExREN', 'ExREN');
-- --- END op 3059

-- --- BEGIN op 3060 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'Emmid', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'Emmid', 'Emmid');
-- --- END op 3060

-- --- BEGIN op 3061 ( create regular_expression "FAV" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('FAV', '\b(ExREN)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('FAV', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('FAV', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('FAV', 'Release Group');
-- --- END op 3061

-- --- BEGIN op 3062 ( update regular_expression "FAV" )
update "regular_expressions" set "pattern" = '\[FAV\]|-FAV\b' where "name" = 'FAV' and "pattern" = '\b(ExREN)\b';
-- --- END op 3062

-- --- BEGIN op 3063 ( create regular_expression "Fish" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Fish', '\[FAV\]|-FAV\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Fish', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Fish', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Fish', 'Release Group');
-- --- END op 3063

-- --- BEGIN op 3064 ( update regular_expression "Fish" )
update "regular_expressions" set "pattern" = '\b((Baked|Dead|Space)Fish)\b' where "name" = 'Fish' and "pattern" = '\[FAV\]|-FAV\b';
-- --- END op 3064

-- --- BEGIN op 3065 ( create regular_expression "FunArts" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('FunArts', '\b((Baked|Dead|Space)Fish)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('FunArts', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('FunArts', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('FunArts', 'Release Group');
-- --- END op 3065

-- --- BEGIN op 3066 ( update regular_expression "FunArts" )
update "regular_expressions" set "pattern" = '\b(FunArts)\b' where "name" = 'FunArts' and "pattern" = '\b((Baked|Dead|Space)Fish)\b';
-- --- END op 3066

-- --- BEGIN op 3067 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'FAV', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'FAV', 'FAV');
-- --- END op 3067

-- --- BEGIN op 3068 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'Fish', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'Fish', 'Fish');
-- --- END op 3068

-- --- BEGIN op 3069 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'FunArts', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'FunArts', 'FunArts');
-- --- END op 3069

-- --- BEGIN op 3070 ( create regular_expression "GERMini" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('GERMini', '\b(AnimeRG)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('GERMini', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('GERMini', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('GERMini', 'Release Group');
-- --- END op 3070

-- --- BEGIN op 3071 ( update regular_expression "GERMini" )
update "regular_expressions" set "pattern" = '\b(GERMini)\b' where "name" = 'GERMini' and "pattern" = '\b(AnimeRG)\b';
-- --- END op 3071

-- --- BEGIN op 3072 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'GERMini', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'GERMini', 'GERMini');
-- --- END op 3072

-- --- BEGIN op 3073 ( create regular_expression "Hakata Ramen" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Hakata Ramen', '\b(0neshot)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Hakata Ramen', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Hakata Ramen', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Hakata Ramen', 'Release Group');
-- --- END op 3073

-- --- BEGIN op 3074 ( update regular_expression "Hakata Ramen" )
update "regular_expressions" set "pattern" = '\b(Hakata[ .-]?Ramen)\b' where "name" = 'Hakata Ramen' and "pattern" = '\b(0neshot)\b';
-- --- END op 3074

-- --- BEGIN op 3075 ( create regular_expression "Hall of C" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Hall of C', '\b(Hakata[ .-]?Ramen)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Hall of C', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Hall of C', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Hall of C', 'Release Group');
-- --- END op 3075

-- --- BEGIN op 3076 ( update regular_expression "Hall of C" )
update "regular_expressions" set "pattern" = '\b(Hall_of_C)\b' where "name" = 'Hall of C' and "pattern" = '\b(Hakata[ .-]?Ramen)\b';
-- --- END op 3076

-- --- BEGIN op 3077 ( create regular_expression "Hatsuyuki" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Hatsuyuki', '\b(Hall_of_C)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Hatsuyuki', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Hatsuyuki', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Hatsuyuki', 'Release Group');
-- --- END op 3077

-- --- BEGIN op 3078 ( update regular_expression "Hatsuyuki" )
update "regular_expressions" set "pattern" = '\[Hatsuyuki\]|-Hatsuyuki\b' where "name" = 'Hatsuyuki' and "pattern" = '\b(Hall_of_C)\b';
-- --- END op 3078

-- --- BEGIN op 3079 ( create regular_expression "HAV1T" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('HAV1T', '\[Hatsuyuki\]|-Hatsuyuki\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('HAV1T', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('HAV1T', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('HAV1T', 'Release Group');
-- --- END op 3079

-- --- BEGIN op 3080 ( update regular_expression "HAV1T" )
update "regular_expressions" set "pattern" = '\b(HAV1T)\b' where "name" = 'HAV1T' and "pattern" = '\[Hatsuyuki\]|-Hatsuyuki\b';
-- --- END op 3080

-- --- BEGIN op 3081 ( create regular_expression "HENiL" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('HENiL', '\b(HAV1T)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('HENiL', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('HENiL', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('HENiL', 'Release Group');
-- --- END op 3081

-- --- BEGIN op 3082 ( update regular_expression "HENiL" )
update "regular_expressions" set "pattern" = '\b(HENiL)\b' where "name" = 'HENiL' and "pattern" = '\b(HAV1T)\b';
-- --- END op 3082

-- --- BEGIN op 3083 ( create regular_expression "Hitoku" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Hitoku', '\b(HENiL)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Hitoku', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Hitoku', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Hitoku', 'Release Group');
-- --- END op 3083

-- --- BEGIN op 3084 ( update regular_expression "Hitoku" )
update "regular_expressions" set "pattern" = '\[Hitoku\]|-Hitoku\b' where "name" = 'Hitoku' and "pattern" = '\b(HENiL)\b';
-- --- END op 3084

-- --- BEGIN op 3085 ( create regular_expression "HollowRoxas" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('HollowRoxas', '\[Hitoku\]|-Hitoku\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('HollowRoxas', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('HollowRoxas', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('HollowRoxas', 'Release Group');
-- --- END op 3085

-- --- BEGIN op 3086 ( update regular_expression "HollowRoxas" )
update "regular_expressions" set "pattern" = '\b(HollowRoxas)\b' where "name" = 'HollowRoxas' and "pattern" = '\[Hitoku\]|-Hitoku\b';
-- --- END op 3086

-- --- BEGIN op 3087 ( create regular_expression "HR" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('HR', '\b(HollowRoxas)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('HR', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('HR', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('HR', 'Release Group');
-- --- END op 3087

-- --- BEGIN op 3088 ( update regular_expression "HR" )
update "regular_expressions" set "pattern" = '\[HR\]|-HR\b' where "name" = 'HR' and "pattern" = '\b(HollowRoxas)\b';
-- --- END op 3088

-- --- BEGIN op 3089 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'Hakata Ramen', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'Hakata Ramen', 'Hakata Ramen');
-- --- END op 3089

-- --- BEGIN op 3090 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'Hall of C', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'Hall of C', 'Hall of C');
-- --- END op 3090

-- --- BEGIN op 3091 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'Hatsuyuki', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'Hatsuyuki', 'Hatsuyuki');
-- --- END op 3091

-- --- BEGIN op 3092 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'HAV1T', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'HAV1T', 'HAV1T');
-- --- END op 3092

-- --- BEGIN op 3093 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'HENiL', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'HENiL', 'HENiL');
-- --- END op 3093

-- --- BEGIN op 3094 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'Hitoku', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'Hitoku', 'Hitoku');
-- --- END op 3094

-- --- BEGIN op 3095 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'HollowRoxas', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'HollowRoxas', 'HollowRoxas');
-- --- END op 3095

-- --- BEGIN op 3096 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'HR', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'HR', 'HR');
-- --- END op 3096

-- --- BEGIN op 3097 ( create regular_expression "ICEBLUE" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('ICEBLUE', '\[Hitoku\]|-Hitoku\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ICEBLUE', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ICEBLUE', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ICEBLUE', 'Release Group');
-- --- END op 3097

-- --- BEGIN op 3098 ( update regular_expression "ICEBLUE" )
update "regular_expressions" set "pattern" = '\b(ICEBLUE)\b' where "name" = 'ICEBLUE' and "pattern" = '\[Hitoku\]|-Hitoku\b';
-- --- END op 3098

-- --- BEGIN op 3099 ( create regular_expression "iPUNISHER" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('iPUNISHER', '\b(ICEBLUE)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('iPUNISHER', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('iPUNISHER', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('iPUNISHER', 'Release Group');
-- --- END op 3099

-- --- BEGIN op 3100 ( update regular_expression "iPUNISHER" )
update "regular_expressions" set "pattern" = '\b(iPUNISHER)\b' where "name" = 'iPUNISHER' and "pattern" = '\b(ICEBLUE)\b';
-- --- END op 3100

-- --- BEGIN op 3101 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'ICEBLUE', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'ICEBLUE', 'ICEBLUE');
-- --- END op 3101

-- --- BEGIN op 3102 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'iPUNISHER', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'iPUNISHER', 'iPUNISHER');
-- --- END op 3102

-- --- BEGIN op 3103 ( create regular_expression "JacobSwaggedUp" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('JacobSwaggedUp', '\b(BJX)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('JacobSwaggedUp', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('JacobSwaggedUp', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('JacobSwaggedUp', 'Release Group');
-- --- END op 3103

-- --- BEGIN op 3104 ( update regular_expression "JacobSwaggedUp" )
update "regular_expressions" set "pattern" = '\b(JacobSwaggedUp)\b' where "name" = 'JacobSwaggedUp' and "pattern" = '\b(BJX)\b';
-- --- END op 3104

-- --- BEGIN op 3105 ( create regular_expression "Johnny-englishsubs" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Johnny-englishsubs', '\b(JacobSwaggedUp)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Johnny-englishsubs', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Johnny-englishsubs', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Johnny-englishsubs', 'Release Group');
-- --- END op 3105

-- --- BEGIN op 3106 ( update regular_expression "Johnny-englishsubs" )
update "regular_expressions" set "pattern" = '\b(Johnny-englishsubs)\b' where "name" = 'Johnny-englishsubs' and "pattern" = '\b(JacobSwaggedUp)\b';
-- --- END op 3106

-- --- BEGIN op 3107 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'Johnny-englishsubs', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'Johnny-englishsubs', 'Johnny-englishsubs');
-- --- END op 3107

-- --- BEGIN op 3108 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'JacobSwaggedUp', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'JacobSwaggedUp', 'JacobSwaggedUp');
-- --- END op 3108

-- --- BEGIN op 3109 ( create regular_expression "Kallango" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Kallango', '\[Hitoku\]|-Hitoku\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Kallango', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Kallango', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Kallango', 'Release Group');
-- --- END op 3109

-- --- BEGIN op 3110 ( update regular_expression "Kallango" )
update "regular_expressions" set "pattern" = '\[Kallango\]|-Kallango\b' where "name" = 'Kallango' and "pattern" = '\[Hitoku\]|-Hitoku\b';
-- --- END op 3110

-- --- BEGIN op 3111 ( create regular_expression "Kanjouteki" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Kanjouteki', '\[Kallango\]|-Kallango\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Kanjouteki', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Kanjouteki', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Kanjouteki', 'Release Group');
-- --- END op 3111

-- --- BEGIN op 3112 ( update regular_expression "Kanjouteki" )
update "regular_expressions" set "pattern" = '\b(Kanjouteki)\b' where "name" = 'Kanjouteki' and "pattern" = '\[Kallango\]|-Kallango\b';
-- --- END op 3112

-- --- BEGIN op 3113 ( create regular_expression "KEKMASTERS" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('KEKMASTERS', '\b(Kanjouteki)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('KEKMASTERS', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('KEKMASTERS', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('KEKMASTERS', 'Release Group');
-- --- END op 3113

-- --- BEGIN op 3114 ( update regular_expression "KEKMASTERS" )
update "regular_expressions" set "pattern" = '\b(KEKMASTERS)\b' where "name" = 'KEKMASTERS' and "pattern" = '\b(Kanjouteki)\b';
-- --- END op 3114

-- --- BEGIN op 3115 ( create regular_expression "Kirion" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Kirion', '\b(KEKMASTERS)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Kirion', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Kirion', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Kirion', 'Release Group');
-- --- END op 3115

-- --- BEGIN op 3116 ( update regular_expression "Kirion" )
update "regular_expressions" set "pattern" = '\b(Kirion)\b' where "name" = 'Kirion' and "pattern" = '\b(KEKMASTERS)\b';
-- --- END op 3116

-- --- BEGIN op 3117 ( create regular_expression "KQRM" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('KQRM', '\b(Kirion)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('KQRM', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('KQRM', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('KQRM', 'Release Group');
-- --- END op 3117

-- --- BEGIN op 3118 ( create regular_expression "KRP" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('KRP', '\b(Kirion)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('KRP', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('KRP', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('KRP', 'Release Group');
-- --- END op 3118

-- --- BEGIN op 3119 ( update regular_expression "KRP" )
update "regular_expressions" set "pattern" = '\b(KRP)\b' where "name" = 'KRP' and "pattern" = '\b(Kirion)\b';
-- --- END op 3119

-- --- BEGIN op 3120 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'Kallango', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'Kallango', 'Kallango');
-- --- END op 3120

-- --- BEGIN op 3121 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'Kanjouteki', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'Kanjouteki', 'Kanjouteki');
-- --- END op 3121

-- --- BEGIN op 3122 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'KEKMASTERS', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'KEKMASTERS', 'KEKMASTERS');
-- --- END op 3122

-- --- BEGIN op 3123 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'Kirion', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'Kirion', 'Kirion');
-- --- END op 3123

-- --- BEGIN op 3124 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'KQRM', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'KQRM', 'KQRM');
-- --- END op 3124

-- --- BEGIN op 3125 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'KRP', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'KRP', 'KRP');
-- --- END op 3125

-- --- BEGIN op 3126 ( create regular_expression "LoliHouse" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('LoliHouse', '\[Kallango\]|-Kallango\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('LoliHouse', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('LoliHouse', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('LoliHouse', 'Release Group');
-- --- END op 3126

-- --- BEGIN op 3127 ( update regular_expression "LoliHouse" )
update "regular_expressions" set "pattern" = '\b(LoliHouse)\b' where "name" = 'LoliHouse' and "pattern" = '\[Kallango\]|-Kallango\b';
-- --- END op 3127

-- --- BEGIN op 3128 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'LoliHouse', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'LoliHouse', 'LoliHouse');
-- --- END op 3128

-- --- BEGIN op 3129 ( create regular_expression "M@nI" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('M@nI', '\b(Kirion)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('M@nI', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('M@nI', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('M@nI', 'Release Group');
-- --- END op 3129

-- --- BEGIN op 3130 ( update regular_expression "M@nI" )
update "regular_expressions" set "pattern" = '\b(M@nI)\b' where "name" = 'M@nI' and "pattern" = '\b(Kirion)\b';
-- --- END op 3130

-- --- BEGIN op 3131 ( create regular_expression "mal lu zen" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('mal lu zen', '\b(M@nI)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('mal lu zen', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('mal lu zen', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('mal lu zen', 'Release Group');
-- --- END op 3131

-- --- BEGIN op 3132 ( update regular_expression "mal lu zen" )
update "regular_expressions" set "pattern" = '\b(mal[ .-]lu[ .-]zen)\b' where "name" = 'mal lu zen' and "pattern" = '\b(M@nI)\b';
-- --- END op 3132

-- --- BEGIN op 3133 ( create regular_expression "Man K" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Man K', '\b(mal[ .-]lu[ .-]zen)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Man K', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Man K', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Man K', 'Release Group');
-- --- END op 3133

-- --- BEGIN op 3134 ( update regular_expression "Man K" )
update "regular_expressions" set "pattern" = '\b(Man\.K)\b' where "name" = 'Man K' and "pattern" = '\b(mal[ .-]lu[ .-]zen)\b';
-- --- END op 3134

-- --- BEGIN op 3135 ( create regular_expression "Maximus" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Maximus', '\b(Man\.K)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Maximus', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Maximus', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Maximus', 'Release Group');
-- --- END op 3135

-- --- BEGIN op 3136 ( update regular_expression "Maximus" )
update "regular_expressions" set "pattern" = '\[Maximus\]|-Maximus\b' where "name" = 'Maximus' and "pattern" = '\b(Man\.K)\b';
-- --- END op 3136

-- --- BEGIN op 3137 ( create regular_expression "MD" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('MD', '\[Maximus\]|-Maximus\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('MD', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('MD', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('MD', 'Release Group');
-- --- END op 3137

-- --- BEGIN op 3138 ( update regular_expression "MD" )
update "regular_expressions" set "pattern" = '\[MD\]|-MD\b' where "name" = 'MD' and "pattern" = '\[Maximus\]|-Maximus\b';
-- --- END op 3138

-- --- BEGIN op 3139 ( create regular_expression "mdcx" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('mdcx', '\[MD\]|-MD\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('mdcx', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('mdcx', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('mdcx', 'Release Group');
-- --- END op 3139

-- --- BEGIN op 3140 ( update regular_expression "mdcx" )
update "regular_expressions" set "pattern" = '\b(mdcx)\b' where "name" = 'mdcx' and "pattern" = '\[MD\]|-MD\b';
-- --- END op 3140

-- --- BEGIN op 3141 ( create regular_expression "Metaljerk" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Metaljerk', '\b(mdcx)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Metaljerk', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Metaljerk', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Metaljerk', 'Release Group');
-- --- END op 3141

-- --- BEGIN op 3142 ( update regular_expression "Metaljerk" )
update "regular_expressions" set "pattern" = '\b(Metaljerk)\b' where "name" = 'Metaljerk' and "pattern" = '\b(mdcx)\b';
-- --- END op 3142

-- --- BEGIN op 3143 ( create regular_expression "MGD" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('MGD', '\b(Metaljerk)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('MGD', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('MGD', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('MGD', 'Release Group');
-- --- END op 3143

-- --- BEGIN op 3144 ( update regular_expression "MGD" )
update "regular_expressions" set "pattern" = '\b(MGD)\b' where "name" = 'MGD' and "pattern" = '\b(Metaljerk)\b';
-- --- END op 3144

-- --- BEGIN op 3145 ( create regular_expression "MiniFreeza" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('MiniFreeza', '\b(MGD)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('MiniFreeza', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('MiniFreeza', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('MiniFreeza', 'Release Group');
-- --- END op 3145

-- --- BEGIN op 3146 ( update regular_expression "MiniFreeza" )
update "regular_expressions" set "pattern" = '\b(MiniFreeza)\b' where "name" = 'MiniFreeza' and "pattern" = '\b(MGD)\b';
-- --- END op 3146

-- --- BEGIN op 3147 ( create regular_expression "MiniMTBB" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('MiniMTBB', '\b(MiniFreeza)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('MiniMTBB', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('MiniMTBB', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('MiniMTBB', 'Release Group');
-- --- END op 3147

-- --- BEGIN op 3148 ( update regular_expression "MiniMTBB" )
update "regular_expressions" set "pattern" = '\b(MiniMTBB)\b' where "name" = 'MiniMTBB' and "pattern" = '\b(MiniFreeza)\b';
-- --- END op 3148

-- --- BEGIN op 3149 ( create regular_expression "MinisCuba" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('MinisCuba', '\b(MiniMTBB)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('MinisCuba', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('MinisCuba', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('MinisCuba', 'Release Group');
-- --- END op 3149

-- --- BEGIN op 3150 ( update regular_expression "MinisCuba" )
update "regular_expressions" set "pattern" = '\b(MinisCuba)\b' where "name" = 'MinisCuba' and "pattern" = '\b(MiniMTBB)\b';
-- --- END op 3150

-- --- BEGIN op 3151 ( create regular_expression "MinisTheatre" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('MinisTheatre', '\b(MinisCuba)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('MinisTheatre', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('MinisTheatre', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('MinisTheatre', 'Release Group');
-- --- END op 3151

-- --- BEGIN op 3152 ( update regular_expression "MinisTheatre" )
update "regular_expressions" set "pattern" = '\b(MiniTheatre)\b' where "name" = 'MinisTheatre' and "pattern" = '\b(MinisCuba)\b';
-- --- END op 3152

-- --- BEGIN op 3153 ( create regular_expression "Mites" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Mites', '\b(MiniTheatre)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Mites', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Mites', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Mites', 'Release Group');
-- --- END op 3153

-- --- BEGIN op 3154 ( update regular_expression "Mites" )
update "regular_expressions" set "pattern" = '\b(Mites)\b' where "name" = 'Mites' and "pattern" = '\b(MiniTheatre)\b';
-- --- END op 3154

-- --- BEGIN op 3155 ( create regular_expression "Modders Bay" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Modders Bay', '\b(Mites)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Modders Bay', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Modders Bay', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Modders Bay', 'Release Group');
-- --- END op 3155

-- --- BEGIN op 3156 ( update regular_expression "Modders Bay" )
update "regular_expressions" set "pattern" = '\b(Modders[ .-]?Bay)\b' where "name" = 'Modders Bay' and "pattern" = '\b(Mites)\b';
-- --- END op 3156

-- --- BEGIN op 3157 ( create regular_expression "Mr Deadpool" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Mr Deadpool', '\b(Modders[ .-]?Bay)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Mr Deadpool', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Mr Deadpool', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Mr Deadpool', 'Release Group');
-- --- END op 3157

-- --- BEGIN op 3158 ( update regular_expression "Mr Deadpool" )
update "regular_expressions" set "pattern" = '\b(Mr\.Deadpool)\b' where "name" = 'Mr Deadpool' and "pattern" = '\b(Modders[ .-]?Bay)\b';
-- --- END op 3158

-- --- BEGIN op 3159 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'M@nI', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'M@nI', 'M@nI');
-- --- END op 3159

-- --- BEGIN op 3160 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'mal lu zen', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'mal lu zen', 'mal lu zen');
-- --- END op 3160

-- --- BEGIN op 3161 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'Man K', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'Man K', 'Man K');
-- --- END op 3161

-- --- BEGIN op 3162 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'Maximus', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'Maximus', 'Maximus');
-- --- END op 3162

-- --- BEGIN op 3163 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'MD', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'MD', 'MD');
-- --- END op 3163

-- --- BEGIN op 3164 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'mdcx', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'mdcx', 'mdcx');
-- --- END op 3164

-- --- BEGIN op 3165 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'Metaljerk', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'Metaljerk', 'Metaljerk');
-- --- END op 3165

-- --- BEGIN op 3166 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'MGD', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'MGD', 'MGD');
-- --- END op 3166

-- --- BEGIN op 3167 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'MiniFreeza', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'MiniFreeza', 'MiniFreeza');
-- --- END op 3167

-- --- BEGIN op 3168 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'MiniMTBB', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'MiniMTBB', 'MiniMTBB');
-- --- END op 3168

-- --- BEGIN op 3169 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'MinisCuba', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'MinisCuba', 'MinisCuba');
-- --- END op 3169

-- --- BEGIN op 3170 ( update regular_expression "MiniTheatre" )
update "regular_expressions" set "name" = 'MiniTheatre' where "name" = 'MinisTheatre';
-- --- END op 3170

-- --- BEGIN op 3171 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'MiniTheatre', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'MiniTheatre', 'MiniTheatre');
-- --- END op 3171

-- --- BEGIN op 3172 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'Mites', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'Mites', 'Mites');
-- --- END op 3172

-- --- BEGIN op 3173 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'Modders Bay', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'Modders Bay', 'Modders Bay');
-- --- END op 3173

-- --- BEGIN op 3174 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'Mr Deadpool', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'Mr Deadpool', 'Mr Deadpool');
-- --- END op 3174

-- --- BEGIN op 3175 ( create regular_expression "NemDiggers" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('NemDiggers', '\b(MiniTheatre)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('NemDiggers', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('NemDiggers', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('NemDiggers', 'Release Group');
-- --- END op 3175

-- --- BEGIN op 3176 ( update regular_expression "NemDiggers" )
update "regular_expressions" set "pattern" = '\b(NemDiggers)\b' where "name" = 'NemDiggers' and "pattern" = '\b(MiniTheatre)\b';
-- --- END op 3176

-- --- BEGIN op 3177 ( create regular_expression "neoHEVC" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('neoHEVC', '\b(NemDiggers)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('neoHEVC', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('neoHEVC', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('neoHEVC', 'Release Group');
-- --- END op 3177

-- --- BEGIN op 3178 ( update regular_expression "neoHEVC" )
update "regular_expressions" set "pattern" = '\b(neoHEVC)\b' where "name" = 'neoHEVC' and "pattern" = '\b(NemDiggers)\b';
-- --- END op 3178

-- --- BEGIN op 3179 ( create regular_expression "Nokou" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Nokou', '\b(neoHEVC)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Nokou', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Nokou', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Nokou', 'Release Group');
-- --- END op 3179

-- --- BEGIN op 3180 ( update regular_expression "Nokou" )
update "regular_expressions" set "pattern" = '\b(Nokou)\b' where "name" = 'Nokou' and "pattern" = '\b(neoHEVC)\b';
-- --- END op 3180

-- --- BEGIN op 3181 ( create regular_expression "Noob Subs" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Noob Subs', '\b(Nokou)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Noob Subs', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Noob Subs', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Noob Subs', 'Release Group');
-- --- END op 3181

-- --- BEGIN op 3182 ( update regular_expression "Noob Subs" )
update "regular_expressions" set "pattern" = '\b(N[eo][wo]b[ ._-]?Subs)\b' where "name" = 'Noob Subs' and "pattern" = '\b(Nokou)\b';
-- --- END op 3182

-- --- BEGIN op 3183 ( create regular_expression "NS" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('NS', '\b(N[eo][wo]b[ ._-]?Subs)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('NS', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('NS', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('NS', 'Release Group');
-- --- END op 3183

-- --- BEGIN op 3184 ( update regular_expression "NS" )
update "regular_expressions" set "pattern" = '\b(NS)\b' where "name" = 'NS' and "pattern" = '\b(N[eo][wo]b[ ._-]?Subs)\b';
-- --- END op 3184

-- --- BEGIN op 3185 ( create regular_expression "Nyanpasu" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Nyanpasu', '\b(NS)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Nyanpasu', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Nyanpasu', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Nyanpasu', 'Release Group');
-- --- END op 3185

-- --- BEGIN op 3186 ( update regular_expression "Nyanpasu" )
update "regular_expressions" set "pattern" = '\b(Nyanpasu)\b' where "name" = 'Nyanpasu' and "pattern" = '\b(NS)\b';
-- --- END op 3186

-- --- BEGIN op 3187 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'NemDiggers', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'NemDiggers', 'NemDiggers');
-- --- END op 3187

-- --- BEGIN op 3188 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'neoHEVC', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'neoHEVC', 'neoHEVC');
-- --- END op 3188

-- --- BEGIN op 3189 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'Nokou', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'Nokou', 'Nokou');
-- --- END op 3189

-- --- BEGIN op 3190 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'Noob Subs', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'Noob Subs', 'Noob Subs');
-- --- END op 3190

-- --- BEGIN op 3191 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'NS', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'NS', 'NS');
-- --- END op 3191

-- --- BEGIN op 3192 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'Nyanpasu', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'Nyanpasu', 'Nyanpasu');
-- --- END op 3192

-- --- BEGIN op 3193 ( create regular_expression "OldCastle" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('OldCastle', '\b(0neshot)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('OldCastle', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('OldCastle', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('OldCastle', 'Release Group');
-- --- END op 3193

-- --- BEGIN op 3194 ( update regular_expression "OldCastle" )
update "regular_expressions" set "pattern" = '\b(OldCastle)\b' where "name" = 'OldCastle' and "pattern" = '\b(0neshot)\b';
-- --- END op 3194

-- --- BEGIN op 3195 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'OldCastle', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'OldCastle', 'OldCastle');
-- --- END op 3195

-- --- BEGIN op 3196 ( create regular_expression "Pantsu" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Pantsu', '\b(Nyanpasu)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Pantsu', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Pantsu', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Pantsu', 'Release Group');
-- --- END op 3196

-- --- BEGIN op 3197 ( update regular_expression "Pantsu" )
update "regular_expressions" set "pattern" = '\[Pantsu\]|-Pantsu\b' where "name" = 'Pantsu' and "pattern" = '\b(Nyanpasu)\b';
-- --- END op 3197

-- --- BEGIN op 3198 ( create regular_expression "Pao" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Pao', '\[Pantsu\]|-Pantsu\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Pao', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Pao', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Pao', 'Release Group');
-- --- END op 3198

-- --- BEGIN op 3199 ( update regular_expression "Pao" )
update "regular_expressions" set "pattern" = '\[Pao\]|-Pao\b' where "name" = 'Pao' and "pattern" = '\[Pantsu\]|-Pantsu\b';
-- --- END op 3199

-- --- BEGIN op 3200 ( create regular_expression "phazer11" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('phazer11', '\[Pao\]|-Pao\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('phazer11', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('phazer11', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('phazer11', 'Release Group');
-- --- END op 3200

-- --- BEGIN op 3201 ( update regular_expression "phazer11" )
update "regular_expressions" set "pattern" = '\b(phazer11)\b' where "name" = 'phazer11' and "pattern" = '\[Pao\]|-Pao\b';
-- --- END op 3201

-- --- BEGIN op 3202 ( create regular_expression "Pixel" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Pixel', '\b(phazer11)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Pixel', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Pixel', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Pixel', 'Release Group');
-- --- END op 3202

-- --- BEGIN op 3203 ( create regular_expression "Plex Friendly" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Plex Friendly', '\b(phazer11)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Plex Friendly', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Plex Friendly', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Plex Friendly', 'Release Group');
-- --- END op 3203

-- --- BEGIN op 3204 ( update regular_expression "Plex Friendly" )
update "regular_expressions" set "pattern" = '\b(Plex[ .-]?Friendly)\b' where "name" = 'Plex Friendly' and "pattern" = '\b(phazer11)\b';
-- --- END op 3204

-- --- BEGIN op 3205 ( create regular_expression "PnPSubs" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('PnPSubs', '\b(Plex[ .-]?Friendly)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('PnPSubs', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('PnPSubs', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('PnPSubs', 'Release Group');
-- --- END op 3205

-- --- BEGIN op 3206 ( update regular_expression "PnPSubs" )
update "regular_expressions" set "pattern" = '\b(PnPSubs)\b' where "name" = 'PnPSubs' and "pattern" = '\b(Plex[ .-]?Friendly)\b';
-- --- END op 3206

-- --- BEGIN op 3207 ( create regular_expression "Polarwindz" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Polarwindz', '\b(PnPSubs)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Polarwindz', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Polarwindz', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Polarwindz', 'Release Group');
-- --- END op 3207

-- --- BEGIN op 3208 ( update regular_expression "Polarwindz" )
update "regular_expressions" set "pattern" = '\b(Polarwindz)\b' where "name" = 'Polarwindz' and "pattern" = '\b(PnPSubs)\b';
-- --- END op 3208

-- --- BEGIN op 3209 ( create regular_expression "Project-gxs" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Project-gxs', '\b(Polarwindz)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Project-gxs', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Project-gxs', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Project-gxs', 'Release Group');
-- --- END op 3209

-- --- BEGIN op 3210 ( update regular_expression "Project-gxs" )
update "regular_expressions" set "pattern" = '\b(Project-gxs)\b' where "name" = 'Project-gxs' and "pattern" = '\b(Polarwindz)\b';
-- --- END op 3210

-- --- BEGIN op 3211 ( create regular_expression "PuyaSubs" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('PuyaSubs', '\b(Project-gxs)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('PuyaSubs', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('PuyaSubs', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('PuyaSubs', 'Release Group');
-- --- END op 3211

-- --- BEGIN op 3212 ( update regular_expression "PuyaSubs" )
update "regular_expressions" set "pattern" = '\b(PuyaSubs)\b' where "name" = 'PuyaSubs' and "pattern" = '\b(Project-gxs)\b';
-- --- END op 3212

-- --- BEGIN op 3213 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'Pantsu', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'Pantsu', 'Pantsu');
-- --- END op 3213

-- --- BEGIN op 3214 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'Pao', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'Pao', 'Pao');
-- --- END op 3214

-- --- BEGIN op 3215 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'phazer11', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'phazer11', 'phazer11');
-- --- END op 3215

-- --- BEGIN op 3216 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'Pixel', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'Pixel', 'Pixel');
-- --- END op 3216

-- --- BEGIN op 3217 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'Plex Friendly', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'Plex Friendly', 'Plex Friendly');
-- --- END op 3217

-- --- BEGIN op 3218 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'PnPSubs', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'PnPSubs', 'PnPSubs');
-- --- END op 3218

-- --- BEGIN op 3219 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'Polarwindz', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'Polarwindz', 'Polarwindz');
-- --- END op 3219

-- --- BEGIN op 3220 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'Project-gxs', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'Project-gxs', 'Project-gxs');
-- --- END op 3220

-- --- BEGIN op 3221 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'PuyaSubs', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'PuyaSubs', 'PuyaSubs');
-- --- END op 3221

-- --- BEGIN op 3222 ( create regular_expression "QAS" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('QAS', '\b(Kirion)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('QAS', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('QAS', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('QAS', 'Release Group');
-- --- END op 3222

-- --- BEGIN op 3223 ( update regular_expression "QAS" )
update "regular_expressions" set "pattern" = '\b(QAS)\b' where "name" = 'QAS' and "pattern" = '\b(Kirion)\b';
-- --- END op 3223

-- --- BEGIN op 3224 ( create regular_expression "QCE" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('QCE', '\b(QAS)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('QCE', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('QCE', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('QCE', 'Release Group');
-- --- END op 3224

-- --- BEGIN op 3225 ( update regular_expression "QCE" )
update "regular_expressions" set "pattern" = '\b(QCE)\b' where "name" = 'QCE' and "pattern" = '\b(QAS)\b';
-- --- END op 3225

-- --- BEGIN op 3226 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'QAS', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'QAS', 'QAS');
-- --- END op 3226

-- --- BEGIN op 3227 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'QCE', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'QCE', 'QCE');
-- --- END op 3227

-- --- BEGIN op 3228 ( create regular_expression "Rando235" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Rando235', '\b(NemDiggers)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Rando235', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Rando235', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Rando235', 'Release Group');
-- --- END op 3228

-- --- BEGIN op 3229 ( update regular_expression "Rando235" )
update "regular_expressions" set "pattern" = '\b(Rando235)\b' where "name" = 'Rando235' and "pattern" = '\b(NemDiggers)\b';
-- --- END op 3229

-- --- BEGIN op 3230 ( create regular_expression "Ranger" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Ranger', '\b(Rando235)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Ranger', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Ranger', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Ranger', 'Release Group');
-- --- END op 3230

-- --- BEGIN op 3231 ( update regular_expression "Ranger" )
update "regular_expressions" set "pattern" = '\[Ranger\]|-Ranger\b' where "name" = 'Ranger' and "pattern" = '\b(Rando235)\b';
-- --- END op 3231

-- --- BEGIN op 3232 ( create regular_expression "Rapta" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Rapta', '\[Ranger\]|-Ranger\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Rapta', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Rapta', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Rapta', 'Release Group');
-- --- END op 3232

-- --- BEGIN op 3233 ( update regular_expression "Rapta" )
update "regular_expressions" set "pattern" = '\[Rapta\]|-Rapta\b' where "name" = 'Rapta' and "pattern" = '\[Ranger\]|-Ranger\b';
-- --- END op 3233

-- --- BEGIN op 3234 ( create regular_expression "Raw Files" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Raw Files', '\[Rapta\]|-Rapta\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Raw Files', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Raw Files', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Raw Files', 'Release Group');
-- --- END op 3234

-- --- BEGIN op 3235 ( update regular_expression "Raw Files" )
update "regular_expressions" set "pattern" = '\b(M2TS|BDMV|BDVD)\b' where "name" = 'Raw Files' and "pattern" = '\[Rapta\]|-Rapta\b';
-- --- END op 3235

-- --- BEGIN op 3236 ( create regular_expression "Raze" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Raze', '\b(M2TS|BDMV|BDVD)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Raze', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Raze', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Raze', 'Release Group');
-- --- END op 3236

-- --- BEGIN op 3237 ( update regular_expression "Raze" )
update "regular_expressions" set "pattern" = '\[Raze\]|-Raze\b' where "name" = 'Raze' and "pattern" = '\b(M2TS|BDMV|BDVD)\b';
-- --- END op 3237

-- --- BEGIN op 3238 ( create regular_expression "Reaktor" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Reaktor', '\b(Rando235)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Reaktor', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Reaktor', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Reaktor', 'Release Group');
-- --- END op 3238

-- --- BEGIN op 3239 ( update regular_expression "Reaktor" )
update "regular_expressions" set "pattern" = '\b(Reaktor)\b' where "name" = 'Reaktor' and "pattern" = '\b(Rando235)\b';
-- --- END op 3239

-- --- BEGIN op 3240 ( create regular_expression "RightShiftBy2" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('RightShiftBy2', '\b(Kirion)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('RightShiftBy2', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('RightShiftBy2', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('RightShiftBy2', 'Release Group');
-- --- END op 3240

-- --- BEGIN op 3241 ( update regular_expression "RightShiftBy2" )
update "regular_expressions" set "pattern" = '\b(RightShiftBy2)\b' where "name" = 'RightShiftBy2' and "pattern" = '\b(Kirion)\b';
-- --- END op 3241

-- --- BEGIN op 3242 ( create regular_expression "Rip Time" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Rip Time', '\b(RightShiftBy2)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Rip Time', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Rip Time', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Rip Time', 'Release Group');
-- --- END op 3242

-- --- BEGIN op 3243 ( update regular_expression "Rip Time" )
update "regular_expressions" set "pattern" = '\b(Rip[ .-]?Time)\b' where "name" = 'Rip Time' and "pattern" = '\b(RightShiftBy2)\b';
-- --- END op 3243

-- --- BEGIN op 3244 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'Rando235', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'Rando235', 'Rando235');
-- --- END op 3244

-- --- BEGIN op 3245 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'Ranger', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'Ranger', 'Ranger');
-- --- END op 3245

-- --- BEGIN op 3246 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'Rapta', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'Rapta', 'Rapta');
-- --- END op 3246

-- --- BEGIN op 3247 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'Raw Files', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'Raw Files', 'Raw Files');
-- --- END op 3247

-- --- BEGIN op 3248 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'Raze', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'Raze', 'Raze');
-- --- END op 3248

-- --- BEGIN op 3249 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'Reaktor', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'Reaktor', 'Reaktor');
-- --- END op 3249

-- --- BEGIN op 3250 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'RightShiftBy2', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'RightShiftBy2', 'RightShiftBy2');
-- --- END op 3250

-- --- BEGIN op 3251 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'Rip Time', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'Rip Time', 'Rip Time');
-- --- END op 3251

-- --- BEGIN op 3252 ( create regular_expression "SAD" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('SAD', '\b(RightShiftBy2)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SAD', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SAD', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SAD', 'Release Group');
-- --- END op 3252

-- --- BEGIN op 3253 ( update regular_expression "SAD" )
update "regular_expressions" set "pattern" = '\[SAD\]|-SAD\b' where "name" = 'SAD' and "pattern" = '\b(RightShiftBy2)\b';
-- --- END op 3253

-- --- BEGIN op 3254 ( create regular_expression "Salieri" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Salieri', '\[SAD\]|-SAD\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Salieri', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Salieri', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Salieri', 'Release Group');
-- --- END op 3254

-- --- BEGIN op 3255 ( update regular_expression "Salieri" )
update "regular_expressions" set "pattern" = '\b(Salieri)\b' where "name" = 'Salieri' and "pattern" = '\[SAD\]|-SAD\b';
-- --- END op 3255

-- --- BEGIN op 3256 ( create regular_expression "Samir755" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Samir755', '\b(Salieri)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Samir755', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Samir755', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Samir755', 'Release Group');
-- --- END op 3256

-- --- BEGIN op 3257 ( update regular_expression "Samir755" )
update "regular_expressions" set "pattern" = '\b(Samir755)\b' where "name" = 'Samir755' and "pattern" = '\b(Salieri)\b';
-- --- END op 3257

-- --- BEGIN op 3258 ( create regular_expression "SanKyuu" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('SanKyuu', '\b(Samir755)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SanKyuu', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SanKyuu', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SanKyuu', 'Release Group');
-- --- END op 3258

-- --- BEGIN op 3259 ( update regular_expression "SanKyuu" )
update "regular_expressions" set "pattern" = '\b(SanKyuu)\b' where "name" = 'SanKyuu' and "pattern" = '\b(Samir755)\b';
-- --- END op 3259

-- --- BEGIN op 3260 ( create regular_expression "SEiN" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('SEiN', '\b(LoliHouse)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SEiN', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SEiN', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SEiN', 'Release Group');
-- --- END op 3260

-- --- BEGIN op 3261 ( update regular_expression "SEiN" )
update "regular_expressions" set "pattern" = '\[SEiN\]|-SEiN\b' where "name" = 'SEiN' and "pattern" = '\b(LoliHouse)\b';
-- --- END op 3261

-- --- BEGIN op 3262 ( create regular_expression "sekkusu&ok" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('sekkusu&ok', '\[SEiN\]|-SEiN\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('sekkusu&ok', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('sekkusu&ok', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('sekkusu&ok', 'Release Group');
-- --- END op 3262

-- --- BEGIN op 3263 ( update regular_expression "sekkusu&ok" )
update "regular_expressions" set "pattern" = '\b(sekkusu&ok)\b' where "name" = 'sekkusu&ok' and "pattern" = '\[SEiN\]|-SEiN\b';
-- --- END op 3263

-- --- BEGIN op 3264 ( create regular_expression "SHFS" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('SHFS', '\b(RightShiftBy2)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SHFS', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SHFS', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SHFS', 'Release Group');
-- --- END op 3264

-- --- BEGIN op 3265 ( update regular_expression "SHFS" )
update "regular_expressions" set "pattern" = '\b(SHFS)\b' where "name" = 'SHFS' and "pattern" = '\b(RightShiftBy2)\b';
-- --- END op 3265

-- --- BEGIN op 3266 ( create regular_expression "shincaps" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('shincaps', '\b(SHFS)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('shincaps', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('shincaps', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('shincaps', 'Release Group');
-- --- END op 3266

-- --- BEGIN op 3267 ( update regular_expression "shincaps" )
update "regular_expressions" set "pattern" = '\b(shincaps)\b' where "name" = 'shincaps' and "pattern" = '\b(SHFS)\b';
-- --- END op 3267

-- --- BEGIN op 3268 ( create regular_expression "SLAX" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('SLAX', '\b(shincaps)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SLAX', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SLAX', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SLAX', 'Release Group');
-- --- END op 3268

-- --- BEGIN op 3269 ( update regular_expression "SLAX" )
update "regular_expressions" set "pattern" = '\b(SLAX)\b' where "name" = 'SLAX' and "pattern" = '\b(shincaps)\b';
-- --- END op 3269

-- --- BEGIN op 3270 ( create regular_expression "sokudo" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('sokudo', '\b(SLAX)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('sokudo', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('sokudo', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('sokudo', 'Release Group');
-- --- END op 3270

-- --- BEGIN op 3271 ( update regular_expression "sokudo" )
update "regular_expressions" set "pattern" = '\[Sokudo\]|-Sokudo\b' where "name" = 'sokudo' and "pattern" = '\b(SLAX)\b';
-- --- END op 3271

-- --- BEGIN op 3272 ( create regular_expression "SRW" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('SRW', '\[Sokudo\]|-Sokudo\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SRW', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SRW', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SRW', 'Release Group');
-- --- END op 3272

-- --- BEGIN op 3273 ( update regular_expression "SRW" )
update "regular_expressions" set "pattern" = '\b(SRW)\b' where "name" = 'SRW' and "pattern" = '\[Sokudo\]|-Sokudo\b';
-- --- END op 3273

-- --- BEGIN op 3274 ( create regular_expression "SSA" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('SSA', '\b(SRW)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SSA', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SSA', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SSA', 'Release Group');
-- --- END op 3274

-- --- BEGIN op 3275 ( update regular_expression "SSA" )
update "regular_expressions" set "pattern" = '\b(SSA)\b' where "name" = 'SSA' and "pattern" = '\b(SRW)\b';
-- --- END op 3275

-- --- BEGIN op 3276 ( create regular_expression "StrayGods" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('StrayGods', '\b(SSA)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('StrayGods', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('StrayGods', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('StrayGods', 'Release Group');
-- --- END op 3276

-- --- BEGIN op 3277 ( update regular_expression "StrayGods" )
update "regular_expressions" set "pattern" = '\b(StrayGods)\b' where "name" = 'StrayGods' and "pattern" = '\b(SSA)\b';
-- --- END op 3277

-- --- BEGIN op 3278 ( create regular_expression "Suki Desu" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Suki Desu', '\b(StrayGods)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Suki Desu', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Suki Desu', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Suki Desu', 'Release Group');
-- --- END op 3278

-- --- BEGIN op 3279 ( update regular_expression "Suki Desu" )
update "regular_expressions" set "pattern" = '\[Suki[ .-]?Desu\]|-Suki[ .-]?Desu\b' where "name" = 'Suki Desu' and "pattern" = '\b(StrayGods)\b';
-- --- END op 3279

-- --- BEGIN op 3280 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'SAD', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'SAD', 'SAD');
-- --- END op 3280

-- --- BEGIN op 3281 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'Salieri', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'Salieri', 'Salieri');
-- --- END op 3281

-- --- BEGIN op 3282 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'Samir755', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'Samir755', 'Samir755');
-- --- END op 3282

-- --- BEGIN op 3283 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'SanKyuu', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'SanKyuu', 'SanKyuu');
-- --- END op 3283

-- --- BEGIN op 3284 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'SEiN', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'SEiN', 'SEiN');
-- --- END op 3284

-- --- BEGIN op 3285 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'sekkusu&ok', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'sekkusu&ok', 'sekkusu&ok');
-- --- END op 3285

-- --- BEGIN op 3286 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'SHFS', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'SHFS', 'SHFS');
-- --- END op 3286

-- --- BEGIN op 3287 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'shincaps', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'shincaps', 'shincaps');
-- --- END op 3287

-- --- BEGIN op 3288 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'SLAX', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'SLAX', 'SLAX');
-- --- END op 3288

-- --- BEGIN op 3289 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'Sokudo', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'Sokudo', 'sokudo');
-- --- END op 3289

-- --- BEGIN op 3290 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'SRW', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'SRW', 'SRW');
-- --- END op 3290

-- --- BEGIN op 3291 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'SSA', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'SSA', 'SSA');
-- --- END op 3291

-- --- BEGIN op 3292 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'StrayGods', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'StrayGods', 'StrayGods');
-- --- END op 3292

-- --- BEGIN op 3293 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'Suki Desu', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'Suki Desu', 'Suki Desu');
-- --- END op 3293

-- --- BEGIN op 3294 ( create regular_expression "TeamTurquoize" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('TeamTurquoize', '\b(StrayGods)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TeamTurquoize', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TeamTurquoize', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TeamTurquoize', 'Release Group');
-- --- END op 3294

-- --- BEGIN op 3295 ( update regular_expression "TeamTurquoize" )
update "regular_expressions" set "pattern" = '\b(TeamTurquoize)\b' where "name" = 'TeamTurquoize' and "pattern" = '\b(StrayGods)\b';
-- --- END op 3295

-- --- BEGIN op 3296 ( create regular_expression "Tenrai Sensei" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Tenrai Sensei', '\b(TeamTurquoize)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Tenrai Sensei', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Tenrai Sensei', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Tenrai Sensei', 'Release Group');
-- --- END op 3296

-- --- BEGIN op 3297 ( update regular_expression "Tenrai Sensei" )
update "regular_expressions" set "pattern" = '\b(Tenrai[ .-]?Sensei)\b' where "name" = 'Tenrai Sensei' and "pattern" = '\b(TeamTurquoize)\b';
-- --- END op 3297

-- --- BEGIN op 3298 ( create regular_expression "TnF" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('TnF', '\b(Tenrai[ .-]?Sensei)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TnF', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TnF', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TnF', 'Release Group');
-- --- END op 3298

-- --- BEGIN op 3299 ( update regular_expression "TnF" )
update "regular_expressions" set "pattern" = '\b(TnF)\b' where "name" = 'TnF' and "pattern" = '\b(Tenrai[ .-]?Sensei)\b';
-- --- END op 3299

-- --- BEGIN op 3300 ( create regular_expression "TOPKEK" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('TOPKEK', '\b(TnF)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TOPKEK', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TOPKEK', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TOPKEK', 'Release Group');
-- --- END op 3300

-- --- BEGIN op 3301 ( update regular_expression "TOPKEK" )
update "regular_expressions" set "pattern" = '\b(TOPKEK)\b' where "name" = 'TOPKEK' and "pattern" = '\b(TnF)\b';
-- --- END op 3301

-- --- BEGIN op 3302 ( create regular_expression "Trix" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Trix', '\b(TOPKEK)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Trix', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Trix', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Trix', 'Release Group');
-- --- END op 3302

-- --- BEGIN op 3303 ( update regular_expression "Trix" )
update "regular_expressions" set "pattern" = '\[Trix\]|-Trix\b' where "name" = 'Trix' and "pattern" = '\b(TOPKEK)\b';
-- --- END op 3303

-- --- BEGIN op 3304 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'Tenrai Sensei', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'Tenrai Sensei', 'Tenrai Sensei');
-- --- END op 3304

-- --- BEGIN op 3305 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'TnF', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'TnF', 'TnF');
-- --- END op 3305

-- --- BEGIN op 3306 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'TOPKEK', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'TOPKEK', 'TOPKEK');
-- --- END op 3306

-- --- BEGIN op 3307 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'Trix', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'Trix', 'Trix');
-- --- END op 3307

-- --- BEGIN op 3308 ( create regular_expression "U3-Web" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('U3-Web', '\[Sokudo\]|-Sokudo\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('U3-Web', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('U3-Web', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('U3-Web', 'Release Group');
-- --- END op 3308

-- --- BEGIN op 3309 ( update regular_expression "U3-Web" )
update "regular_expressions" set "pattern" = '\b(U3-Web)\b' where "name" = 'U3-Web' and "pattern" = '\[Sokudo\]|-Sokudo\b';
-- --- END op 3309

-- --- BEGIN op 3310 ( create regular_expression "UNBIASED" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('UNBIASED', '\[224\]|-224\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('UNBIASED', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('UNBIASED', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('UNBIASED', 'Release Group');
-- --- END op 3310

-- --- BEGIN op 3311 ( update regular_expression "UNBIASED" )
update "regular_expressions" set "pattern" = '\[UNBIASED\]|-UNBIASED\b' where "name" = 'UNBIASED' and "pattern" = '\[224\]|-224\b';
-- --- END op 3311

-- --- BEGIN op 3312 ( create regular_expression "uP" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('uP', '\[UNBIASED\]|-UNBIASED\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('uP', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('uP', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('uP', 'Release Group');
-- --- END op 3312

-- --- BEGIN op 3313 ( update regular_expression "uP" )
update "regular_expressions" set "pattern" = '\[uP\]' where "name" = 'uP' and "pattern" = '\[UNBIASED\]|-UNBIASED\b';
-- --- END op 3313

-- --- BEGIN op 3314 ( create regular_expression "USD" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('USD', '\[uP\]', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('USD', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('USD', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('USD', 'Release Group');
-- --- END op 3314

-- --- BEGIN op 3315 ( update regular_expression "USD" )
update "regular_expressions" set "pattern" = '\[USD\]|-USD\b' where "name" = 'USD' and "pattern" = '\[uP\]';
-- --- END op 3315

-- --- BEGIN op 3316 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'U3-Web', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'U3-Web', 'U3-Web');
-- --- END op 3316

-- --- BEGIN op 3317 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'UNBIASED', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'UNBIASED', 'UNBIASED');
-- --- END op 3317

-- --- BEGIN op 3318 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'uP', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'uP', 'uP');
-- --- END op 3318

-- --- BEGIN op 3319 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'USD', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'USD', 'USD');
-- --- END op 3319

-- --- BEGIN op 3320 ( create regular_expression "Valenciano" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Valenciano', '\b(neoHEVC)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Valenciano', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Valenciano', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Valenciano', 'Release Group');
-- --- END op 3320

-- --- BEGIN op 3321 ( update regular_expression "Valenciano" )
update "regular_expressions" set "pattern" = '\b(Valenciano)\b' where "name" = 'Valenciano' and "pattern" = '\b(neoHEVC)\b';
-- --- END op 3321

-- --- BEGIN op 3322 ( create regular_expression "VipapkStudios" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('VipapkStudios', '\b(Valenciano)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('VipapkStudios', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('VipapkStudios', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('VipapkStudios', 'Release Group');
-- --- END op 3322

-- --- BEGIN op 3323 ( update regular_expression "VipapkStudios" )
update "regular_expressions" set "pattern" = '\b(VipapkStudios)\b' where "name" = 'VipapkStudios' and "pattern" = '\b(Valenciano)\b';
-- --- END op 3323

-- --- BEGIN op 3324 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'Valenciano', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'Valenciano', 'Valenciano');
-- --- END op 3324

-- --- BEGIN op 3325 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'VipapkStudios', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'VipapkStudios', 'VipapkStudios');
-- --- END op 3325

-- --- BEGIN op 3326 ( create regular_expression "Wardevil" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Wardevil', '\b(VipapkStudios)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Wardevil', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Wardevil', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Wardevil', 'Release Group');
-- --- END op 3326

-- --- BEGIN op 3327 ( update regular_expression "Wardevil" )
update "regular_expressions" set "pattern" = '\[Wardevil\]|-Wardevil\b' where "name" = 'Wardevil' and "pattern" = '\b(VipapkStudios)\b';
-- --- END op 3327

-- --- BEGIN op 3328 ( create regular_expression "WtF Anime" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('WtF Anime', '\[Wardevil\]|-Wardevil\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('WtF Anime', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('WtF Anime', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('WtF Anime', 'Release Group');
-- --- END op 3328

-- --- BEGIN op 3329 ( update regular_expression "WtF Anime" )
update "regular_expressions" set "pattern" = '\b(WtF[ ._-]?Anime)\b' where "name" = 'WtF Anime' and "pattern" = '\[Wardevil\]|-Wardevil\b';
-- --- END op 3329

-- --- BEGIN op 3330 ( create regular_expression "xaio-av1" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('xaio-av1', '\b(WtF[ ._-]?Anime)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('xaio-av1', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('xaio-av1', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('xaio-av1', 'Release Group');
-- --- END op 3330

-- --- BEGIN op 3331 ( update regular_expression "xaio-av1" )
update "regular_expressions" set "pattern" = '\b(xiao-av1)\b' where "name" = 'xaio-av1' and "pattern" = '\b(WtF[ ._-]?Anime)\b';
-- --- END op 3331

-- --- BEGIN op 3332 ( update regular_expression "xiao-av1" )
update "regular_expressions" set "name" = 'xiao-av1' where "name" = 'xaio-av1';
-- --- END op 3332

-- --- BEGIN op 3333 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'Wardevil', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'Wardevil', 'Wardevil');
-- --- END op 3333

-- --- BEGIN op 3334 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'WtF Anime', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'WtF Anime', 'WtF Anime');
-- --- END op 3334

-- --- BEGIN op 3335 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'xiao-av1', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'xiao-av1', 'xiao-av1');
-- --- END op 3335

-- --- BEGIN op 3336 ( create regular_expression "Yabai_Desu_NeRandomRemux" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Yabai_Desu_NeRandomRemux', '\b(xiao-av1)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Yabai_Desu_NeRandomRemux', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Yabai_Desu_NeRandomRemux', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Yabai_Desu_NeRandomRemux', 'Release Group');
-- --- END op 3336

-- --- BEGIN op 3337 ( update regular_expression "Yabai_Desu_NeRandomRemux" )
update "regular_expressions" set "pattern" = '\b(Yabai_Desu_NeRandomRemux)\b' where "name" = 'Yabai_Desu_NeRandomRemux' and "pattern" = '\b(xiao-av1)\b';
-- --- END op 3337

-- --- BEGIN op 3338 ( create regular_expression "YakuboEncodes" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('YakuboEncodes', '\b(Yabai_Desu_NeRandomRemux)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('YakuboEncodes', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('YakuboEncodes', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('YakuboEncodes', 'Release Group');
-- --- END op 3338

-- --- BEGIN op 3339 ( update regular_expression "YakuboEncodes" )
update "regular_expressions" set "pattern" = '\b(YakuboEncodes)\b' where "name" = 'YakuboEncodes' and "pattern" = '\b(Yabai_Desu_NeRandomRemux)\b';
-- --- END op 3339

-- --- BEGIN op 3340 ( create regular_expression "youshikibi" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('youshikibi', '\b(YakuboEncodes)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('youshikibi', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('youshikibi', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('youshikibi', 'Release Group');
-- --- END op 3340

-- --- BEGIN op 3341 ( update regular_expression "youshikibi" )
update "regular_expressions" set "pattern" = '\b(youshikibi)\b' where "name" = 'youshikibi' and "pattern" = '\b(YakuboEncodes)\b';
-- --- END op 3341

-- --- BEGIN op 3342 ( create regular_expression "YuiSubs" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('YuiSubs', '\b(youshikibi)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('YuiSubs', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('YuiSubs', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('YuiSubs', 'Release Group');
-- --- END op 3342

-- --- BEGIN op 3343 ( update regular_expression "YuiSubs" )
update "regular_expressions" set "pattern" = '\b(YuiSubs)\b' where "name" = 'YuiSubs' and "pattern" = '\b(youshikibi)\b';
-- --- END op 3343

-- --- BEGIN op 3344 ( create regular_expression "Yun" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Yun', '\b(YuiSubs)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Yun', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Yun', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Yun', 'Release Group');
-- --- END op 3344

-- --- BEGIN op 3345 ( update regular_expression "Yun" )
update "regular_expressions" set "pattern" = '\[Yun\]|-Yun\b' where "name" = 'Yun' and "pattern" = '\b(YuiSubs)\b';
-- --- END op 3345

-- --- BEGIN op 3346 ( create regular_expression "zza" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('zza', '\[Yun\]|-Yun\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('zza', 'Anime');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('zza', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('zza', 'Release Group');
-- --- END op 3346

-- --- BEGIN op 3347 ( update regular_expression "zza" )
update "regular_expressions" set "pattern" = '\[zza\]|-zza\b' where "name" = 'zza' and "pattern" = '\[Yun\]|-Yun\b';
-- --- END op 3347

-- --- BEGIN op 3348 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'Yabai_Desu_NeRandomRemux', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'Yabai_Desu_NeRandomRemux', 'Yabai_Desu_NeRandomRemux');
-- --- END op 3348

-- --- BEGIN op 3349 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'YakuboEncodes', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'YakuboEncodes', 'YakuboEncodes');
-- --- END op 3349

-- --- BEGIN op 3350 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'youshikibi', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'youshikibi', 'youshikibi');
-- --- END op 3350

-- --- BEGIN op 3351 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'YuiSubs', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'YuiSubs', 'YuiSubs');
-- --- END op 3351

-- --- BEGIN op 3352 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'Yun', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'Yun', 'Yun');
-- --- END op 3352

-- --- BEGIN op 3353 ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'zza', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'zza', 'zza');
-- --- END op 3353
