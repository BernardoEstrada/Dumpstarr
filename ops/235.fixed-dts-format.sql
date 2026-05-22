-- @operation: export
-- @entity: batch
-- @name: Fixed DTS format
-- @exportedAt: 2026-05-22T11:59:53.096Z
-- @opIds: 954

-- --- BEGIN op 954 ( update custom_format "DTS" )
UPDATE custom_format_conditions
SET negate = 1
WHERE custom_format_name = 'DTS'
  AND name = 'Not Dolby Digital'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 1;
-- --- END op 954
