-- @operation: export
-- @entity: batch
-- @name: Pulled BD tiers from Anime Beta and refactored sources
-- @exportedAt: 2026-05-23T13:04:53.390Z
-- @opIds: 1027, 1028, 1029, 1030, 1031, 1032, 1033, 1034, 1035, 1036, 1037, 1038, 1039, 1040, 1041, 1042, 1043, 1044

-- --- BEGIN op 1027 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'BETA - Anime 1080p', 'HDTV-1080p', NULL, 1, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND quality_name = 'HDTV-1080p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'BETA - Anime 1080p', 'HDTV-720p', NULL, 3, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND quality_name = 'HDTV-720p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'BETA - Anime 1080p', 'Bluray-480p', NULL, 7, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND quality_name = 'Bluray-480p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'BETA - Anime 1080p', 'Bluray-720p', NULL, 8, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND quality_name = 'Bluray-720p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'BETA - Anime 1080p', 'Bluray-1080p', NULL, 9, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND quality_name = 'Bluray-1080p'
    AND quality_group_name IS NULL
);

UPDATE quality_profile_qualities
SET position = 2
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND quality_group_name = '720p'
  AND quality_name IS NULL
  AND position = 1
  AND enabled = 1
  AND upgrade_until = 0;

DELETE FROM quality_group_members
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND quality_group_name = '720p'
  AND (SELECT COUNT(*)
FROM quality_group_members
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND quality_group_name = '720p') = 4
  AND NOT EXISTS (
    SELECT 1
    FROM quality_group_members
    WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND quality_group_name = '720p'
      AND quality_name NOT IN ('HDTV-720p', 'WEBDL-720p', 'WEBRip-720p', 'Bluray-720p')
  )
  AND (
    NOT EXISTS (
      SELECT 1
      FROM quality_group_members
      WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND quality_group_name = '720p'
        AND NOT (
          (quality_name = 'HDTV-720p'
        AND position = 0)
      OR (quality_name = 'WEBDL-720p'
        AND position = 1)
      OR (quality_name = 'WEBRip-720p'
        AND position = 2)
      OR (quality_name = 'Bluray-720p'
        AND position = 3)
        )
    )
    OR NOT EXISTS (
      SELECT 1
      FROM quality_group_members
      WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND quality_group_name = '720p'
        AND position != 0
    )
  );

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
WITH can_insert AS (
  SELECT (
    SELECT COUNT(*)
    FROM quality_group_members
    WHERE quality_profile_name = 'BETA - Anime 1080p'
      AND quality_group_name = '720p'
  ) = 0 AS ok
),
new_rows AS (
SELECT 'BETA - Anime 1080p' AS quality_profile_name, '720p' AS quality_group_name, 'WEBDL-720p' AS quality_name, 0 AS position
UNION ALL
SELECT 'BETA - Anime 1080p' AS quality_profile_name, '720p' AS quality_group_name, 'WEBRip-720p' AS quality_name, 1 AS position
)
SELECT
  new_rows.quality_profile_name,
  new_rows.quality_group_name,
  new_rows.quality_name,
  new_rows.position
FROM new_rows
CROSS JOIN can_insert
WHERE ok;

UPDATE quality_profile_qualities
SET position = 4
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND quality_group_name = '480p'
  AND quality_name IS NULL
  AND position = 2
  AND enabled = 1
  AND upgrade_until = 0;

DELETE FROM quality_group_members
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND quality_group_name = '480p'
  AND (SELECT COUNT(*)
FROM quality_group_members
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND quality_group_name = '480p') = 3
  AND NOT EXISTS (
    SELECT 1
    FROM quality_group_members
    WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND quality_group_name = '480p'
      AND quality_name NOT IN ('WEBDL-480p', 'WEBRip-480p', 'Bluray-480p')
  )
  AND (
    NOT EXISTS (
      SELECT 1
      FROM quality_group_members
      WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND quality_group_name = '480p'
        AND NOT (
          (quality_name = 'WEBDL-480p'
        AND position = 0)
      OR (quality_name = 'WEBRip-480p'
        AND position = 1)
      OR (quality_name = 'Bluray-480p'
        AND position = 2)
        )
    )
    OR NOT EXISTS (
      SELECT 1
      FROM quality_group_members
      WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND quality_group_name = '480p'
        AND position != 0
    )
  );

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
WITH can_insert AS (
  SELECT (
    SELECT COUNT(*)
    FROM quality_group_members
    WHERE quality_profile_name = 'BETA - Anime 1080p'
      AND quality_group_name = '480p'
  ) = 0 AS ok
),
new_rows AS (
SELECT 'BETA - Anime 1080p' AS quality_profile_name, '480p' AS quality_group_name, 'WEBDL-480p' AS quality_name, 0 AS position
UNION ALL
SELECT 'BETA - Anime 1080p' AS quality_profile_name, '480p' AS quality_group_name, 'WEBRip-480p' AS quality_name, 1 AS position
)
SELECT
  new_rows.quality_profile_name,
  new_rows.quality_group_name,
  new_rows.quality_name,
  new_rows.position
