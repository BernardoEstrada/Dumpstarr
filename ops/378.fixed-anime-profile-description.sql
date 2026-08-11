-- @operation: export
-- @entity: batch
-- @name: Fixed Anime profile description
-- @exportedAt: 2026-08-11T17:31:46.030Z
-- @opIds: 5478

-- --- BEGIN op 5478 ( update quality_profile "Anime 1080p" )
update "quality_profiles" set "description" = 'Based on the TRaSH Guides Anime Profile, focusing on media that has Dual Audio.
- This profile will grab between a SDTV - 1080p Bluray file.
- You will be preferring Dual Audio media (ie including English along with original language). If you''d prefer to **only** have the original language (Japanese), remove the Dual Audio format and set your language preference in this profile.
- Dual Audio releases are always preferred.' where "name" = 'Anime 1080p' and "description" = 'Based on the TRaSH Guides Anime Profile, focusing on media that has Dual Audio.
- This profile will grab between a SDTV - 1080p Bluray file.
- You will be preferring Dual Audio media (ie including English along with original language). If you''d prefer to **only** have the original language (Japanese), remove the Dual Audio format and set your language preference in this profile.
- If you''d prefer to always grab Dual Audio releases, change the Dual Audio format score from 101 to 500';
-- --- END op 5478
