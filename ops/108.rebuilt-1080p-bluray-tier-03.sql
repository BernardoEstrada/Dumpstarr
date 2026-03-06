-- @operation: export
-- @entity: batch
-- @name: Rebuilt 1080p Bluray Tier 03
-- @exportedAt: 2026-03-06T17:37:21.781Z
-- @opIds: 2597, 2598, 2599, 2600, 2601, 2602, 2603, 2604, 2605, 2606, 2607, 2608, 2609, 2610, 2611, 2612, 2613, 2614, 2615

-- --- BEGIN op 2597 ( update regular_expression "BV" )
update "regular_expressions" set "pattern" = '^(BV)$' where "name" = 'BV' and "pattern" = '(?<=^|[\s.-])BV\b';

DELETE FROM regular_expression_tags WHERE regular_expression_name IN ('BV') AND tag_name = 'Bluray';
-- --- END op 2597

-- --- BEGIN op 2598 ( update regular_expression "CRiSC" )
update "regular_expressions" set "pattern" = '^(CRiSC)$' where "name" = 'CRiSC' and "pattern" = '(?<=^|[\s.-])CRiSC\b';

DELETE FROM regular_expression_tags WHERE regular_expression_name IN ('CRiSC') AND tag_name = 'Bluray';
-- --- END op 2598

-- --- BEGIN op 2599 ( update regular_expression "decibeL" )
update "regular_expressions" set "pattern" = '^(decibeL)$' where "name" = 'decibeL' and "pattern" = '(?<=^|[\s.-])decibeL\b';

DELETE FROM regular_expression_tags WHERE regular_expression_name IN ('decibeL') AND tag_name = 'Bluray';
-- --- END op 2599

-- --- BEGIN op 2600 ( update regular_expression "FoRM" )
update "regular_expressions" set "pattern" = '^(FoRM)$' where "name" = 'FoRM' and "pattern" = '(?<=^|[\s.-])FoRM\b';

DELETE FROM regular_expression_tags WHERE regular_expression_name IN ('FoRM') AND tag_name = 'Bluray';
-- --- END op 2600

-- --- BEGIN op 2601 ( update regular_expression "HiDt" )
update "regular_expressions" set "pattern" = '^(HiDt)$' where "name" = 'HiDt' and "pattern" = '(?<=^|[\s.-])HiDt\b';

DELETE FROM regular_expression_tags WHERE regular_expression_name IN ('HiDt') AND tag_name = 'Bluray';
-- --- END op 2601

-- --- BEGIN op 2602 ( update regular_expression "HiP" )
update "regular_expressions" set "pattern" = '^(HiP)$' where "name" = 'HiP' and "pattern" = '(?<=^|[\s.-])HiP\b';

DELETE FROM regular_expression_tags WHERE regular_expression_name IN ('HiP') AND tag_name = 'Bluray';
-- --- END op 2602

-- --- BEGIN op 2603 ( update regular_expression "iFT" )
update "regular_expressions" set "pattern" = '^(iFT)$' where "name" = 'iFT' and "pattern" = '(?<=^|[\s.-])iFT\b';

DELETE FROM regular_expression_tags WHERE regular_expression_name IN ('iFT') AND tag_name = 'Bluray';
-- --- END op 2603

-- --- BEGIN op 2604 ( update regular_expression "SbR" )
update "regular_expressions" set "pattern" = '^(SbR)$' where "name" = 'SbR' and "pattern" = '(?<=^|[\s.-])SbR\b';

DELETE FROM regular_expression_tags WHERE regular_expression_name IN ('SbR') AND tag_name = 'Bluray';
-- --- END op 2604

-- --- BEGIN op 2605 ( update regular_expression "WMING" )
update "regular_expressions" set "pattern" = '^(WMING)$' where "name" = 'WMING' and "pattern" = '(?<=^|[\s.-])WMING\b';

DELETE FROM regular_expression_tags WHERE regular_expression_name IN ('WMING') AND tag_name = 'Bluray';
-- --- END op 2605

-- --- BEGIN op 2606 ( update custom_format "1080p Bluray Tier 03" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '1080p Bluray Tier 03'
	  AND name = 'Dumpstarr 1080p Tier 03'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2606

-- --- BEGIN op 2607 ( update custom_format "1080p Bluray Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Bluray Tier 03', 'BV', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Bluray Tier 03', 'BV', 'BV');
-- --- END op 2607

-- --- BEGIN op 2608 ( update custom_format "1080p Bluray Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Bluray Tier 03', 'CRiSC', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Bluray Tier 03', 'CRiSC', 'CRiSC');
-- --- END op 2608

-- --- BEGIN op 2609 ( update custom_format "1080p Bluray Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Bluray Tier 03', 'decibeL', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Bluray Tier 03', 'decibeL', 'decibeL');
-- --- END op 2609

-- --- BEGIN op 2610 ( update custom_format "1080p Bluray Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Bluray Tier 03', 'FoRM', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Bluray Tier 03', 'FoRM', 'FoRM');
-- --- END op 2610

-- --- BEGIN op 2611 ( update custom_format "1080p Bluray Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Bluray Tier 03', 'HiDt', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Bluray Tier 03', 'HiDt', 'HiDt');
-- --- END op 2611

-- --- BEGIN op 2612 ( update custom_format "1080p Bluray Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Bluray Tier 03', 'HiP', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Bluray Tier 03', 'HiP', 'HiP');
-- --- END op 2612

-- --- BEGIN op 2613 ( update custom_format "1080p Bluray Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Bluray Tier 03', 'iFT', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Bluray Tier 03', 'iFT', 'iFT');
-- --- END op 2613

-- --- BEGIN op 2614 ( update custom_format "1080p Bluray Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Bluray Tier 03', 'SbR', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Bluray Tier 03', 'SbR', 'SbR');
-- --- END op 2614

-- --- BEGIN op 2615 ( update custom_format "1080p Bluray Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Bluray Tier 03', 'WMING', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Bluray Tier 03', 'WMING', 'WMING');
-- --- END op 2615
