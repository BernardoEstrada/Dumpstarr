-- @operation: export
-- @entity: batch
-- @name: Remove OldT from Bad Dual Groups
-- @exportedAt: 2026-09-20T22:27:47.760Z
-- @opIds: 6088

-- --- BEGIN op 6088 ( update regular_expression "TRaSH Bad Dual Groups (Radarr)" )
update "regular_expressions" set "pattern" = '^(alfaHD.*|BAT|BlackBit|BNd|C\.A\.A|C76|Cory|CYPHER|EniaHD|EXTREME|FF|FOXX|G4RiS|GUEIRA|LCD|MGE.*|MLH|N3G4N|ONLYMOViE|PD|PTHome|RiPER|RK|SiGLA|Tars|TM|tokar86a|TURG|TvR|vnlls|WTV|XiQUEXiQUE|Yatogam1|YusukeFLA|ZigZag|ZNM)$' where "name" = 'TRaSH Bad Dual Groups (Radarr)' and "pattern" = '^(alfaHD.*|BAT|BlackBit|BNd|C\.A\.A|C76|Cory|CYPHER|EniaHD|EXTREME|FF|FOXX|G4RiS|GUEIRA|LCD|MGE.*|MLH|N3G4N|OldT|ONLYMOViE|PD|PTHome|RiPER|RK|SiGLA|Tars|TM|tokar86a|TURG|TvR|vnlls|WTV|XiQUEXiQUE|Yatogam1|YusukeFLA|ZigZag|ZNM)$';
-- --- END op 6088
