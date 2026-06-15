-- @operation: export
-- @entity: batch
-- @name: Add N1H4L to Baseline
-- @exportedAt: 2026-06-15T03:52:06.353Z
-- @opIds: 1700

-- --- BEGIN op 1700 ( update regular_expression "Dumpstarr Baseline Groups" )
update "regular_expressions" set "pattern" = '^(alfaHD|Bluespots|DarQ|DiscoD|DUSKLiGHT|N1H4L|PiRaTeS|SuccessfulCrab|Vyndros|Weasley)$' where "name" = 'Dumpstarr Baseline Groups' and "pattern" = '^(alfaHD|Bluespots|DarQ|DiscoD|DUSKLiGHT|PiRaTeS|SuccessfulCrab|Vyndros|Weasley)$';
-- --- END op 1700
