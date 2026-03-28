-- @operation: export
-- @entity: batch
-- @name: Fixed The Office regex
-- @exportedAt: 2026-03-28T22:50:09.926Z
-- @opIds: 1485

-- --- BEGIN op 1485 ( update regular_expression "The Office (US) Banned Groups" )
update "regular_expressions" set "pattern" = '(?i)^the[ ._-]+office.*2005.*-.*\(?(HONE)\)?$' where "name" = 'The Office (US) Banned Groups' and "pattern" = '\bthe[ ._-]+office\b.*2005.*-(HONE)$';
-- --- END op 1485
