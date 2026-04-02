-- @operation: export
-- @entity: batch
-- @name: Updated The Office Exteneded regex
-- @exportedAt: 2026-04-02T13:52:11.269Z
-- @opIds: 2182, 2183

-- --- BEGIN op 2182 ( update regular_expression "The Office Superfan Episodes" )
update "regular_expressions" set "pattern" = '\bThe\s+Office\s+(superfan|extended)\b' where "name" = 'The Office Superfan Episodes' and "pattern" = '(?<!^|{)\b(superfan|extended)(\b|\d)';
-- --- END op 2182

-- --- BEGIN op 2183 ( update regular_expression "The Office Superfan Episodes" )
update "regular_expressions" set "pattern" = '(?i)The\.Office.*?\.(superfan|extended)\.' where "name" = 'The Office Superfan Episodes' and "pattern" = '\bThe\s+Office\s+(superfan|extended)\b';
-- --- END op 2183
