-- @operation: export
-- @entity: batch
-- @name: Add ATELiER to 2160p Tier 04 per Dictionarry
-- @exportedAt: 2026-03-22T16:48:21.493Z
-- @opIds: 1291

-- --- BEGIN op 1291 ( update custom_format "2160p Bluray Tier 04" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2160p Bluray Tier 04', 'ATELiER', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('2160p Bluray Tier 04', 'ATELiER', 'ATELiER');
-- --- END op 1291
