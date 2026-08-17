-- @operation: export
-- @entity: batch
-- @name: Updated TrueHD format per TRaSH
-- @exportedAt: 2026-08-17T20:48:22.328Z
-- @opIds: 5548, 5549

-- --- BEGIN op 5548 ( create regular_expression "Not Atmos Group (non-5.1)" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Not Atmos Group (non-5.1)', '^(?!.*[^0-9]5[ .][0-1]\b).*\b(HQMUX|W4NK3R|DON|CtrlHD)\b', NULL, NULL);
-- --- END op 5548

-- --- BEGIN op 5549 ( update custom_format "TrueHD" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TrueHD', 'Not Atmos Group (non-5.1)', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('TrueHD', 'Not Atmos Group (non-5.1)', 'Not Atmos Group (non-5.1)');
-- --- END op 5549
