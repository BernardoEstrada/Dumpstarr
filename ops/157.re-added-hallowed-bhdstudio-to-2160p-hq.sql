-- @operation: export
-- @entity: batch
-- @name: Re-added hallowed/BHDStudio to 2160p HQ
-- @exportedAt: 2026-03-23T21:53:58.145Z
-- @opIds: 1371, 1372

-- --- BEGIN op 1371 ( update quality_profile "Movies 2160p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p HQ', 'BHDStudio', 'radarr', 550
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND custom_format_name = 'BHDStudio'
    AND arr_type = 'radarr'
);
-- --- END op 1371

-- --- BEGIN op 1372 ( update quality_profile "Movies 2160p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p HQ', 'hallowed', 'radarr', 600
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND custom_format_name = 'hallowed'
    AND arr_type = 'radarr'
);
-- --- END op 1372
