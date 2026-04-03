-- @operation: export
-- @entity: batch
-- @name: More Scrubs cleanup
-- @exportedAt: 2026-04-03T15:41:00.712Z
-- @opIds: 2505, 2506, 2507, 2508, 2509, 2510

-- --- BEGIN op 2505 ( update quality_profile "TV 1080p" )
delete from "quality_profile_custom_formats" where "quality_profile_name" = 'TV 1080p' and "custom_format_name" = 'Scrubs 2001 Banned Title' and "arr_type" = 'sonarr' and "score" = -10000;
-- --- END op 2505

-- --- BEGIN op 2506 ( update quality_profile "TV 2160p" )
delete from "quality_profile_custom_formats" where "quality_profile_name" = 'TV 2160p' and "custom_format_name" = 'Scrubs 2001 Banned Title' and "arr_type" = 'sonarr' and "score" = -10000;
-- --- END op 2506

-- --- BEGIN op 2507 ( delete custom_format "Scrubs 2001 Banned Title" )
delete from "custom_formats" where "name" = 'Scrubs 2001 Banned Title';
-- --- END op 2507

-- --- BEGIN op 2508 ( delete regular_expression "Scrubs 2001" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Scrubs 2001' AND tag_name = 'Custom';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Scrubs 2001' AND tag_name = 'Scrubs';

delete from "regular_expressions" where "name" = 'Scrubs 2001' and "pattern" = '\bScrubs\b(?!.*2026)';
-- --- END op 2508

-- --- BEGIN op 2509 ( delete regular_expression "Scrubs 2001 Banned Title" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Scrubs 2001 Banned Title' AND tag_name = 'Custom';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Scrubs 2001 Banned Title' AND tag_name = 'Scrubs';

delete from "regular_expressions" where "name" = 'Scrubs 2001 Banned Title' and "pattern" = '\bBonus\.(?:\w+\.?)+';
-- --- END op 2509

-- --- BEGIN op 2510 ( update regular_expression "Scrubs 2001 Approved Groups" )
insert into "tags" ("name") values ('Custom') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name)
SELECT name, 'Custom' FROM regular_expressions WHERE name IN ('Scrubs 2001 Approved Groups') LIMIT 1;

insert into "tags" ("name") values ('Scrubs') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name)
SELECT name, 'Scrubs' FROM regular_expressions WHERE name IN ('Scrubs 2001 Approved Groups') LIMIT 1;
-- --- END op 2510
