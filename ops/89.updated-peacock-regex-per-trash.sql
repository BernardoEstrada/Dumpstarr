-- @operation: export
-- @entity: batch
-- @name: Updated Peacock regex per TRaSH
-- @exportedAt: 2026-03-04T21:07:06.791Z
-- @opIds: 2285

-- --- BEGIN op 2285 ( update regular_expression "Peacock TV" )
update "regular_expressions" set "pattern" = '\b(pcok|Peacock TV)\b' where "name" = 'Peacock TV' and "pattern" = '\b(pcok|peacock)\b';
-- --- END op 2285
