-- @operation: export
-- @entity: batch
-- @name: Rebuilt TRaSH Anime BD Tier 02
-- @exportedAt: 2026-03-01T19:57:44.267Z
-- @opIds: 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502

-- --- BEGIN op 461 ( update custom_format "Anime BD Tier 2" )
update "custom_formats" set "name" = 'Anime BD Tier 2' where "name" = 'Anime Tier 2';
-- --- END op 461

-- --- BEGIN op 462 ( update quality_profile "Anime 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Anime BD Tier 2' where "quality_profile_name" = 'Anime 1080p' and "custom_format_name" = 'Anime Tier 2' and "arr_type" = 'radarr' and "score" = 0;

update "quality_profile_custom_formats" set "custom_format_name" = 'Anime BD Tier 2' where "quality_profile_name" = 'Anime 1080p' and "custom_format_name" = 'Anime Tier 2' and "arr_type" = 'sonarr' and "score" = 800;
-- --- END op 462

-- --- BEGIN op 463 ( update custom_format "Anime BD Tier 2" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Anime BD Tier 2'
	  AND name = 'TRaSH Anime Bluray Tier 2'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 1;
-- --- END op 463

-- --- BEGIN op 464 ( delete regular_expression "TRaSH Anime Bluray Tier 2" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'TRaSH Anime Bluray Tier 2' AND tag_name = 'Anime';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'TRaSH Anime Bluray Tier 2' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'TRaSH Anime Bluray Tier 2' and "pattern" = '(?i)(?:^\[|(?<=-)|(?<=\[))(?:0x539|Alt|ARC|Arid|aro|Asakura|Baws|BKC|Brrrrrrr|Chotab|Crow|CsS|CUNNY|Cunnysseur|D-Z0N3|Dae|Datte13|DemiHuman|Drag|FLFL|hydes|iKaos|JySzE|LostYears|Lulu|Matsya|MC|McBalls|Metal|Moxie|MTBB|Not-Vodes|Noyr|NSDAB|Okay-Subs|pog42|pyroneko|RAI|Reza|Shimatta|Smoke|Spirale|Thighs|UDF|Yuki)(?:\]|\b|$)';
-- --- END op 464

-- --- BEGIN op 465 ( create regular_expression "Aergia" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Aergia', '\[Aergia\]|-Aergia(?!-raws)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Aergia', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Aergia', 'Anime');
-- --- END op 465

-- --- BEGIN op 466 ( create regular_expression "Arg0" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Arg0', '\b(Arg0)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Arg0', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Arg0', 'Anime');
-- --- END op 466

-- --- BEGIN op 467 ( update regular_expression "Arid" )
update "regular_expressions" set "pattern" = '\[Arid\]|-Arid\b' where "name" = 'Arid' and "pattern" = '(?<=^|[\s.-])Arid\b';
-- --- END op 467

-- --- BEGIN op 468 ( create regular_expression "FateSucks" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('FateSucks', '\b(FateSucks)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('FateSucks', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('FateSucks', 'Anime');
-- --- END op 468

-- --- BEGIN op 469 ( create regular_expression "hydes" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('hydes', '\b(hydes)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('hydes', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('hydes', 'Anime');
-- --- END op 469

-- --- BEGIN op 470 ( update regular_expression "hchcsen" )
update "regular_expressions" set "pattern" = '\b(hchcsen)\b' where "name" = 'hchcsen' and "pattern" = '(?<=^|[\s.-])hchcsen\b';
-- --- END op 470

-- --- BEGIN op 471 ( create regular_expression "JOHNTiTOR" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('JOHNTiTOR', '\b(JOHNTiTOR)\b', NULL, NULL);
-- --- END op 471

-- --- BEGIN op 472 ( create regular_expression "JySzE" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('JySzE', '\b(JySzE)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('JySzE', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('JySzE', 'Anime');
-- --- END op 472

-- --- BEGIN op 473 ( create regular_expression "koala" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('koala', '\[koala\]|-koala\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('koala', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('koala', 'Anime');
-- --- END op 473

-- --- BEGIN op 474 ( create regular_expression "Kulot" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Kulot', '\b(Kulot)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Kulot', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Kulot', 'Anime');
-- --- END op 474

-- --- BEGIN op 475 ( create regular_expression "LostYears" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('LostYears', '\b(LostYears)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('LostYears', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('LostYears', 'Anime');
-- --- END op 475

-- --- BEGIN op 476 ( update regular_expression "Lulu" )
update "regular_expressions" set "pattern" = '\[Lulu\]|-Lulu\b' where "name" = 'Lulu' and "pattern" = '(?<=^|[\s.-])Lulu\b';
-- --- END op 476

-- --- BEGIN op 477 ( create regular_expression "Meakes" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Meakes', '\b(Meakes)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Meakes', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Meakes', 'Anime');
-- --- END op 477

-- --- BEGIN op 478 ( create regular_expression "Orphan" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Orphan', '\[Orphan\]|-Orphan\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Orphan', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Orphan', 'Anime');
-- --- END op 478

-- --- BEGIN op 479 ( create regular_expression "PMR" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('PMR', '^(?=.*\b(PMR)\b)(?=.*\b(Remux)\b)', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('PMR', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('PMR', 'Anime');
-- --- END op 479

-- --- BEGIN op 480 ( update regular_expression "Vodes" )
update "regular_expressions" set "pattern" = '\[Vodes\]|(?<!Not)-Vodes\b' where "name" = 'Vodes' and "pattern" = '(?<=^|[\s.-])Vodes\b';
-- --- END op 480

-- --- BEGIN op 481 ( create regular_expression "WAP" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('WAP', '\b(WAP)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('WAP', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('WAP', 'Anime');
-- --- END op 481

-- --- BEGIN op 482 ( update regular_expression "YURI" )
update "regular_expressions" set "pattern" = '\[YURI\]|-YURI\b' where "name" = 'YURI' and "pattern" = '(?<=^|[\s.-])YURI\b';
-- --- END op 482

-- --- BEGIN op 483 ( create regular_expression "ZeroBuild" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('ZeroBuild', '\b(ZeroBuild)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ZeroBuild', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ZeroBuild', 'Anime');
-- --- END op 483

-- --- BEGIN op 484 ( update custom_format "Anime BD Tier 2" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 2', 'Aergia', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 2', 'Aergia', 'Aergia');
-- --- END op 484

-- --- BEGIN op 485 ( update custom_format "Anime BD Tier 2" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 2', 'Arg0', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 2', 'Arg0', 'Arg0');
-- --- END op 485

-- --- BEGIN op 486 ( update custom_format "Anime BD Tier 2" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 2', 'Arid', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 2', 'Arid', 'Arid');
-- --- END op 486

-- --- BEGIN op 487 ( update custom_format "Anime BD Tier 2" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 2', 'FateSucks', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 2', 'FateSucks', 'FateSucks');
-- --- END op 487

-- --- BEGIN op 488 ( update custom_format "Anime BD Tier 2" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 2', 'hydes', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 2', 'hydes', 'hydes');
-- --- END op 488

-- --- BEGIN op 489 ( update custom_format "Anime BD Tier 2" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 2', 'hchcsen', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 2', 'hchcsen', 'hchcsen');
-- --- END op 489

-- --- BEGIN op 490 ( update custom_format "Anime BD Tier 2" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 2', 'JOHNTiTOR', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 2', 'JOHNTiTOR', 'JOHNTiTOR');
-- --- END op 490

-- --- BEGIN op 491 ( update custom_format "Anime BD Tier 2" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 2', 'JySzE', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 2', 'JySzE', 'JySzE');
-- --- END op 491

-- --- BEGIN op 492 ( update custom_format "Anime BD Tier 2" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 2', 'koala', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 2', 'koala', 'koala');
-- --- END op 492

-- --- BEGIN op 493 ( update custom_format "Anime BD Tier 2" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 2', 'Kulot', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 2', 'Kulot', 'Kulot');
-- --- END op 493

-- --- BEGIN op 494 ( update custom_format "Anime BD Tier 2" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 2', 'LostYears', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 2', 'LostYears', 'LostYears');
-- --- END op 494

-- --- BEGIN op 495 ( update custom_format "Anime BD Tier 2" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 2', 'Lulu', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 2', 'Lulu', 'Lulu');
-- --- END op 495

-- --- BEGIN op 496 ( update custom_format "Anime BD Tier 2" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 2', 'Meakes', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 2', 'Meakes', 'Meakes');
-- --- END op 496

-- --- BEGIN op 497 ( update custom_format "Anime BD Tier 2" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 2', 'Orphan', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 2', 'Orphan', 'Orphan');
-- --- END op 497

-- --- BEGIN op 498 ( update custom_format "Anime BD Tier 2" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 2', 'PMR', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 2', 'PMR', 'PMR');
-- --- END op 498

-- --- BEGIN op 499 ( update custom_format "Anime BD Tier 2" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 2', 'Vodes', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 2', 'Vodes', 'Vodes');
-- --- END op 499

-- --- BEGIN op 500 ( update custom_format "Anime BD Tier 2" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 2', 'WAP', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 2', 'WAP', 'WAP');
-- --- END op 500

-- --- BEGIN op 501 ( update custom_format "Anime BD Tier 2" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 2', 'YURI', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 2', 'YURI', 'YURI');
-- --- END op 501

-- --- BEGIN op 502 ( update custom_format "Anime BD Tier 2" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 2', 'ZeroBuild', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 2', 'ZeroBuild', 'ZeroBuild');
-- --- END op 502
