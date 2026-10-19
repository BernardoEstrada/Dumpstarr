-- @operation: export
-- @entity: batch
-- @name: Updated IMF format and assigned to Movies per TRaSH
-- @exportedAt: 2026-10-19T18:09:01.724Z
-- @opIds: 6806, 6807, 6808, 6809, 6810, 6811, 6812, 6813, 6814

-- --- BEGIN op 6806 ( update custom_format "Bad Source" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Bad Source'
	  AND name = 'IMF'
	  AND type = 'release_title'
	  AND arr_type = 'radarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 6806

-- --- BEGIN op 6807 ( create custom_format "IMF" )
insert into "custom_formats" ("name", "description") values ('IMF', '');
-- --- END op 6807

-- --- BEGIN op 6808 ( update custom_format "IMF" )
update "custom_formats" set "description" = 'IMF (Interoperable Master Format) isn''t a streaming service but a standardized file format for storing and delivering finished video content.' where "name" = 'IMF' and "description" = '';
-- --- END op 6808

-- --- BEGIN op 6809 ( update custom_format "IMF" )
insert into "tags" ("name") values ('Streaming Service') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('IMF', 'Streaming Service');
-- --- END op 6809

-- --- BEGIN op 6810 ( update custom_format "IMF" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('IMF', 'IMF', 'release_title', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('IMF', 'IMF', 'IMF');
-- --- END op 6810

-- --- BEGIN op 6811 ( update quality_profile "Movies 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p', 'IMF', 'radarr', 75
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p'
    AND custom_format_name = 'IMF'
    AND arr_type = 'radarr'
);
-- --- END op 6811

-- --- BEGIN op 6812 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'IMF', 'radarr', 75
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'IMF'
    AND arr_type = 'radarr'
);
-- --- END op 6812

-- --- BEGIN op 6813 ( update quality_profile "Movies 2160p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p', 'IMF', 'radarr', 75
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p'
    AND custom_format_name = 'IMF'
    AND arr_type = 'radarr'
);
-- --- END op 6813

-- --- BEGIN op 6814 ( update quality_profile "Movies 2160p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p HQ', 'IMF', 'radarr', 75
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND custom_format_name = 'IMF'
    AND arr_type = 'radarr'
);
-- --- END op 6814
