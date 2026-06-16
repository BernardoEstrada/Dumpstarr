-- @operation: export
-- @entity: batch
-- @name: Added Adventure Time negation to X265
-- @exportedAt: 2026-06-16T20:37:34.842Z
-- @opIds: 1837, 1838, 1839, 1840, 1841, 1842, 1843, 1844, 1845, 1846, 1847, 1848, 1849

-- --- BEGIN op 1837 ( create regular_expression "Adventure Time" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Adventure Time', '(?i)^adventure[ ._-]+time[ ._-]+S08.*-(CtrlHD|EPSiLON|H3B|mSD-jT9t|NTb|PRESENT|RTN|SRS|TvR|W4F)\b', 'Matches releases for season 8 of the show Adventure Time from groups that do not follow the TVDB ordering.', NULL);

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Adventure Time', 'Banned');

insert into "tags" ("name") values ('Custom') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Adventure Time', 'Custom');
-- --- END op 1837

-- --- BEGIN op 1838 ( update regular_expression "Adventure Time" )
update "regular_expressions" set "description" = NULL where "name" = 'Adventure Time' and "description" = 'Matches releases for season 8 of the show Adventure Time from groups that do not follow the TVDB ordering.';
-- --- END op 1838

-- --- BEGIN op 1839 ( update regular_expression "Adventure Time" )
update "regular_expressions" set "pattern" = '\b(Adventure.Time)\b' where "name" = 'Adventure Time' and "pattern" = '(?i)^adventure[ ._-]+time[ ._-]+S08.*-(CtrlHD|EPSiLON|H3B|mSD-jT9t|NTb|PRESENT|RTN|SRS|TvR|W4F)\b';
-- --- END op 1839

-- --- BEGIN op 1840 ( update regular_expression "Adventure Time" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Adventure Time' AND tag_name = 'Banned';
-- --- END op 1840

-- --- BEGIN op 1841 ( update regular_expression "Adventure Time" )
update "regular_expressions" set "pattern" = '\b(Adventure[ ._-]+Time)\b' where "name" = 'Adventure Time' and "pattern" = '\b(Adventure.Time)\b';
-- --- END op 1841

-- --- BEGIN op 1842 ( update custom_format "x265 (HD)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('x265 (HD)', 'Adventure Time', 'release_title', 'sonarr', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('x265 (HD)', 'Adventure Time', 'Adventure Time');
-- --- END op 1842

-- --- BEGIN op 1843 ( create regular_expression "Ricky & Morty" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Ricky & Morty', '\b(Adventure[ ._-]+Time)\b', NULL, NULL);

insert into "tags" ("name") values ('Custom') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Ricky & Morty', 'Custom');
-- --- END op 1843

-- --- BEGIN op 1844 ( update regular_expression "Ricky & Morty" )
update "regular_expressions" set "pattern" = '\b(Rick[ ._-]+and[ ._-]+Morty)\b' where "name" = 'Ricky & Morty' and "pattern" = '\b(Adventure[ ._-]+Time)\b';
-- --- END op 1844

-- --- BEGIN op 1845 ( update regular_expression "Ricky and Morty" )
update "regular_expressions" set "name" = 'Ricky and Morty' where "name" = 'Ricky & Morty';
-- --- END op 1845

-- --- BEGIN op 1846 ( update custom_format "x265 (HD)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('x265 (HD)', 'Ricky and Morty', 'release_title', 'sonarr', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('x265 (HD)', 'Ricky and Morty', 'Ricky and Morty');
-- --- END op 1846

-- --- BEGIN op 1847 ( create regular_expression "Bob's Burgers" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Bob''s Burgers', '\b(Rick[ ._-]+and[ ._-]+Morty)\b', NULL, NULL);

insert into "tags" ("name") values ('Custom') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Bob''s Burgers', 'Custom');
-- --- END op 1847

-- --- BEGIN op 1848 ( update custom_format "x265 (HD)" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'x265 (HD)'
	  AND name = 'Ricky and Morty'
	  AND type = 'release_title'
	  AND arr_type = 'sonarr'
	  AND negate = 1
	  AND required = 1;
-- --- END op 1848

-- --- BEGIN op 1849 ( delete regular_expression "Ricky and Morty" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Ricky and Morty' AND tag_name = 'Custom';

delete from "regular_expressions" where "name" = 'Ricky and Morty';
-- --- END op 1849
