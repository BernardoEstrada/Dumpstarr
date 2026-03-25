-- @operation: export
-- @entity: batch
-- @name: Lowered min score of HQ to 500
-- @exportedAt: 2026-03-25T18:04:29.391Z
-- @opIds: 1400, 1401

-- --- BEGIN op 1400 ( update quality_profile "Movies 2160p HQ" )
update "quality_profiles" set "minimum_custom_format_score" = 500 where "name" = 'Movies 2160p HQ' and "minimum_custom_format_score" = 750;
-- --- END op 1400

-- --- BEGIN op 1401 ( update quality_profile "Movies 1080p HQ" )
update "quality_profiles" set "minimum_custom_format_score" = 500 where "name" = 'Movies 1080p HQ' and "minimum_custom_format_score" = 750;
-- --- END op 1401
