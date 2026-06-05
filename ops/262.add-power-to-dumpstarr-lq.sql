-- @operation: export
-- @entity: batch
-- @name: Add POWER to Dumpstarr LQ
-- @exportedAt: 2026-06-05T00:08:34.807Z
-- @opIds: 1652, 1653

-- --- BEGIN op 1652 ( create regular_expression "POWER" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('POWER', '^(POWER)$', NULL, NULL);
-- --- END op 1652

-- --- BEGIN op 1653 ( update regular_expression "Dumpstarr LQ Groups" )
update "regular_expressions" set "pattern" = '^(E|POWER|Tofu4U)$' where "name" = 'Dumpstarr LQ Groups' and "pattern" = '^(E|Tofu4U)$';
-- --- END op 1653
