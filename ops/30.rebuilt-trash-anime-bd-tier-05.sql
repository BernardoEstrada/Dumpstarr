-- @operation: export
-- @entity: batch
-- @name: Rebuilt TRaSH Anime BD Tier 05
-- @exportedAt: 2026-03-01T20:52:30.273Z
-- @opIds: 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743

-- --- BEGIN op 678 ( create regular_expression "Animorphs" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Animorphs', '\b(Animorphs)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Animorphs', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Animorphs', 'Anime');
-- --- END op 678

-- --- BEGIN op 679 ( update regular_expression "AOmundson" )
update "regular_expressions" set "pattern" = '\b(AOmundson)\b' where "name" = 'AOmundson' and "pattern" = '(?<=^|[\s.-])AOmundson\b';
-- --- END op 679

-- --- BEGIN op 680 ( create regular_expression "ASC" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('ASC', '\b(ASC)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ASC', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ASC', 'Anime');
-- --- END op 680

-- --- BEGIN op 681 ( create regular_expression "Baws" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Baws', '\b(Baws|McBalls)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Baws', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Baws', 'Anime');
-- --- END op 681

-- --- BEGIN op 682 ( create regular_expression "Beatrice" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Beatrice', '\[Beatrice\]|-Beatrice(?!-raws)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Beatrice', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Beatrice', 'Anime');
-- --- END op 682

-- --- BEGIN op 683 ( create regular_expression "B00BA" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('B00BA', '\b(B00BA)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('B00BA', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('B00BA', 'Anime');
-- --- END op 683

-- --- BEGIN op 684 ( update regular_expression "Cait-Sidhe" )
update "regular_expressions" set "pattern" = '\b(Cait-Sidhe)\b' where "name" = 'Cait-Sidhe' and "pattern" = '(?<=^|[\s.-])Cait-Sidhe\b';
-- --- END op 684

-- --- BEGIN op 685 ( create regular_expression "CsS" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('CsS', '\b(CsS)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('CsS', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('CsS', 'Anime');
-- --- END op 685

-- --- BEGIN op 686 ( update regular_expression "CTR" )
update "regular_expressions" set "pattern" = '\b(CTR)\b' where "name" = 'CTR' and "pattern" = '(?<=^|[\s.-])CTR\b';
-- --- END op 686

-- --- BEGIN op 687 ( create regular_expression "D4C" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('D4C', '\b(D4C)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('D4C', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('D4C', 'Anime');
-- --- END op 687

-- --- BEGIN op 688 ( update regular_expression "deanzel" )
update "regular_expressions" set "pattern" = '\b(deanzel)\b' where "name" = 'deanzel' and "pattern" = '(?<=^|[\s.-])deanzel\b';
-- --- END op 688

-- --- BEGIN op 689 ( update regular_expression "Drag" )
update "regular_expressions" set "pattern" = '\[Drag\]|-Drag\b' where "name" = 'Drag' and "pattern" = '(?<=^|[\s.-])Drag\b';
-- --- END op 689

-- --- BEGIN op 690 ( create regular_expression "eldon" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('eldon', '\b(eldon)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('eldon', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('eldon', 'Anime');
-- --- END op 690

-- --- BEGIN op 691 ( create regular_expression "Freehold" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Freehold', '\b(Freehold)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Freehold', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Freehold', 'Anime');
-- --- END op 691

-- --- BEGIN op 692 ( create regular_expression "GHS" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('GHS', '\b(GHS)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('GHS', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('GHS', 'Anime');
-- --- END op 692

-- --- BEGIN op 693 ( create regular_expression "Hark0N" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Hark0N', '\b(Hark0N)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Hark0N', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Hark0N', 'Anime');
-- --- END op 693

-- --- BEGIN op 694 ( create regular_expression "Holomux" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Holomux', '\b(Holomux)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Holomux', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Holomux', 'Anime');
-- --- END op 694

-- --- BEGIN op 695 ( create regular_expression "Judgment" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Judgment', '\[Judgment\]|-Judgment\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Judgment', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Judgment', 'Anime');
-- --- END op 695

-- --- BEGIN op 696 ( create regular_expression "MC" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('MC', '\b(MC)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('MC', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('MC', 'Anime');
-- --- END op 696

-- --- BEGIN op 697 ( create regular_expression "motto" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('motto', '\b(mottoj)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('motto', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('motto', 'Anime');
-- --- END op 697

-- --- BEGIN op 698 ( update regular_expression "mottoj" )
update "regular_expressions" set "name" = 'mottoj' where "name" = 'motto';
-- --- END op 698

-- --- BEGIN op 699 ( create regular_expression "NH" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('NH', '\b(NH)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('NH', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('NH', 'Anime');
-- --- END op 699

-- --- BEGIN op 700 ( create regular_expression "NTRM" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('NTRM', '\b(NTRM)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('NTRM', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('NTRM', 'Anime');
-- --- END op 700

-- --- BEGIN op 701 ( create regular_expression "o7" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('o7', '\b(o7)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('o7', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('o7', 'Anime');
-- --- END op 701

-- --- BEGIN op 702 ( create regular_expression "QM" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('QM', '\b(QM)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('QM', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('QM', 'Anime');
-- --- END op 702

-- --- BEGIN op 703 ( create regular_expression "Thighs" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Thighs', '\[Thighs\]|-Thighs\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Thighs', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Thighs', 'Anime');
-- --- END op 703

-- --- BEGIN op 704 ( update regular_expression "TTGA" )
update "regular_expressions" set "pattern" = '\b(TTGA)\b' where "name" = 'TTGA' and "pattern" = '(?<=^|[\s.-])TTGA\b';
-- --- END op 704

-- --- BEGIN op 705 ( create regular_expression "UltraRemux" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('UltraRemux', '\b(UltraRemux)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('UltraRemux', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('UltraRemux', 'Anime');
-- --- END op 705

-- --- BEGIN op 706 ( update regular_expression "WBDP" )
update "regular_expressions" set "pattern" = '\b(WBDP)\b' where "name" = 'WBDP' and "pattern" = '(?<=^|[\s.-])WBDP\b';
-- --- END op 706

-- --- BEGIN op 707 ( create regular_expression "WSE" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('WSE', '\b(WSE)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('WSE', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('WSE', 'Anime');
-- --- END op 707

-- --- BEGIN op 708 ( update regular_expression "Yuki" )
update "regular_expressions" set "pattern" = '\[Yuki\]|-Yuki\b' where "name" = 'Yuki' and "pattern" = '(?<=^|[\s.-])Yuki\b';
-- --- END op 708

-- --- BEGIN op 709 ( update custom_format "Anime Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Tier 5', 'Bluray Remux', 'source', 'sonarr', 0, 0);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('Anime Tier 5', 'Bluray Remux', 'bluray_raw');
-- --- END op 709

-- --- BEGIN op 710 ( update custom_format "Anime Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Tier 5', 'Animorphs', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 5', 'Animorphs', 'Animorphs');
-- --- END op 710

-- --- BEGIN op 711 ( update custom_format "Anime Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Tier 5', 'AOmundson', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 5', 'AOmundson', 'AOmundson');
-- --- END op 711

-- --- BEGIN op 712 ( update custom_format "Anime Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Tier 5', 'ASC', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 5', 'ASC', 'ASC');
-- --- END op 712

-- --- BEGIN op 713 ( update custom_format "Anime Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Tier 5', 'Baws', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 5', 'Baws', 'Baws');
-- --- END op 713

-- --- BEGIN op 714 ( update custom_format "Anime Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Tier 5', 'Beatrice', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 5', 'Beatrice', 'Beatrice');
-- --- END op 714

-- --- BEGIN op 715 ( update custom_format "Anime Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Tier 5', 'B00BA', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 5', 'B00BA', 'B00BA');
-- --- END op 715

-- --- BEGIN op 716 ( update custom_format "Anime Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Tier 5', 'Cait-Sidhe', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 5', 'Cait-Sidhe', 'Cait-Sidhe');
-- --- END op 716

-- --- BEGIN op 717 ( update custom_format "Anime Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Tier 5', 'CsS', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 5', 'CsS', 'CsS');
-- --- END op 717

-- --- BEGIN op 718 ( update custom_format "Anime Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Tier 5', 'CTR', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 5', 'CTR', 'CTR');
-- --- END op 718

-- --- BEGIN op 719 ( update custom_format "Anime Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Tier 5', 'D4C', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 5', 'D4C', 'D4C');
-- --- END op 719

-- --- BEGIN op 720 ( update custom_format "Anime Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Tier 5', 'deanzel', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 5', 'deanzel', 'deanzel');
-- --- END op 720

-- --- BEGIN op 721 ( update custom_format "Anime Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Tier 5', 'Drag', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 5', 'Drag', 'Drag');
-- --- END op 721

-- --- BEGIN op 722 ( update custom_format "Anime Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Tier 5', 'eldon', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 5', 'eldon', 'eldon');
-- --- END op 722

-- --- BEGIN op 723 ( update custom_format "Anime Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Tier 5', 'Freehold', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 5', 'Freehold', 'Freehold');
-- --- END op 723

-- --- BEGIN op 724 ( update custom_format "Anime Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Tier 5', 'GHS', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 5', 'GHS', 'GHS');
-- --- END op 724

-- --- BEGIN op 725 ( update custom_format "Anime Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Tier 5', 'Hark0N', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 5', 'Hark0N', 'Hark0N');
-- --- END op 725

-- --- BEGIN op 726 ( update custom_format "Anime Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Tier 5', 'Holomux', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 5', 'Holomux', 'Holomux');
-- --- END op 726

-- --- BEGIN op 727 ( update custom_format "Anime Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Tier 5', 'Judgement', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 5', 'Judgement', 'Judgment');
-- --- END op 727

-- --- BEGIN op 728 ( update regular_expression "Judgement" )
update "regular_expressions" set "name" = 'Judgement' where "name" = 'Judgment';
-- --- END op 728

-- --- BEGIN op 729 ( update custom_format "Anime Tier 5" )
update "condition_patterns" set "regular_expression_name" = 'Judgement' where "custom_format_name" = 'Anime Tier 5' and "condition_name" = 'Judgement' and "regular_expression_name" = 'Judgment';
-- --- END op 729

-- --- BEGIN op 730 ( update custom_format "Anime Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Tier 5', 'MC', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 5', 'MC', 'MC');
-- --- END op 730

-- --- BEGIN op 731 ( update custom_format "Anime Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Tier 5', 'mottoj', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 5', 'mottoj', 'mottoj');
-- --- END op 731

-- --- BEGIN op 732 ( update custom_format "Anime Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Tier 5', 'NH', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 5', 'NH', 'NH');
-- --- END op 732

-- --- BEGIN op 733 ( update custom_format "Anime Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Tier 5', 'NTRM', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 5', 'NTRM', 'NTRM');
-- --- END op 733

-- --- BEGIN op 734 ( update custom_format "Anime Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Tier 5', 'o7', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 5', 'o7', 'o7');
-- --- END op 734

-- --- BEGIN op 735 ( update custom_format "Anime Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Tier 5', 'QM', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 5', 'QM', 'QM');
-- --- END op 735

-- --- BEGIN op 736 ( update custom_format "Anime Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Tier 5', 'Thighs', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 5', 'Thighs', 'Thighs');
-- --- END op 736

-- --- BEGIN op 737 ( update custom_format "Anime Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Tier 5', 'TTGA', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 5', 'TTGA', 'TTGA');
-- --- END op 737

-- --- BEGIN op 738 ( update custom_format "Anime Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Tier 5', 'UltraRemux', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 5', 'UltraRemux', 'UltraRemux');
-- --- END op 738

-- --- BEGIN op 739 ( update custom_format "Anime Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Tier 5', 'WBDP', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 5', 'WBDP', 'WBDP');
-- --- END op 739

-- --- BEGIN op 740 ( update custom_format "Anime Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Tier 5', 'WSE', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 5', 'WSE', 'WSE');
-- --- END op 740

-- --- BEGIN op 741 ( update custom_format "Anime Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Tier 5', 'Yuki', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 5', 'Yuki', 'Yuki');
-- --- END op 741

-- --- BEGIN op 742 ( update custom_format "Anime BD Tier 5" )
update "custom_formats" set "name" = 'Anime BD Tier 5' where "name" = 'Anime Tier 5';
-- --- END op 742

-- --- BEGIN op 743 ( update quality_profile "Anime 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Anime BD Tier 5' where "quality_profile_name" = 'Anime 1080p' and "custom_format_name" = 'Anime Tier 5' and "arr_type" = 'all' and "score" = 1200;
-- --- END op 743