FROM new_rows
CROSS JOIN can_insert
WHERE ok;

UPDATE quality_profile_qualities
SET position = 5
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND quality_name = 'DVD'
  AND quality_group_name IS NULL
  AND position = 3
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 6
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND quality_name = 'SDTV'
  AND quality_group_name IS NULL
  AND position = 4
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 10
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND quality_name = 'Bluray-2160p'
  AND quality_group_name IS NULL
  AND position = 5
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 11
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND quality_name = 'Bluray-576p'
  AND quality_group_name IS NULL
  AND position = 6
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 12
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND quality_name = 'BR-DISK'
  AND quality_group_name IS NULL
  AND position = 7
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 13
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND quality_name = 'CAM'
  AND quality_group_name IS NULL
  AND position = 8
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 14
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND quality_name = 'DVD-R'
  AND quality_group_name IS NULL
  AND position = 9
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 15
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND quality_name = 'DVDSCR'
  AND quality_group_name IS NULL
  AND position = 10
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 16
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND quality_name = 'HDTV-2160p'
  AND quality_group_name IS NULL
  AND position = 11
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 17
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND quality_name = 'HDTV-480p'
  AND quality_group_name IS NULL
  AND position = 12
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 18
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND quality_name = 'Raw-HD'
  AND quality_group_name IS NULL
  AND position = 13
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 19
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND quality_name = 'REGIONAL'
  AND quality_group_name IS NULL
  AND position = 14
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 20
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND quality_name = 'Remux-1080p'
  AND quality_group_name IS NULL
  AND position = 15
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 21
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND quality_name = 'Remux-2160p'
  AND quality_group_name IS NULL
  AND position = 16
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 22
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND quality_name = 'TELECINE'
  AND quality_group_name IS NULL
  AND position = 17
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 23
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND quality_name = 'TELESYNC'
  AND quality_group_name IS NULL
  AND position = 18
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 24
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND quality_name = 'Unknown'
  AND quality_group_name IS NULL
  AND position = 19
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 25
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND quality_name = 'WEBDL-2160p'
  AND quality_group_name IS NULL
  AND position = 20
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 26
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND quality_name = 'WEBRip-2160p'
  AND quality_group_name IS NULL
  AND position = 21
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 27
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND quality_name = 'WORKPRINT'
  AND quality_group_name IS NULL
  AND position = 22
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_group_members
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND quality_group_name = '1080p'
  AND (SELECT COUNT(*)
FROM quality_group_members
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND quality_group_name = '1080p') = 4
  AND NOT EXISTS (
    SELECT 1
    FROM quality_group_members
    WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND quality_group_name = '1080p'
      AND quality_name NOT IN ('HDTV-1080p', 'WEBDL-1080p', 'WEBRip-1080p', 'Bluray-1080p')
  )
  AND (
    NOT EXISTS (
      SELECT 1
      FROM quality_group_members
      WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND quality_group_name = '1080p'
        AND NOT (
          (quality_name = 'HDTV-1080p'
        AND position = 0)
      OR (quality_name = 'WEBDL-1080p'
        AND position = 1)
      OR (quality_name = 'WEBRip-1080p'
        AND position = 2)
      OR (quality_name = 'Bluray-1080p'
        AND position = 3)
        )
    )
    OR NOT EXISTS (
      SELECT 1
      FROM quality_group_members
      WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND quality_group_name = '1080p'
        AND position != 0
    )
  );

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
WITH can_insert AS (
  SELECT (
    SELECT COUNT(*)
    FROM quality_group_members
    WHERE quality_profile_name = 'BETA - Anime 1080p'
      AND quality_group_name = '1080p'
  ) = 0 AS ok
),
new_rows AS (
SELECT 'BETA - Anime 1080p' AS quality_profile_name, '1080p' AS quality_group_name, 'WEBDL-1080p' AS quality_name, 0 AS position
UNION ALL
SELECT 'BETA - Anime 1080p' AS quality_profile_name, '1080p' AS quality_group_name, 'WEBRip-1080p' AS quality_name, 1 AS position
)
SELECT
  new_rows.quality_profile_name,
  new_rows.quality_group_name,
  new_rows.quality_name,
  new_rows.position
