-- @operation: export
-- @entity: batch
-- @name: Added The Office Superfans S09 Banned Groups
-- @exportedAt: 2026-06-16T04:03:32.337Z
-- @opIds: 1816, 1817, 1818, 1819, 1820, 1821, 1822, 1823, 1824, 1825, 1826, 1827

-- --- BEGIN op 1816 ( create regular_expression "The Office Superfans S09 Banned Groups" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('The Office Superfans S09 Banned Groups', '(?i)^the[ ._-]+office[ ._-]+superfan[ ._-]+episodes.*-(CRFW|playWEB)\b', 'Negates certain groups that cause import/automation issues with The Office (US).', NULL);

insert into "tags" ("name") values ('Custom') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('The Office Superfans S09 Banned Groups', 'Custom');
-- --- END op 1816

-- --- BEGIN op 1817 ( update regular_expression "The Office Superfans S09 Banned Groups" )
update "regular_expressions" set "pattern" = '(?i)^the[ ._-]+office[ ._-]+superfan[ ._-]+episodes.*09.*-(FLUX)\b' where "name" = 'The Office Superfans S09 Banned Groups' and "pattern" = '(?i)^the[ ._-]+office[ ._-]+superfan[ ._-]+episodes.*-(CRFW|playWEB)\b';
-- --- END op 1817

-- --- BEGIN op 1818 ( update custom_format "Bad Source" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Source', 'The Office Superfans S09', 'release_title', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Source', 'The Office Superfans S09', 'The Office Superfans S09 Banned Groups');
-- --- END op 1818

-- --- BEGIN op 1819 ( create test_entity "The Office" )
insert into "test_entities" ("type", "tmdb_id", "title", "year", "poster_path") values ('series', 2316, 'The Office', 2005, '/7DJKHzAi83BmQrWLrYYOqcoKfhR.jpg');
-- --- END op 1819

-- --- BEGIN op 1820 ( create test_release "The.Office.US.S09E15.Couples.Discount.Extended.Cut" )
insert into "test_releases" ("entity_type", "entity_tmdb_id", "title", "size_bytes", "languages", "indexers", "flags") values ('series', 2316, 'The.Office.US.S09E15.Couples.Discount.Extended.Cut.1080p.AMZN.WEB-DL.DDP5.1.H.264-FLUX', 2576980378, '["English"]', '[]', '[]');
-- --- END op 1820

-- --- BEGIN op 1821 ( update regular_expression "The Office Superfans S09 Banned Groups" )
update "regular_expressions" set "pattern" = '⁠(?i)^the[ ._-]+office[ ._-]+us[ ._-]+s\d+e\d+.*(extended|superfan).*-(FLUX)\b⁠' where "name" = 'The Office Superfans S09 Banned Groups' and "pattern" = '(?i)^the[ ._-]+office[ ._-]+superfan[ ._-]+episodes.*09.*-(FLUX)\b';
-- --- END op 1821

-- --- BEGIN op 1822 ( update regular_expression "The Office Superfans S09 Banned Groups" )
update "regular_expressions" set "pattern" = '(?i)^the[ ._-]+office[ ._-]+s09e\d+.*(extended|superfan).*-(FLUX)\b⁠' where "name" = 'The Office Superfans S09 Banned Groups' and "pattern" = '⁠(?i)^the[ ._-]+office[ ._-]+us[ ._-]+s\d+e\d+.*(extended|superfan).*-(FLUX)\b⁠';
-- --- END op 1822

-- --- BEGIN op 1823 ( update regular_expression "The Office Superfans S09 Banned Groups" )
update "regular_expressions" set "pattern" = '(?i)^the[ ._-]+office[ ._-]+s09e\d+.*(extended|superfan).*?-(FLUX)\b⁠' where "name" = 'The Office Superfans S09 Banned Groups' and "pattern" = '(?i)^the[ ._-]+office[ ._-]+s09e\d+.*(extended|superfan).*-(FLUX)\b⁠';
-- --- END op 1823

-- --- BEGIN op 1824 ( update custom_format "Bad Source" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Bad Source'
	  AND name = 'The Office Superfans S09'
	  AND type = 'release_title'
	  AND arr_type = 'sonarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 1824

-- --- BEGIN op 1825 ( update regular_expression "The Office Superfans S09 Banned Groups" )
update "regular_expressions" set "pattern" = '\bThe[ .]Office[ .](?:US[ .])?S09E15[ .](?:.*[ .])?(?:Extended|Superfan)(?:[ .].*)?-FLUX\b' where "name" = 'The Office Superfans S09 Banned Groups' and "pattern" = '(?i)^the[ ._-]+office[ ._-]+s09e\d+.*(extended|superfan).*?-(FLUX)\b⁠';
-- --- END op 1825

-- --- BEGIN op 1826 ( update regular_expression "The Office Superfans S09 Banned Groups" )
update "regular_expressions" set "pattern" = '(?i)^the[ ._-]+office([ ._-]+us)?[ ._-]+s09.*(extended|superfan).*-FLUX\b' where "name" = 'The Office Superfans S09 Banned Groups' and "pattern" = '\bThe[ .]Office[ .](?:US[ .])?S09E15[ .](?:.*[ .])?(?:Extended|Superfan)(?:[ .].*)?-FLUX\b';
-- --- END op 1826

-- --- BEGIN op 1827 ( update custom_format "Bad Source" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Source', 'The Office Superfan S09', 'release_title', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Source', 'The Office Superfan S09', 'The Office Superfans S09 Banned Groups');
-- --- END op 1827
