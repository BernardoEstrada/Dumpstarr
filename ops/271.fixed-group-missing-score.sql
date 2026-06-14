-- @operation: export
-- @entity: batch
-- @name: Fixed Group Missing Score
-- @exportedAt: 2026-06-14T05:28:54.851Z
-- @opIds: 1688, 1689, 1690, 1691, 1692, 1693, 1694

-- --- BEGIN op 1688 ( delete regular_expression "Dumpstarr LQ (Automation) Groups" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dumpstarr LQ (Automation) Groups' AND tag_name = 'Banned';

delete from "regular_expressions" where "name" = 'Dumpstarr LQ (Automation) Groups';
-- --- END op 1688

-- --- BEGIN op 1689 ( update quality_profile "TV 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV 1080p', 'Group Missing', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV 1080p'
    AND custom_format_name = 'Group Missing'
    AND arr_type = 'sonarr'
);
-- --- END op 1689

-- --- BEGIN op 1690 ( update quality_profile "TV 2160p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV 2160p', 'Group Missing', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV 2160p'
    AND custom_format_name = 'Group Missing'
    AND arr_type = 'sonarr'
);
-- --- END op 1690

-- --- BEGIN op 1691 ( update quality_profile "Movies 2160p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p HQ', 'Group Missing', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND custom_format_name = 'Group Missing'
    AND arr_type = 'radarr'
);
-- --- END op 1691

-- --- BEGIN op 1692 ( update quality_profile "Movies 2160p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p', 'Group Missing', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p'
    AND custom_format_name = 'Group Missing'
    AND arr_type = 'radarr'
);
-- --- END op 1692

-- --- BEGIN op 1693 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'Group Missing', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'Group Missing'
    AND arr_type = 'radarr'
);
-- --- END op 1693

-- --- BEGIN op 1694 ( update quality_profile "Movies 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p', 'Group Missing', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p'
    AND custom_format_name = 'Group Missing'
    AND arr_type = 'radarr'
);
-- --- END op 1694
