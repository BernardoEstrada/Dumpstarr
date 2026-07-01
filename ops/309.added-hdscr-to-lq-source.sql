-- @operation: export
-- @entity: batch
-- @name: Added HDSCR to LQ Source
-- @exportedAt: 2026-07-01T18:13:56.669Z
-- @opIds: 2632

-- --- BEGIN op 2632 ( update regular_expression "LQ Sources" )
update "regular_expressions" set "pattern" = '\b(CAM|HDTS|HDSCR|SCREENER|TELESYNC)\b' where "name" = 'LQ Sources' and "pattern" = '\b(CAM|HDTS|SCREENER|TELESYNC)\b';
-- --- END op 2632
