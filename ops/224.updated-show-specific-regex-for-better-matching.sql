-- @operation: export
-- @entity: batch
-- @name: Updated show specific regex for better matching
-- @exportedAt: 2026-05-18T15:11:41.237Z
-- @opIds: 839, 840, 841

-- --- BEGIN op 839 ( update regular_expression "Adventure Time Season 8 Banned Groups" )
update "regular_expressions" set "pattern" = '(?i)^adventure[ ._-]+time[ ._-]+S08.*-(CtrlHD|EPSiLON|H3B|NTb|RTN)\b' where "name" = 'Adventure Time Season 8 Banned Groups' and "pattern" = '(?i)^adventure[ ._-]+time[ ._-]+S08.*-(CtrlHD|EPSiLON|H3B|NTb|RTN)$';
-- --- END op 839

-- --- BEGIN op 840 ( update regular_expression "Arthur Banned Groups" )
update "regular_expressions" set "pattern" = '(?i)^arthur[ ._-].*-(DAWN)\b' where "name" = 'Arthur Banned Groups' and "pattern" = '(?i)^arthur[ ._-].*-(DAWN)$';
-- --- END op 840

-- --- BEGIN op 841 ( update regular_expression "House Season 6 Banned Groups" )
update "regular_expressions" set "pattern" = '^(Dr\.\s*)?House.*S06.*-(d3g|DBTV|DUSKLiGHT|HONE|NERO|NINJACENTRAL|LiPAN|SiGMA|TVARCHiV|WADU)\b' where "name" = 'House Season 6 Banned Groups' and "pattern" = '^(Dr\.\s*)?House.*S06.*-(d3g|DBTV|DUSKLiGHT|HONE|NERO|NINJACENTRAL|LiPAN|SiGMA|TVARCHiV|WADU)$';
-- --- END op 841
