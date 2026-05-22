-- @operation: export
-- @entity: batch
-- @name: Added VARYG to Dumpstarr LQ
-- @exportedAt: 2026-05-22T23:00:54.149Z
-- @opIds: 1008, 1009, 1010, 1011, 1012, 1013, 1014, 1015, 1016, 1017, 1018, 1019

-- --- BEGIN op 1008 ( update regular_expression "Dumpstarr Banned Groups Release Title" )
update "regular_expressions" set "pattern" = '^(E|Tofu4U|VARYG)$' where "name" = 'Dumpstarr Banned Groups Release Title' and "pattern" = '^(E|Tofu4U)$';
-- --- END op 1008

-- --- BEGIN op 1009 ( update regular_expression "Dumpstarr Banned Groups" )
update "regular_expressions" set "pattern" = '\b(DEiMOS|MIRCrew|MuTT|OldT|TiZU|Tofu4U|TVS|VARYG|ViSiON)\b' where "name" = 'Dumpstarr Banned Groups' and "pattern" = '\b(DEiMOS|MIRCrew|MuTT|OldT|TiZU|Tofu4U|TVS|ViSiON)\b';
-- --- END op 1009

-- --- BEGIN op 1010 ( update custom_format "Bad Source" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Bad Source'
	  AND name = 'Baki Hanma'
	  AND type = 'release_title'
	  AND arr_type = 'sonarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 1010

-- --- BEGIN op 1011 ( update custom_format "Bad Source" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Bad Source'
	  AND name = 'Frieren Beyond Journeys End'
	  AND type = 'release_title'
	  AND arr_type = 'sonarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 1011

-- --- BEGIN op 1012 ( update quality_profile "Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Anime 1080p', 'Dumpstarr LQ', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Anime 1080p'
    AND custom_format_name = 'Dumpstarr LQ'
    AND arr_type = 'radarr'
);
-- --- END op 1012

-- --- BEGIN op 1013 ( update quality_profile "Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Anime 1080p', 'Dumpstarr LQ', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Anime 1080p'
    AND custom_format_name = 'Dumpstarr LQ'
    AND arr_type = 'sonarr'
);
-- --- END op 1013

-- --- BEGIN op 1014 ( update quality_profile "Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Anime 1080p', 'Dumpstarr LQ Release Title', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Anime 1080p'
    AND custom_format_name = 'Dumpstarr LQ Release Title'
    AND arr_type = 'radarr'
);
-- --- END op 1014

-- --- BEGIN op 1015 ( update quality_profile "Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Anime 1080p', 'Dumpstarr LQ Release Title', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Anime 1080p'
    AND custom_format_name = 'Dumpstarr LQ Release Title'
    AND arr_type = 'sonarr'
);
-- --- END op 1015

-- --- BEGIN op 1016 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Dumpstarr LQ', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Dumpstarr LQ'
    AND arr_type = 'radarr'
);
-- --- END op 1016

-- --- BEGIN op 1017 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Dumpstarr LQ', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Dumpstarr LQ'
    AND arr_type = 'sonarr'
);
-- --- END op 1017

-- --- BEGIN op 1018 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Dumpstarr LQ Release Title', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Dumpstarr LQ Release Title'
    AND arr_type = 'radarr'
);
-- --- END op 1018

-- --- BEGIN op 1019 ( update quality_profile "BETA - Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'BETA - Anime 1080p', 'Dumpstarr LQ Release Title', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'BETA - Anime 1080p'
    AND custom_format_name = 'Dumpstarr LQ Release Title'
    AND arr_type = 'sonarr'
);
-- --- END op 1019
