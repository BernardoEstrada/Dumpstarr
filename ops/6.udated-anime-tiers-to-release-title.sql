-- @operation: export
-- @entity: batch
-- @name: Udated Anime Tiers to Release Title
-- @exportedAt: 2026-02-22T18:20:55.209Z
-- @opIds: 156, 157, 158, 159, 160, 161, 162, 163

-- --- BEGIN op 156 ( update custom_format "Anime Tier 1" )
UPDATE custom_format_conditions
SET type = 'release_title'
WHERE custom_format_name = 'Anime Tier 1'
  AND name = 'TRaSH Anime Bluray Tier 1'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 1;

DELETE FROM condition_patterns WHERE custom_format_name = 'Anime Tier 1' AND condition_name = 'TRaSH Anime Bluray Tier 1' AND regular_expression_name = 'TRaSH Anime Bluray Tier 1';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 1', 'TRaSH Anime Bluray Tier 1', 'TRaSH Anime Bluray Tier 1');
-- --- END op 156

-- --- BEGIN op 157 ( update custom_format "Anime Tier 2" )
UPDATE custom_format_conditions
SET type = 'release_title'
WHERE custom_format_name = 'Anime Tier 2'
  AND name = 'TRaSH Anime Bluray Tier 2'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 1;

DELETE FROM condition_patterns WHERE custom_format_name = 'Anime Tier 2' AND condition_name = 'TRaSH Anime Bluray Tier 2' AND regular_expression_name = 'TRaSH Anime Bluray Tier 2';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 2', 'TRaSH Anime Bluray Tier 2', 'TRaSH Anime Bluray Tier 2');
-- --- END op 157

-- --- BEGIN op 158 ( update custom_format "Anime Tier 3" )
UPDATE custom_format_conditions
SET type = 'release_title'
WHERE custom_format_name = 'Anime Tier 3'
  AND name = 'TRaSH Anime Bluray Tier 3'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 1;

DELETE FROM condition_patterns WHERE custom_format_name = 'Anime Tier 3' AND condition_name = 'TRaSH Anime Bluray Tier 3' AND regular_expression_name = 'TRaSH Anime Bluray Tier 3';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 3', 'TRaSH Anime Bluray Tier 3', 'TRaSH Anime Bluray Tier 3');
-- --- END op 158

-- --- BEGIN op 159 ( update custom_format "Anime Tier 4" )
UPDATE custom_format_conditions
SET type = 'release_title'
WHERE custom_format_name = 'Anime Tier 4'
  AND name = 'TRaSH Anime Bluray Tier 4'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 1;

DELETE FROM condition_patterns WHERE custom_format_name = 'Anime Tier 4' AND condition_name = 'TRaSH Anime Bluray Tier 4' AND regular_expression_name = 'TRaSH Anime Bluray Tier 4';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 4', 'TRaSH Anime Bluray Tier 4', 'TRaSH Anime Bluray Tier 4');
-- --- END op 159

-- --- BEGIN op 160 ( update custom_format "Anime Tier 5" )
UPDATE custom_format_conditions
SET type = 'release_title'
WHERE custom_format_name = 'Anime Tier 5'
  AND name = 'TRaSH Anime Bluray Tier 5'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 1;

DELETE FROM condition_patterns WHERE custom_format_name = 'Anime Tier 5' AND condition_name = 'TRaSH Anime Bluray Tier 5' AND regular_expression_name = 'TRaSH Anime Bluray Tier 5';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 5', 'TRaSH Anime Bluray Tier 5', 'TRaSH Anime Bluray Tier 5');
-- --- END op 160

-- --- BEGIN op 161 ( update custom_format "Anime Tier 6" )
UPDATE custom_format_conditions
SET type = 'release_title'
WHERE custom_format_name = 'Anime Tier 6'
  AND name = 'TRaSH Anime Bluray Tier 6'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 1;

DELETE FROM condition_patterns WHERE custom_format_name = 'Anime Tier 6' AND condition_name = 'TRaSH Anime Bluray Tier 6' AND regular_expression_name = 'TRaSH Anime Bluray Tier 6';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 6', 'TRaSH Anime Bluray Tier 6', 'TRaSH Anime Bluray Tier 6');
-- --- END op 161

-- --- BEGIN op 162 ( update custom_format "Anime Tier 7" )
UPDATE custom_format_conditions
SET type = 'release_title'
WHERE custom_format_name = 'Anime Tier 7'
  AND name = 'TRaSH Anime Bluray Tier 7'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 1;

DELETE FROM condition_patterns WHERE custom_format_name = 'Anime Tier 7' AND condition_name = 'TRaSH Anime Bluray Tier 7' AND regular_expression_name = 'TRaSH Anime Bluray Tier 7';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 7', 'TRaSH Anime Bluray Tier 7', 'TRaSH Anime Bluray Tier 7');
-- --- END op 162

-- --- BEGIN op 163 ( update custom_format "Anime Tier 8" )
UPDATE custom_format_conditions
SET type = 'release_title'
WHERE custom_format_name = 'Anime Tier 8'
  AND name = 'TRaSH Anime Bluray Tier 8'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 1;

DELETE FROM condition_patterns WHERE custom_format_name = 'Anime Tier 8' AND condition_name = 'TRaSH Anime Bluray Tier 8' AND regular_expression_name = 'TRaSH Anime Bluray Tier 8';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 8', 'TRaSH Anime Bluray Tier 8', 'TRaSH Anime Bluray Tier 8');
-- --- END op 163
