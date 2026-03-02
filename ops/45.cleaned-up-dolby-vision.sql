-- @operation: export
-- @entity: batch
-- @name: Cleaned up Dolby Vision
-- @exportedAt: 2026-03-02T22:26:11.208Z
-- @opIds: 1174, 1175, 1181, 1187, 1188, 1189, 1190

-- --- BEGIN op 1174 ( update custom_format "DV (No HDR Fallback)" )
update "custom_formats" set "description" = 'This custom format **blocks** WEB-DLs **with** Dolby Vision but **no** HDR fallback.

Most WEBDL from Streaming Services DO NOT have the fallback to HDR10. During playback, issues with weird colors (typically a green hue) can result when you attempt to play it on a non-Dolby Vision-compatible setup.' where "name" = 'Dolby Vision WEB-DL' and "description" = 'This is a special Custom Format that blocks WEBDLs WITH Dolby Vision but WITHOUT HDR10 fallback.

This Custom Format works together with the normal DV Custom Format that you would use to prefer Dolby Vision.

Most WEBDL from Streaming Services DO NOT have the fallback to HDR10. During playback, issues with weird colors (typically a green hue) can result when you attempt to play it on a non-Dolby Vision-compatible setup.';
-- --- END op 1174

-- --- BEGIN op 1175 ( update custom_format "DV (No HDR Fallback)" )
update "custom_formats" set "name" = 'DV (No HDR Fallback)' where "name" = 'Dolby Vision WEB-DL';
-- --- END op 1175

-- --- BEGIN op 1181 ( update custom_format "Dolby Vision (No HDR Fallback)" )
update "custom_formats" set "name" = 'Dolby Vision (No HDR Fallback)' where "name" = 'DV (No HDR Fallback)';
-- --- END op 1181

-- --- BEGIN op 1187 ( update quality_profile "Movies 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p'
  AND custom_format_name = 'Dolby Vision (No HDR Fallback)'
  AND arr_type = 'radarr'
  AND score = -10000;
-- --- END op 1187

-- --- BEGIN op 1188 ( update quality_profile "Movies 1080p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND custom_format_name = 'Dolby Vision (No HDR Fallback)'
  AND arr_type = 'radarr'
  AND score = -10000;
-- --- END op 1188

-- --- BEGIN op 1189 ( update quality_profile "Movies 1080p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND custom_format_name = 'Non Retail HDR'
  AND arr_type = 'radarr'
  AND score = -10000;
-- --- END op 1189

-- --- BEGIN op 1190 ( update quality_profile "Movies 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p'
  AND custom_format_name = 'Non Retail HDR'
  AND arr_type = 'radarr'
  AND score = -10000;
-- --- END op 1190
