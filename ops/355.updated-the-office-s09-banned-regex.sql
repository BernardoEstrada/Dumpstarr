-- @operation: export
-- @entity: batch
-- @name: Updated The Office S09 Banned Regex
-- @exportedAt: 2026-07-17T16:49:38.401Z
-- @opIds: 3874

-- --- BEGIN op 3874 ( update regular_expression "The Office (US) S09E23 Banned Groups" )
update "regular_expressions" set "pattern" = '(?i)^the[ ._-]+office[ ._-]+us[ ._-]+S09.*Extended.*-(FLUX)\b' where "name" = 'The Office (US) S09E23 Banned Groups' and "pattern" = '(?i)^the[ ._-]+office[ ._-]+us[ ._-]+S09E23.*Extended.*-(FLUX)\b';
-- --- END op 3874
