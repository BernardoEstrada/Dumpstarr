-- @operation: export
-- @entity: batch
-- @name: Reduce HDR score on TV 1080p
-- @exportedAt: 2026-08-30T04:29:16.464Z
-- @opIds: 5737

-- --- BEGIN op 5737 ( update quality_profile "TV 1080p" )
UPDATE quality_profile_custom_formats
SET score = 50
WHERE quality_profile_name = 'TV 1080p'
  AND custom_format_name = 'HDR'
  AND arr_type = 'sonarr'
  AND score = 100;
-- --- END op 5737
