-- @operation: export
-- @entity: batch
-- @name: More Dual Audio cleanup
-- @exportedAt: 2026-03-04T04:36:12.532Z
-- @opIds: 2242

-- --- BEGIN op 2242 ( update regular_expression "Dual Audio" )
update "regular_expressions" set "pattern" = 'dual[ ._-]?(audio)|[([]dual[])]|\b(JA|ZH|KO)(?= ?\+ ?.*?\b(EN))|\b(EN)(?= ?\+ ?.*?\b(JA|ZH|KO))|\b(Japanese|Chinese|Korean) ?[ ._\+&-] ?\b(English)|\b(English) ?[ ._\+&-] ?\b(Japanese|Chinese|Korean)|\b(\d{3,4}(p|i)|4K|U(ltra)?HD)\b.*\b(DUAL)\b(?!.*\(|\))' where "name" = 'Dual Audio' and "pattern" = '\bDual[ ._-]?(?:Audio)?\b|\b(JA|ZH|KO)(?= ?\+ ?.*?\b(EN))|\b(EN)(?= ?\+ ?.*?\b(JA|ZH|KO))\b';
-- --- END op 2242
