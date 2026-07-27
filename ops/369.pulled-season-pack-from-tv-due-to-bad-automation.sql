-- @operation: export
-- @entity: batch
-- @name: Pulled Season Pack from TV due to bad automation
-- @exportedAt: 2026-07-27T05:48:36.477Z
-- @opIds: 4358, 4359, 4360

-- --- BEGIN op 4358 ( update quality_profile "TV 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 1080p'
  AND custom_format_name = 'Season Pack'
  AND arr_type = 'sonarr'
  AND score = 10;
-- --- END op 4358

-- --- BEGIN op 4359 ( update quality_profile "TV 2160p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV 2160p', 'Bad Season Pack', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV 2160p'
    AND custom_format_name = 'Bad Season Pack'
    AND arr_type = 'sonarr'
);
-- --- END op 4359

-- --- BEGIN op 4360 ( update quality_profile "TV 2160p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 2160p'
  AND custom_format_name = 'Season Pack'
  AND arr_type = 'sonarr'
  AND score = 10;
-- --- END op 4360
