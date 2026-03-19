-- @operation: export
-- @entity: batch
-- @name: Updated SEV regex to include other groups
-- @exportedAt: 2026-03-19T21:12:38.594Z
-- @opIds: 1208

-- --- BEGIN op 1208 ( update regular_expression "SEV" )
update "regular_expressions" set "pattern" = '\b(SEV|D0ct0rLew|Kira)\b' where "name" = 'SEV' and "pattern" = '\b(SEV)\b';
-- --- END op 1208
