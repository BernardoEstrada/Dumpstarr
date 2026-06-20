-- @operation: export
-- @entity: batch
-- @name: Pulled Hybrid format
-- @exportedAt: 2026-06-20T12:20:53.247Z
-- @opIds: 1911, 1912, 1913, 1914, 1915

-- --- BEGIN op 1911 ( update quality_profile "Movies 1080p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND custom_format_name = 'Hybrid'
  AND arr_type = 'radarr'
  AND score = 50;
-- --- END op 1911

-- --- BEGIN op 1912 ( update quality_profile "Movies 2160p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'Hybrid'
  AND arr_type = 'radarr'
  AND score = 50;
-- --- END op 1912

-- --- BEGIN op 1913 ( delete custom_format "Hybrid" )
delete from "custom_formats" where "name" = 'Hybrid';
-- --- END op 1913

-- --- BEGIN op 1914 ( delete regular_expression "Hybrid Title" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Hybrid Title' AND tag_name = 'Version';

delete from "regular_expressions" where "name" = 'Hybrid Title';
-- --- END op 1914

-- --- BEGIN op 1915 ( delete regular_expression "HYBRID Group" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'HYBRID Group' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'HYBRID Group';
-- --- END op 1915
