-- @operation: export
-- @entity: batch
-- @name: One more quick fix for The Office
-- @exportedAt: 2026-04-02T13:55:32.076Z
-- @opIds: 2185

-- --- BEGIN op 2185 ( update regular_expression "The Office Superfan Episodes" )
update "regular_expressions" set "pattern" = '^The[._\s]Office.*?[._\s](superfan|extended)([._\s]|\b)' where "name" = 'The Office Superfan Episodes' and "pattern" = '(?i)The\.Office.*?\.(superfan|extended)\.';
-- --- END op 2185
