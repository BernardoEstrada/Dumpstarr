-- @operation: export
-- @entity: batch
-- @name: Lowered Max score for Clarity
-- @exportedAt: 2026-03-28T18:05:52.457Z
-- @opIds: 1403, 1404, 1405, 1406

-- --- BEGIN op 1403 ( update quality_profile "Movies 2160p HQ" )
update "quality_profiles" set "upgrade_until_score" = 5000 where "name" = 'Movies 2160p HQ' and "upgrade_until_score" = 10000;
-- --- END op 1403

-- --- BEGIN op 1404 ( update quality_profile "Movies 1080p HQ" )
update "quality_profiles" set "upgrade_until_score" = 5000 where "name" = 'Movies 1080p HQ' and "upgrade_until_score" = 10000;
-- --- END op 1404

-- --- BEGIN op 1405 ( update quality_profile "Movies 2160p" )
update "quality_profiles" set "upgrade_until_score" = 5000 where "name" = 'Movies 2160p' and "upgrade_until_score" = 10000;
-- --- END op 1405

-- --- BEGIN op 1406 ( update quality_profile "Movies 1080p" )
update "quality_profiles" set "upgrade_until_score" = 5000 where "name" = 'Movies 1080p' and "upgrade_until_score" = 10000;
-- --- END op 1406
