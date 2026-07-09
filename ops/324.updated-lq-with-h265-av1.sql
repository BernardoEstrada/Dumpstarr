-- @operation: export
-- @entity: batch
-- @name: Updated LQ with H265/AV1
-- @exportedAt: 2026-07-09T15:03:27.613Z
-- @opIds: 2771, 2772, 2773, 2774, 2775, 2776, 2777, 2778

-- --- BEGIN op 2771 ( create custom_format "x265" )
insert into "custom_formats" ("name", "description") values ('x265', '');
-- --- END op 2771

-- --- BEGIN op 2772 ( update custom_format "x265" )
insert into "tags" ("name") values ('Codec') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('x265', 'Codec');
-- --- END op 2772

-- --- BEGIN op 2773 ( update custom_format "x265" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('x265', 'x265', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('x265', 'x265', 'x265');
-- --- END op 2773

-- --- BEGIN op 2774 ( update custom_format "AV1" )
update "custom_formats" set "description" = '' where "name" = 'AV1' and "description" = 'Matches the ''AV1'' Regex Pattern';
-- --- END op 2774

-- --- BEGIN op 2775 ( update custom_format "AV1" )
DELETE FROM custom_format_tags WHERE custom_format_name = 'AV1' AND tag_name = 'Bleeding Edge';
-- --- END op 2775

-- --- BEGIN op 2776 ( update custom_format "x265" )
UPDATE custom_format_conditions
SET required = 1
WHERE custom_format_name = 'x265'
  AND name = 'x265'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 2776

-- --- BEGIN op 2777 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'AV1', 'sonarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'AV1'
    AND arr_type = 'sonarr'
);
-- --- END op 2777

-- --- BEGIN op 2778 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'x265', 'sonarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'x265'
    AND arr_type = 'sonarr'
);
-- --- END op 2778
