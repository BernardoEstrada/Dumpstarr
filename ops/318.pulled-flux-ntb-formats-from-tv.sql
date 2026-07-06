-- @operation: export
-- @entity: batch
-- @name: Pulled FLUX & NTb formats from TV
-- @exportedAt: 2026-07-06T15:26:15.197Z
-- @opIds: 2708, 2709, 2710, 2711, 2712, 2713

-- --- BEGIN op 2708 ( update quality_profile "TV 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 1080p'
  AND custom_format_name = 'FLUX'
  AND arr_type = 'sonarr'
  AND score = 2;
-- --- END op 2708

-- --- BEGIN op 2709 ( update quality_profile "TV 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 1080p'
  AND custom_format_name = 'NTb'
  AND arr_type = 'sonarr'
  AND score = 1;
-- --- END op 2709

-- --- BEGIN op 2710 ( update quality_profile "TV 2160p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 2160p'
  AND custom_format_name = 'FLUX'
  AND arr_type = 'sonarr'
  AND score = 2;
-- --- END op 2710

-- --- BEGIN op 2711 ( update quality_profile "TV 2160p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 2160p'
  AND custom_format_name = 'NTb'
  AND arr_type = 'sonarr'
  AND score = 1;
-- --- END op 2711

-- --- BEGIN op 2712 ( delete custom_format "NTb" )
delete from "custom_formats" where "name" = 'NTb';
-- --- END op 2712

-- --- BEGIN op 2713 ( delete custom_format "FLUX" )
delete from "custom_formats" where "name" = 'FLUX';
-- --- END op 2713
