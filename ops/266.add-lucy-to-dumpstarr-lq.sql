-- @operation: export
-- @entity: batch
-- @name: Add LUCY to Dumpstarr LQ
-- @exportedAt: 2026-06-12T14:44:50.828Z
-- @opIds: 1668

-- --- BEGIN op 1668 ( update regular_expression "Dumpstarr LQ Groups" )
update "regular_expressions" set "pattern" = '^(E|LUCY|POWER|TARDiS|Tofu4U)$' where "name" = 'Dumpstarr LQ Groups' and "pattern" = '^(E|POWER|TARDiS|Tofu4U)$';
-- --- END op 1668
