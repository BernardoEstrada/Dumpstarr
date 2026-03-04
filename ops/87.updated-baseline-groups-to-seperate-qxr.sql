-- @operation: export
-- @entity: batch
-- @name: Updated Baseline Groups to seperate QxR
-- @exportedAt: 2026-03-04T16:27:37.267Z
-- @opIds: 2248, 2249, 2250

-- --- BEGIN op 2248 ( update regular_expression "QxR" )
DELETE FROM regular_expression_tags WHERE regular_expression_name IN ('QxR') AND tag_name = 'HEVC';
-- --- END op 2248

-- --- BEGIN op 2249 ( update custom_format "Baseline Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Baseline Groups', 'QxR', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Baseline Groups', 'QxR', 'QxR');
-- --- END op 2249

-- --- BEGIN op 2250 ( update regular_expression "Dumpstarr Baseline Groups" )
update "regular_expressions" set "pattern" = '^(alfaHD|Bluespots|DUSKLiGHT|PiRaTeS|SuccessfulCrab|Vyndros)$' where "name" = 'Dumpstarr Baseline Groups' and "pattern" = '^(alfaHD|afm72|Bandi|Bluespots|Celdra|DUSKLiGHT|FreetheFish|Garshasp|Ghost|Ime|Kappa|Langbard|LION|Panda|MONOLITH|Natty|PiRaTeS|QxR|r00t|RCVR|RZeroX|SAMPA|Silence|SuccessfulCrab|t3nzin|Tigole|Vyndros)$';
-- --- END op 2250
