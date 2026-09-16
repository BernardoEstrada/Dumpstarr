-- @operation: export
-- @entity: batch
-- @name: Updated Fandango Regex
-- @exportedAt: 2026-09-16T17:16:11.408Z
-- @opIds: 6049

-- --- BEGIN op 6049 ( update regular_expression "Fandango" )
update "regular_expressions" set "pattern" = '\b(FAH|FAND|FDNG)\b(?=[ ._-]web[ ._-]?(dl|rip)\b)' where "name" = 'Fandango' and "pattern" = '\b(FAND)\b(?=[ ._-]web[ ._-]?(dl|rip)\b)';
-- --- END op 6049
