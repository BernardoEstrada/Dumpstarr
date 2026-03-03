-- @operation: export
-- @entity: batch
-- @name: Rebuilt the HONE fix, focused on automation
-- @exportedAt: 2026-03-03T21:47:37.663Z
-- @opIds: 1708, 1709, 1710, 1711, 1712, 1713, 1714, 1715, 1716, 1717, 1718, 1719, 1720, 1721, 1722, 1723, 1724, 1725, 1726, 1727, 1728, 1729, 1730, 1731, 1732, 1733

-- --- BEGIN op 1708 ( update quality_profile "Movies 2160p HQ" )
UPDATE quality_profile_custom_formats
SET score = 50
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'HDR10+'
  AND arr_type = 'radarr'
  AND score = 500;
-- --- END op 1708

-- --- BEGIN op 1709 ( update quality_profile "Movies 2160p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'BHDStudio'
  AND arr_type = 'radarr'
  AND score = 550;
-- --- END op 1709

-- --- BEGIN op 1710 ( update quality_profile "Movies 2160p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'hallowed'
  AND arr_type = 'radarr'
  AND score = 600;
-- --- END op 1710

-- --- BEGIN op 1711 ( create custom_format "Bad Naming Scheme" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('Bad Naming Scheme', 'Star Wars Episode III-Revenge of the Sith-2005-2160p UHD BluRay x265 DV HDR DDP 7.1 English-DiscoD HONE-', 'movie', 1, NULL);
-- --- END op 1711

-- --- BEGIN op 1712 ( update custom_format "Bad Naming Scheme" )
UPDATE custom_format_tests SET should_match = 0 WHERE custom_format_name = 'Bad Naming Scheme' AND title = 'Star Wars Episode III-Revenge of the Sith-2005-2160p UHD BluRay x265 DV HDR DDP 7.1 English-DiscoD HONE-' AND type = 'movie' AND should_match = 1;
-- --- END op 1712

-- --- BEGIN op 1713 ( update custom_format "Bad Naming Scheme" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Naming Scheme', 'HONE Group Release Title', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Naming Scheme', 'HONE Group Release Title', 'HONE');
-- --- END op 1713

-- --- BEGIN op 1714 ( update custom_format "Bad Naming Scheme" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Naming Scheme', 'Not Hone', 'release_group', 'all', 1, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Naming Scheme', 'Not Hone', 'HONE');
-- --- END op 1714

-- --- BEGIN op 1715 ( update custom_format "Bad Naming Scheme" )
UPDATE custom_format_conditions
SET negate = 0
WHERE custom_format_name = 'Bad Naming Scheme'
  AND name = 'HONE Group Release Title'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 1
  AND required = 1;
-- --- END op 1715

-- --- BEGIN op 1716 ( update custom_format "Bad Naming Scheme" )
UPDATE custom_format_tests SET should_match = 1 WHERE custom_format_name = 'Bad Naming Scheme' AND title = 'Star Wars Episode III-Revenge of the Sith-2005-2160p UHD BluRay x265 DV HDR DDP 7.1 English-DiscoD HONE-' AND type = 'movie' AND should_match = 0;
-- --- END op 1716

-- --- BEGIN op 1717 ( update regular_expression "HONE" )
update "regular_expressions" set "pattern" = '\b(HONE)\b' where "name" = 'HONE' and "pattern" = '\b(DiscoD|HONE|Yogi)\b';
-- --- END op 1717

-- --- BEGIN op 1718 ( update regular_expression "HONE Release Title" )
update "regular_expressions" set "name" = 'HONE Release Title' where "name" = 'HONE';
-- --- END op 1718

-- --- BEGIN op 1719 ( update custom_format "Bad Naming Scheme" )
update "condition_patterns" set "regular_expression_name" = 'HONE Release Title' where "custom_format_name" = 'Bad Naming Scheme' and "condition_name" = 'HONE Group Release Title' and "regular_expression_name" = 'HONE';

update "condition_patterns" set "regular_expression_name" = 'HONE Release Title' where "custom_format_name" = 'Bad Naming Scheme' and "condition_name" = 'Not Hone' and "regular_expression_name" = 'HONE';
-- --- END op 1719

-- --- BEGIN op 1720 ( create regular_expression "HONE" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('HONE', '\b(HONE)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('HONE', 'Release Group');
-- --- END op 1720

-- --- BEGIN op 1721 ( update regular_expression "HONE" )
update "regular_expressions" set "pattern" = '^(HONE)$' where "name" = 'HONE' and "pattern" = '\b(HONE)\b';
-- --- END op 1721

-- --- BEGIN op 1722 ( update custom_format "Bad Naming Scheme" )
DELETE FROM condition_patterns WHERE custom_format_name = 'Bad Naming Scheme' AND condition_name = 'Not Hone' AND regular_expression_name = 'HONE Release Title';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Naming Scheme', 'Not Hone', 'HONE');
-- --- END op 1722

-- --- BEGIN op 1723 ( create custom_format "Bad Naming Scheme" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('Bad Naming Scheme', 'Star Wars Episode III-Revenge of the Sith-2005-2160p UHD BluRay x265 DV HDR DDP 7.1 English-HONE', 'movie', 0, NULL);
-- --- END op 1723

-- --- BEGIN op 1724 ( update custom_format "Bad Naming Scheme" )
UPDATE custom_format_conditions
SET required = 1
WHERE custom_format_name = 'Bad Naming Scheme'
  AND name = 'Not Hone'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 1
  AND required = 0;
-- --- END op 1724

-- --- BEGIN op 1725 ( create custom_format "Bad Naming Scheme" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('Bad Naming Scheme', 'Star Wars Episode III-Revenge of the Sith-2005-2160p UHD BluRay x265 DV HDR DDP 7.1 English.HONE-DarQ', 'movie', 1, NULL);
-- --- END op 1725

-- --- BEGIN op 1726 ( update custom_format "Bad Naming Scheme" )
UPDATE custom_format_tests SET should_match = 0 WHERE custom_format_name = 'Bad Naming Scheme' AND title = 'Star Wars Episode III-Revenge of the Sith-2005-2160p UHD BluRay x265 DV HDR DDP 7.1 English.HONE-DarQ' AND type = 'movie' AND should_match = 1;
-- --- END op 1726

-- --- BEGIN op 1727 ( update custom_format "Bad Naming Scheme" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Bad Naming Scheme'
	  AND name = 'HONE'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 1727

-- --- BEGIN op 1728 ( update custom_format "Bad Naming Scheme" )
UPDATE custom_format_tests SET should_match = 1 WHERE custom_format_name = 'Bad Naming Scheme' AND title = 'Star Wars Episode III-Revenge of the Sith-2005-2160p UHD BluRay x265 DV HDR DDP 7.1 English.HONE-DarQ' AND type = 'movie' AND should_match = 0;
-- --- END op 1728

-- --- BEGIN op 1729 ( update custom_format "Bad Naming Scheme" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Bad Naming Scheme'
	  AND name = 'HONE Group Release Title'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 1;
-- --- END op 1729

-- --- BEGIN op 1730 ( update custom_format "Bad Naming Scheme" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Bad Naming Scheme'
	  AND name = 'Not Hone'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 1
	  AND required = 1;
-- --- END op 1730

-- --- BEGIN op 1731 ( update custom_format "Bad Naming Scheme" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Naming Scheme', 'HONE Release Title', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Naming Scheme', 'HONE Release Title', 'HONE Release Title');
-- --- END op 1731

-- --- BEGIN op 1732 ( update custom_format "Bad Naming Scheme" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Naming Scheme', 'Not Hone Group', 'release_group', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Naming Scheme', 'Not Hone Group', 'HONE');
-- --- END op 1732

-- --- BEGIN op 1733 ( delete regular_expression "HONE Bad Naming Scheme" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'HONE Bad Naming Scheme' AND tag_name = 'Banned';

delete from "regular_expressions" where "name" = 'HONE Bad Naming Scheme' and "pattern" = 'HONE-(?![A-Za-z0-9]+$).+|HONE-(?:REPACK|PROPER|REAL|RERIP)$';
-- --- END op 1733
