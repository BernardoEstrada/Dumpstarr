-- @operation: export
-- @entity: batch
-- @name: Removed x265 Negation from Movies
-- @exportedAt: 2026-03-25T18:00:51.852Z
-- @opIds: 1389, 1390, 1391, 1392, 1393, 1394, 1395, 1396, 1397, 1398

-- --- BEGIN op 1389 ( update quality_profile "Movies 2160p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'BHDStudio'
  AND arr_type = 'radarr'
  AND score = 550;
-- --- END op 1389

-- --- BEGIN op 1390 ( update quality_profile "Movies 2160p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'hallowed'
  AND arr_type = 'radarr'
  AND score = 600;
-- --- END op 1390

-- --- BEGIN op 1391 ( update quality_profile "Movies 1080p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND custom_format_name = 'BHDStudio'
  AND arr_type = 'radarr'
  AND score = 550;
-- --- END op 1391

-- --- BEGIN op 1392 ( update quality_profile "Movies 1080p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND custom_format_name = 'hallowed'
  AND arr_type = 'radarr'
  AND score = 600;
-- --- END op 1392

-- --- BEGIN op 1393 ( update quality_profile "Movies 2160p HQ" )
update "quality_profiles" set "description" = 'This profile is like the primary Movie profile, but with merged source qualities. This results in higher-quality, WEB releases being preferred. This usually results in higher-quality audio, higher video bitrates and 30% larger file size.
- This profile is recommended for a set-it-and-forget-it setup.
- This profile prefers 4K releases with **HDR** and **Dolby Vision**.
- This profile will allow HD audio like TrueHD, DTS-X, etc but only if the source is WEB-DL
- Releases **without** HDR fallback are not allowed.' where "name" = 'Movies 2160p HQ' and "description" = 'This profile is like the primary Movie profile, but with merged source qualities. This results in higher-quality, WEB releases being preferred. This usually results in higher-quality audio, higher video bitrates and 30% larger file size.
- This profile is recommended for a set-it-and-forget-it setup.
- This profile prefers 4K releases with **HDR** and **Dolby Vision**.
- This profile will fall back to streaming optimized releases groups like **BHDStudio** and **hallowed**.
- This profile will allow HD audio like TrueHD, DTS-X, etc but only if the source is WEB-DL
- Releases **without** HDR fallback are not allowed.';
-- --- END op 1393

-- --- BEGIN op 1394 ( update quality_profile "Movies 1080p HQ" )
update "quality_profiles" set "description" = 'This profile is like the primary Movie profile, but with merged source qualities. This results in higher-quality, WEB releases being preferred. This usually results in higher-quality audio, higher video bitrates and 30% larger file size.
- This profile is recommended for a set-it-and-forget-it setup.
- This profile will allow HD audio like TrueHD, DTS-X, etc but only if the source is WEB-DL' where "name" = 'Movies 1080p HQ' and "description" = 'This profile is like the primary Movie profile, but with merged source qualities. This results in higher-quality, WEB releases being preferred. This usually results in higher-quality audio, higher video bitrates and 30% larger file size.
- This profile is recommended for a set-it-and-forget-it setup.
- This profile will fall back to streaming optimized releases groups like **BHDStudio** and **hallowed**.
- This profile will allow HD audio like TrueHD, DTS-X, etc but only if the source is WEB-DL';
-- --- END op 1394

-- --- BEGIN op 1395 ( update quality_profile "Movies 1080p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND custom_format_name = 'x265 (HD)'
  AND arr_type = 'radarr'
  AND score = -10000;
-- --- END op 1395

-- --- BEGIN op 1396 ( update quality_profile "Movies 2160p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'x265 (HD)'
  AND arr_type = 'radarr'
  AND score = -10000;
-- --- END op 1396

-- --- BEGIN op 1397 ( update quality_profile "Movies 2160p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p'
  AND custom_format_name = 'x265 (HD)'
  AND arr_type = 'radarr'
  AND score = -10000;
-- --- END op 1397

-- --- BEGIN op 1398 ( update quality_profile "Movies 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p'
  AND custom_format_name = 'x265 (HD)'
  AND arr_type = 'radarr'
  AND score = -10000;
-- --- END op 1398
