-- @operation: export
-- @entity: batch
-- @name: Pulled INFLATE/DEFLATE/Scene format for rebuild
-- @exportedAt: 2026-03-12T05:43:41.659Z
-- @opIds: 690, 691

-- --- BEGIN op 690 ( delete custom_format "Scene Groups" )
delete from "custom_formats" where "name" = 'Scene Groups';
-- --- END op 690

-- --- BEGIN op 691 ( delete regular_expression "INFLATE-DEFLATE" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'INFLATE-DEFLATE' AND tag_name = 'Scene';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'INFLATE-DEFLATE' AND tag_name = 'TRaSH';

delete from "regular_expressions" where "name" = 'INFLATE-DEFLATE' and "pattern" = '\b(INFLATE|DEFLATE[)\]]?)$';
-- --- END op 691
