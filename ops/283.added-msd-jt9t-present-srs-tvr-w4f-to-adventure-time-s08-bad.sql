-- @operation: export
-- @entity: batch
-- @name: Added mSD-jT9t/PRESENT/SRS/TvR/W4F to Adventure Time S08 Bad Groups
-- @exportedAt: 2026-06-16T20:28:23.141Z
-- @opIds: 1834, 1835

-- --- BEGIN op 1834 ( update regular_expression "Adventure Time Season 8 Banned Groups" )
update "regular_expressions" set "pattern" = '(?i)^adventure[ ._-]+time[ ._-]+S08.*-(CtrlHD|EPSiLON|H3B|NTb|RTN|TvR)\b' where "name" = 'Adventure Time Season 8 Banned Groups' and "pattern" = '(?i)^adventure[ ._-]+time[ ._-]+S08.*-(CtrlHD|EPSiLON|H3B|NTb|RTN)\b';
-- --- END op 1834

-- --- BEGIN op 1835 ( update regular_expression "Adventure Time Season 8 Banned Groups" )
update "regular_expressions" set "pattern" = '(?i)^adventure[ ._-]+time[ ._-]+S08.*-(CtrlHD|EPSiLON|H3B|mSD-jT9t|NTb|PRESENT|RTN|SRS|TvR|W4F)\b' where "name" = 'Adventure Time Season 8 Banned Groups' and "pattern" = '(?i)^adventure[ ._-]+time[ ._-]+S08.*-(CtrlHD|EPSiLON|H3B|NTb|RTN|TvR)\b';
-- --- END op 1835
