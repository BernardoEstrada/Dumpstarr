-- @operation: export
-- @entity: batch
-- @name: Updated SEV regex per TRaSH
-- @exportedAt: 2026-09-27T16:17:28.339Z
-- @opIds: 6677

-- --- BEGIN op 6677 ( update regular_expression "SEV" )
update "regular_expressions" set "pattern" = '\b(SEV)\b' where "name" = 'SEV' and "pattern" = '\b(SEV|D0ct0rLew|Kira)\b';
-- --- END op 6677
