-- @operation: export
-- @entity: batch
-- @name: Fixed BEN THE MEN group regex
-- @exportedAt: 2026-04-06T04:11:55.370Z
-- @opIds: 2628

-- --- BEGIN op 2628 ( update regular_expression "BEN THE MEN" )
update "regular_expressions" set "pattern" = '\b(BEN[ ._-]THE[ ._-]MEN)\b' where "name" = 'BEN THE MEN' and "pattern" = '(?<=^|[\s.-])(BEN[ ._-]THE[ ._-]MEN|BEN|BTM)\b';

DELETE FROM regular_expression_tags WHERE regular_expression_name IN ('BEN THE MEN') AND tag_name = 'WEB-DL';
-- --- END op 2628
