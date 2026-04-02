-- @operation: export
-- @entity: batch
-- @name: Updated Show Specify Banned Group regex
-- @exportedAt: 2026-04-02T22:43:54.996Z
-- @opIds: 2194, 2195, 2196, 2197, 2198

-- --- BEGIN op 2194 ( update regular_expression "Family Guy Banned Groups" )
update "regular_expressions" set "pattern" = '(?i)^family[ ._-]+guy.*-(REWARD)\b' where "name" = 'Family Guy Banned Groups' and "pattern" = '(?i)^family[ ._-]+guy.*-(REWARD)$';
-- --- END op 2194

-- --- BEGIN op 2195 ( update regular_expression "Family Guy Banned Groups" )
update "regular_expressions" set "pattern" = '(?i)^family[ ._-]+guy.*-(REWARD)$' where "name" = 'Family Guy Banned Groups' and "pattern" = '(?i)^family[ ._-]+guy.*-(REWARD)\b';
-- --- END op 2195

-- --- BEGIN op 2196 ( update regular_expression "Family Guy Banned Groups" )
update "regular_expressions" set "pattern" = '(?i)^family[ ._-]+guy.*-(REWARD)\b' where "name" = 'Family Guy Banned Groups' and "pattern" = '(?i)^family[ ._-]+guy.*-(REWARD)$';
-- --- END op 2196

-- --- BEGIN op 2197 ( update regular_expression "Adventure Time Season 8 Banned Groups" )
update "regular_expressions" set "pattern" = '(?i)^adventure[ ._-]+time[ ._-]+S08.*-(CtrlHD|EPSiLON|H3B|NTb|RTN)\b' where "name" = 'Adventure Time Season 8 Banned Groups' and "pattern" = '(?i)^adventure[ ._-]+time[ ._-]+S08.*-(CtrlHD|EPSiLON|H3B|NTb|RTN)$';
-- --- END op 2197

-- --- BEGIN op 2198 ( update regular_expression "House Season 6 Banned Groups" )
update "regular_expressions" set "pattern" = '^(Dr\.\s*)?House.*S06.*-(d3g|DBTV|DUSKLiGHT|HONE|NERO|NINJACENTRAL|LiPAN|SiGMA|TVARCHiV|WADU)\b' where "name" = 'House Season 6 Banned Groups' and "pattern" = '^(Dr\.\s*)?House.*S06.*-(d3g|DBTV|DUSKLiGHT|HONE|NERO|NINJACENTRAL|LiPAN|SiGMA|TVARCHiV|WADU)$';
-- --- END op 2198
