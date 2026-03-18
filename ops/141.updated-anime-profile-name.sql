-- @operation: export
-- @entity: batch
-- @name: Updated Anime profile name
-- @exportedAt: 2026-03-18T19:10:28.138Z
-- @opIds: 1159

-- --- BEGIN op 1159 ( update quality_profile "Anime 1080p" )
update "quality_profiles" set "name" = 'Anime 1080p' where "name" = '1080p Anime';
-- --- END op 1159
