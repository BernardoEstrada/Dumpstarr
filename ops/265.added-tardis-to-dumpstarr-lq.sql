-- @operation: export
-- @entity: batch
-- @name: Added TARDiS to Dumpstarr LQ
-- @exportedAt: 2026-06-07T15:04:52.067Z
-- @opIds: 1666

-- --- BEGIN op 1666 ( update regular_expression "Dumpstarr LQ Groups" )
update "regular_expressions" set "pattern" = '^(E|POWER|TARDiS|Tofu4U)$' where "name" = 'Dumpstarr LQ Groups' and "pattern" = '^(E|POWER|Tofu4U)$';
-- --- END op 1666
