-- @operation: export
-- @entity: batch
-- @name: Updated TV Editions score
-- @exportedAt: 2026-02-28T05:47:00.339Z
-- @opIds: 430, 431

-- --- BEGIN op 430 ( update quality_profile "TV 1080p" )
UPDATE quality_profile_custom_formats
SET score = 125
WHERE quality_profile_name = 'TV 1080p'
  AND custom_format_name = 'TV Editions'
  AND arr_type = 'sonarr'
  AND score = 25;
-- --- END op 430

-- --- BEGIN op 431 ( update quality_profile "TV 2160p" )
UPDATE quality_profile_custom_formats
SET score = 125
WHERE quality_profile_name = 'TV 2160p'
  AND custom_format_name = 'TV Editions'
  AND arr_type = 'sonarr'
  AND score = 25;
-- --- END op 431
