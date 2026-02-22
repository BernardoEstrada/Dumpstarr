-- @operation: export
-- @entity: batch
-- @name: Updated description of Anime
-- @exportedAt: 2026-02-22T01:07:59.065Z
-- @opIds: 98

-- --- BEGIN op 98 ( update quality_profile "Anime 1080p" )
update "quality_profiles" set "description" = 'Based on the TRaSH Guides Anime Profile, focusing on media that has Dual Audio.' where "name" = 'Anime 1080p' and "description" = 'Based on the TRaSH Guides Anime Profile, focusing on media that has Dual Audio.
- This profile will grab between a SDTV - 1080p Bluray file.
- You will be preferring Dual Audio media (ie including English along with original language). If you''d prefer to **only** have the original language (Japanese), remove the Dual Audio format and set you language settings in this profile to Advanced - Must Include - Japanese.
- If you''d prefer to always grab Dual Audio releases, change the Dual Audio format score from 101 to 500';
-- --- END op 98
