-- @operation: export
-- @entity: batch
-- @name: Moved ProRes to Bad Source/Added IMF to Bad Source
-- @exportedAt: 2026-10-07T22:38:05.549Z
-- @opIds: 6750, 6751, 6752, 6753, 6754, 6755, 6756, 6757, 6758, 6759, 6760, 6761, 6762, 6763, 6764, 6765, 6766, 6767, 6768

-- --- BEGIN op 6750 ( create regular_expression "IMF" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('IMF', '\b(ProRes)\b', NULL, NULL);

insert into "tags" ("name") values ('Codec') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('IMF', 'Codec');
-- --- END op 6750

-- --- BEGIN op 6751 ( update regular_expression "IMF" )
update "regular_expressions" set "description" = 'Interoperable Master Format (IMF) is a container format for the standardized digital delivery and storage of finished audio-visual masters, including movies, episodic content and advertisements.' where "name" = 'IMF' and "description" is null;
-- --- END op 6751

-- --- BEGIN op 6752 ( update regular_expression "IMF" )
update "regular_expressions" set "pattern" = '\b(IMF)\b' where "name" = 'IMF' and "pattern" = '\b(ProRes)\b';
-- --- END op 6752

-- --- BEGIN op 6753 ( update custom_format "Bad Source" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Source', 'ProRes', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Source', 'ProRes', 'ProRes');
-- --- END op 6753

-- --- BEGIN op 6754 ( update custom_format "Bad Source" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Source', 'IMF', 'release_title', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Source', 'IMF', 'IMF');
-- --- END op 6754

-- --- BEGIN op 6755 ( update quality_profile "Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Anime 1080p', 'Bad Source', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Anime 1080p'
    AND custom_format_name = 'Bad Source'
    AND arr_type = 'radarr'
);
-- --- END op 6755

-- --- BEGIN op 6756 ( update quality_profile "Anime 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Anime 1080p'
  AND custom_format_name = 'ProRes'
  AND arr_type = 'radarr'
  AND score = -10000;
-- --- END op 6756

-- --- BEGIN op 6757 ( update quality_profile "Anime 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Anime 1080p'
  AND custom_format_name = 'ProRes'
  AND arr_type = 'sonarr'
  AND score = -10000;
-- --- END op 6757

-- --- BEGIN op 6758 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'Bad Multis', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'Bad Multis'
    AND arr_type = 'radarr'
);
-- --- END op 6758

-- --- BEGIN op 6759 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'Bad Source', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'Bad Source'
    AND arr_type = 'radarr'
);
-- --- END op 6759

-- --- BEGIN op 6760 ( update quality_profile "LQ 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'LQ 1080p'
  AND custom_format_name = 'ProRes'
  AND arr_type = 'radarr'
  AND score = -10000;
-- --- END op 6760

-- --- BEGIN op 6761 ( update quality_profile "LQ 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'LQ 1080p'
  AND custom_format_name = 'ProRes'
  AND arr_type = 'sonarr'
  AND score = -10000;
-- --- END op 6761

-- --- BEGIN op 6762 ( update quality_profile "Movies 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p'
  AND custom_format_name = 'ProRes'
  AND arr_type = 'radarr'
  AND score = -10000;
-- --- END op 6762

-- --- BEGIN op 6763 ( update quality_profile "Movies 1080p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND custom_format_name = 'ProRes'
  AND arr_type = 'radarr'
  AND score = -10000;
-- --- END op 6763

-- --- BEGIN op 6764 ( update quality_profile "Movies 2160p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p'
  AND custom_format_name = 'ProRes'
  AND arr_type = 'radarr'
  AND score = -10000;
-- --- END op 6764

-- --- BEGIN op 6765 ( update quality_profile "Movies 2160p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'ProRes'
  AND arr_type = 'radarr'
  AND score = -10000;
-- --- END op 6765

-- --- BEGIN op 6766 ( update quality_profile "TV 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 1080p'
  AND custom_format_name = 'ProRes'
  AND arr_type = 'sonarr'
  AND score = -10000;
-- --- END op 6766

-- --- BEGIN op 6767 ( update quality_profile "TV 2160p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 2160p'
  AND custom_format_name = 'ProRes'
  AND arr_type = 'sonarr'
  AND score = -10000;
-- --- END op 6767

-- --- BEGIN op 6768 ( delete custom_format "ProRes" )
delete from "custom_formats" where "name" = 'ProRes';
-- --- END op 6768
