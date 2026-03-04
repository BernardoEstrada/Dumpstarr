-- @operation: export
-- @entity: batch
-- @name: Updated Dual Audio regex
-- @exportedAt: 2026-03-04T04:30:29.058Z
-- @opIds: 2239

-- --- BEGIN op 2239 ( update regular_expression "Dual Audio" )
update "regular_expressions" set "pattern" = '\bDual[ ._-]?(?:Audio)?\b|\b(JA|ZH|KO)(?= ?\+ ?.*?\b(EN))|\b(EN)(?= ?\+ ?.*?\b(JA|ZH|KO))\b' where "name" = 'Dual Audio' and "pattern" = 'dual[ ._-]?(audio)|[([]dual[])]|\b(JA|ZH|KO)(?= ?\+ ?.*?\b(EN))|\b(EN)(?= ?\+ ?.*?\b(JA|ZH|KO))|\b(Japanese|Chinese|Korean) ?[ ._\+&-] ?\b(English)|\b(English) ?[ ._\+&-] ?\b(Japanese|Chinese|Korean)|\b(\d{3,4}(p|i)|4K|U(ltra)?HD)\b.*\b(DUAL)\b(?!.*\(|\))';

DELETE FROM regular_expression_tags WHERE regular_expression_name IN ('Dual Audio') AND tag_name = 'TRaSH';
-- --- END op 2239
