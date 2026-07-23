-- @operation: export
-- @entity: batch
-- @name: Fixed Radarr Quality Definitions for LQ
-- @exportedAt: 2026-07-23T17:35:25.608Z
-- @opIds: 4345, 4346, 4347, 4348, 4349, 4350, 4351, 4352, 4353

-- --- BEGIN op 4345 ( update radarr_quality_definitions "Radarr" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 0, "preferred_size" = 1999 where "name" = 'Radarr' and "quality_name" = 'Bluray-1080p' and "min_size" = 33 and "max_size" = 0 and "preferred_size" = 1999;
-- --- END op 4345

-- --- BEGIN op 4346 ( update radarr_quality_definitions "Radarr" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 0, "preferred_size" = 1999 where "name" = 'Radarr' and "quality_name" = 'Bluray-2160p' and "min_size" = 102 and "max_size" = 0 and "preferred_size" = 1999;
-- --- END op 4346

-- --- BEGIN op 4347 ( update radarr_quality_definitions "Radarr" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 0, "preferred_size" = 1999 where "name" = 'Radarr' and "quality_name" = 'Bluray-720p' and "min_size" = 25 and "max_size" = 0 and "preferred_size" = 1999;
-- --- END op 4347

-- --- BEGIN op 4348 ( update radarr_quality_definitions "Radarr" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 0, "preferred_size" = 1999 where "name" = 'Radarr' and "quality_name" = 'WEBDL-1080p' and "min_size" = 12 and "max_size" = 0 and "preferred_size" = 1999;
-- --- END op 4348

-- --- BEGIN op 4349 ( update radarr_quality_definitions "Radarr" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 0, "preferred_size" = 1999 where "name" = 'Radarr' and "quality_name" = 'WEBDL-2160p' and "min_size" = 34 and "max_size" = 0 and "preferred_size" = 1999;
-- --- END op 4349

-- --- BEGIN op 4350 ( update radarr_quality_definitions "Radarr" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 0, "preferred_size" = 1999 where "name" = 'Radarr' and "quality_name" = 'WEBDL-720p' and "min_size" = 12 and "max_size" = 0 and "preferred_size" = 1999;
-- --- END op 4350

-- --- BEGIN op 4351 ( update radarr_quality_definitions "Radarr" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 0, "preferred_size" = 1999 where "name" = 'Radarr' and "quality_name" = 'WEBRip-1080p' and "min_size" = 12 and "max_size" = 0 and "preferred_size" = 1999;
-- --- END op 4351

-- --- BEGIN op 4352 ( update radarr_quality_definitions "Radarr" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 0, "preferred_size" = 1999 where "name" = 'Radarr' and "quality_name" = 'WEBRip-2160p' and "min_size" = 34 and "max_size" = 0 and "preferred_size" = 1999;
-- --- END op 4352

-- --- BEGIN op 4353 ( update radarr_quality_definitions "Radarr" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 0, "preferred_size" = 1999 where "name" = 'Radarr' and "quality_name" = 'WEBRip-720p' and "min_size" = 12 and "max_size" = 0 and "preferred_size" = 1999;
-- --- END op 4353