FROM new_rows
CROSS JOIN can_insert
WHERE ok;
-- --- END op 1027

-- --- BEGIN op 1028 ( update quality_profile "BETA - Anime 1080p" )
update "quality_profiles" set "minimum_custom_format_score" = 0 where "name" = 'BETA - Anime 1080p' and "minimum_custom_format_score" = 100;
-- --- END op 1028

-- --- BEGIN op 1029 ( update quality_profile "BETA - Anime 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND custom_format_name = 'Anime BD Tier 01'
  AND arr_type = 'radarr'
  AND score = 1400;
-- --- END op 1029

-- --- BEGIN op 1030 ( update quality_profile "BETA - Anime 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND custom_format_name = 'Anime BD Tier 01'
  AND arr_type = 'sonarr'
  AND score = 1400;
-- --- END op 1030

-- --- BEGIN op 1031 ( update quality_profile "BETA - Anime 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND custom_format_name = 'Anime BD Tier 02'
  AND arr_type = 'radarr'
  AND score = 1300;
-- --- END op 1031

-- --- BEGIN op 1032 ( update quality_profile "BETA - Anime 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND custom_format_name = 'Anime BD Tier 02'
  AND arr_type = 'sonarr'
  AND score = 1300;
-- --- END op 1032

-- --- BEGIN op 1033 ( update quality_profile "BETA - Anime 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND custom_format_name = 'Anime BD Tier 03'
  AND arr_type = 'radarr'
  AND score = 1200;
-- --- END op 1033

-- --- BEGIN op 1034 ( update quality_profile "BETA - Anime 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND custom_format_name = 'Anime BD Tier 03'
  AND arr_type = 'sonarr'
  AND score = 1200;
-- --- END op 1034

-- --- BEGIN op 1035 ( update quality_profile "BETA - Anime 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND custom_format_name = 'Anime BD Tier 04'
  AND arr_type = 'radarr'
  AND score = 1100;
-- --- END op 1035

-- --- BEGIN op 1036 ( update quality_profile "BETA - Anime 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND custom_format_name = 'Anime BD Tier 04'
  AND arr_type = 'sonarr'
  AND score = 1100;
-- --- END op 1036

-- --- BEGIN op 1037 ( update quality_profile "BETA - Anime 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND custom_format_name = 'Anime BD Tier 05'
  AND arr_type = 'radarr'
  AND score = 1000;
-- --- END op 1037

-- --- BEGIN op 1038 ( update quality_profile "BETA - Anime 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND custom_format_name = 'Anime BD Tier 05'
  AND arr_type = 'sonarr'
  AND score = 1000;
-- --- END op 1038

-- --- BEGIN op 1039 ( update quality_profile "BETA - Anime 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND custom_format_name = 'Anime BD Tier 06'
  AND arr_type = 'radarr'
  AND score = 900;
-- --- END op 1039

-- --- BEGIN op 1040 ( update quality_profile "BETA - Anime 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND custom_format_name = 'Anime BD Tier 06'
  AND arr_type = 'sonarr'
  AND score = 900;
-- --- END op 1040

-- --- BEGIN op 1041 ( update quality_profile "BETA - Anime 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND custom_format_name = 'Anime BD Tier 07'
  AND arr_type = 'radarr'
  AND score = 800;
-- --- END op 1041

-- --- BEGIN op 1042 ( update quality_profile "BETA - Anime 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND custom_format_name = 'Anime BD Tier 07'
  AND arr_type = 'sonarr'
  AND score = 800;
-- --- END op 1042

-- --- BEGIN op 1043 ( update quality_profile "BETA - Anime 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND custom_format_name = 'Anime BD Tier 08'
  AND arr_type = 'radarr'
  AND score = 700;
-- --- END op 1043

-- --- BEGIN op 1044 ( update quality_profile "BETA - Anime 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'BETA - Anime 1080p'
  AND custom_format_name = 'Anime BD Tier 08'
  AND arr_type = 'sonarr'
  AND score = 700;
-- --- END op 1044