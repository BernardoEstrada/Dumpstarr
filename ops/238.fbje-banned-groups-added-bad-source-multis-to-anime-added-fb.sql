-- @operation: export
-- @entity: batch
-- @name: FBJE Banned Groups|Added Bad Source/Multis to Anime|Added FBJE Test|Updated TBBT Regex
-- @exportedAt: 2026-05-22T15:43:06.071Z
-- @opIds: 963, 964, 965, 966, 967, 968, 969, 970, 971, 972, 973, 974, 975, 976, 977, 978, 979, 980, 981

-- --- BEGIN op 963 ( create regular_expression "Frieren Beyond Journey's End banned Groups" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Frieren Beyond Journey''s End banned Groups', '(?i)^adventure[ ._-]+time[ ._-]+S08.*-(CtrlHD|EPSiLON|H3B|NTb|RTN)\b', 'Matches releases for season 8 of the show Adventure Time from groups that do not follow the TVDB ordering.', NULL);

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Frieren Beyond Journey''s End banned Groups', 'Banned');

insert into "tags" ("name") values ('Custom') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Frieren Beyond Journey''s End banned Groups', 'Custom');
-- --- END op 963

-- --- BEGIN op 964 ( update regular_expression "Frieren Beyond Journey's End banned Groups" )
update "regular_expressions" set "pattern" = '(?i)^frieren[ ._-]+beyond[ ._-]+journeys[ ._-]+end[ ._-].*-(VARYG)\b' where "name" = 'Frieren Beyond Journey''s End banned Groups' and "pattern" = '(?i)^adventure[ ._-]+time[ ._-]+S08.*-(CtrlHD|EPSiLON|H3B|NTb|RTN)\b';
-- --- END op 964

-- --- BEGIN op 965 ( update regular_expression "Frieren Beyond Journey's End" )
update "regular_expressions" set "name" = 'Frieren Beyond Journey''s End' where "name" = 'Frieren Beyond Journey''s End banned Groups';
-- --- END op 965

-- --- BEGIN op 966 ( update regular_expression "Frieren Beyond Journey's End Banned Groups" )
update "regular_expressions" set "name" = 'Frieren Beyond Journey''s End Banned Groups' where "name" = 'Frieren Beyond Journey''s End';
-- --- END op 966

-- --- BEGIN op 967 ( update custom_format "Bad Source" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Source', 'Frieren Beyond Journeys End', 'release_title', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Source', 'Frieren Beyond Journeys End', 'Frieren Beyond Journey''s End Banned Groups');
-- --- END op 967

-- --- BEGIN op 968 ( update quality_profile "Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Anime 1080p', 'Bad Multis', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Anime 1080p'
    AND custom_format_name = 'Bad Multis'
    AND arr_type = 'sonarr'
);
-- --- END op 968

-- --- BEGIN op 969 ( update quality_profile "Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Anime 1080p', 'Bad Source', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Anime 1080p'
    AND custom_format_name = 'Bad Source'
    AND arr_type = 'sonarr'
);
-- --- END op 969

-- --- BEGIN op 970 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Bad Multis', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Bad Multis'
    AND arr_type = 'sonarr'
);
-- --- END op 970

-- --- BEGIN op 971 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Bad Source', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Bad Source'
    AND arr_type = 'sonarr'
);
-- --- END op 971

-- --- BEGIN op 972 ( update regular_expression "Frieren Beyond Journey's End Banned Groups" )
update "regular_expressions" set "pattern" = '(?i)^frieren[ ._-]+beyond[ ._-]+journeys[ ._-]+end.*-(VARYG)\b' where "name" = 'Frieren Beyond Journey''s End Banned Groups' and "pattern" = '(?i)^frieren[ ._-]+beyond[ ._-]+journeys[ ._-]+end[ ._-].*-(VARYG)\b';
-- --- END op 972

