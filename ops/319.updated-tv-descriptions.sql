-- @operation: export
-- @entity: batch
-- @name: Updated TV descriptions
-- @exportedAt: 2026-07-07T04:19:36.787Z
-- @opIds: 2734, 2735, 2736

-- --- BEGIN op 2734 ( update quality_profile "TV 2160p" )
update "quality_profiles" set "description" = 'Based on the TRaSH Guides WEB-2160p (Alternative) profile, focusing on balanced quality/file size.
- This profile is recommended for a set-it-and-forget-it setup.
- x265/HEVC is **allowed** on this profile, so some transcoding is possible if your client **does not** support x265/HEVC.
- Uncensored versions will be preferred while extended/special versions will be used as fallback.
- Releases **without** HDR fallback are not allowed.' where "name" = 'TV 2160p' and "description" = 'Based on the TRaSH Guides WEB-2160p (Alternative) profile, focusing on balanced quality/file size.
- This profile is recommended for a set-it-and-forget-it setup.
- x265/HEVC is **allowed** on this profile, so some transcoding is possible if your client **does not** support x265/HEVC
- Uncensored versions will be preferred while extended/special versions will be used as fallback.
- Releases **without** HDR fallback are not allowed.';
-- --- END op 2734

-- --- BEGIN op 2735 ( update quality_profile "TV 1080p" )
update "quality_profiles" set "description" = 'Based on the TRaSH Guides WEB-1080p (Alternative) profile, focusing on balanced quality/file size.
- This profile is recommended for a set-it-and-forget-it setup.
- x265/HEVC is **allowed** on this profile, so some transcoding is possible if your client **does not** support x265/HEVC.
- Uncensored versions will be preferred while extended/special versions will be used as fallback.' where "name" = 'TV 1080p' and "description" = 'Based on the TRaSH Guides WEB-1080p (Alternative) profile, focusing on balanced quality/file size.
- This profile is recommended for a set-it-and-forget-it setup.
- Uncensored versions will be preferred while extended/special versions will be used as fallback.';
-- --- END op 2735

-- --- BEGIN op 2736 ( update quality_profile "TV 2160p" )
update "quality_profiles" set "description" = 'Based on the TRaSH Guides WEB-2160p (Alternative) profile, focusing on balanced quality/file size.
- This profile is recommended for a set-it-and-forget-it setup.
- This profile will **prefer** releases with HDR or Dolby Vision.
- x265/HEVC is **allowed** on this profile, so some transcoding is possible if your client **does not** support x265/HEVC.
- Uncensored versions will be preferred while extended/special versions will be used as fallback.
- Releases **without** HDR fallback are not allowed.' where "name" = 'TV 2160p' and "description" = 'Based on the TRaSH Guides WEB-2160p (Alternative) profile, focusing on balanced quality/file size.
- This profile is recommended for a set-it-and-forget-it setup.
- x265/HEVC is **allowed** on this profile, so some transcoding is possible if your client **does not** support x265/HEVC.
- Uncensored versions will be preferred while extended/special versions will be used as fallback.
- Releases **without** HDR fallback are not allowed.';
-- --- END op 2736
