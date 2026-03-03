-- @operation: export
-- @entity: batch
-- @name: Fixed Baseline Groups format condition
-- @exportedAt: 2026-03-03T19:47:47.848Z
-- @opIds: 1700, 1701, 1702, 1703, 1704, 1705, 1706

-- --- BEGIN op 1700 ( update regular_expression "Dumpstarr Baseline Groups" )
update "regular_expressions" set "pattern" = '^(alfaHD|afm72|Bandi|Bluespots|Celdra|DUSKLiGHT|FreetheFish|Garshasp|Ghost|Ime|Kappa|Langbard|LION|Panda|MONOLITH|Natty|PiRaTeS|QxR|r00t|RCVR|RZeroX|SAMPA|Silence|SuccessfulCrab|t3nzin|Tigole|Vyndros)$' where "name" = 'Dumpstarr Baseline Groups' and "pattern" = '^(alfaHD|afm72|Bandi|Bluespots|Celdra|DUSKLiGHT|FreetheFish|Garshasp|Ghost|Ime|Kappa|Langbard|LION|Panda|MONOLITH|Natty|QxR|r00t|RCVR|RZeroX|SAMPA|Silence|SuccessfulCrab|t3nzin|Tigole|Vyndros)$';
-- --- END op 1700

-- --- BEGIN op 1701 ( create custom_format "Baseline Groups" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('Baseline Groups', 'Deadpool.2.2018.2160p.DSNP.WEB-DL.DDPA.5.1.DV.HDR.H.265-PiRaTeS', 'movie', 1, NULL);
-- --- END op 1701

-- --- BEGIN op 1702 ( update regular_expression "Dumpstarr Baseline Groups" )
update "regular_expressions" set "pattern" = '\b(alfaHD|afm72|Bandi|Bluespots|Celdra|DUSKLiGHT|FreetheFish|Garshasp|Ghost|Ime|Kappa|Langbard|LION|Panda|MONOLITH|Natty|PiRaTeS|QxR|r00t|RCVR|RZeroX|SAMPA|Silence|SuccessfulCrab|t3nzin|Tigole|Vyndros)\b' where "name" = 'Dumpstarr Baseline Groups' and "pattern" = '^(alfaHD|afm72|Bandi|Bluespots|Celdra|DUSKLiGHT|FreetheFish|Garshasp|Ghost|Ime|Kappa|Langbard|LION|Panda|MONOLITH|Natty|PiRaTeS|QxR|r00t|RCVR|RZeroX|SAMPA|Silence|SuccessfulCrab|t3nzin|Tigole|Vyndros)$';
-- --- END op 1702

-- --- BEGIN op 1703 ( update regular_expression "Dumpstarr Baseline Groups" )
update "regular_expressions" set "pattern" = '^(alfaHD|afm72|Bandi|Bluespots|Celdra|DUSKLiGHT|FreetheFish|Garshasp|Ghost|Ime|Kappa|Langbard|LION|Panda|MONOLITH|Natty|PiRaTeS|QxR|r00t|RCVR|RZeroX|SAMPA|Silence|SuccessfulCrab|t3nzin|Tigole|Vyndros)$' where "name" = 'Dumpstarr Baseline Groups' and "pattern" = '\b(alfaHD|afm72|Bandi|Bluespots|Celdra|DUSKLiGHT|FreetheFish|Garshasp|Ghost|Ime|Kappa|Langbard|LION|Panda|MONOLITH|Natty|PiRaTeS|QxR|r00t|RCVR|RZeroX|SAMPA|Silence|SuccessfulCrab|t3nzin|Tigole|Vyndros)\b';
-- --- END op 1703

-- --- BEGIN op 1704 ( update regular_expression "Dumpstarr Baseline Groups" )
update "regular_expressions" set "pattern" = '\b(alfaHD|afm72|Bandi|Bluespots|Celdra|DUSKLiGHT|FreetheFish|Garshasp|Ghost|Ime|Kappa|Langbard|LION|Panda|MONOLITH|Natty|PiRaTeS|QxR|r00t|RCVR|RZeroX|SAMPA|Silence|SuccessfulCrab|t3nzin|Tigole|Vyndros)\b' where "name" = 'Dumpstarr Baseline Groups' and "pattern" = '^(alfaHD|afm72|Bandi|Bluespots|Celdra|DUSKLiGHT|FreetheFish|Garshasp|Ghost|Ime|Kappa|Langbard|LION|Panda|MONOLITH|Natty|PiRaTeS|QxR|r00t|RCVR|RZeroX|SAMPA|Silence|SuccessfulCrab|t3nzin|Tigole|Vyndros)$';
-- --- END op 1704

-- --- BEGIN op 1705 ( update custom_format "Baseline Groups" )
UPDATE custom_format_conditions
SET type = 'release_group'
WHERE custom_format_name = 'Baseline Groups'
  AND name = 'Dumpstarr Baseline Groups'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;

DELETE FROM condition_patterns WHERE custom_format_name = 'Baseline Groups' AND condition_name = 'Dumpstarr Baseline Groups' AND regular_expression_name = 'Dumpstarr Baseline Groups';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Baseline Groups', 'Dumpstarr Baseline Groups', 'Dumpstarr Baseline Groups');
-- --- END op 1705

-- --- BEGIN op 1706 ( update regular_expression "Dumpstarr Baseline Groups" )
update "regular_expressions" set "pattern" = '^(alfaHD|afm72|Bandi|Bluespots|Celdra|DUSKLiGHT|FreetheFish|Garshasp|Ghost|Ime|Kappa|Langbard|LION|Panda|MONOLITH|Natty|PiRaTeS|QxR|r00t|RCVR|RZeroX|SAMPA|Silence|SuccessfulCrab|t3nzin|Tigole|Vyndros)$' where "name" = 'Dumpstarr Baseline Groups' and "pattern" = '\b(alfaHD|afm72|Bandi|Bluespots|Celdra|DUSKLiGHT|FreetheFish|Garshasp|Ghost|Ime|Kappa|Langbard|LION|Panda|MONOLITH|Natty|PiRaTeS|QxR|r00t|RCVR|RZeroX|SAMPA|Silence|SuccessfulCrab|t3nzin|Tigole|Vyndros)\b';
-- --- END op 1706
