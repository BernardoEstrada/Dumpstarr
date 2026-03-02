-- @operation: export
-- @entity: batch
-- @name: Added OldT and TVS to Banned due to bad naming
-- @exportedAt: 2026-03-02T23:45:55.036Z
-- @opIds: 1203, 1204

-- --- BEGIN op 1203 ( update regular_expression "Dumpstarr Banned Groups" )
update "regular_expressions" set "pattern" = '^(DEiMOS|MIRCrew|MuTT|TiZU|Tofu4U|TVS)$' where "name" = 'Dumpstarr Banned Groups' and "pattern" = '^(DEiMOS|MIRCrew|MuTT|TiZU|Tofu4U)$';
-- --- END op 1203

-- --- BEGIN op 1204 ( update regular_expression "Dumpstarr Banned Groups" )
update "regular_expressions" set "pattern" = '^(DEiMOS|MIRCrew|MuTT|OldT|TiZU|Tofu4U|TVS)$' where "name" = 'Dumpstarr Banned Groups' and "pattern" = '^(DEiMOS|MIRCrew|MuTT|TiZU|Tofu4U|TVS)$';
-- --- END op 1204
