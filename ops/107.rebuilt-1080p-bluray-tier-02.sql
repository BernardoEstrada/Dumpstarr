-- @operation: export
-- @entity: batch
-- @name: Rebuilt 1080p Bluray Tier 02
-- @exportedAt: 2026-03-06T17:27:12.323Z
-- @opIds: 2566, 2567, 2568, 2569, 2570, 2571, 2572, 2573, 2574, 2575, 2576, 2577, 2578, 2579, 2580, 2581, 2582, 2583, 2584, 2585, 2586, 2587, 2588, 2589, 2590, 2591, 2592, 2593, 2594, 2595

-- --- BEGIN op 2566 ( update custom_format "1080p Bluray Tier 02" )
delete from "custom_format_conditions" where "custom_format_name" = '1080p Bluray Tier 02' and "name" = 'Dictionarry 1080p Tier 02' and "type" = 'release_group' and "arr_type" = 'all' and "negate" = 0 and "required" = 0;
-- --- END op 2566

-- --- BEGIN op 2567 ( delete regular_expression "Dictionarry 1080p Tier 02" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dictionarry 1080p Tier 02' AND tag_name = 'Dictionarry';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dictionarry 1080p Tier 02' AND tag_name = 'Release Group Tier';

delete from "regular_expressions" where "name" = 'Dictionarry 1080p Tier 02' and "pattern" = '^(c0kE|CtrlHD|D-Z0N3|EbP|Geek|HiFi|LoRD|TayTo|VietHD|ZQ)$';
-- --- END op 2567

-- --- BEGIN op 2568 ( update custom_format "1080p Bluray Tier 03" )
delete from "custom_format_conditions" where "custom_format_name" = '1080p Bluray Tier 03' and "name" = 'Dictionarry 1080p Tier 03' and "type" = 'release_group' and "arr_type" = 'all' and "negate" = 0 and "required" = 0;
-- --- END op 2568

-- --- BEGIN op 2569 ( delete regular_expression "Dictionarry 1080p Tier 03" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dictionarry 1080p Tier 03' AND tag_name = 'Dictionarry';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dictionarry 1080p Tier 03' AND tag_name = 'Release Group Tier';

delete from "regular_expressions" where "name" = 'Dictionarry 1080p Tier 03' and "pattern" = '^(BV|CRiSC|decibeL|FoRM|HiDt|HiP|iFT|SbR|WMING)$';
-- --- END op 2569

-- --- BEGIN op 2570 ( update custom_format "1080p Bluray Tier 04" )
delete from "custom_format_conditions" where "custom_format_name" = '1080p Bluray Tier 04' and "name" = 'Dictionarry 1080p Tier 04' and "type" = 'release_group' and "arr_type" = 'all' and "negate" = 0 and "required" = 0;
-- --- END op 2570

-- --- BEGIN op 2571 ( delete regular_expression "Dictionarry 1080p Tier 04" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dictionarry 1080p Tier 04' AND tag_name = 'Dictionarry';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dictionarry 1080p Tier 04' AND tag_name = 'Release Group Tier';

delete from "regular_expressions" where "name" = 'Dictionarry 1080p Tier 04' and "pattern" = '^(BMF|de[42]|HDMaNiAcS|IDE|LolHD|NCmt|NTb|Skazhutin)$';
-- --- END op 2571

-- --- BEGIN op 2572 ( update custom_format "1080p Bluray Tier 05" )
delete from "custom_format_conditions" where "custom_format_name" = '1080p Bluray Tier 05' and "name" = 'Dictionarry 1080p Tier 05' and "type" = 'release_group' and "arr_type" = 'all' and "negate" = 0 and "required" = 0;
-- --- END op 2572

-- --- BEGIN op 2573 ( delete regular_expression "Dictionarry 1080p Tier 05" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dictionarry 1080p Tier 05' AND tag_name = 'Dictionarry';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dictionarry 1080p Tier 05' AND tag_name = 'Release Group Tier';

delete from "regular_expressions" where "name" = 'Dictionarry 1080p Tier 05' and "pattern" = '^(AJP69|ATELiER|BSTD|Chotab|CJ|CRX|Dariush|E.N.D|E1|EA|EDPH|ESiR|EXCiSION|FraMeSToR|GALAXY|GS88|hdalx|HQMUX|KASHMiR|Kitsune|LiNG|luvBB|NiBuRu|nmd|NyHD|ORiGEN|Penumbra|playHD|Positive|PTer|RiCO|rightSIZE|RO|rttr|SaNcTi|SiMPLE|SOP|SPHD|TBB|TDD|TnP|VLAD|W4NK3R|WiLF|xander|ZIMBO)$';
-- --- END op 2573

-- --- BEGIN op 2574 ( update custom_format "1080p Bluray Tier 06" )
delete from "custom_format_conditions" where "custom_format_name" = '1080p Bluray Tier 06' and "name" = 'Dictionarry 1080p Tier 06' and "type" = 'release_group' and "arr_type" = 'all' and "negate" = 0 and "required" = 0;
-- --- END op 2574

-- --- BEGIN op 2575 ( delete regular_expression "Dictionarry 1080p Tier 06" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dictionarry 1080p Tier 06' AND tag_name = 'Dictionarry';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dictionarry 1080p Tier 06' AND tag_name = 'Release Group Tier';

delete from "regular_expressions" where "name" = 'Dictionarry 1080p Tier 06' and "pattern" = '^(ASD87|BRUTE|CHD|EuReKA|GALVANiZE|HaB|HANDJOB|HDC|iON|Ivandro|j3rico|KnG|LEGi0N|Lulz|MaG|MTeam|NiP|P0W4HD|PTP|PuTao|ROCiNANTE|Slappy|ThD|WiKi|WiLDCAT)$';
-- --- END op 2575

-- --- BEGIN op 2576 ( update regular_expression "c0kE" )
update "regular_expressions" set "pattern" = '^(c0kE)$' where "name" = 'c0kE' and "pattern" = '(?<=^|[\s.-])c0kE\b';

DELETE FROM regular_expression_tags WHERE regular_expression_name IN ('c0kE') AND tag_name = 'Bluray';
-- --- END op 2576

-- --- BEGIN op 2577 ( update regular_expression "CtrlHD" )
update "regular_expressions" set "pattern" = '^(CtrlHD)$' where "name" = 'CtrlHD' and "pattern" = '(?<=^|[\s.-])CtrlHD\b';

DELETE FROM regular_expression_tags WHERE regular_expression_name IN ('CtrlHD') AND tag_name = 'Bluray';
-- --- END op 2577

-- --- BEGIN op 2578 ( update regular_expression "D-Z0N3" )
update "regular_expressions" set "pattern" = '^(D-Z0N3)$' where "name" = 'D-Z0N3' and "pattern" = '(?<=^|[\s.-])D-Z0N3\b';

DELETE FROM regular_expression_tags WHERE regular_expression_name IN ('D-Z0N3') AND tag_name = 'Bluray';
-- --- END op 2578

-- --- BEGIN op 2579 ( update regular_expression "EbP" )
update "regular_expressions" set "pattern" = '^(EbP)$' where "name" = 'EbP' and "pattern" = '(?<=^|[\s.-])EbP\b';

DELETE FROM regular_expression_tags WHERE regular_expression_name IN ('EbP') AND tag_name = 'Bluray';
-- --- END op 2579

-- --- BEGIN op 2580 ( update regular_expression "Geek" )
update "regular_expressions" set "pattern" = '^(Geek)$' where "name" = 'Geek' and "pattern" = '(?<=^|[\s.-])Geek\b';

DELETE FROM regular_expression_tags WHERE regular_expression_name IN ('Geek') AND tag_name = 'Bluray';
-- --- END op 2580

-- --- BEGIN op 2581 ( update regular_expression "HiFi" )
update "regular_expressions" set "pattern" = '^(HiFi)$' where "name" = 'HiFi' and "pattern" = '(?<=^|[\s.-])HiFi\b';

DELETE FROM regular_expression_tags WHERE regular_expression_name IN ('HiFi') AND tag_name = 'Bluray';
-- --- END op 2581

-- --- BEGIN op 2582 ( update regular_expression "LoRD" )
update "regular_expressions" set "pattern" = '^(LoRD)$' where "name" = 'LoRD' and "pattern" = '(?<=^|[\s.-])LoRD\b';

DELETE FROM regular_expression_tags WHERE regular_expression_name IN ('LoRD') AND tag_name = 'Bluray';
-- --- END op 2582

-- --- BEGIN op 2583 ( update regular_expression "TayTo" )
update "regular_expressions" set "pattern" = '^(TayTo)$' where "name" = 'TayTo' and "pattern" = '(?<=^|[\s.-])TayTo\b';

DELETE FROM regular_expression_tags WHERE regular_expression_name IN ('TayTo') AND tag_name = 'Bluray';
-- --- END op 2583

-- --- BEGIN op 2584 ( update regular_expression "VietHD" )
update "regular_expressions" set "pattern" = '^(VietHD)$' where "name" = 'VietHD' and "pattern" = '(?<=^|[\s.-])VietHD\b';

DELETE FROM regular_expression_tags WHERE regular_expression_name IN ('VietHD') AND tag_name = 'Bluray';
-- --- END op 2584

-- --- BEGIN op 2585 ( update regular_expression "ZQ" )
update "regular_expressions" set "pattern" = '^(ZQ)$' where "name" = 'ZQ' and "pattern" = '(?<=^|[\s.-])ZQ\b';

DELETE FROM regular_expression_tags WHERE regular_expression_name IN ('ZQ') AND tag_name = 'Bluray';

DELETE FROM regular_expression_tags WHERE regular_expression_name IN ('ZQ') AND tag_name = 'Remux';
-- --- END op 2585

-- --- BEGIN op 2586 ( update custom_format "1080p Bluray Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Bluray Tier 02', 'c0kE', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Bluray Tier 02', 'c0kE', 'c0kE');
-- --- END op 2586

-- --- BEGIN op 2587 ( update custom_format "1080p Bluray Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Bluray Tier 02', 'CtrlHD', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Bluray Tier 02', 'CtrlHD', 'CtrlHD');
-- --- END op 2587

-- --- BEGIN op 2588 ( update custom_format "1080p Bluray Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Bluray Tier 02', 'D-Z0N3', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Bluray Tier 02', 'D-Z0N3', 'D-Z0N3');
-- --- END op 2588

-- --- BEGIN op 2589 ( update custom_format "1080p Bluray Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Bluray Tier 02', 'EbP', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Bluray Tier 02', 'EbP', 'EbP');
-- --- END op 2589

-- --- BEGIN op 2590 ( update custom_format "1080p Bluray Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Bluray Tier 02', 'Geek', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Bluray Tier 02', 'Geek', 'Geek');
-- --- END op 2590

-- --- BEGIN op 2591 ( update custom_format "1080p Bluray Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Bluray Tier 02', 'HiFi', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Bluray Tier 02', 'HiFi', 'HiFi');
-- --- END op 2591

-- --- BEGIN op 2592 ( update custom_format "1080p Bluray Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Bluray Tier 02', 'LoRD', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Bluray Tier 02', 'LoRD', 'LoRD');
-- --- END op 2592

-- --- BEGIN op 2593 ( update custom_format "1080p Bluray Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Bluray Tier 02', 'TayTo', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Bluray Tier 02', 'TayTo', 'TayTo');
-- --- END op 2593

-- --- BEGIN op 2594 ( update custom_format "1080p Bluray Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Bluray Tier 02', 'VietHD', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Bluray Tier 02', 'VietHD', 'VietHD');
-- --- END op 2594

-- --- BEGIN op 2595 ( update custom_format "1080p Bluray Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Bluray Tier 02', 'ZQ', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Bluray Tier 02', 'ZQ', 'ZQ');
-- --- END op 2595
