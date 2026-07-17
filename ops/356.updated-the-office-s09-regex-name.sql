-- @operation: export
-- @entity: batch
-- @name: Updated The Office S09 regex name
-- @exportedAt: 2026-07-17T19:12:14.245Z
-- @opIds: 3876, 3877

-- --- BEGIN op 3876 ( update regular_expression "The Office (US) S09 Extended Banned Groups" )
update "regular_expressions" set "name" = 'The Office (US) S09 Extended Banned Groups' where "name" = 'The Office (US) S09E23 Banned Groups';
-- --- END op 3876

-- --- BEGIN op 3877 ( update custom_format "Bad Source" )
update "condition_patterns" set "regular_expression_name" = 'The Office (US) S09 Extended Banned Groups' where "custom_format_name" = 'Bad Source' and "condition_name" = 'The Office (US) S09' and "regular_expression_name" in ('The Office (US) S09E23 Banned Groups', 'The Office (US) S09 Extended Banned Groups');
-- --- END op 3877
