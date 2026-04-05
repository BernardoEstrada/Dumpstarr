-- @operation: export
-- @entity: batch
-- @name: Added DarQ/DiscoD/Weasley to Baseline
-- @exportedAt: 2026-04-05T02:33:48.552Z
-- @opIds: 2607, 2608

-- --- BEGIN op 2607 ( update regular_expression "Dumpstarr Baseline Groups" )
update "regular_expressions" set "pattern" = '^(alfaHD|Bluespots|DarQ|DUSKLiGHT|PiRaTeS|SuccessfulCrab|Vyndros|Weasley)$' where "name" = 'Dumpstarr Baseline Groups' and "pattern" = '^(alfaHD|Bluespots|DUSKLiGHT|PiRaTeS|SuccessfulCrab|Vyndros)$';
-- --- END op 2607

-- --- BEGIN op 2608 ( update regular_expression "Dumpstarr Baseline Groups" )
update "regular_expressions" set "pattern" = '^(alfaHD|Bluespots|DarQ|DiscoD|DUSKLiGHT|PiRaTeS|SuccessfulCrab|Vyndros|Weasley)$' where "name" = 'Dumpstarr Baseline Groups' and "pattern" = '^(alfaHD|Bluespots|DarQ|DUSKLiGHT|PiRaTeS|SuccessfulCrab|Vyndros|Weasley)$';
-- --- END op 2608
