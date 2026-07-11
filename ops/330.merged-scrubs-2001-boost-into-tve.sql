-- @operation: export
-- @entity: batch
-- @name: Merged Scrubs 2001 Boost into TVE
-- @exportedAt: 2026-07-11T01:08:44.326Z
-- @opIds: 2879, 2880, 2881, 2882, 2883

-- --- BEGIN op 2879 ( update quality_profile "TV 1080p" )
UPDATE quality_profile_custom_formats
SET score = -50
WHERE quality_profile_name = 'TV 1080p'
  AND custom_format_name = 'x265'
  AND arr_type = 'sonarr'
  AND score = 1;
-- --- END op 2879

-- --- BEGIN op 2880 ( update quality_profile "TV 1080p" )
update "quality_profiles" set "description" = 'Based on the TRaSH Guides WEB-1080p (Alternative) profile, focusing on balanced quality/file size.
- This profile is recommended for a set-it-and-forget-it setup.
- x265/HEVC is **allowed** but not preferred on this profile, so some transcoding is possible if your client **does not** support x265/HEVC.
- Uncensored versions will be preferred while extended/special versions will be used as fallback.' where "name" = 'TV 1080p' and "description" = 'Based on the TRaSH Guides WEB-1080p (Alternative) profile, focusing on balanced quality/file size.
- This profile is recommended for a set-it-and-forget-it setup.
- x265/HEVC is **allowed** on this profile, so some transcoding is possible if your client **does not** support x265/HEVC.
- Uncensored versions will be preferred while extended/special versions will be used as fallback.';
-- --- END op 2880

-- --- BEGIN op 2881 ( update custom_format "TVE" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TVE', 'Scrubs 2001 Boost', 'release_title', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('TVE', 'Scrubs 2001 Boost', 'Scrubs 2001 Boost');
-- --- END op 2881

-- --- BEGIN op 2882 ( update quality_profile "TV 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 1080p'
  AND custom_format_name = 'Scrubs 2001 Boost'
  AND arr_type = 'sonarr'
  AND score = 10;
-- --- END op 2882

-- --- BEGIN op 2883 ( update quality_profile "TV 2160p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 2160p'
  AND custom_format_name = 'Scrubs 2001 Boost'
  AND arr_type = 'sonarr'
  AND score = 10;
-- --- END op 2883
