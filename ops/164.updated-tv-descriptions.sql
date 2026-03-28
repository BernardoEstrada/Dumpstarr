-- @operation: export
-- @entity: batch
-- @name: Updated TV descriptions
-- @exportedAt: 2026-03-28T18:17:05.445Z
-- @opIds: 1440, 1441

-- --- BEGIN op 1440 ( update quality_profile "TV 1080p" )
update "quality_profiles" set "description" = 'Based on the TRaSH Guides WEB-1080p (Alternative) profile, focusing on balanced quality/file size.
- This profile is recommended for a set-it-and-forget-it setup.
- Ensure you add a **[delay profile](https://wiki.servarr.com/sonarr/settings#:~:text=%C2%B6-,Delay%20Profiles,-Delay%20profiles%20allow)** to your setup. I prefer 60 minutes, but adjust this as needed.
- x265/HEVC is **allowed** on this profile, so some transcoding is possible if your client **does not** support x265/HEVC.
- Uncensored versions will be preferred while exteneded versions will be used as fallback.' where "name" = 'TV 1080p' and "description" = 'Based on the TRaSH Guides WEB-1080p (Alternative) profile, focusing on balanced quality/file size.
- This profile is recommended for a set-it-and-forget-it setup.
- Ensure you add a **[delay profile](https://wiki.servarr.com/sonarr/settings#:~:text=%C2%B6-,Delay%20Profiles,-Delay%20profiles%20allow)** to your setup. I prefer 60 minutes, but adjust this as needed.
- x265/HEVC is **allowed** on this profile, so some transcoding is possible if your client **does not** support x265/HEVC.';
-- --- END op 1440

-- --- BEGIN op 1441 ( update quality_profile "TV 2160p" )
update "quality_profiles" set "description" = 'Based on the TRaSH Guides WEB-1080p (Alternative) profile, focusing on balanced quality/file size.
- This profile is recommended for a set-it-and-forget-it setup.
- Ensure you add a **[delay profile](https://wiki.servarr.com/sonarr/settings#:~:text=%C2%B6-,Delay%20Profiles,-Delay%20profiles%20allow)** to your setup. I prefer 60 minutes, but adjust this as needed.
- x265/HEVC is **allowed** on this profile, so some transcoding is possible if your client **does not** support x265/HEVC
- Uncensored versions will be preferred while exteneded versions will be used as fallback.' where "name" = 'TV 2160p' and "description" = 'Based on the TRaSH Guides WEB-1080p (Alternative) profile, focusing on balanced quality/file size.
- This profile is recommended for a set-it-and-forget-it setup.
- Ensure you add a **[delay profile](https://wiki.servarr.com/sonarr/settings#:~:text=%C2%B6-,Delay%20Profiles,-Delay%20profiles%20allow)** to your setup. I prefer 60 minutes, but adjust this as needed.
- x265/HEVC is **allowed** on this profile, so some transcoding is possible if your client **does not** support x265/HEVC';
-- --- END op 1441
