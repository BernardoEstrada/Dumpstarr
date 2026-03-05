-- @operation: export
-- @entity: batch
-- @name: Updated QxR groups
-- @exportedAt: 2026-03-05T23:14:11.081Z
-- @opIds: 2483

-- --- BEGIN op 2483 ( update regular_expression "QxR" )
update "regular_expressions" set "pattern" = '^(QxR|afm72|Bandi|Bluespots|Celdra|FreetheFish|Garshasp|Ghost|Ime|Kappa|Langbard|LION|Panda|MONOLITH|Natty|r00t|RCVR|RZeroX|SAMPA|Silence|t3nzin|Tigole|YOGI)$' where "name" = 'QxR' and "pattern" = '\b(QxR|afm72|Bandi|Celdra|FreetheFish|Garshasp|Ghost|Ime|Kappa|Langbard|LION|Panda|MONOLITH|Natty|r00t|RCVR|RZeroX|SAMPA|Silence|t3nzin|Tigole|YOGI)\b';
-- --- END op 2483
