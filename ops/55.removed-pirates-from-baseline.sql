-- @operation: export
-- @entity: batch
-- @name: Removed PiRaTeS from Baseline
-- @exportedAt: 2026-03-03T14:59:28.738Z
-- @opIds: 1441

-- --- BEGIN op 1441 ( update regular_expression "Dumpstarr Baseline Groups" )
update "regular_expressions" set "pattern" = '^(alfaHD|afm72|Bandi|Bluespots|Celdra|DUSKLiGHT|FreetheFish|Garshasp|Ghost|Ime|Kappa|Langbard|LION|Panda|MONOLITH|Natty|QxR|r00t|RCVR|RZeroX|SAMPA|Silence|SuccessfulCrab|t3nzin|Tigole|Vyndros)$' where "name" = 'Dumpstarr Baseline Groups' and "pattern" = '^(alfaHD|afm72|Bandi|Bluespots|Celdra|DUSKLiGHT|FreetheFish|Garshasp|Ghost|Ime|Kappa|Langbard|LION|Panda|MONOLITH|Natty|PiRaTeS|QxR|r00t|RCVR|RZeroX|SAMPA|Silence|SuccessfulCrab|t3nzin|Tigole|Vyndros)$';
-- --- END op 1441
