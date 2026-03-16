-- @operation: export
-- @entity: batch
-- @name: Removed unecessary tag on TBBT
-- @exportedAt: 2026-03-12T13:47:49.716Z
-- @opIds: 705

-- --- BEGIN op 705 ( update regular_expression "The Big Bang Theory" )
DELETE FROM regular_expression_tags WHERE regular_expression_name IN ('The Big Bang Theory') AND tag_name = 'Custom';
-- --- END op 705
