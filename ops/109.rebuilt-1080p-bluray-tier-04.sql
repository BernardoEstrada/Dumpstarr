-- @operation: export
-- @entity: batch
-- @name: Rebuilt 1080p Bluray Tier 04
-- @exportedAt: 2026-03-06T17:45:44.405Z
-- @opIds: 2617, 2618, 2619, 2620, 2621, 2622, 2623, 2624, 2625, 2626, 2627, 2628, 2629, 2630, 2631, 2632, 2633, 2634, 2635, 2636, 2637

-- --- BEGIN op 2617 ( update regular_expression "BMF" )
update "regular_expressions" set "pattern" = '^(BMF)$' where "name" = 'BMF' and "pattern" = '(?<=^|[\s.-])BMF\b';

DELETE FROM regular_expression_tags WHERE regular_expression_name IN ('BMF') AND tag_name = 'Bluray';

DELETE FROM regular_expression_tags WHERE regular_expression_name IN ('BMF') AND tag_name = 'Remux';
-- --- END op 2617

-- --- BEGIN op 2618 ( update regular_expression "de[42]" )
update "regular_expressions" set "pattern" = '^(de[42])$' where "name" = 'de[42]' and "pattern" = '(?<=^|[\s.-])de[42]\b';

DELETE FROM regular_expression_tags WHERE regular_expression_name IN ('de[42]') AND tag_name = 'Bluray';
-- --- END op 2618

-- --- BEGIN op 2619 ( create regular_expression "eXterminator" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('eXterminator', '^(GROUP)$', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('eXterminator', 'Release Group');
-- --- END op 2619

-- --- BEGIN op 2620 ( update regular_expression "eXterminator" )
update "regular_expressions" set "pattern" = '^(eXterminator)$' where "name" = 'eXterminator' and "pattern" = '^(GROUP)$';
-- --- END op 2620

-- --- BEGIN op 2621 ( update regular_expression "HDMaNiAcS" )
update "regular_expressions" set "pattern" = '^(HDMaNiAcS)$' where "name" = 'HDMaNiAcS' and "pattern" = '(?<=^|[\s.-])HDMaNiAcS\b';

DELETE FROM regular_expression_tags WHERE regular_expression_name IN ('HDMaNiAcS') AND tag_name = 'Bluray';
-- --- END op 2621

-- --- BEGIN op 2622 ( update regular_expression "IDE" )
update "regular_expressions" set "pattern" = '^(IDE)$' where "name" = 'IDE' and "pattern" = '(?<=^|[\s.-])IDE\b';

DELETE FROM regular_expression_tags WHERE regular_expression_name IN ('IDE') AND tag_name = 'Bluray';
-- --- END op 2622

-- --- BEGIN op 2623 ( update regular_expression "LolHD" )
update "regular_expressions" set "pattern" = '^(LolHD)$' where "name" = 'LolHD' and "pattern" = '(?<=^|[\s.-])LolHD\b';

DELETE FROM regular_expression_tags WHERE regular_expression_name IN ('LolHD') AND tag_name = 'Bluray';
-- --- END op 2623

-- --- BEGIN op 2624 ( update regular_expression "NCmt" )
update "regular_expressions" set "pattern" = '^(NCmt)$' where "name" = 'NCmt' and "pattern" = '(?<=^|[\s.-])NCmt\b';

DELETE FROM regular_expression_tags WHERE regular_expression_name IN ('NCmt') AND tag_name = 'Bluray';

DELETE FROM regular_expression_tags WHERE regular_expression_name IN ('NCmt') AND tag_name = 'Remux';
-- --- END op 2624

-- --- BEGIN op 2625 ( update regular_expression "NTb" )
update "regular_expressions" set "pattern" = '^(NTb)$' where "name" = 'NTb' and "pattern" = '(?<=^|[\s.-])NTb\b';

DELETE FROM regular_expression_tags WHERE regular_expression_name IN ('NTb') AND tag_name = 'WEB-DL';
-- --- END op 2625

-- --- BEGIN op 2626 ( update custom_format "1080p Bluray Tier 04" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '1080p Bluray Tier 04'
	  AND name = 'Dumpstarr 1080p Tier 04'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2626

-- --- BEGIN op 2627 ( update custom_format "1080p Bluray Tier 04" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Bluray Tier 04', 'BMF', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Bluray Tier 04', 'BMF', 'BMF');
-- --- END op 2627

-- --- BEGIN op 2628 ( update custom_format "1080p Bluray Tier 04" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Bluray Tier 04', 'de[42]', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Bluray Tier 04', 'de[42]', 'de[42]');
-- --- END op 2628

-- --- BEGIN op 2629 ( update custom_format "1080p Bluray Tier 04" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Bluray Tier 04', 'eXterminator', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Bluray Tier 04', 'eXterminator', 'eXterminator');
-- --- END op 2629

-- --- BEGIN op 2630 ( update custom_format "1080p Bluray Tier 04" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Bluray Tier 04', 'HDMaNiAcS', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Bluray Tier 04', 'HDMaNiAcS', 'HDMaNiAcS');
-- --- END op 2630

-- --- BEGIN op 2631 ( update custom_format "1080p Bluray Tier 04" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Bluray Tier 04', 'IDE', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Bluray Tier 04', 'IDE', 'IDE');
-- --- END op 2631

-- --- BEGIN op 2632 ( update custom_format "1080p Bluray Tier 04" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Bluray Tier 04', 'LolHD', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Bluray Tier 04', 'LolHD', 'LolHD');
-- --- END op 2632

-- --- BEGIN op 2633 ( update custom_format "1080p Bluray Tier 04" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Bluray Tier 04', 'NCmt', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Bluray Tier 04', 'NCmt', 'NCmt');
-- --- END op 2633

-- --- BEGIN op 2634 ( update custom_format "1080p Bluray Tier 04" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Bluray Tier 04', 'NTb', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Bluray Tier 04', 'NTb', 'NTb');
-- --- END op 2634

-- --- BEGIN op 2635 ( create regular_expression "Skazhutin" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Skazhutin', '^(GROUP)$', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Skazhutin', 'Release Group');
-- --- END op 2635

-- --- BEGIN op 2636 ( update regular_expression "Skazhutin" )
update "regular_expressions" set "pattern" = '^(Skazhutin)$' where "name" = 'Skazhutin' and "pattern" = '^(GROUP)$';
-- --- END op 2636

-- --- BEGIN op 2637 ( update custom_format "1080p Bluray Tier 04" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Bluray Tier 04', 'Skazhutin', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Bluray Tier 04', 'Skazhutin', 'Skazhutin');
-- --- END op 2637
