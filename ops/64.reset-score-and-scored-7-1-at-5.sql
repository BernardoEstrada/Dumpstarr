-- @operation: export
-- @entity: batch
-- @name: Reset score and scored 7.1 at 5
-- @exportedAt: 2026-03-03T19:39:36.129Z
-- @opIds: 1676, 1677, 1678, 1679, 1680, 1681, 1682, 1683, 1684, 1685, 1688, 1689, 1690, 1691, 1693, 1694

-- --- BEGIN op 1676 ( update quality_profile "Movies 2160p HQ" )
UPDATE quality_profile_custom_formats
SET score = 1700
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'WEB Tier 01'
  AND arr_type = 'radarr'
  AND score = 1800;
-- --- END op 1676

-- --- BEGIN op 1677 ( update quality_profile "Movies 2160p HQ" )
UPDATE quality_profile_custom_formats
SET score = 1650
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'WEB Tier 02'
  AND arr_type = 'radarr'
  AND score = 1750;
-- --- END op 1677

-- --- BEGIN op 1678 ( update quality_profile "Movies 2160p HQ" )
UPDATE quality_profile_custom_formats
SET score = 1600
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'WEB Tier 03'
  AND arr_type = 'radarr'
  AND score = 1700;
-- --- END op 1678

-- --- BEGIN op 1679 ( update quality_profile "Movies 2160p HQ" )
UPDATE quality_profile_custom_formats
SET score = 1550
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'WEB Tier 04'
  AND arr_type = 'radarr'
  AND score = 1650;
-- --- END op 1679

-- --- BEGIN op 1680 ( update quality_profile "Movies 2160p HQ" )
UPDATE quality_profile_custom_formats
SET score = 1500
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'WEB Tier 05'
  AND arr_type = 'radarr'
  AND score = 1600;
-- --- END op 1680

-- --- BEGIN op 1681 ( update quality_profile "Movies 1080p HQ" )
UPDATE quality_profile_custom_formats
SET score = 1700
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND custom_format_name = 'WEB Tier 01'
  AND arr_type = 'radarr'
  AND score = 1800;
-- --- END op 1681

-- --- BEGIN op 1682 ( update quality_profile "Movies 1080p HQ" )
UPDATE quality_profile_custom_formats
SET score = 1650
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND custom_format_name = 'WEB Tier 02'
  AND arr_type = 'radarr'
  AND score = 1750;
-- --- END op 1682

-- --- BEGIN op 1683 ( update quality_profile "Movies 1080p HQ" )
UPDATE quality_profile_custom_formats
SET score = 1600
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND custom_format_name = 'WEB Tier 03'
  AND arr_type = 'radarr'
  AND score = 1700;
-- --- END op 1683

-- --- BEGIN op 1684 ( update quality_profile "Movies 1080p HQ" )
UPDATE quality_profile_custom_formats
SET score = 1550
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND custom_format_name = 'WEB Tier 04'
  AND arr_type = 'radarr'
  AND score = 1650;
-- --- END op 1684

-- --- BEGIN op 1685 ( update quality_profile "Movies 1080p HQ" )
UPDATE quality_profile_custom_formats
SET score = 1500
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND custom_format_name = 'WEB Tier 05'
  AND arr_type = 'radarr'
  AND score = 1600;
-- --- END op 1685

-- --- BEGIN op 1688 ( update quality_profile "Movies 2160p HQ" )
UPDATE quality_profile_custom_formats
SET score = 550
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'BHDStudio'
  AND arr_type = 'radarr'
  AND score = 500;
-- --- END op 1688

-- --- BEGIN op 1689 ( update quality_profile "Movies 2160p HQ" )
UPDATE quality_profile_custom_formats
SET score = 600
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'hallowed'
  AND arr_type = 'radarr'
  AND score = 550;
-- --- END op 1689

-- --- BEGIN op 1690 ( update quality_profile "Movies 1080p HQ" )
UPDATE quality_profile_custom_formats
SET score = 550
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND custom_format_name = 'BHDStudio'
  AND arr_type = 'radarr'
  AND score = 500;
-- --- END op 1690

-- --- BEGIN op 1691 ( update quality_profile "Movies 1080p HQ" )
UPDATE quality_profile_custom_formats
SET score = 600
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND custom_format_name = 'hallowed'
  AND arr_type = 'radarr'
  AND score = 550;
-- --- END op 1691

-- --- BEGIN op 1693 ( update quality_profile "Movies 2160p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p HQ', '7.1 Surround', 'radarr', 5
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND custom_format_name = '7.1 Surround'
    AND arr_type = 'radarr'
);
-- --- END op 1693

-- --- BEGIN op 1694 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', '7.1 Surround', 'radarr', 5
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = '7.1 Surround'
    AND arr_type = 'radarr'
);
-- --- END op 1694
