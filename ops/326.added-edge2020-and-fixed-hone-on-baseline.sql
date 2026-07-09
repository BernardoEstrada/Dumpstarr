-- @operation: export
-- @entity: batch
-- @name: Added edge2020 and fixed HONE on Baseline
-- @exportedAt: 2026-07-09T20:26:07.076Z
-- @opIds: 2796, 2797

-- --- BEGIN op 2796 ( update regular_expression "HONE" )
update "regular_expressions" set "pattern" = '^(HONE)$' where "name" = 'HONE' and "pattern" = '^(HONE|DiscoD|DarQ|Weasley)$';
-- --- END op 2796

-- --- BEGIN op 2797 ( update regular_expression "Dumpstarr Baseline Groups" )
update "regular_expressions" set "pattern" = '^(alfaHD|Bluespots|DarQ|DiscoD|DUSKLiGHT|edge2020|N1H4L|PiRaTeS|SuccessfulCrab|Vyndros|Weasley)$' where "name" = 'Dumpstarr Baseline Groups' and "pattern" = '^(alfaHD|Bluespots|DarQ|DiscoD|DUSKLiGHT|N1H4L|PiRaTeS|SuccessfulCrab|Vyndros|Weasley)$';
-- --- END op 2797
