-- @operation: export
-- @entity: batch
-- @name: Add 10bit to LQ
-- @exportedAt: 2026-10-20T22:18:59.167Z
-- @opIds: 6816, 6817, 6818, 6819, 6820

-- --- BEGIN op 6816 ( create regular_expression "10bit" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('10bit', '10[.-]?bit', NULL, NULL);
-- --- END op 6816

-- --- BEGIN op 6817 ( create custom_format "10bit" )
insert into "custom_formats" ("name", "description") values ('10bit', '');
-- --- END op 6817

-- --- BEGIN op 6818 ( update custom_format "10bit" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('10bit', '10bit', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('10bit', '10bit', '10bit');
-- --- END op 6818

-- --- BEGIN op 6819 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', '10bit', 'radarr', -100
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = '10bit'
    AND arr_type = 'radarr'
);
-- --- END op 6819

-- --- BEGIN op 6820 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', '10bit', 'sonarr', -100
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = '10bit'
    AND arr_type = 'sonarr'
);
-- --- END op 6820
