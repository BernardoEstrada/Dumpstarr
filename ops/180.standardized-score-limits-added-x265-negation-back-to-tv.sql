-- @operation: export
-- @entity: batch
-- @name: Standardized score limits/Added x265 negation back to TV
-- @exportedAt: 2026-04-01T14:34:53.562Z
-- @opIds: 2082, 2083, 2084, 2085, 2086, 2087, 2088, 2089

-- --- BEGIN op 2082 ( update quality_profile "TV 2160p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV 2160p', 'x265 (HD)', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV 2160p'
    AND custom_format_name = 'x265 (HD)'
    AND arr_type = 'sonarr'
);
-- --- END op 2082

-- --- BEGIN op 2083 ( update quality_profile "TV 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV 1080p', 'x265 (HD)', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV 1080p'
    AND custom_format_name = 'x265 (HD)'
    AND arr_type = 'sonarr'
);
-- --- END op 2083

-- --- BEGIN op 2084 ( update quality_profile "TV 1080p" )
update "quality_profiles" set "upgrade_until_score" = 10000 where "name" = 'TV 1080p' and "upgrade_until_score" = 5000;
-- --- END op 2084

-- --- BEGIN op 2085 ( update quality_profile "TV 2160p" )
update "quality_profiles" set "upgrade_until_score" = 10000 where "name" = 'TV 2160p' and "upgrade_until_score" = 5000;
-- --- END op 2085

-- --- BEGIN op 2086 ( update quality_profile "Movies 2160p HQ" )
update "quality_profiles" set "upgrade_until_score" = 10000 where "name" = 'Movies 2160p HQ' and "upgrade_until_score" = 5000;
-- --- END op 2086

-- --- BEGIN op 2087 ( update quality_profile "Movies 2160p" )
update "quality_profiles" set "upgrade_until_score" = 10000 where "name" = 'Movies 2160p' and "upgrade_until_score" = 5000;
-- --- END op 2087

-- --- BEGIN op 2088 ( update quality_profile "Movies 1080p HQ" )
update "quality_profiles" set "upgrade_until_score" = 10000 where "name" = 'Movies 1080p HQ' and "upgrade_until_score" = 5000;
-- --- END op 2088

-- --- BEGIN op 2089 ( update quality_profile "Movies 1080p" )
update "quality_profiles" set "upgrade_until_score" = 10000 where "name" = 'Movies 1080p' and "upgrade_until_score" = 5000;
-- --- END op 2089
