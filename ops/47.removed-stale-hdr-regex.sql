-- @operation: export
-- @entity: batch
-- @name: Removed stale HDR regex
-- @exportedAt: 2026-03-02T23:32:06.088Z
-- @opIds: 1197, 1198, 1201

-- --- BEGIN op 1197 ( delete custom_format "HDR10" )
delete from "custom_formats" where "name" = 'HDR10';
-- --- END op 1197

-- --- BEGIN op 1198 ( delete custom_format "HDR10 (Missing)" )
delete from "custom_formats" where "name" = 'HDR10 (Missing)';
-- --- END op 1198

-- --- BEGIN op 1201 ( delete regular_expression "HDR (Generalized)" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'HDR (Generalized)' AND tag_name = 'Colour Grade';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'HDR (Generalized)' AND tag_name = 'Enhancement';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'HDR (Generalized)' AND tag_name = 'HDR';

delete from "regular_expressions" where "name" = 'HDR (Generalized)' and "pattern" = '(?<!\w)HDR(?=\d|[^\w]|$)';
-- --- END op 1201
