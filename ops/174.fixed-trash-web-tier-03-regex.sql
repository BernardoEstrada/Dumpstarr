-- @operation: export
-- @entity: batch
-- @name: Fixed TRaSH WEB Tier 03 regex
-- @exportedAt: 2026-03-30T21:49:41.319Z
-- @opIds: 1955

-- --- BEGIN op 1955 ( update custom_format "TRaSH WEB Tier 03" )
DELETE FROM condition_patterns WHERE custom_format_name = 'TRaSH WEB Tier 03' AND condition_name = 'TRaSH WEB Tier 03' AND regular_expression_name = 'TRaSH WEB Tier 02';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('TRaSH WEB Tier 03', 'TRaSH WEB Tier 03', 'TRaSH WEB Tier 03');
-- --- END op 1955
