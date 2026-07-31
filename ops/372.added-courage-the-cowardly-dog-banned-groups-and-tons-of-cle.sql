-- @operation: export
-- @entity: batch
-- @name: Added Courage the Cowardly Dog Banned Groups and TONS of Cleanup
-- @exportedAt: 2026-07-31T16:01:29.300Z
-- @opIds: 4369, 4370, 4371, 4372, 4373, 4374, 4375, 4376, 4377, 4378, 4379, 4380, 4381, 4382, 4383, 4384, 4385, 4386, 4387, 4388, 4389, 4390, 4391, 4392, 4393, 4394, 4395, 4396, 4397, 4398, 4399, 4400, 4401, 4402, 4403, 4404, 4405, 4406, 4407, 4408, 4409, 4410, 4411, 4412, 4413, 4414, 4415, 4416, 4417, 4418

-- --- BEGIN op 4369 ( create regular_expression "ReiDoBregaBR" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('ReiDoBregaBR', '^(ReiDoBregaBR)$', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ReiDoBregaBR', 'Release Group');
-- --- END op 4369

-- --- BEGIN op 4370 ( update custom_format "Dumpstarr LQ Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dumpstarr LQ Groups', 'ReiDoBregaBR', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dumpstarr LQ Groups', 'ReiDoBregaBR', 'ReiDoBregaBR');
-- --- END op 4370

-- --- BEGIN op 4371 ( update custom_format "Dumpstarr LQ Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dumpstarr LQ Groups', 'FIEND', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dumpstarr LQ Groups', 'FIEND', 'FIEND');
-- --- END op 4371

-- --- BEGIN op 4372 ( update custom_format "Dumpstarr LQ Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dumpstarr LQ Groups', 'GGEZ', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dumpstarr LQ Groups', 'GGEZ', 'GGEZ');
-- --- END op 4372

-- --- BEGIN op 4373 ( update custom_format "Dumpstarr LQ Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dumpstarr LQ Groups', 'T3KASHi', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dumpstarr LQ Groups', 'T3KASHi', 'T3KASHi');
-- --- END op 4373

-- --- BEGIN op 4374 ( update custom_format "Dumpstarr LQ Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dumpstarr LQ Groups', 'WADU', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dumpstarr LQ Groups', 'WADU', 'WADU');
-- --- END op 4374

-- --- BEGIN op 4375 ( delete custom_format "Dumpstarr LQ Groups" )
DELETE FROM custom_format_tests
WHERE custom_format_name = 'Dumpstarr LQ Groups'
  AND title = 'Scrubs.S01E15.My.Bed.Banter.Beyond.Upscale.Hybrid.1080p.WEBRip.DD2.0.H.264-DEADBADUGLY'
  AND type = 'series'
  AND should_match = 1
  AND description IS NULL;
-- --- END op 4375

-- --- BEGIN op 4376 ( create regular_expression "SKYFiRE" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('SKYFiRE', '^(SKYFiRE)$', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SKYFiRE', 'Release Group');
-- --- END op 4376

-- --- BEGIN op 4377 ( update custom_format "Dumpstarr LQ Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dumpstarr LQ Groups', 'SKYFiRE', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dumpstarr LQ Groups', 'SKYFiRE', 'SKYFiRE');
-- --- END op 4377

-- --- BEGIN op 4378 ( update custom_format "Dumpstarr LQ Title" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dumpstarr LQ Title', 'Asenshi-MTBB', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dumpstarr LQ Title', 'Asenshi-MTBB', 'Asenshi-MTBB');
-- --- END op 4378

-- --- BEGIN op 4379 ( update custom_format "Dumpstarr LQ Title" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dumpstarr LQ Title', 'MCR', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dumpstarr LQ Title', 'MCR', 'MCR');
-- --- END op 4379

-- --- BEGIN op 4380 ( update custom_format "Dumpstarr LQ Title" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dumpstarr LQ Title', 'Reza', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dumpstarr LQ Title', 'Reza', 'Reza');
-- --- END op 4380

-- --- BEGIN op 4381 ( update custom_format "Dumpstarr LQ Title" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dumpstarr LQ Title', 'SEV', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dumpstarr LQ Title', 'SEV', 'SEV');
-- --- END op 4381

-- --- BEGIN op 4382 ( update custom_format "Dumpstarr LQ Title" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dumpstarr LQ Title', 'Tsundere-Raws', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dumpstarr LQ Title', 'Tsundere-Raws', 'Tsundere-Raws');
-- --- END op 4382

-- --- BEGIN op 4383 ( update custom_format "Dumpstarr LQ Title" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dumpstarr LQ Title', 'VARYG', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dumpstarr LQ Title', 'VARYG', 'VARYG');
-- --- END op 4383

-- --- BEGIN op 4384 ( update quality_profile "Anime 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Anime 1080p'
  AND custom_format_name = 'Dumpstarr LQ Groups (Automation)'
  AND arr_type = 'radarr'
  AND score = -100;
-- --- END op 4384

-- --- BEGIN op 4385 ( update quality_profile "Anime 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Anime 1080p'
  AND custom_format_name = 'Dumpstarr LQ Groups (Automation)'
  AND arr_type = 'sonarr'
  AND score = -100;
-- --- END op 4385

-- --- BEGIN op 4386 ( update quality_profile "Anime 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Anime 1080p'
  AND custom_format_name = 'Dumpstarr LQ Title (Automation)'
  AND arr_type = 'radarr'
  AND score = -100;
-- --- END op 4386

-- --- BEGIN op 4387 ( update quality_profile "Anime 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Anime 1080p'
  AND custom_format_name = 'Dumpstarr LQ Title (Automation)'
  AND arr_type = 'sonarr'
  AND score = -100;
-- --- END op 4387

-- --- BEGIN op 4388 ( update quality_profile "LQ 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'LQ 1080p'
  AND custom_format_name = 'Dumpstarr LQ Groups (Automation)'
  AND arr_type = 'radarr'
  AND score = -10;
-- --- END op 4388

-- --- BEGIN op 4389 ( update quality_profile "LQ 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'LQ 1080p'
  AND custom_format_name = 'Dumpstarr LQ Title (Automation)'
  AND arr_type = 'radarr'
  AND score = -10;
-- --- END op 4389

-- --- BEGIN op 4390 ( update quality_profile "LQ 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'LQ 1080p'
  AND custom_format_name = 'Dumpstarr LQ Title (Automation)'
  AND arr_type = 'sonarr'
  AND score = -10;
-- --- END op 4390

-- --- BEGIN op 4391 ( update quality_profile "Movies 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p'
  AND custom_format_name = 'Dumpstarr LQ Groups (Automation)'
  AND arr_type = 'radarr'
  AND score = -500;
-- --- END op 4391

-- --- BEGIN op 4392 ( update quality_profile "Movies 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p'
  AND custom_format_name = 'Dumpstarr LQ Title (Automation)'
  AND arr_type = 'radarr'
  AND score = -500;
-- --- END op 4392

-- --- BEGIN op 4393 ( update quality_profile "Movies 1080p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND custom_format_name = 'Dumpstarr LQ Groups (Automation)'
  AND arr_type = 'radarr'
  AND score = -1000;
-- --- END op 4393

-- --- BEGIN op 4394 ( update quality_profile "Movies 1080p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND custom_format_name = 'Dumpstarr LQ Title (Automation)'
  AND arr_type = 'radarr'
  AND score = -500;
-- --- END op 4394

-- --- BEGIN op 4395 ( update quality_profile "Movies 2160p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p'
  AND custom_format_name = 'Dumpstarr LQ Groups (Automation)'
  AND arr_type = 'radarr'
  AND score = -1000;
-- --- END op 4395

-- --- BEGIN op 4396 ( update quality_profile "Movies 2160p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p'
  AND custom_format_name = 'Dumpstarr LQ Title (Automation)'
  AND arr_type = 'radarr'
  AND score = -1000;
-- --- END op 4396

-- --- BEGIN op 4397 ( update quality_profile "Movies 2160p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'Dumpstarr LQ Groups (Automation)'
  AND arr_type = 'radarr'
  AND score = -1000;
-- --- END op 4397

-- --- BEGIN op 4398 ( update quality_profile "Movies 2160p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'Dumpstarr LQ Title (Automation)'
  AND arr_type = 'radarr'
  AND score = -500;
-- --- END op 4398

-- --- BEGIN op 4399 ( update quality_profile "TV 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 1080p'
  AND custom_format_name = 'Dumpstarr LQ Groups (Automation)'
  AND arr_type = 'sonarr'
  AND score = -1000;
-- --- END op 4399

-- --- BEGIN op 4400 ( update quality_profile "TV 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 1080p'
  AND custom_format_name = 'Dumpstarr LQ Title (Automation)'
  AND arr_type = 'sonarr'
  AND score = -1000;
-- --- END op 4400

-- --- BEGIN op 4401 ( update quality_profile "TV 2160p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 2160p'
  AND custom_format_name = 'Dumpstarr LQ Groups (Automation)'
  AND arr_type = 'sonarr'
  AND score = -1000;
-- --- END op 4401

-- --- BEGIN op 4402 ( update quality_profile "TV 2160p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 2160p'
  AND custom_format_name = 'Dumpstarr LQ Title (Automation)'
  AND arr_type = 'sonarr'
  AND score = -1000;
-- --- END op 4402

-- --- BEGIN op 4403 ( create regular_expression "Reaperza" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Reaperza', '^(SKYFiRE)$', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Reaperza', 'Release Group');
-- --- END op 4403

-- --- BEGIN op 4404 ( update regular_expression "Reaperza" )
update "regular_expressions" set "pattern" = '^(Reaperza)$' where "name" = 'Reaperza' and "pattern" = '^(SKYFiRE)$';
-- --- END op 4404

-- --- BEGIN op 4405 ( delete custom_format "Dumpstarr LQ Groups (Automation)" )
delete from "custom_formats" where "name" = 'Dumpstarr LQ Groups (Automation)';
-- --- END op 4405

-- --- BEGIN op 4406 ( delete custom_format "Dumpstarr LQ Title (Automation)" )
delete from "custom_formats" where "name" = 'Dumpstarr LQ Title (Automation)';
-- --- END op 4406

-- --- BEGIN op 4407 ( update custom_format "Dumpstarr LQ Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dumpstarr LQ Groups', 'Reaperza', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dumpstarr LQ Groups', 'Reaperza', 'Reaperza');
-- --- END op 4407

-- --- BEGIN op 4408 ( create regular_expression "Courage the Cowardly Dog" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Courage the Cowardly Dog', '(?i)^phineas[ ._-]+and[ ._-]+ferb.*-(KAiZEN|PHOENiX)\b', 'Matches releases for the show Phineas and Ferb from groups that do not follow the TVDB ordering.', NULL);

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Courage the Cowardly Dog', 'Banned');

insert into "tags" ("name") values ('Custom') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Courage the Cowardly Dog', 'Custom');
-- --- END op 4408

-- --- BEGIN op 4409 ( update regular_expression "Courage the Cowardly Dog" )
update "regular_expressions" set "pattern" = '(?i)^courage[ ._-]+the[ ._-]+cowardly[ ._-]+dog.*-(mSD|Reaperza|SKYFiRE)\b' where "name" = 'Courage the Cowardly Dog' and "pattern" = '(?i)^phineas[ ._-]+and[ ._-]+ferb.*-(KAiZEN|PHOENiX)\b';
-- --- END op 4409

-- --- BEGIN op 4410 ( update regular_expression "Courage the Cowardly Dog Banned Groups" )
update "regular_expressions" set "name" = 'Courage the Cowardly Dog Banned Groups' where "name" = 'Courage the Cowardly Dog';
-- --- END op 4410

-- --- BEGIN op 4411 ( update custom_format "Bad Source" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Source', 'Courage the Cowardly Dog', 'release_title', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Source', 'Courage the Cowardly Dog', 'Courage the Cowardly Dog Banned Groups');
-- --- END op 4411

-- --- BEGIN op 4412 ( update custom_format "Dumpstarr LQ Groups" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Dumpstarr LQ Groups'
	  AND name = 'Reaperza'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 4412

-- --- BEGIN op 4413 ( update custom_format "Dumpstarr LQ Groups" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Dumpstarr LQ Groups'
	  AND name = 'ReiDoBregaBR'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 4413

-- --- BEGIN op 4414 ( update custom_format "Dumpstarr LQ Groups" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Dumpstarr LQ Groups'
	  AND name = 'SKYFiRE'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 4414

-- --- BEGIN op 4415 ( update regular_expression "Courage the Cowardly Dog Banned Groups" )
update "regular_expressions" set "pattern" = '(?i)^courage[ ._-]+the[ ._-]+cowardly[ ._-]+dog.*-(mSD|Reaperza|ReiDoBregaBR|SKYFiRE)\b' where "name" = 'Courage the Cowardly Dog Banned Groups' and "pattern" = '(?i)^courage[ ._-]+the[ ._-]+cowardly[ ._-]+dog.*-(mSD|Reaperza|SKYFiRE)\b';
-- --- END op 4415

-- --- BEGIN op 4416 ( update quality_profile "LQ 1080p" )
update "quality_profiles" set "description" = '- This profile is for **SIDCA** (Sh*t I Don''t Care About). The primary tier and LQ groups are not scored to allow "low quality" releases. For example, user requests "Keeping Up with the Kardashians" and you would prefer to save as much storage space as humanly possible so this user can watch this "show".
- You can expect to grab **MeGusta** or **iVy** releases 99% of the time.
- AV1 and x265 codecs are allowed.
- This profile works great on animated series' where "name" = 'LQ 1080p' and "description" = '- This profile is for **SIDCA** (Sh*t I Don''t Care About). The primary tier and LQ groups are not scored to allow "low quality" releases. For example, user requests "Keeping Up with the Kardashians" and you would prefer to save as much storage space as humanly possible so this user can watch this "show".
- You can expect to grab **MeGusta** or **iVy** releases 99% of the time.
- AV1 and x265 codecs are allowed.';
-- --- END op 4416

-- --- BEGIN op 4417 ( update quality_profile "LQ 1080p" )
update "quality_profiles" set "description" = '- This profile is for **SIDCA** (Sh*t I Don''t Care About). The primary tier and LQ groups are not scored to allow "low quality" releases. For example, user requests "Keeping Up with the Kardashians" and you would prefer to save as much storage space as humanly possible so this user can watch this "show".
- You can expect to grab **MeGusta** or **iVy** releases 99% of the time.
- AV1 and x265 codecs are allowed.
- This profile works great on animated series.' where "name" = 'LQ 1080p' and "description" = '- This profile is for **SIDCA** (Sh*t I Don''t Care About). The primary tier and LQ groups are not scored to allow "low quality" releases. For example, user requests "Keeping Up with the Kardashians" and you would prefer to save as much storage space as humanly possible so this user can watch this "show".
- You can expect to grab **MeGusta** or **iVy** releases 99% of the time.
- AV1 and x265 codecs are allowed.
- This profile works great on animated series';
-- --- END op 4417

-- --- BEGIN op 4418 ( update quality_profile "LQ 1080p" )
update "quality_profiles" set "description" = '- This profile is for **SIDCA** (Sh*t I Don''t Care About). The primary tier and LQ groups are not scored to allow "low quality" releases. For example, user requests "Keeping Up with the Kardashians" and you would prefer to save as much storage space as humanly possible so this user can watch this "show". This profile works great on animated series.
- You can expect to grab **MeGusta** or **iVy** releases 99% of the time.
- AV1 and x265 codecs are allowed.' where "name" = 'LQ 1080p' and "description" = '- This profile is for **SIDCA** (Sh*t I Don''t Care About). The primary tier and LQ groups are not scored to allow "low quality" releases. For example, user requests "Keeping Up with the Kardashians" and you would prefer to save as much storage space as humanly possible so this user can watch this "show".
- You can expect to grab **MeGusta** or **iVy** releases 99% of the time.
- AV1 and x265 codecs are allowed.
- This profile works great on animated series.';
-- --- END op 4418
