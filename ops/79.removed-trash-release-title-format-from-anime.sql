-- @operation: export
-- @entity: batch
-- @name: Removed TRaSH Release Title format from Anime
-- @exportedAt: 2026-03-04T02:45:15.365Z
-- @opIds: 1983, 1984, 1985, 1986, 1987

-- --- BEGIN op 1983 ( update quality_profile "Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Anime 1080p', 'TRaSH LQ Release Title', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Anime 1080p'
    AND custom_format_name = 'TRaSH LQ Release Title'
    AND arr_type = 'radarr'
);
-- --- END op 1983

-- --- BEGIN op 1984 ( update quality_profile "Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Anime 1080p', 'TRaSH LQ Release Title', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Anime 1080p'
    AND custom_format_name = 'TRaSH LQ Release Title'
    AND arr_type = 'sonarr'
);
-- --- END op 1984

-- --- BEGIN op 1985 ( update quality_profile "Anime 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Anime 1080p'
  AND custom_format_name = 'TRaSH LQ Release Title'
  AND arr_type = 'all'
  AND score = -10000;
-- --- END op 1985

-- --- BEGIN op 1986 ( update quality_profile "Anime 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Anime 1080p'
  AND custom_format_name = 'TRaSH LQ Release Title'
  AND arr_type = 'radarr'
  AND score = -10000;
-- --- END op 1986

-- --- BEGIN op 1987 ( update quality_profile "Anime 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Anime 1080p'
  AND custom_format_name = 'TRaSH LQ Release Title'
  AND arr_type = 'sonarr'
  AND score = -10000;
-- --- END op 1987
