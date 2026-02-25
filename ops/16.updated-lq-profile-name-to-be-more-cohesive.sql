-- @operation: export
-- @entity: batch
-- @name: Updated LQ profile name to be more cohesive
-- @exportedAt: 2026-02-25T21:32:06.451Z
-- @opIds: 341

-- --- BEGIN op 341 ( update quality_profile "LQ 1080p" )
update "quality_profiles" set "name" = 'LQ 1080p' where "name" = '1080p LQ';
-- --- END op 341
