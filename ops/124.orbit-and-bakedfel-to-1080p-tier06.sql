-- @operation: export
-- @entity: batch
-- @name: ORBiT and BakedFEL to 1080p Tier06
-- @exportedAt: 2026-03-08T21:08:14.649Z
-- @opIds: 3074, 3075, 3077

-- --- BEGIN op 3074 ( update custom_format "1080p Bluray Tier 06" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Bluray Tier 06', 'ORBiT', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Bluray Tier 06', 'ORBiT', 'ORBiT');
-- --- END op 3074

-- --- BEGIN op 3075 ( update custom_format "1080p Bluray Tier 06" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Bluray Tier 06', 'BakedFEL', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Bluray Tier 06', 'BakedFEL', 'BakedFEL');
-- --- END op 3075

-- --- BEGIN op 3077 ( update custom_format "1080p Bluray Tier 06" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Bluray Tier 06', 'CART', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Bluray Tier 06', 'CART', 'CART');
-- --- END op 3077