-- --- BEGIN op 973 ( update regular_expression "Frieren Beyond Journey's End Banned Groups" )
update "regular_expressions" set "pattern" = '(?i)^frieren[ ._''-]+beyond[ ._''-]+journey[s'']+[ ._-]+end.*-(VARYG)\b' where "name" = 'Frieren Beyond Journey''s End Banned Groups' and "pattern" = '(?i)^frieren[ ._-]+beyond[ ._-]+journeys[ ._-]+end.*-(VARYG)\b';
-- --- END op 973

-- --- BEGIN op 974 ( update regular_expression "Frieren Beyond Journey's End Banned Groups" )
update "regular_expressions" set "pattern" = '(?i)^frieren[ ._-]+beyond[ ._-]+journeys[ ._-]+end.*-(VARYG)\b' where "name" = 'Frieren Beyond Journey''s End Banned Groups' and "pattern" = '(?i)^frieren[ ._''-]+beyond[ ._''-]+journey[s'']+[ ._-]+end.*-(VARYG)\b';
-- --- END op 974

-- --- BEGIN op 975 ( update regular_expression "Frieren Beyond Journey's End Banned Groups" )
update "regular_expressions" set "description" = NULL where "name" = 'Frieren Beyond Journey''s End Banned Groups' and "description" = 'Matches releases for season 8 of the show Adventure Time from groups that do not follow the TVDB ordering.';
-- --- END op 975

-- --- BEGIN op 976 ( update regular_expression "Frieren Beyond Journey's End Banned Groups" )
update "regular_expressions" set "pattern" = '(?i)^frieren.*beyond.*journeys.*end.*-(VARYG)\b' where "name" = 'Frieren Beyond Journey''s End Banned Groups' and "pattern" = '(?i)^frieren[ ._-]+beyond[ ._-]+journeys[ ._-]+end.*-(VARYG)\b';
-- --- END op 976

-- --- BEGIN op 977 ( update regular_expression "The Big Bang Theory Banned Groups" )
update "regular_expressions" set "pattern" = '(?i)^(?:the[ ._-]+)?big[ ._-]+bang[ ._-]+theory[ ._-].*-(CiELOS|playWEB)\b' where "name" = 'The Big Bang Theory Banned Groups' and "pattern" = '(?i)^(?:the[ ._-]+)?big[ ._-]+bang[ ._-]+theory[ ._-].*-(CiELOS|playWEB)$';
-- --- END op 977

-- --- BEGIN op 978 ( update regular_expression "Frieren Beyond Journey's End Banned Groups" )
update "regular_expressions" set "pattern" = '(?i)^frieren[ ._-]+beyond[ ._-]+journeys[ ._-]+end[ ._-]+.*-(VARYG)\b' where "name" = 'Frieren Beyond Journey''s End Banned Groups' and "pattern" = '(?i)^frieren.*beyond.*journeys.*end.*-(VARYG)\b';
-- --- END op 978

-- --- BEGIN op 979 ( create test_entity "Frieren: Beyond Journey's End" )
insert into "test_entities" ("type", "tmdb_id", "title", "year", "poster_path") values ('series', 209867, 'Frieren: Beyond Journey''s End', 2023, '/dqZENchTd7lp5zht7BdlqM7RBhD.jpg');
-- --- END op 979

-- --- BEGIN op 980 ( create test_release "Frieren.Beyond.Journeys.End.S02.1080p.CR.WEB-DL.MU" )
insert into "test_releases" ("entity_type", "entity_tmdb_id", "title", "size_bytes", "languages", "indexers", "flags") values ('series', 209867, 'Frieren.Beyond.Journeys.End.S02.1080p.CR.WEB-DL.MULTi.AAC2.0.H.264-VARYG', NULL, '["Japanese"]', '[]', '[]');
-- --- END op 980

-- --- BEGIN op 981 ( update regular_expression "Frieren Beyond Journey's End Banned Groups" )
update "regular_expressions" set "pattern" = '(?i)^frieren[ ._-]+beyond[ ._-]+journeys[ ._-]+end.*-(VARYG)\b' where "name" = 'Frieren Beyond Journey''s End Banned Groups' and "pattern" = '(?i)^frieren[ ._-]+beyond[ ._-]+journeys[ ._-]+end[ ._-]+.*-(VARYG)\b';
-- --- END op 981
