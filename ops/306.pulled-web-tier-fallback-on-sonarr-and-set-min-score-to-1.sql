-- @operation: export
-- @entity: batch
-- @name: Pulled WEB Tier fallback on Sonarr and set min score to 1
-- @exportedAt: 2026-06-30T21:02:36.444Z
-- @opIds: 2394, 2395, 2396, 2397

-- --- BEGIN op 2394 ( update quality_profile "LQ 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'LQ 1080p'
  AND custom_format_name = 'WEB Tier 01'
  AND arr_type = 'sonarr'
  AND score = 3;
-- --- END op 2394

-- --- BEGIN op 2395 ( update quality_profile "LQ 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'LQ 1080p'
  AND custom_format_name = 'WEB Tier 02'
  AND arr_type = 'sonarr'
  AND score = 2;
-- --- END op 2395

-- --- BEGIN op 2396 ( update quality_profile "LQ 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'LQ 1080p'
  AND custom_format_name = 'WEB Tier 03'
  AND arr_type = 'sonarr'
  AND score = 1;
-- --- END op 2396

-- --- BEGIN op 2397 ( update quality_profile "LQ 1080p" )
update "quality_profiles" set "minimum_custom_format_score" = 1 where "name" = 'LQ 1080p' and "minimum_custom_format_score" = 0;
-- --- END op 2397
