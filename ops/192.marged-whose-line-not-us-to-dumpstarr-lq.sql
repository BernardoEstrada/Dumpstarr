-- @operation: export
-- @entity: batch
-- @name: Marged Whose Line Not Us to Dumpstarr LQ
-- @exportedAt: 2026-04-02T23:41:43.614Z
-- @opIds: 2461, 2462, 2463, 2464, 2465, 2466, 2467, 2468

-- --- BEGIN op 2461 ( update regular_expression "Whose Line Not US Version" )
update "regular_expressions" set "name" = 'Whose Line Not US Version', "pattern" = '(?i)\bWhose[. _-]?Line[. _-]?Is[. _-]?It[. _-]?Anyway\b(?!(?:.*)(?:[\.\s\-(\[]US[\.\s\-)\]]|[\.\s\-]S(?:0[89]|[1-9]\d)E|\b(?:AMZN|(?:AMAZON)(?=\s*.(?:WEB-?DL|WEBRIP)))\b|\bCWS\b|\b(?:PCOK|(?:Peacock)(?=\s*.(?:WEB-?DL|WEBRIP)))\b|\b(?:HMAX|HBOM|(?:HBO[ ._-]?MAX)(?=\s*.(?:WEB-?DL|WEBRIP)))\b|\b(?:NF|Netflix)\b|\b(?:PMTP|Paramount Plus)\b|\(1998\)|S\d+E\d+\.\d{4}\.\d{2}\.\d{2}|(?:\.e\d{3}(?:$|[^a-z])|\(e\d{3}\))|(?:\d+x\d+[\s.]*\(?\d{3}|show\.\d{3}|-\d+x\d+-)|S\d+E\d+\.[A-Z][a-z]+\..*(?:HDTV|DVDRip))).*' where "name" = 'Whose Line - US Version' and "pattern" = '[\.\s\-(\[]US[\.\s\-)\]]|[\.\s\-]S(?:0[89]|[1-9]\d)E|\b(?:AMZN|(?:AMAZON)(?=\s*.(?:WEB-?DL|WEBRIP)))\b|\bCWS\b|\b(?:PCOK|(?:Peacock)(?=\s*.(?:WEB-?DL|WEBRIP)))\b|\b(?:HMAX|HBOM|(?:HBO[ ._-]?MAX)(?=\s*.(?:WEB-?DL|WEBRIP)))\b|\b(?:NF|Netflix)\b|\b(?:PMTP|Paramount Plus)\b|\(1998\)|S\d+E\d+\.\d{4}\.\d{2}\.\d{2}|(?:\.e\d{3}(?:$|[^a-z])|\(e\d{3}\))|(?:\d+x\d+[\s.]*\(?\d{3}|show\.\d{3}|-\d+x\d+-)|S\d+E\d+\.[A-Z][a-z]+\..*(?:HDTV|DVDRip)';
-- --- END op 2461

-- --- BEGIN op 2462 ( update custom_format "Whose Line (Not US Version)" )
update "condition_patterns" set "regular_expression_name" = 'Whose Line Not US Version' where "custom_format_name" = 'Whose Line (Not US Version)' and "condition_name" = 'US Version' and "regular_expression_name" = 'Whose Line - US Version';
-- --- END op 2462

-- --- BEGIN op 2463 ( update custom_format "Whose Line (Not US Version)" )
delete from "custom_format_conditions" where "custom_format_name" = 'Whose Line (Not US Version)' and "name" = 'Whose Line is it Anyway' and "type" = 'release_title' and "arr_type" = 'all' and "negate" = 0 and "required" = 1;
-- --- END op 2463

-- --- BEGIN op 2464 ( delete regular_expression "Whose Line Is It Anyway" )
delete from "regular_expressions" where "name" = 'Whose Line Is It Anyway' and "pattern" = 'Whose[. _-]?Line[. _-]?Is[. _-]?It[. _-]?Anyway';
-- --- END op 2464

-- --- BEGIN op 2465 ( update quality_profile "TV 1080p" )
delete from "quality_profile_custom_formats" where "quality_profile_name" = 'TV 1080p' and "custom_format_name" = 'Whose Line (Not US Version)' and "arr_type" = 'sonarr' and "score" = -10000;
-- --- END op 2465

-- --- BEGIN op 2466 ( update quality_profile "TV 2160p" )
delete from "quality_profile_custom_formats" where "quality_profile_name" = 'TV 2160p' and "custom_format_name" = 'Whose Line (Not US Version)' and "arr_type" = 'sonarr' and "score" = -10000;
-- --- END op 2466

-- --- BEGIN op 2467 ( delete custom_format "Whose Line (Not US Version)" )
delete from "custom_formats" where "name" = 'Whose Line (Not US Version)';
-- --- END op 2467

-- --- BEGIN op 2468 ( update custom_format "Dumpstarr LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dumpstarr LQ', 'Whose Line Not US Version', 'release_title', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dumpstarr LQ', 'Whose Line Not US Version', 'Whose Line Not US Version');
-- --- END op 2468
