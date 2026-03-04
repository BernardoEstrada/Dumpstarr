-- @operation: export
-- @entity: batch
-- @name: Lower score of HDR10+ to 100 on Movies 2160p per TRaSH
-- @exportedAt: 2026-03-04T04:28:50.911Z
-- @opIds: 2237

-- --- BEGIN op 2237 ( update quality_profile "Movies 2160p" )
UPDATE quality_profile_custom_formats
SET score = 100
WHERE quality_profile_name = 'Movies 2160p'
  AND custom_format_name = 'HDR10+'
  AND arr_type = 'radarr'
  AND score = 500;
-- --- END op 2237
