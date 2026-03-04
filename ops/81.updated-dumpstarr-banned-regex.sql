-- @operation: export
-- @entity: batch
-- @name: Updated Dumpstarr Banned regex
-- @exportedAt: 2026-03-04T03:06:41.220Z
-- @opIds: 2232

-- --- BEGIN op 2232 ( update regular_expression "Dumpstarr Banned Groups" )
update "regular_expressions" set "pattern" = '\b(DEiMOS|MIRCrew|MuTT|OldT|TiZU|Tofu4U|TVS)\b' where "name" = 'Dumpstarr Banned Groups' and "pattern" = '^(DEiMOS|MIRCrew|MuTT|OldT|TiZU|Tofu4U|TVS)$';
-- --- END op 2232
