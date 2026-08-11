-- @operation: export
-- @entity: batch
-- @name: Removed excess descriptions from all profiles
-- @exportedAt: 2026-08-11T16:03:05.784Z
-- @opIds: 5471, 5472, 5473, 5474, 5475, 5476

-- --- BEGIN op 5471 ( update quality_profile "Movies 2160p HQ" )
update "quality_profiles" set "description" = 'This profile follows the same sort of logic like the TRaSH SQP-4 MA Hybrid Profile. This results in higher-quality, WEB releases being preferred. This usually results in higher-quality audio, higher video bitrates and 30% larger file size.
- This profile prefers releases sources from MA (Movies Anywhere).
- This profile prefers 4K releases with **HDR** and **Dolby Vision**.
- This profile will allow HD audio like TrueHD, DTS-X, etc but only if the source is WEB-DL.
- Releases **without** HDR fallback are not allowed.' where "name" = 'Movies 2160p HQ' and "description" = 'This profile follows the same sort of logic like the TRaSH SQP-4 MA Hybrid Profile. This results in higher-quality, WEB releases being preferred. This usually results in higher-quality audio, higher video bitrates and 30% larger file size.
- This profile is recommended for a set-it-and-forget-it setup.
- This profile prefers releases sources from MA (Movies Anywhere).
- This profile prefers 4K releases with **HDR** and **Dolby Vision**.
- This profile will allow HD audio like TrueHD, DTS-X, etc but only if the source is WEB-DL.
- Releases **without** HDR fallback are not allowed.';
-- --- END op 5471

-- --- BEGIN op 5472 ( update quality_profile "Movies 2160p" )
update "quality_profiles" set "description" = 'This profile focuses on streaming optimized sources with little to no transcoding needed and is recommended for the average user or if you **do not** use a dedicated streaming box. (i.e. AppleTV, NVIDIA Shield, etc)
- This profile will prefer streaming optimized releases groups like **BHDStudio** and **hallowed**.
- This profile does not allow releases with HD Audio to ensure direct-play compatibility.
- Releases without HDR fallback will be scored negatively to ensure playability across platforms.' where "name" = 'Movies 2160p' and "description" = 'This profile focuses on streaming optimized sources with little to no transcoding needed and is recommended for the average user or if you **do not** use a dedicated streaming box. (i.e. AppleTV, NVIDIA Shield, etc)
- This profile is recommended for a set-it-and-forget-it setup.
- This profile will prefer streaming optimized releases groups like **BHDStudio** and **hallowed**.
- This profile does not allow releases with HD Audio to ensure direct-play compatibility.
- Releases without HDR fallback will be scored negatively to ensure playability across platforms.';
-- --- END op 5472

-- --- BEGIN op 5473 ( update quality_profile "TV 1080p" )
update "quality_profiles" set "description" = 'Based on the TRaSH Guides WEB-1080p (Alternative) profile, focusing on balanced quality/file size.
- x265/HEVC is **allowed** but not preferred on this profile, so some transcoding is possible if your client **does not** support x265/HEVC.
- Uncensored versions will be preferred while extended/special versions will be used as fallback.' where "name" = 'TV 1080p' and "description" = 'Based on the TRaSH Guides WEB-1080p (Alternative) profile, focusing on balanced quality/file size.
- This profile is recommended for a set-it-and-forget-it setup.
- x265/HEVC is **allowed** but not preferred on this profile, so some transcoding is possible if your client **does not** support x265/HEVC.
- Uncensored versions will be preferred while extended/special versions will be used as fallback.';
-- --- END op 5473

-- --- BEGIN op 5474 ( update quality_profile "TV 2160p" )
update "quality_profiles" set "description" = 'Based on the TRaSH Guides WEB-2160p (Alternative) profile, focusing on balanced quality/file size.
- This profile will **prefer** releases with HDR or Dolby Vision.
- x265/HEVC is **allowed** on this profile, so some transcoding is possible if your client **does not** support x265/HEVC.
- Uncensored versions will be preferred while extended/special versions will be used as fallback.
- Releases **without** HDR fallback are not allowed.' where "name" = 'TV 2160p' and "description" = 'Based on the TRaSH Guides WEB-2160p (Alternative) profile, focusing on balanced quality/file size.
- This profile is recommended for a set-it-and-forget-it setup.
- This profile will **prefer** releases with HDR or Dolby Vision.
- x265/HEVC is **allowed** on this profile, so some transcoding is possible if your client **does not** support x265/HEVC.
- Uncensored versions will be preferred while extended/special versions will be used as fallback.
- Releases **without** HDR fallback are not allowed.';
-- --- END op 5474

-- --- BEGIN op 5475 ( update quality_profile "Movies 1080p HQ" )
update "quality_profiles" set "description" = 'This profile follows the same sort of logic like the TRaSH SQP-4 MA Hybrid Profile. This results in higher-quality, WEB releases being preferred. This usually results in higher-quality audio, higher video bitrates and 30% larger file size.
- This profile prefers releases sources from MA (Movies Anywhere).
- This profile allows releases with **HDR** and **Dolby Vision**.
- This profile will allow HD audio like TrueHD, DTS-X, etc but only if the source is WEB-DL.
- Releases **without** HDR fallback are not allowed.' where "name" = 'Movies 1080p HQ' and "description" = 'This profile follows the same sort of logic like the TRaSH SQP-4 MA Hybrid Profile. This results in higher-quality, WEB releases being preferred. This usually results in higher-quality audio, higher video bitrates and 30% larger file size.
- This profile is recommended for a set-it-and-forget-it setup.
- This profile prefers releases sources from MA (Movies Anywhere).
- This profile allows releases with **HDR** and **Dolby Vision**.
- This profile will allow HD audio like TrueHD, DTS-X, etc but only if the source is WEB-DL.
- Releases **without** HDR fallback are not allowed.';
-- --- END op 5475

-- --- BEGIN op 5476 ( update quality_profile "Movies 1080p" )
update "quality_profiles" set "description" = 'This profile focuses on streaming optimized sources with little to no transcoding needed and is recommended for the average user or if you **do not** use a dedicated streaming box. (i.e. AppleTV, NVIDIA Shield, etc)
- This profile will prefer streaming optimized releases groups like **BHDStudio** and **hallowed**.
- This profile does not allow releases with HD Audio to ensure direct-play compatibility.' where "name" = 'Movies 1080p' and "description" = 'This profile focuses on streaming optimized sources with little to no transcoding needed and is recommended for the average user or if you **do not** use a dedicated streaming box. (i.e. AppleTV, NVIDIA Shield, etc)
- This profile is recommended for a set-it-and-forget-it setup.
- This profile will prefer streaming optimized releases groups like **BHDStudio** and **hallowed**.
- This profile does not allow releases with HD Audio to ensure direct-play compatibility.';
-- --- END op 5476
