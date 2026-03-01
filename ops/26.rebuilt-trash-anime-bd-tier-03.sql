-- @operation: export
-- @entity: batch
-- @name: Rebuilt TRaSH Anime BD Tier 03
-- @exportedAt: 2026-03-01T20:17:57.150Z
-- @opIds: 506, 507, 508, 509, 510, 511, 512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573

-- --- BEGIN op 506 ( update custom_format "Anime Tier 3" )
delete from "custom_format_conditions" where "custom_format_name" = 'Anime Tier 3' and "name" = 'TRaSH Anime Bluray Tier 3' and "type" = 'release_title' and "arr_type" = 'all' and "negate" = 0 and "required" = 1;
-- --- END op 506

-- --- BEGIN op 507 ( delete regular_expression "TRaSH Anime Bluray Tier 3" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'TRaSH Anime Bluray Tier 3' AND tag_name = 'Anime';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'TRaSH Anime Bluray Tier 3' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'TRaSH Anime Bluray Tier 3' and "pattern" = '(?i)(?:^\[|(?<=-)|(?<=\[))(?:AC|ASC|AssMix|Ayashii|CBT|CRUCiBLE|CTR|CyC|Dekinai|EXP|Flugel|Galator|GSK_kun|Headpatter|Holomux|IK|Kaizoku|Kametsu|KH|kuchikirukia|LazyRemux|MK|Mysteria|NAN0|Netaro|Pn8|Pookie|Quetzal|Rasetsu|Senjou|ShowY|WBDP|WSE|Yoghurt|YURI|ZOIO|ZR)(?:\]|\b|$)';
-- --- END op 507

-- --- BEGIN op 508 ( create regular_expression "ARC" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('ARC', '\[ARC\]|-ARC\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ARC', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ARC', 'Anime');
-- --- END op 508

-- --- BEGIN op 509 ( create regular_expression "BBT-RMX" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('BBT-RMX', '\b(BBT-RMX)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('BBT-RMX', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('BBT-RMX', 'Anime');
-- --- END op 509

-- --- BEGIN op 510 ( create regular_expression "cappybara" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('cappybara', '\[cappybara\]|-cappybara\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('cappybara', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('cappybara', 'Anime');
-- --- END op 510

-- --- BEGIN op 511 ( create regular_expression "ChucksMux" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('ChucksMux', '\b(ChucksMux)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ChucksMux', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ChucksMux', 'Anime');
-- --- END op 511

-- --- BEGIN op 512 ( create regular_expression "CRUCiBLE" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('CRUCiBLE', '\[CRUCiBLE\]|-CRUCiBLE\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('CRUCiBLE', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('CRUCiBLE', 'Anime');
-- --- END op 512

-- --- BEGIN op 513 ( create regular_expression "CUNNY" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('CUNNY', '\b(CUNNY)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('CUNNY', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('CUNNY', 'Anime');
-- --- END op 513

-- --- BEGIN op 514 ( create regular_expression "Cunnysseur" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Cunnysseur', '\b(Cunnysseur)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Cunnysseur', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Cunnysseur', 'Anime');
-- --- END op 514

-- --- BEGIN op 515 ( create regular_expression "Doc" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Doc', '\[Doc\]|-Doc\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Doc', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Doc', 'Anime');
-- --- END op 515

-- --- BEGIN op 516 ( create regular_expression "fig" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('fig', '\[fig\]|-fig\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('fig', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('fig', 'Anime');
-- --- END op 516

-- --- BEGIN op 517 ( create regular_expression "Headpatter" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Headpatter', '\[Headpatter\]|-Headpatter\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Headpatter', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Headpatter', 'Anime');
-- --- END op 517

-- --- BEGIN op 518 ( create regular_expression "Inka-Subs" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Inka-Subs', '\b(Inka-Subs)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Inka-Subs', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Inka-Subs', 'Anime');
-- --- END op 518

-- --- BEGIN op 519 ( create regular_expression "LaCroiX" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('LaCroiX', '\b(LaCroiX)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('LaCroiX', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('LaCroiX', 'Anime');
-- --- END op 519

-- --- BEGIN op 520 ( create regular_expression "Legion" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Legion', '\[Legion\]|-Legion\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Legion', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Legion', 'Anime');
-- --- END op 520

-- --- BEGIN op 521 ( create regular_expression "Mehul" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Mehul', '\[Mehul\]|-Mehul\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Mehul', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Mehul', 'Anime');
-- --- END op 521

-- --- BEGIN op 522 ( update regular_expression "MTBB" )
update "regular_expressions" set "pattern" = '\b(MTBB)\b' where "name" = 'MTBB' and "pattern" = '(?<=^|[\s.-])MTBB\b';
-- --- END op 522

-- --- BEGIN op 523 ( update regular_expression "Mysteria" )
update "regular_expressions" set "pattern" = '\[Mysteria\]|-Mysteria\b' where "name" = 'Mysteria' and "pattern" = '(?<=^|[\s.-])Mysteria\b';
-- --- END op 523

-- --- BEGIN op 524 ( update regular_expression "Netaro" )
update "regular_expressions" set "pattern" = '\b(Netaro)\b' where "name" = 'Netaro' and "pattern" = '(?<=^|[\s.-])Netaro\b';
-- --- END op 524

-- --- BEGIN op 525 ( create regular_expression "Noiy" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Noiy', '\b(Noiy)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Noiy', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Noiy', 'Anime');
-- --- END op 525

-- --- BEGIN op 526 ( create regular_expression "npz" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('npz', '\b(npz)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('npz', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('npz', 'Anime');
-- --- END op 526

-- --- BEGIN op 527 ( create regular_expression "NTRX" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('NTRX', '\b(NTRX)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('NTRX', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('NTRX', 'Anime');
-- --- END op 527

-- --- BEGIN op 528 ( update regular_expression "Okay-Subs" )
update "regular_expressions" set "pattern" = '\b(Okay-Subs)\b' where "name" = 'Okay-Subs' and "pattern" = '(?<=^|[\s.-])Okay-Subs\b';
-- --- END op 528

-- --- BEGIN op 529 ( create regular_expression "P9" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('P9', '\b(P9)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('P9', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('P9', 'Anime');
-- --- END op 529

-- --- BEGIN op 530 ( create regular_expression "RUDY" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('RUDY', '\[RUDY\]|-RUDY\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('RUDY', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('RUDY', 'Anime');
-- --- END op 530

-- --- BEGIN op 531 ( create regular_expression "RaiN" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('RaiN', '\[RaiN\]|-RaiN\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('RaiN', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('RaiN', 'Anime');
-- --- END op 531

-- --- BEGIN op 532 ( create regular_expression "RMX" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('RMX', '\b(RMX)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('RMX', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('RMX', 'Anime');
-- --- END op 532

-- --- BEGIN op 533 ( create regular_expression "Sekkon" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Sekkon', '\b(Sekkon)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Sekkon', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Sekkon', 'Anime');
-- --- END op 533

-- --- BEGIN op 534 ( create regular_expression "Serendipity" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Serendipity', '\[Serendipity\]|-Serendipity\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Serendipity', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Serendipity', 'Anime');
-- --- END op 534

-- --- BEGIN op 535 ( create regular_expression "sgt" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('sgt', '\[sgt\]|-sgt\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('sgt', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('sgt', 'Anime');
-- --- END op 535

-- --- BEGIN op 536 ( create regular_expression "SubsMix" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('SubsMix', '\b(SubsMix)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SubsMix', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SubsMix', 'Anime');
-- --- END op 536

-- --- BEGIN op 537 ( create regular_expression "uba" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('uba', '\[uba\]|-uba\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('uba', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('uba', 'Anime');
-- --- END op 537

-- --- BEGIN op 538 ( update custom_format "Anime BD Tier 3" )
update "custom_formats" set "name" = 'Anime BD Tier 3' where "name" = 'Anime Tier 3';
-- --- END op 538

-- --- BEGIN op 539 ( update quality_profile "Anime 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Anime BD Tier 3' where "quality_profile_name" = 'Anime 1080p' and "custom_format_name" = 'Anime Tier 3' and "arr_type" = 'all' and "score" = 1400;
-- --- END op 539

-- --- BEGIN op 540 ( update custom_format "Anime BD Tier 3" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 3', 'ARC', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 3', 'ARC', 'ARC');
-- --- END op 540

-- --- BEGIN op 541 ( update custom_format "Anime BD Tier 3" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 3', 'BBT-RMX', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 3', 'BBT-RMX', 'BBT-RMX');
-- --- END op 541

-- --- BEGIN op 542 ( update custom_format "Anime BD Tier 3" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 3', 'cappybara', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 3', 'cappybara', 'cappybara');
-- --- END op 542

-- --- BEGIN op 543 ( update custom_format "Anime BD Tier 3" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 3', 'ChucksMux', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 3', 'ChucksMux', 'ChucksMux');
-- --- END op 543

-- --- BEGIN op 544 ( update custom_format "Anime BD Tier 3" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 3', 'CRUCiBLE', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 3', 'CRUCiBLE', 'CRUCiBLE');
-- --- END op 544

-- --- BEGIN op 545 ( update custom_format "Anime BD Tier 3" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 3', 'CUNNY', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 3', 'CUNNY', 'CUNNY');
-- --- END op 545

-- --- BEGIN op 546 ( update custom_format "Anime BD Tier 3" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 3', 'Cunnysseur', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 3', 'Cunnysseur', 'Cunnysseur');
-- --- END op 546

-- --- BEGIN op 547 ( update custom_format "Anime BD Tier 3" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 3', 'Doc', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 3', 'Doc', 'Doc');
-- --- END op 547

-- --- BEGIN op 548 ( update custom_format "Anime BD Tier 3" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 3', 'fig', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 3', 'fig', 'fig');
-- --- END op 548

-- --- BEGIN op 549 ( update custom_format "Anime BD Tier 3" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 3', 'Headpatter', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 3', 'Headpatter', 'Headpatter');
-- --- END op 549

-- --- BEGIN op 550 ( update custom_format "Anime BD Tier 3" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 3', 'Inka-Subs', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 3', 'Inka-Subs', 'Inka-Subs');
-- --- END op 550

-- --- BEGIN op 551 ( update custom_format "Anime BD Tier 3" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 3', 'LaCroiX', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 3', 'LaCroiX', 'LaCroiX');
-- --- END op 551

-- --- BEGIN op 552 ( update custom_format "Anime BD Tier 3" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 3', 'Legion', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 3', 'Legion', 'Legion');
-- --- END op 552

-- --- BEGIN op 553 ( update custom_format "Anime BD Tier 3" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 3', 'Mehul', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 3', 'Mehul', 'Mehul');
-- --- END op 553

-- --- BEGIN op 554 ( update custom_format "Anime BD Tier 3" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 3', 'MTBB', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 3', 'MTBB', 'MTBB');
-- --- END op 554

-- --- BEGIN op 555 ( update custom_format "Anime BD Tier 3" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 3', 'Mysteria', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 3', 'Mysteria', 'Mysteria');
-- --- END op 555

-- --- BEGIN op 556 ( update custom_format "Anime BD Tier 3" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 3', 'Netaro', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 3', 'Netaro', 'Netaro');
-- --- END op 556

-- --- BEGIN op 557 ( update custom_format "Anime BD Tier 3" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 3', 'Noiy', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 3', 'Noiy', 'Noiy');
-- --- END op 557

-- --- BEGIN op 558 ( update custom_format "Anime BD Tier 3" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 3', 'npz', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 3', 'npz', 'npz');
-- --- END op 558

-- --- BEGIN op 559 ( update custom_format "Anime BD Tier 3" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 3', 'NTRX', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 3', 'NTRX', 'NTRX');
-- --- END op 559

-- --- BEGIN op 560 ( update custom_format "Anime BD Tier 3" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 3', 'Okay-Subs', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 3', 'Okay-Subs', 'Okay-Subs');
-- --- END op 560

-- --- BEGIN op 561 ( update custom_format "Anime BD Tier 3" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 3', 'P9', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 3', 'P9', 'P9');
-- --- END op 561

-- --- BEGIN op 562 ( update custom_format "Anime BD Tier 3" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 3', 'Bluray Remux', 'source', 'all', 0, 0);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('Anime BD Tier 3', 'Bluray Remux', 'bluray_raw');
-- --- END op 562

-- --- BEGIN op 563 ( update custom_format "Anime BD Tier 2" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 2', 'Bluray Remux', 'source', 'sonarr', 0, 0);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('Anime BD Tier 2', 'Bluray Remux', 'bluray_raw');
-- --- END op 563

-- --- BEGIN op 564 ( update custom_format "Anime BD Tier 3" )
UPDATE custom_format_conditions
SET arr_type = 'sonarr'
WHERE custom_format_name = 'Anime BD Tier 3'
  AND name = 'Bluray Remux'
  AND type = 'source'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 564

-- --- BEGIN op 565 ( update custom_format "Anime BD Tier 1" )
UPDATE custom_format_conditions
SET arr_type = 'sonarr'
WHERE custom_format_name = 'Anime BD Tier 1'
  AND name = 'Bluray Remux'
  AND type = 'source'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 565

-- --- BEGIN op 566 ( update custom_format "Anime BD Tier 3" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 3', 'RUDY', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 3', 'RUDY', 'RUDY');
-- --- END op 566

-- --- BEGIN op 567 ( update custom_format "Anime BD Tier 3" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 3', 'RaiN', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 3', 'RaiN', 'RaiN');
-- --- END op 567

-- --- BEGIN op 568 ( update custom_format "Anime BD Tier 3" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 3', 'RMX', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 3', 'RMX', 'RMX');
-- --- END op 568

-- --- BEGIN op 569 ( update custom_format "Anime BD Tier 3" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 3', 'Sekkon', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 3', 'Sekkon', 'Sekkon');
-- --- END op 569

-- --- BEGIN op 570 ( update custom_format "Anime BD Tier 3" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 3', 'Serendipity', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 3', 'Serendipity', 'Serendipity');
-- --- END op 570

-- --- BEGIN op 571 ( update custom_format "Anime BD Tier 3" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 3', 'sgt', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 3', 'sgt', 'sgt');
-- --- END op 571

-- --- BEGIN op 572 ( update custom_format "Anime BD Tier 3" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 3', 'SubsMix', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 3', 'SubsMix', 'SubsMix');
-- --- END op 572

-- --- BEGIN op 573 ( update custom_format "Anime BD Tier 3" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 3', 'uba', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 3', 'uba', 'uba');
-- --- END op 573
