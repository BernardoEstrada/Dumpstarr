-- @operation: export
-- @entity: batch
-- @name: Updated unkn0wn regex per TRaSH
-- @exportedAt: 2026-04-12T13:26:54.113Z
-- @opIds: 2672, 2673

-- --- BEGIN op 2672 ( update regular_expression "UnKn0wn (NoRemux)" )
update "regular_expressions" set "name" = 'UnKn0wn (NoRemux)', "pattern" = '(?<!\b(remux).*?)\b(unkn0wn)\b' where "name" = 'UnKn0wn' and "pattern" = '\bUnKn0wn\b';
-- --- END op 2672

-- --- BEGIN op 2673 ( update custom_format "TRaSH LQ Release Title" )
update "condition_patterns" set "regular_expression_name" = 'UnKn0wn (NoRemux)' where "custom_format_name" = 'TRaSH LQ Release Title' and "condition_name" = 'UnKn0wn' and "regular_expression_name" = 'UnKn0wn';
-- --- END op 2673
