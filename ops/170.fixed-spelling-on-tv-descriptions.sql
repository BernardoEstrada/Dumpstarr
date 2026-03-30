-- @operation: export
-- @entity: batch
-- @name: Fixed spelling on TV descriptions
-- @exportedAt: 2026-03-30T16:13:11.765Z
-- @opIds: 1679, 1680

-- --- BEGIN op 1679 ( update quality_profile "TV 1080p" )
update "quality_profiles" set "description" = 'Based on the TRaSH Guides WEB-1080p (Alternative) profile, focusing on balanced quality/file size.
- This profile is recommended for a set-it-and-forget-it setup.
- Ensure you add a **[delay profile](https://wiki.servarr.com/sonarr/settings#:~:text=%C2%B6-,Delay%20Profiles,-Delay%20profiles%20allow)** to your setup. I prefer 60 minutes, but adjust this as needed.
- x265/HEVC is **allowed** on this profile, so some transcoding is possible if your client **does not** support x265/HEVC.
- Uncensored versions will be preferred while extended/special versions will be used as fallback.' where "name" = 'TV 1080p' and "description" = 'Based on the TRaSH Guides WEB-1080p (Alternative) profile, focusing on balanced quality/file size.
- This profile is recommended for a set-it-and-forget-it setup.
- Ensure you add a **[delay profile](https://wiki.servarr.com/sonarr/settings#:~:text=%C2%B6-,Delay%20Profiles,-Delay%20profiles%20allow)** to your setup. I prefer 60 minutes, but adjust this as needed.
- x265/HEVC is **allowed** on this profile, so some transcoding is possible if your client **does not** support x265/HEVC.
- Uncensored versions will be preferred while exteneded versions will be used as fallback.';
-- --- END op 1679

-- --- BEGIN op 1680 ( update quality_profile "TV 2160p" )
update "quality_profiles" set "description" = 'Based on the TRaSH Guides WEB-1080p (Alternative) profile, focusing on balanced quality/file size.
- This profile is recommended for a set-it-and-forget-it setup.
- Ensure you add a **[delay profile](https://wiki.servarr.com/sonarr/settings#:~:text=%C2%B6-,Delay%20Profiles,-Delay%20profiles%20allow)** to your setup. I prefer 60 minutes, but adjust this as needed.
- x265/HEVC is **allowed** on this profile, so some transcoding is possible if your client **does not** support x265/HEVC
- Uncensored versions will be preferred while extended/special versions will be used as fallback.' where "name" = 'TV 2160p' and "description" = 'Based on the TRaSH Guides WEB-1080p (Alternative) profile, focusing on balanced quality/file size.
- This profile is recommended for a set-it-and-forget-it setup.
- Ensure you add a **[delay profile](https://wiki.servarr.com/sonarr/settings#:~:text=%C2%B6-,Delay%20Profiles,-Delay%20profiles%20allow)** to your setup. I prefer 60 minutes, but adjust this as needed.
- x265/HEVC is **allowed** on this profile, so some transcoding is possible if your client **does not** support x265/HEVC
- Uncensored versions will be preferred while exteneded versions will be used as fallback.';
-- --- END op 1680
