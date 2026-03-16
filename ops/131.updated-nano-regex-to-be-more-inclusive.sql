-- @operation: export
-- @entity: batch
-- @name: Updated NANO Regex to be more inclusive
-- @exportedAt: 2026-03-12T22:53:58.224Z
-- @opIds: 707

-- --- BEGIN op 707 ( update regular_expression "NAN0" )
update "regular_expressions" set "pattern" = '\b(NAN0)\b' where "name" = 'NAN0' and "pattern" = '(?<=remux).*\b(NAN0)\b';
-- --- END op 707
