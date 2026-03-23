-- @operation: export
-- @entity: batch
-- @name: Adjusted LQ Tier scores
-- @exportedAt: 2026-03-23T15:08:30.174Z
-- @opIds: 1309, 1310, 1311, 1312, 1313, 1314, 1315, 1316, 1317, 1318

-- --- BEGIN op 1309 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'SIDCA Tier 01', 'radarr', 300
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'SIDCA Tier 01'
    AND arr_type = 'radarr'
);
-- --- END op 1309

-- --- BEGIN op 1310 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'SIDCA Tier 01', 'sonarr', 300
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'SIDCA Tier 01'
    AND arr_type = 'sonarr'
);
-- --- END op 1310

-- --- BEGIN op 1311 ( update quality_profile "LQ 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'LQ 1080p'
  AND custom_format_name = 'SIDCA Tier 01'
  AND arr_type = 'all'
  AND score = 300;
-- --- END op 1311

-- --- BEGIN op 1312 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'SIDCA Tier 02', 'radarr', 250
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'SIDCA Tier 02'
    AND arr_type = 'radarr'
);
-- --- END op 1312

-- --- BEGIN op 1313 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'SIDCA Tier 02', 'sonarr', 250
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'SIDCA Tier 02'
    AND arr_type = 'sonarr'
);
-- --- END op 1313

-- --- BEGIN op 1314 ( update quality_profile "LQ 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'LQ 1080p'
  AND custom_format_name = 'SIDCA Tier 02'
  AND arr_type = 'all'
  AND score = 250;
-- --- END op 1314

-- --- BEGIN op 1315 ( update quality_profile "LQ 1080p" )
UPDATE quality_profile_custom_formats
SET score = 400
WHERE quality_profile_name = 'LQ 1080p'
  AND custom_format_name = 'SIDCA Tier 01'
  AND arr_type = 'radarr'
  AND score = 300;
-- --- END op 1315

-- --- BEGIN op 1316 ( update quality_profile "LQ 1080p" )
UPDATE quality_profile_custom_formats
SET score = 400
WHERE quality_profile_name = 'LQ 1080p'
  AND custom_format_name = 'SIDCA Tier 01'
  AND arr_type = 'sonarr'
  AND score = 300;
-- --- END op 1316

-- --- BEGIN op 1317 ( update quality_profile "LQ 1080p" )
UPDATE quality_profile_custom_formats
SET score = 300
WHERE quality_profile_name = 'LQ 1080p'
  AND custom_format_name = 'SIDCA Tier 02'
  AND arr_type = 'radarr'
  AND score = 250;
-- --- END op 1317

-- --- BEGIN op 1318 ( update quality_profile "LQ 1080p" )
UPDATE quality_profile_custom_formats
SET score = 300
WHERE quality_profile_name = 'LQ 1080p'
  AND custom_format_name = 'SIDCA Tier 02'
  AND arr_type = 'sonarr'
  AND score = 250;
-- --- END op 1318
