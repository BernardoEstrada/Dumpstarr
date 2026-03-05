-- @operation: export
-- @entity: batch
-- @name: HBO/HOB Max/Max Fix
-- @exportedAt: 2026-03-05T00:18:04.467Z
-- @opIds: 2325, 2326, 2327, 2328, 2329, 2330, 2331, 2332, 2333, 2334, 2335, 2336, 2337, 2338

-- --- BEGIN op 2325 ( update custom_format "HMAX" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'HMAX'
	  AND name = 'HBO Max Rename'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2325

-- --- BEGIN op 2326 ( update regular_expression "HBO Max" )
update "regular_expressions" set "pattern" = '\b(HMAX|HBOM)\b|\bHBO[ ._-]?MAX[ ._-]WEB[ ._-]?(DL|RIP)\b' where "name" = 'HBO Max' and "pattern" = '\b(hmax|hbom|hbo[ ._-]?max)\b(?=[ ._-]web[ ._-]?(dl|rip)\b)';
-- --- END op 2326

-- --- BEGIN op 2327 ( delete regular_expression "HBO Max Rename" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'HBO Max Rename' AND tag_name = 'Streaming Service';

delete from "regular_expressions" where "name" = 'HBO Max Rename' and "pattern" = '\[(HMAX)\b|\b(HMAX)\]';
-- --- END op 2327

-- --- BEGIN op 2328 ( create test_entity "Friends" )
insert into "test_entities" ("type", "tmdb_id", "title", "year", "poster_path") values ('series', 1668, 'Friends', 1994, '/2koX1xLkpTQM4IZebYvKysFW1Nh.jpg');
-- --- END op 2328

-- --- BEGIN op 2329 ( create test_release "Friends.S01E12.The.One.with.the.Dozen.Lasagnas.108" )
insert into "test_releases" ("entity_type", "entity_tmdb_id", "title", "size_bytes", "languages", "indexers", "flags") values ('series', 1668, 'Friends.S01E12.The.One.with.the.Dozen.Lasagnas.1080p.HMAX.WEB-DL.DDP5.1.H.264-Kitsune', NULL, '[]', '[]', '[]');
-- --- END op 2329

-- --- BEGIN op 2330 ( create regular_expression "HBO Max Rename" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('HBO Max Rename', '\[(MAX)\b|\b(MAX)\]', 'Max, formerly (and in some regions still) known as HBO Max, is an American subscription video on-demand over-the-top streaming service. The platform offers content from the libraries of Warner Bros., Discovery, HBO, CNN, Cartoon Network, Adult Swim, Animal Planet, TBS, TNT, Eurosport, and their related brands.', NULL);

insert into "tags" ("name") values ('Streaming Service') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('HBO Max Rename', 'Streaming Service');

insert into "tags" ("name") values ('WEB-DL') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('HBO Max Rename', 'WEB-DL');
-- --- END op 2330

-- --- BEGIN op 2331 ( update regular_expression "HBO Max Rename" )
update "regular_expressions" set "pattern" = '\[(HMAX)\b|\b(HMAX)\]' where "name" = 'HBO Max Rename' and "pattern" = '\[(MAX)\b|\b(MAX)\]';
-- --- END op 2331

-- --- BEGIN op 2332 ( update custom_format "HMAX" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HMAX', 'HMAX Rename', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HMAX', 'HMAX Rename', 'HBO Max Rename');
-- --- END op 2332

-- --- BEGIN op 2333 ( create regular_expression "HBO" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('HBO', '\b(hbo)(?![ ._-]max)\b(?=[ ._-]web[ ._-]?(dl|rip)\b)', 'Home Box Office (HBO) is an American pay television network, which is the flagship property of namesake parent-subsidiary Home Box Office, Inc., itself a unit owned by Warner Bros. Discovery. The overall Home Box Office business unit is based at Warner Bros. Programming featured on the network consists primarily of theatrically released motion pictures and original television programs as well as made-for-cable movies, documentaries, occasional comedy, and concert specials, and periodic interstitial programs (consisting of short films and making-of documentaries).', NULL);

insert into "tags" ("name") values ('Streaming Service') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('HBO', 'Streaming Service');
-- --- END op 2333

-- --- BEGIN op 2334 ( create regular_expression "HBO Rename" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('HBO Rename', '\[(HBO)\b|\b(HBO)\]', 'Home Box Office (HBO) is an American pay television network, which is the flagship property of namesake parent-subsidiary Home Box Office, Inc., itself a unit owned by Warner Bros. Discovery. The overall Home Box Office business unit is based at Warner Bros. Programming featured on the network consists primarily of theatrically released motion pictures and original television programs as well as made-for-cable movies, documentaries, occasional comedy, and concert specials, and periodic interstitial programs (consisting of short films and making-of documentaries).', NULL);

insert into "tags" ("name") values ('Streaming Service') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('HBO Rename', 'Streaming Service');
-- --- END op 2334

-- --- BEGIN op 2335 ( update custom_format "HBO" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'HBO'
	  AND name = 'HMAX'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 1;
-- --- END op 2335

-- --- BEGIN op 2336 ( update custom_format "HBO" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HBO', 'HBO', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HBO', 'HBO', 'HBO');
-- --- END op 2336

-- --- BEGIN op 2337 ( update custom_format "HBO" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HBO', 'HBO Rename', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HBO', 'HBO Rename', 'HBO Rename');
-- --- END op 2337

-- --- BEGIN op 2338 ( update regular_expression "HBO Max" )
update "regular_expressions" set "pattern" = '\b(hmax|hbom|hbo[ ._-]?max)\b(?=[ ._-]web[ ._-]?(dl|rip)\b)' where "name" = 'HBO Max' and "pattern" = '\b(HMAX|HBOM)\b|\bHBO[ ._-]?MAX[ ._-]WEB[ ._-]?(DL|RIP)\b';
-- --- END op 2338
