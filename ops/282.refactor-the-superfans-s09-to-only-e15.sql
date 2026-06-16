-- @operation: export
-- @entity: batch
-- @name: Refactor the Superfans S09 to only E15
-- @exportedAt: 2026-06-16T04:09:25.579Z
-- @opIds: 1829, 1830, 1831, 1832

-- --- BEGIN op 1829 ( update regular_expression "The Office Superfans S09 Banned Groups" )
update "regular_expressions" set "pattern" = '(?i)^the[ ._-]+office([ ._-]+us)?[ ._-]+s09e15.*(extended|superfan).*-FLUX\b' where "name" = 'The Office Superfans S09 Banned Groups' and "pattern" = '(?i)^the[ ._-]+office([ ._-]+us)?[ ._-]+s09.*(extended|superfan).*-FLUX\b';
-- --- END op 1829

-- --- BEGIN op 1830 ( update regular_expression "The Office Superfans S09E15" )
update "regular_expressions" set "name" = 'The Office Superfans S09E15' where "name" = 'The Office Superfans S09 Banned Groups';
-- --- END op 1830

-- --- BEGIN op 1831 ( update custom_format "Bad Source" )
update "condition_patterns" set "regular_expression_name" = 'The Office Superfans S09E15' where "custom_format_name" = 'Bad Source' and "condition_name" = 'The Office Superfan S09' and "regular_expression_name" in ('The Office Superfans S09 Banned Groups', 'The Office Superfans S09E15');
-- --- END op 1831

-- --- BEGIN op 1832 ( update regular_expression "The Office Superfans S09E15" )
update "regular_expressions" set "description" = 'FLUX specifically has a bad copy of S09E15, the file grabbed is a duplicate of S09E14.' where "name" = 'The Office Superfans S09E15' and "description" = 'Negates certain groups that cause import/automation issues with The Office (US).';
-- --- END op 1832
