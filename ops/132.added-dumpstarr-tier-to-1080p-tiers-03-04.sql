-- @operation: export
-- @entity: batch
-- @name: Added Dumpstarr Tier to 1080p Tiers 03/04
-- @exportedAt: 2026-03-12T23:15:02.998Z
-- @opIds: 717, 718

-- --- BEGIN op 717 ( update custom_format "1080p Bluray Tier 04" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Bluray Tier 04', 'Dumpstarr 1080p Tier 04', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Bluray Tier 04', 'Dumpstarr 1080p Tier 04', 'Dumpstarr 1080p Tier 04');
-- --- END op 717

-- --- BEGIN op 718 ( update custom_format "1080p Bluray Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Bluray Tier 03', 'Dumpstarr 1080p Tier 03', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Bluray Tier 03', 'Dumpstarr 1080p Tier 03', 'Dumpstarr 1080p Tier 03');
-- --- END op 718
