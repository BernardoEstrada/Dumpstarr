-- @operation: export
-- @entity: batch
-- @name: Added Season Pack CF to TV
-- @exportedAt: 2026-07-06T12:57:41.026Z
-- @opIds: 2701, 2702, 2703, 2704, 2705, 2706

-- --- BEGIN op 2701 ( create custom_format "Season Pack" )
insert into "custom_formats" ("name", "description") values ('Season Pack', '');
-- --- END op 2701

-- --- BEGIN op 2702 ( update custom_format "Season Pack" )
update "custom_formats" set "description" = 'This Custom Format can be used to prefer or exclude season packs' where "name" = 'Season Pack' and "description" = '';
-- --- END op 2702

-- --- BEGIN op 2703 ( update custom_format "Season Pack" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Season Pack', 'Season Pack', 'release_type', 'sonarr', 0, 0);

INSERT INTO condition_release_types (custom_format_name, condition_name, release_type) VALUES ('Season Pack', 'Season Pack', 'season_pack');
-- --- END op 2703

-- --- BEGIN op 2704 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'Season Pack', 'sonarr', 10
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'Season Pack'
    AND arr_type = 'sonarr'
);
-- --- END op 2704

-- --- BEGIN op 2705 ( update quality_profile "TV 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV 1080p', 'Season Pack', 'sonarr', 10
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV 1080p'
    AND custom_format_name = 'Season Pack'
    AND arr_type = 'sonarr'
);
-- --- END op 2705

-- --- BEGIN op 2706 ( update quality_profile "TV 2160p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV 2160p', 'Season Pack', 'sonarr', 10
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV 2160p'
    AND custom_format_name = 'Season Pack'
    AND arr_type = 'sonarr'
);
-- --- END op 2706
