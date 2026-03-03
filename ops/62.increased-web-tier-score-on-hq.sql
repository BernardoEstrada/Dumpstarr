-- @operation: export
-- @entity: batch
-- @name: Increased WEB Tier score on HQ
-- @exportedAt: 2026-03-03T19:12:54.827Z
-- @opIds: 1561, 1562, 1563, 1564, 1565, 1566, 1567, 1568, 1569, 1570

-- --- BEGIN op 1561 ( update quality_profile "Movies 2160p HQ" )
UPDATE quality_profile_custom_formats
SET score = 1800
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'WEB Tier 01'
  AND arr_type = 'radarr'
  AND score = 1700;
-- --- END op 1561

-- --- BEGIN op 1562 ( update quality_profile "Movies 2160p HQ" )
UPDATE quality_profile_custom_formats
SET score = 1750
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'WEB Tier 02'
  AND arr_type = 'radarr'
  AND score = 1650;
-- --- END op 1562

-- --- BEGIN op 1563 ( update quality_profile "Movies 2160p HQ" )
UPDATE quality_profile_custom_formats
SET score = 1700
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'WEB Tier 03'
  AND arr_type = 'radarr'
  AND score = 1600;
-- --- END op 1563

-- --- BEGIN op 1564 ( update quality_profile "Movies 2160p HQ" )
UPDATE quality_profile_custom_formats
SET score = 1650
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'WEB Tier 04'
  AND arr_type = 'radarr'
  AND score = 1550;
-- --- END op 1564

-- --- BEGIN op 1565 ( update quality_profile "Movies 2160p HQ" )
UPDATE quality_profile_custom_formats
SET score = 1600
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'WEB Tier 05'
  AND arr_type = 'radarr'
  AND score = 1500;
-- --- END op 1565

-- --- BEGIN op 1566 ( update quality_profile "Movies 1080p HQ" )
UPDATE quality_profile_custom_formats
SET score = 1800
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND custom_format_name = 'WEB Tier 01'
  AND arr_type = 'radarr'
  AND score = 1700;
-- --- END op 1566

-- --- BEGIN op 1567 ( update quality_profile "Movies 1080p HQ" )
UPDATE quality_profile_custom_formats
SET score = 1750
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND custom_format_name = 'WEB Tier 02'
  AND arr_type = 'radarr'
  AND score = 1650;
-- --- END op 1567

-- --- BEGIN op 1568 ( update quality_profile "Movies 1080p HQ" )
UPDATE quality_profile_custom_formats
SET score = 1700
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND custom_format_name = 'WEB Tier 03'
  AND arr_type = 'radarr'
  AND score = 1600;
-- --- END op 1568

-- --- BEGIN op 1569 ( update quality_profile "Movies 1080p HQ" )
UPDATE quality_profile_custom_formats
SET score = 1650
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND custom_format_name = 'WEB Tier 04'
  AND arr_type = 'radarr'
  AND score = 1550;
-- --- END op 1569

-- --- BEGIN op 1570 ( update quality_profile "Movies 1080p HQ" )
UPDATE quality_profile_custom_formats
SET score = 1600
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND custom_format_name = 'WEB Tier 05'
  AND arr_type = 'radarr'
  AND score = 1500;
-- --- END op 1570
