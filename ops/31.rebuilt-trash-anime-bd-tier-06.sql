-- @operation: export
-- @entity: batch
-- @name: Rebuilt TRaSH Anime BD Tier 06
-- @exportedAt: 2026-03-01T21:00:23.929Z
-- @opIds: 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 768, 769, 770, 771, 772, 773, 774, 775, 776

-- --- BEGIN op 745 ( update custom_format "Anime Tier 6" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Tier 6', 'Bluray Remux', 'source', 'sonarr', 0, 0);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('Anime Tier 6', 'Bluray Remux', 'bluray_raw');
-- --- END op 745

-- --- BEGIN op 746 ( update regular_expression "ANE" )
update "regular_expressions" set "pattern" = '\[ANE\]|-ANE$' where "name" = 'ANE' and "pattern" = '(?<=^|[\s.-])ANE\b';
-- --- END op 746

-- --- BEGIN op 747 ( update regular_expression "Bunny-Apocalypse" )
update "regular_expressions" set "pattern" = '\b(Bunny-Apocalypse)\b' where "name" = 'Bunny-Apocalypse' and "pattern" = '(?<=^|[\s.-])Bunny-Apocalypse\b';
-- --- END op 747

-- --- BEGIN op 748 ( create regular_expression "CyC" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('CyC', '\b(CyC)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('CyC', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('CyC', 'Anime');
-- --- END op 748

-- --- BEGIN op 749 ( create regular_expression "Datte13" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Datte13', '\b(Datte13)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Datte13', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Datte13', 'Anime');
-- --- END op 749

-- --- BEGIN op 750 ( create regular_expression "EJF" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('EJF', '\b(EJF)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('EJF', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('EJF', 'Anime');
-- --- END op 750

-- --- BEGIN op 751 ( create regular_expression "GetItTwisted" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('GetItTwisted', '\b(GetItTwisted)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('GetItTwisted', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('GetItTwisted', 'Anime');
-- --- END op 751

-- --- BEGIN op 752 ( create regular_expression "GSK_kun" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('GSK_kun', '\b(GSK[._-]kun)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('GSK_kun', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('GSK_kun', 'Anime');
-- --- END op 752

-- --- BEGIN op 753 ( create regular_expression "iKaos" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('iKaos', '\b(iKaos)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('iKaos', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('iKaos', 'Anime');
-- --- END op 753

-- --- BEGIN op 754 ( create regular_expression "karios" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('karios', '\b(karios)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('karios', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('karios', 'Anime');
-- --- END op 754

-- --- BEGIN op 755 ( update regular_expression "Pookie" )
update "regular_expressions" set "pattern" = '\b(Pookie)\b' where "name" = 'Pookie' and "pattern" = '(?<=^|[\s.-])Pookie\b';
-- --- END op 755

-- --- BEGIN op 756 ( delete regular_expression "Rasetsu" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Rasetsu' AND tag_name = 'Anime';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Rasetsu' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'Rasetsu' and "pattern" = '(?<=^|[\s.-])Rasetsu\b';
-- --- END op 756

-- --- BEGIN op 757 ( create regular_expression "RASETSU" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('RASETSU', '\b(RASETSU)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('RASETSU', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('RASETSU', 'Anime');
-- --- END op 757

-- --- BEGIN op 758 ( create regular_expression "Starbez" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Starbez', '\b(Starbez)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Starbez', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Starbez', 'Anime');
-- --- END op 758

-- --- BEGIN op 759 ( update regular_expression "Tsundere" )
update "regular_expressions" set "pattern" = '\[Tsundere\]|-Tsundere(?!-)\b' where "name" = 'Tsundere' and "pattern" = '(?<=^|[\s.-])Tsundere\b';
-- --- END op 759

-- --- BEGIN op 760 ( create regular_expression "Yoghurt" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Yoghurt', '\b(Yoghurt)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Yoghurt', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Yoghurt', 'Anime');
-- --- END op 760

-- --- BEGIN op 761 ( create regular_expression "YURASUKA" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('YURASUKA', '\[YURASUKA\]|-YURASUKA\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('YURASUKA', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('YURASUKA', 'Anime');
-- --- END op 761

-- --- BEGIN op 762 ( update custom_format "Anime Tier 6" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Tier 6', 'ANE', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 6', 'ANE', 'ANE');
-- --- END op 762

-- --- BEGIN op 763 ( update custom_format "Anime Tier 6" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Tier 6', 'Bunny-Apocalypse', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 6', 'Bunny-Apocalypse', 'Bunny-Apocalypse');
-- --- END op 763

-- --- BEGIN op 764 ( update custom_format "Anime Tier 6" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Tier 6', 'CyC', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 6', 'CyC', 'CyC');
-- --- END op 764

-- --- BEGIN op 765 ( update custom_format "Anime Tier 6" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Tier 6', 'Datte13', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 6', 'Datte13', 'Datte13');
-- --- END op 765

-- --- BEGIN op 766 ( update custom_format "Anime Tier 6" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Tier 6', 'EJF', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 6', 'EJF', 'EJF');
-- --- END op 766

-- --- BEGIN op 767 ( update custom_format "Anime Tier 6" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Tier 6', 'GetItTwisted', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 6', 'GetItTwisted', 'GetItTwisted');
-- --- END op 767

-- --- BEGIN op 768 ( update custom_format "Anime Tier 6" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Tier 6', 'GSK_kun', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 6', 'GSK_kun', 'GSK_kun');
-- --- END op 768

-- --- BEGIN op 769 ( update custom_format "Anime Tier 6" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Tier 6', 'iKaos', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 6', 'iKaos', 'iKaos');
-- --- END op 769

-- --- BEGIN op 770 ( update custom_format "Anime Tier 6" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Tier 6', 'karios', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 6', 'karios', 'karios');
-- --- END op 770

-- --- BEGIN op 771 ( update custom_format "Anime Tier 6" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Tier 6', 'Pookie', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 6', 'Pookie', 'Pookie');
-- --- END op 771

-- --- BEGIN op 772 ( update custom_format "Anime Tier 6" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Tier 6', 'RASETSU', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 6', 'RASETSU', 'RASETSU');
-- --- END op 772

-- --- BEGIN op 773 ( update custom_format "Anime Tier 6" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Tier 6', 'Starbez', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 6', 'Starbez', 'Starbez');
-- --- END op 773

-- --- BEGIN op 774 ( update custom_format "Anime Tier 6" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Tier 6', 'Tsundere', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 6', 'Tsundere', 'Tsundere');
-- --- END op 774

-- --- BEGIN op 775 ( update custom_format "Anime Tier 6" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Tier 6', 'Yoghurt', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 6', 'Yoghurt', 'Yoghurt');
-- --- END op 775

-- --- BEGIN op 776 ( update custom_format "Anime Tier 6" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Tier 6', 'YURASUKA', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Tier 6', 'YURASUKA', 'YURASUKA');
-- --- END op 776
