-- @operation: export
-- @entity: batch
-- @name: Updated IMF regex per TRaSH
-- @exportedAt: 2026-10-12T16:19:26.472Z
-- @opIds: 6788

-- --- BEGIN op 6788 ( update regular_expression "IMF" )
update "regular_expressions" set "pattern" = '(\b(IMF)\b(?=.*\b(web[ ._-]?rip))\b)' where "name" = 'IMF' and "pattern" = '\b(IMF)\b';
-- --- END op 6788
