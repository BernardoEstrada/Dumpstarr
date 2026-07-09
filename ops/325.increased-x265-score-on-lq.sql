-- @operation: export
-- @entity: batch
-- @name: Increased X265 score on LQ
-- @exportedAt: 2026-07-09T15:55:29.227Z
-- @opIds: 2780

-- --- BEGIN op 2780 ( update quality_profile "LQ 1080p" )
UPDATE quality_profile_custom_formats
SET score = 5
WHERE quality_profile_name = 'LQ 1080p'
  AND custom_format_name = 'x265'
  AND arr_type = 'sonarr'
  AND score = 1;
-- --- END op 2780
