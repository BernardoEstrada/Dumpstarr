-- @operation: export
-- @entity: batch
-- @name: Updated ASL regex per Dictionarry
-- @exportedAt: 2026-03-12T06:07:41.857Z
-- @opIds: 703

-- --- BEGIN op 703 ( update regular_expression "American Sign Language" )
update "regular_expressions" set "pattern" = '\b(ASL|BSL|Audio[ ._-]Description)\b' where "name" = 'American Sign Language' and "pattern" = '\b(ASL)\b';
-- --- END op 703
