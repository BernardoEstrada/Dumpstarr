-- @operation: export
-- @entity: batch
-- @name: Added BLOOM to TRaSH WEB Tier 03
-- @exportedAt: 2026-02-24T00:50:41.106Z
-- @opIds: 221

-- --- BEGIN op 221 ( update regular_expression "TRaSH WEB Tier 03" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])(BLOOM|GNOMiSSiON|HHWEB|NINJACENTRAL|NPMS|QOQ|ROCCaT|SiGMA|SLiGNOME|SwAgLaNdEr)\b' where "name" = 'TRaSH WEB Tier 03' and "pattern" = '(?<=^|[\s.-])(GNOMiSSiON|HHWEB|NINJACENTRAL|NPMS|QOQ|ROCCaT|SiGMA|SLiGNOME|SwAgLaNdEr)\b';
-- --- END op 221
