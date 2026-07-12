-- @operation: export
-- @entity: batch
-- @name: Updated The Office S9 Banned to only E23
-- @exportedAt: 2026-07-12T06:32:14.439Z
-- @opIds: 2899, 2900, 2901

-- --- BEGIN op 2899 ( update regular_expression "The Office (US) Season 9 Banned Groups" )
update "regular_expressions" set "pattern" = '(?i)^the[ ._-]+office[ ._-]+us[ ._-]+S09E23.*Extended.*-(FLUX)\b' where "name" = 'The Office (US) Season 9 Banned Groups' and "pattern" = '(?i)^the[ ._-]+office[ ._-]+us[ ._-]+S09.*Extended.*-(FLUX)\b';
-- --- END op 2899

-- --- BEGIN op 2900 ( update regular_expression "The Office (US) S09E23 Banned Groups" )
update "regular_expressions" set "name" = 'The Office (US) S09E23 Banned Groups' where "name" = 'The Office (US) Season 9 Banned Groups';
-- --- END op 2900

-- --- BEGIN op 2901 ( update custom_format "Bad Source" )
update "condition_patterns" set "regular_expression_name" = 'The Office (US) S09E23 Banned Groups' where "custom_format_name" = 'Bad Source' and "condition_name" = 'The Office (US) S9 Banned Groups' and "regular_expression_name" in ('The Office (US) Season 9 Banned Groups', 'The Office (US) S09E23 Banned Groups');
-- --- END op 2901
