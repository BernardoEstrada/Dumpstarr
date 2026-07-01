-- @operation: export
-- @entity: batch
-- @name: Add LQ Sources regex to Bad Source CF
-- @exportedAt: 2026-07-01T18:12:32.774Z
-- @opIds: 2625, 2626, 2627, 2628, 2629, 2630

-- --- BEGIN op 2625 ( create regular_expression "LQ Sources" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('LQ Sources', '\b(CAM|HDTS|SCREENER|TELESYNC)\b', NULL, NULL);

insert into "tags" ("name") values ('LQ') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('LQ Sources', 'LQ');
-- --- END op 2625

-- --- BEGIN op 2626 ( update custom_format "Bad Source" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Source', 'LQ Sources', 'release_title', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Source', 'LQ Sources', 'LQ Sources');
-- --- END op 2626

-- --- BEGIN op 2627 ( update quality_profile "Movies 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p', 'Bad Source', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p'
    AND custom_format_name = 'Bad Source'
    AND arr_type = 'radarr'
);
-- --- END op 2627

-- --- BEGIN op 2628 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'Bad Source', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'Bad Source'
    AND arr_type = 'radarr'
);
-- --- END op 2628

-- --- BEGIN op 2629 ( update quality_profile "Movies 2160p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p', 'Bad Source', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p'
    AND custom_format_name = 'Bad Source'
    AND arr_type = 'radarr'
);
-- --- END op 2629

-- --- BEGIN op 2630 ( update quality_profile "Movies 2160p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p HQ', 'Bad Source', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND custom_format_name = 'Bad Source'
    AND arr_type = 'radarr'
);
-- --- END op 2630
