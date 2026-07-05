-- @operation: export
-- @entity: batch
-- @name: Pulled x265 formats
-- @exportedAt: 2026-07-05T21:51:41.717Z
-- @opIds: 2686, 2687, 2688, 2689

-- --- BEGIN op 2686 ( delete custom_format "x265 (HD)" )
delete from "custom_formats" where "name" = 'x265 (HD)';
-- --- END op 2686

-- --- BEGIN op 2687 ( update quality_profile "TV 2160p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 2160p'
  AND custom_format_name = 'x265 (no HDR DV)'
  AND arr_type = 'sonarr'
  AND score = -10000;
-- --- END op 2687

-- --- BEGIN op 2688 ( update quality_profile "TV 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 1080p'
  AND custom_format_name = 'x265 (no HDR DV)'
  AND arr_type = 'sonarr'
  AND score = -10000;
-- --- END op 2688

-- --- BEGIN op 2689 ( delete custom_format "x265 (no HDR DV)" )
delete from "custom_formats" where "name" = 'x265 (no HDR DV)';
-- --- END op 2689
