-- @operation: export
-- @entity: batch
-- @name: Rebuilt TRaSH Anime BD Tier 01
-- @exportedAt: 2026-03-01T19:47:29.648Z
-- @opIds: 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459

-- --- BEGIN op 433 ( create regular_expression "DemiHuman" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('DemiHuman', '\b(DemiHuman)\b', 'Matches "DemiHuman when preceded by whitespace, a hyphen or dot', NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('DemiHuman', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('DemiHuman', 'Anime');
-- --- END op 433

-- --- BEGIN op 434 ( create regular_expression "FLE" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('FLE', '\b(FLE)\b', 'Matches "FLE" when preceded by whitespace, a hyphen or dot', NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('FLE', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('FLE', 'Anime');
-- --- END op 434

-- --- BEGIN op 435 ( update regular_expression "Flugel" )
update "regular_expressions" set "pattern" = '\b(Flugel)\b' where "name" = 'Flugel' and "pattern" = '(?<=^|[\s.-])Flugel\b';
-- --- END op 435

-- --- BEGIN op 436 ( update regular_expression "LYS1TH3A" )
update "regular_expressions" set "pattern" = '\b(LYS1TH3A)\b' where "name" = 'LYS1TH3A' and "pattern" = '(?<=^|[\s.-])LYS1TH3A\b';
-- --- END op 436

-- --- BEGIN op 437 ( create regular_expression "Moxie" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Moxie', '\[Moxie\]|-Moxie\b', 'Matches "Moxie" when preceded by whitespace, a hyphen or dot', NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Moxie', 'Release Group');
-- --- END op 437

-- --- BEGIN op 438 ( update regular_expression "Moxie" )
update "regular_expressions" set "description" = NULL where "name" = 'Moxie' and "description" = 'Matches "Moxie" when preceded by whitespace, a hyphen or dot';

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name)
SELECT name, 'Anime' FROM regular_expressions WHERE name IN ('Moxie') LIMIT 1;
-- --- END op 438

-- --- BEGIN op 439 ( update regular_expression "DemiHuman" )
update "regular_expressions" set "description" = NULL where "name" = 'DemiHuman' and "description" = 'Matches "DemiHuman when preceded by whitespace, a hyphen or dot';
-- --- END op 439

-- --- BEGIN op 440 ( update regular_expression "FLE" )
update "regular_expressions" set "description" = NULL where "name" = 'FLE' and "description" = 'Matches "FLE" when preceded by whitespace, a hyphen or dot';
-- --- END op 440

-- --- BEGIN op 441 ( update regular_expression "NAN0" )
update "regular_expressions" set "pattern" = '(?<=remux).*\b(NAN0)\b' where "name" = 'NAN0' and "pattern" = '(?<=^|[\s.-])NAN0\b';

DELETE FROM regular_expression_tags WHERE regular_expression_name IN ('NAN0') AND tag_name = 'Bluray';

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name)
SELECT name, 'Anime' FROM regular_expressions WHERE name IN ('NAN0') LIMIT 1;
-- --- END op 441

-- --- BEGIN op 442 ( update regular_expression "sam" )
update "regular_expressions" set "pattern" = '\[sam\]|-sam\b' where "name" = 'sam' and "pattern" = '(?<=^|[\s.-])sam\b';
-- --- END op 442

-- --- BEGIN op 443 ( update regular_expression "smol" )
update "regular_expressions" set "pattern" = '\[smol\]|-smol\b' where "name" = 'smol' and "pattern" = '(?<=^|[\s.-])smol\b';
-- --- END op 443

-- --- BEGIN op 444 ( create regular_expression "SoM" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('SoM', '\[SoM\]|-SoM\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SoM', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SoM', 'Anime');
-- --- END op 444

-- --- BEGIN op 445 ( update regular_expression "ZR" )
update "regular_expressions" set "pattern" = '\b(ZR)\b|-ZR-' where "name" = 'ZR' and "pattern" = '(?<=^|[\s.-])ZR\b';
-- --- END op 445

-- --- BEGIN op 446 ( update custom_format "Anime BD Tier 1" )
update "custom_formats" set "name" = 'Anime BD Tier 1' where "name" = 'Anime Tier 1';
-- --- END op 446

-- --- BEGIN op 447 ( update quality_profile "Anime 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Anime BD Tier 1' where "quality_profile_name" = 'Anime 1080p' and "custom_format_name" = 'Anime Tier 1' and "arr_type" = 'all' and "score" = 1500;
-- --- END op 447

-- --- BEGIN op 448 ( update custom_format "Anime BD Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 1', 'Bluray Remux', 'source', 'all', 0, 0);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('Anime BD Tier 1', 'Bluray Remux', 'bluray_raw');
-- --- END op 448

-- --- BEGIN op 449 ( update custom_format "Anime BD Tier 1" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Anime BD Tier 1'
	  AND name = 'TRaSH Anime Bluray Tier 1'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 1;
-- --- END op 449

-- --- BEGIN op 450 ( update custom_format "Anime BD Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 1', 'DemiHuman', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 1', 'DemiHuman', 'DemiHuman');
-- --- END op 450

-- --- BEGIN op 451 ( update custom_format "Anime BD Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 1', 'FLE', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 1', 'FLE', 'FLE');
-- --- END op 451

-- --- BEGIN op 452 ( update custom_format "Anime BD Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 1', 'Flugel', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 1', 'Flugel', 'Flugel');
-- --- END op 452

-- --- BEGIN op 453 ( update custom_format "Anime BD Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 1', 'LYS1TH3A', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 1', 'LYS1TH3A', 'LYS1TH3A');
-- --- END op 453

-- --- BEGIN op 454 ( update custom_format "Anime BD Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 1', 'Moxie', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 1', 'Moxie', 'Moxie');
-- --- END op 454

-- --- BEGIN op 455 ( update custom_format "Anime BD Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 1', 'NAN0', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 1', 'NAN0', 'NAN0');
-- --- END op 455

-- --- BEGIN op 456 ( update custom_format "Anime BD Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 1', 'sam', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 1', 'sam', 'sam');
-- --- END op 456

-- --- BEGIN op 457 ( update custom_format "Anime BD Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 1', 'SoM', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 1', 'SoM', 'SoM');
-- --- END op 457

-- --- BEGIN op 458 ( update custom_format "Anime BD Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 1', 'ZR', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 1', 'ZR', 'ZR');
-- --- END op 458

-- --- BEGIN op 459 ( delete regular_expression "TRaSH Anime Bluray Tier 1" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'TRaSH Anime Bluray Tier 1' AND tag_name = 'Anime';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'TRaSH Anime Bluray Tier 1' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'TRaSH Anime Bluray Tier 1' and "pattern" = '(?i)(?:^\[|(?<=-)|(?<=\[))(?:Aergia|Arg0|Legion|LYS1TH3A|OZR|sam|SCY|smol|SoM|Vanilla|Vodes|ZeroBuild)(?:\]|\b|$)';
-- --- END op 459
