-- @operation: export
-- @entity: batch
-- @name: Updated The Office edition regex
-- @exportedAt: 2026-04-02T01:07:30.784Z
-- @opIds: 2177

-- --- BEGIN op 2177 ( update regular_expression "The Office Superfan Episodes" )
update "regular_expressions" set "pattern" = '(?<!^|{)\b(superfan|extended)(\b|\d)' where "name" = 'The Office Superfan Episodes' and "pattern" = '(?<!^|{)\b(superfan)(\b|\d)';
-- --- END op 2177
