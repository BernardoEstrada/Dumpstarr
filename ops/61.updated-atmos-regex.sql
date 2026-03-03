-- @operation: export
-- @entity: batch
-- @name: Updated Atmos regex
-- @exportedAt: 2026-03-03T19:07:45.863Z
-- @opIds: 1652

-- --- BEGIN op 1652 ( update regular_expression "Atmos" )
update "regular_expressions" set "pattern" = '\bATMOS|DDPA(\b|\d)' where "name" = 'Atmos' and "pattern" = '\bATMOS(\b|\d)';
-- --- END op 1652
