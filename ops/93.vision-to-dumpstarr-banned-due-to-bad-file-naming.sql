-- @operation: export
-- @entity: batch
-- @name: ViSiON to Dumpstarr Banned due to bad file naming
-- @exportedAt: 2026-03-05T00:18:31.188Z
-- @opIds: 2324

-- --- BEGIN op 2324 ( update regular_expression "Dumpstarr Banned Groups" )
update "regular_expressions" set "pattern" = '\b(DEiMOS|MIRCrew|MuTT|OldT|TiZU|Tofu4U|TVS|ViSiON)\b' where "name" = 'Dumpstarr Banned Groups' and "pattern" = '\b(DEiMOS|MIRCrew|MuTT|OldT|TiZU|Tofu4U|TVS)\b';
-- --- END op 2324
