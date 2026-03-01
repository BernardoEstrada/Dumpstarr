-- @operation: export
-- @entity: batch
-- @name: Rebuilt TRaSH Anime BD Tier 04
-- @exportedAt: 2026-03-01T20:37:11.900Z
-- @opIds: 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654

-- --- BEGIN op 580 ( update custom_format "Anime Tier 4" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Anime Tier 4'
	  AND name = 'TRaSH Anime Bluray Tier 4'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 1;
-- --- END op 580

-- --- BEGIN op 581 ( update custom_format "Anime Tier 4" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Tier 4', 'Bluray Remux', 'source', 'sonarr', 0, 0);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('Anime Tier 4', 'Bluray Remux', 'bluray_raw');
-- --- END op 581

-- --- BEGIN op 582 ( create regular_expression "ABdex" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('ABdex', '\b(ABdex)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ABdex', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ABdex', 'Anime');
-- --- END op 582

-- --- BEGIN op 583 ( create regular_expression "Afro" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Afro', '\[Afro\]|-Afro\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Afro', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Afro', 'Anime');
-- --- END op 583

-- --- BEGIN op 584 ( create regular_expression "aRMX" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('aRMX', '\b(aRMX)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('aRMX', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('aRMX', 'Anime');
-- --- END op 584

-- --- BEGIN op 585 ( create regular_expression "BiRJU" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('BiRJU', '\b(BiRJU)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('BiRJU', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('BiRJU', 'Anime');
-- --- END op 585

-- --- BEGIN op 586 ( create regular_expression "BKC" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('BKC', '\b(BKC)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('BKC', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('BKC', 'Anime');
-- --- END op 586

-- --- BEGIN op 587 ( update regular_expression "CBT" )
update "regular_expressions" set "pattern" = '\b(CBT)\b' where "name" = 'CBT' and "pattern" = '(?<=^|[\s.-])CBT\b';
-- --- END op 587

-- --- BEGIN op 588 ( create regular_expression "Chimera" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Chimera', '\[Chimera\]|-Chimera\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Chimera', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Chimera', 'Anime');
-- --- END op 588

-- --- BEGIN op 589 ( create regular_expression "derp" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('derp', '\[derp\]|-derp\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('derp', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('derp', 'Anime');
-- --- END op 589

-- --- BEGIN op 590 ( create regular_expression "DIY" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('DIY', '\[DIY\]|-DIY\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('DIY', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('DIY', 'Anime');
-- --- END op 590

-- --- BEGIN op 591 ( update regular_expression "EXP" )
update "regular_expressions" set "pattern" = '\[EXP\]|-EXP\b' where "name" = 'EXP' and "pattern" = '(?<=^|[\s.-])EXP\b';
-- --- END op 591

-- --- BEGIN op 592 ( create regular_expression "Foxtrot" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Foxtrot', '\[Foxtrot\]|-Foxtrot\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Foxtrot', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Foxtrot', 'Anime');
-- --- END op 592

-- --- BEGIN op 593 ( create regular_expression "grimf" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('grimf', '\b(grimf)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('grimf', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('grimf', 'Anime');
-- --- END op 593

-- --- BEGIN op 594 ( update regular_expression "IK" )
update "regular_expressions" set "pattern" = '\b(IK)\b' where "name" = 'IK' and "pattern" = '(?<=^|[\s.-])IK\b';
-- --- END op 594

-- --- BEGIN op 595 ( update regular_expression "Iznjie Biznjie" )
update "regular_expressions" set "pattern" = '\b(Iznjie[ .-]Biznjie)\b' where "name" = 'Iznjie Biznjie' and "pattern" = '(?<=^|[\s.-])Iznjie Biznjie\b';
-- --- END op 595

-- --- BEGIN op 596 ( create regular_expression "Kaleido-subs" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Kaleido-subs', '\b(Kaleido-subs)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Kaleido-subs', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Kaleido-subs', 'Anime');
-- --- END op 596

-- --- BEGIN op 597 ( update regular_expression "Kametsu" )
update "regular_expressions" set "pattern" = '\b(Kametsu)\b' where "name" = 'Kametsu' and "pattern" = '(?<=^|[\s.-])Kametsu\b';
-- --- END op 597

-- --- BEGIN op 598 ( create regular_expression "Kawatare" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Kawatare', '\[Kawatare\]|-Kawatare\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Kawatare', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Kawatare', 'Anime');
-- --- END op 598

-- --- BEGIN op 599 ( update regular_expression "KH" )
update "regular_expressions" set "pattern" = '\b(KH)\b' where "name" = 'KH' and "pattern" = '(?<=^|[\s.-])KH\b';
-- --- END op 599

-- --- BEGIN op 600 ( update regular_expression "LazyRemux" )
update "regular_expressions" set "pattern" = '\b(LazyRemux)\b' where "name" = 'LazyRemux' and "pattern" = '(?<=^|[\s.-])LazyRemux\b';
-- --- END op 600

-- --- BEGIN op 601 ( create regular_expression "Metal" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Metal', '\[Metal\]|-Metal\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Metal', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Metal', 'Anime');
-- --- END op 601

-- --- BEGIN op 602 ( create regular_expression "MK" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('MK', '\b(MK)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('MK', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('MK', 'Anime');
-- --- END op 602

-- --- BEGIN op 603 ( create regular_expression "neko-kBaraka" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('neko-kBaraka', '\b(neko-kBaraka)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('neko-kBaraka', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('neko-kBaraka', 'Anime');
-- --- END op 603

-- --- BEGIN op 604 ( update regular_expression "OZR" )
update "regular_expressions" set "pattern" = '\b(OZR)\b' where "name" = 'OZR' and "pattern" = '(?<=^|[\s.-])OZR\b';
-- --- END op 604

-- --- BEGIN op 605 ( create regular_expression "Pizza" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Pizza', '\[Pizza\]|-Pizza\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Pizza', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Pizza', 'Anime');
-- --- END op 605

-- --- BEGIN op 606 ( update regular_expression "pog42" )
update "regular_expressions" set "pattern" = '\b(pog42)\b' where "name" = 'pog42' and "pattern" = '(?<=^|[\s.-])pog42\b';
-- --- END op 606

-- --- BEGIN op 607 ( update regular_expression "Quetzal" )
update "regular_expressions" set "pattern" = '\b(Quetzal)\b' where "name" = 'Quetzal' and "pattern" = '(?<=^|[\s.-])Quetzal\b';
-- --- END op 607

-- --- BEGIN op 608 ( create regular_expression "Reza" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Reza', '\b(Reza)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Reza', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Reza', 'Anime');
-- --- END op 608

-- --- BEGIN op 609 ( update regular_expression "SCY" )
update "regular_expressions" set "pattern" = '\b(SCY)\b' where "name" = 'SCY' and "pattern" = '(?<=^|[\s.-])SCY\b';
-- --- END op 609

-- --- BEGIN op 610 ( create regular_expression "Shimatta" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Shimatta', '\b(Shimatta)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Shimatta', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Shimatta', 'Anime');
-- --- END op 610

-- --- BEGIN op 611 ( create regular_expression "Smoke" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Smoke', '\[Smoke\]|-Smoke\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Smoke', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Smoke', 'Anime');
-- --- END op 611

-- --- BEGIN op 612 ( create regular_expression "Spirale" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Spirale', '\b(Spirale)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Spirale', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Spirale', 'Anime');
-- --- END op 612

-- --- BEGIN op 613 ( create regular_expression "UDF" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('UDF', '\b(UDF)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('UDF', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('UDF', 'Anime');
-- --- END op 613

-- --- BEGIN op 614 ( create regular_expression "UQW" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('UQW', '\b(UQW)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('UQW', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('UQW', 'Anime');
-- --- END op 614

-- --- BEGIN op 615 ( create regular_expression "Virtuality" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Virtuality', '\b(Virtuality)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Virtuality', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Virtuality', 'Anime');
-- --- END op 615

-- --- BEGIN op 616 ( create regular_expression "Vanilla" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Vanilla', '\[Vanilla\]|-Vanilla\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Vanilla', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Vanilla', 'Anime');
-- --- END op 616

-- --- BEGIN op 617 ( create regular_expression "VULCAN" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('VULCAN', '\[VULCAN\]|-VULCAN\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('VULCAN', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('VULCAN', 'Anime');
-- --- END op 617

-- --- BEGIN op 618 ( update custom_format "Anime Tier 4" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Tier 4', 'ABdex', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 4', 'ABdex', 'ABdex');
-- --- END op 618

-- --- BEGIN op 619 ( update custom_format "Anime Tier 4" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Tier 4', 'Afro', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 4', 'Afro', 'Afro');
-- --- END op 619

-- --- BEGIN op 620 ( update custom_format "Anime Tier 4" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Tier 4', 'aRMX', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 4', 'aRMX', 'aRMX');
-- --- END op 620

-- --- BEGIN op 621 ( update custom_format "Anime Tier 4" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Tier 4', 'BiRJU', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 4', 'BiRJU', 'BiRJU');
-- --- END op 621

-- --- BEGIN op 622 ( update custom_format "Anime Tier 4" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Tier 4', 'BKC', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 4', 'BKC', 'BKC');
-- --- END op 622

-- --- BEGIN op 623 ( update custom_format "Anime Tier 4" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Tier 4', 'CBT', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 4', 'CBT', 'CBT');
-- --- END op 623

-- --- BEGIN op 624 ( update custom_format "Anime Tier 4" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Tier 4', 'Chimera', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 4', 'Chimera', 'Chimera');
-- --- END op 624

-- --- BEGIN op 625 ( update custom_format "Anime Tier 4" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Tier 4', 'derp', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 4', 'derp', 'derp');
-- --- END op 625

-- --- BEGIN op 626 ( update custom_format "Anime Tier 4" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Tier 4', 'DIY', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 4', 'DIY', 'DIY');
-- --- END op 626

-- --- BEGIN op 627 ( update custom_format "Anime Tier 4" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Tier 4', 'Foxtrot', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 4', 'Foxtrot', 'Foxtrot');
-- --- END op 627

-- --- BEGIN op 628 ( update custom_format "Anime Tier 4" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Tier 4', 'grimf', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 4', 'grimf', 'grimf');
-- --- END op 628

-- --- BEGIN op 629 ( update custom_format "Anime Tier 4" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Tier 4', 'IK', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 4', 'IK', 'IK');
-- --- END op 629

-- --- BEGIN op 630 ( update custom_format "Anime Tier 4" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Tier 4', 'Iznjie Biznjie', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 4', 'Iznjie Biznjie', 'Iznjie Biznjie');
-- --- END op 630

-- --- BEGIN op 631 ( update custom_format "Anime Tier 4" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Tier 4', 'Kaleido-subs', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 4', 'Kaleido-subs', 'Kaleido-subs');
-- --- END op 631

-- --- BEGIN op 632 ( update custom_format "Anime Tier 4" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Tier 4', 'Kametsu', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 4', 'Kametsu', 'Kametsu');
-- --- END op 632

-- --- BEGIN op 633 ( update custom_format "Anime Tier 4" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Tier 4', 'Kawatare', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 4', 'Kawatare', 'Kawatare');
-- --- END op 633

-- --- BEGIN op 634 ( update custom_format "Anime Tier 4" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Tier 4', 'KH', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 4', 'KH', 'KH');
-- --- END op 634

-- --- BEGIN op 635 ( update custom_format "Anime Tier 4" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Tier 4', 'LazyRemux', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 4', 'LazyRemux', 'LazyRemux');
-- --- END op 635

-- --- BEGIN op 636 ( update custom_format "Anime Tier 4" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Tier 4', 'Metal', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 4', 'Metal', 'Metal');
-- --- END op 636

-- --- BEGIN op 637 ( update custom_format "Anime Tier 4" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Tier 4', 'MK', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 4', 'MK', 'MK');
-- --- END op 637

-- --- BEGIN op 638 ( update custom_format "Anime Tier 4" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Tier 4', 'neko-kBaraka', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 4', 'neko-kBaraka', 'neko-kBaraka');
-- --- END op 638

-- --- BEGIN op 639 ( update custom_format "Anime Tier 4" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Tier 4', 'OZR', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 4', 'OZR', 'OZR');
-- --- END op 639

-- --- BEGIN op 640 ( update custom_format "Anime Tier 4" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Tier 4', 'Pizza', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 4', 'Pizza', 'Pizza');
-- --- END op 640

-- --- BEGIN op 641 ( update custom_format "Anime Tier 4" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Tier 4', 'pog42', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 4', 'pog42', 'pog42');
-- --- END op 641

-- --- BEGIN op 642 ( update custom_format "Anime Tier 4" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Tier 4', 'Quetzal', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 4', 'Quetzal', 'Quetzal');
-- --- END op 642

-- --- BEGIN op 643 ( update custom_format "Anime Tier 4" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Tier 4', 'Reza', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 4', 'Reza', 'Reza');
-- --- END op 643

-- --- BEGIN op 644 ( update custom_format "Anime Tier 4" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Tier 4', 'SCY', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 4', 'SCY', 'SCY');
-- --- END op 644

-- --- BEGIN op 645 ( update custom_format "Anime Tier 4" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Tier 4', 'Shimatta', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 4', 'Shimatta', 'Shimatta');
-- --- END op 645

-- --- BEGIN op 646 ( update custom_format "Anime Tier 4" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Tier 4', 'Smoke', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 4', 'Smoke', 'Smoke');
-- --- END op 646

-- --- BEGIN op 647 ( update custom_format "Anime Tier 4" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Tier 4', 'Spirale', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 4', 'Spirale', 'Spirale');
-- --- END op 647

-- --- BEGIN op 648 ( update custom_format "Anime Tier 4" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Tier 4', 'UDF', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 4', 'UDF', 'UDF');
-- --- END op 648

-- --- BEGIN op 649 ( update custom_format "Anime Tier 4" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Tier 4', 'UQW', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 4', 'UQW', 'UQW');
-- --- END op 649

-- --- BEGIN op 650 ( update custom_format "Anime Tier 4" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Tier 4', 'Virtuality', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 4', 'Virtuality', 'Virtuality');
-- --- END op 650

-- --- BEGIN op 651 ( update custom_format "Anime Tier 4" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Tier 4', 'Vanilla', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 4', 'Vanilla', 'Vanilla');
-- --- END op 651

-- --- BEGIN op 652 ( update custom_format "Anime Tier 4" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Tier 4', 'VULCAN', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 4', 'VULCAN', 'VULCAN');
-- --- END op 652

-- --- BEGIN op 653 ( update custom_format "Anime BD Tier 4" )
update "custom_formats" set "name" = 'Anime BD Tier 4' where "name" = 'Anime Tier 4';
-- --- END op 653

-- --- BEGIN op 654 ( update quality_profile "Anime 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Anime BD Tier 4' where "quality_profile_name" = 'Anime 1080p' and "custom_format_name" = 'Anime Tier 4' and "arr_type" = 'all' and "score" = 1300;
-- --- END op 654
