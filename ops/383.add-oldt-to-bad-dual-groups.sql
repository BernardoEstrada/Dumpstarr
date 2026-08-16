-- @operation: export
-- @entity: batch
-- @name: Add OldT to Bad Dual Groups
-- @exportedAt: 2026-08-16T18:19:29.193Z
-- @opIds: 5546

-- --- BEGIN op 5546 ( update regular_expression "TRaSH Bad Dual Groups" )
update "regular_expressions" set "pattern" = '^(alfaHD.*|BAT|BiOMA|BlackBit|BNd|C76|C\.A\.A|Cory|CYPHER|EniaHD|EXTREME|FF|FOXX|G4RiS|GUEIRA|LCD|MGE\b.*|MLH|N3G4N|OldT|PD|PTHome|RiPER|RK|SiGLA|Tars|tokar86a|TURG|vnlls|WTV|XiQUEXiQUE|Yatogam1|YusukeFLA|ZigZag|ZNM)$' where "name" = 'TRaSH Bad Dual Groups' and "pattern" = '^(alfaHD.*|BAT|BiOMA|BlackBit|BNd|C76|C\.A\.A|Cory|CYPHER|EniaHD|EXTREME|FF|FOXX|G4RiS|GUEIRA|LCD|MGE\b.*|MLH|N3G4N|PD|PTHome|RiPER|RK|SiGLA|Tars|tokar86a|TURG|vnlls|WTV|XiQUEXiQUE|Yatogam1|YusukeFLA|ZigZag|ZNM)$';
-- --- END op 5546
