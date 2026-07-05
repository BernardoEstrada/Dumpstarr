-- @operation: export
-- @entity: batch
-- @name: Updated Parks and Rec NTb Regex
-- @exportedAt: 2026-07-05T21:58:47.730Z
-- @opIds: 2691, 2692

-- --- BEGIN op 2691 ( update regular_expression "Parks and Recreation NTb Banned" )
update "regular_expressions" set "name" = 'Parks and Recreation NTb Banned' where "name" = 'Parks and Recreation Banned Groups';
-- --- END op 2691

-- --- BEGIN op 2692 ( update custom_format "Bad Source" )
update "condition_patterns" set "regular_expression_name" = 'Parks and Recreation NTb Banned' where "custom_format_name" = 'Bad Source' and "condition_name" = 'Parks and Recreation' and "regular_expression_name" in ('Parks and Recreation Banned Groups', 'Parks and Recreation NTb Banned');
-- --- END op 2692
