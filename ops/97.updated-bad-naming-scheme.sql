-- @operation: export
-- @entity: batch
-- @name: Updated Bad Naming Scheme
-- @exportedAt: 2026-03-05T18:42:55.955Z
-- @opIds: 2477

-- --- BEGIN op 2477 ( update custom_format "Bad Naming Scheme" )
UPDATE custom_format_conditions
SET required = 1
WHERE custom_format_name = 'Bad Naming Scheme'
  AND name = 'HONE Release Title'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 2477
