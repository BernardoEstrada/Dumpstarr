-- @operation: export
-- @entity: batch
-- @name: Set min score on LQ to 0
-- @exportedAt: 2026-03-02T04:28:31.209Z
-- @opIds: 937

-- --- BEGIN op 937 ( update quality_profile "LQ 1080p" )
update "quality_profiles" set "minimum_custom_format_score" = 0 where "name" = 'LQ 1080p' and "minimum_custom_format_score" = 1;
-- --- END op 937
