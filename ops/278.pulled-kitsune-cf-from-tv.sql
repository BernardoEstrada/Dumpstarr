-- @operation: export
-- @entity: batch
-- @name: Pulled Kitsune CF from TV
-- @exportedAt: 2026-06-16T02:35:29.064Z
-- @opIds: 1806, 1807, 1808

-- --- BEGIN op 1806 ( update quality_profile "TV 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 1080p'
  AND custom_format_name = 'Kitsune'
  AND arr_type = 'sonarr'
  AND score = 3;
-- --- END op 1806

-- --- BEGIN op 1807 ( update quality_profile "TV 2160p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 2160p'
  AND custom_format_name = 'Kitsune'
  AND arr_type = 'sonarr'
  AND score = 3;
-- --- END op 1807

-- --- BEGIN op 1808 ( delete custom_format "Kitsune" )
delete from "custom_formats" where "name" = 'Kitsune';
-- --- END op 1808
