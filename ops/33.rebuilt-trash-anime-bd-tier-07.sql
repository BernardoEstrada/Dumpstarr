-- @operation: export
-- @entity: batch
-- @name: Rebuilt TRaSH Anime BD Tier 07
-- @exportedAt: 2026-03-01T22:13:44.180Z
-- @opIds: 778, 779, 780, 781, 782, 783, 784, 785, 786, 787, 788, 789, 790, 791, 792, 793, 794, 795, 796, 797, 798, 799, 800, 801, 802, 803, 804, 805, 806, 807, 808, 809, 810, 811, 815, 816, 817, 818, 819, 820, 821, 822, 823, 824, 825, 826, 827, 828, 829, 830, 831, 832, 833, 834, 835, 836, 837, 838, 839, 840, 841, 842, 843, 844, 845, 846, 847, 848, 849, 850, 851

-- --- BEGIN op 778 ( update regular_expression "9volt" )
update "regular_expressions" set "pattern" = '\b(9volt)\b' where "name" = '9volt' and "pattern" = '(?<=^|[\s.-])9volt\b';
-- --- END op 778

-- --- BEGIN op 779 ( update regular_expression "AC" )
update "regular_expressions" set "pattern" = '\[AC\]|-AC$' where "name" = 'AC' and "pattern" = '(?<=^|[\s.-])AC\b';
-- --- END op 779

-- --- BEGIN op 780 ( create regular_expression "Almighty" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Almighty', '\[Almighty\]|-Almighty\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Almighty', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Almighty', 'Anime');
-- --- END op 780

-- --- BEGIN op 781 ( update regular_expression "Asakura" )
update "regular_expressions" set "pattern" = '\[Asakura\]|-Asakura\b' where "name" = 'Asakura' and "pattern" = '(?<=^|[\s.-])Asakura\b';
-- --- END op 781

-- --- BEGIN op 782 ( create regular_expression "Asenshi" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Asenshi', '\b(Asenshi)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Asenshi', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Asenshi', 'Anime');
-- --- END op 782

-- --- BEGIN op 783 ( update regular_expression "BlurayDesuYo" )
update "regular_expressions" set "pattern" = '\b(BlurayDesuYo)\b' where "name" = 'BlurayDesuYo' and "pattern" = '(?<=^|[\s.-])BlurayDesuYo\b';
-- --- END op 783

-- --- BEGIN op 784 ( create regular_expression "Bolshevik" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Bolshevik', '\[Bolshevik\]|-Bolshevik\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Bolshevik', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Bolshevik', 'Anime');
-- --- END op 784

-- --- BEGIN op 785 ( create regular_expression "Brrrrrrr" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Brrrrrrr', '\b(Brrrrrrr)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Brrrrrrr', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Brrrrrrr', 'Anime');
-- --- END op 785

-- --- BEGIN op 786 ( update regular_expression "Chihiro" )
update "regular_expressions" set "pattern" = '\[Chihiro\]|-Chihiro\b' where "name" = 'Chihiro' and "pattern" = '(?<=^|[\s.-])Chihiro\b';
-- --- END op 786

-- --- BEGIN op 787 ( update regular_expression "Commie" )
update "regular_expressions" set "pattern" = '\b(Commie)\b' where "name" = 'Commie' and "pattern" = '(?<=^|[\s.-])Commie\b';
-- --- END op 787

-- --- BEGIN op 788 ( create regular_expression "Crow" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Crow', '\[Crow\]|-Crow\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Crow', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Crow', 'Anime');
-- --- END op 788

-- --- BEGIN op 789 ( create regular_expression "Dae" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Dae', '\b(Dae)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Dae', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Dae', 'Anime');
-- --- END op 789

-- --- BEGIN op 790 ( update regular_expression "Dekinai" )
update "regular_expressions" set "pattern" = '\[Dekinai\]|-Dekinai\b' where "name" = 'Dekinai' and "pattern" = '(?<=^|[\s.-])Dekinai\b';
-- --- END op 790

-- --- BEGIN op 791 ( create regular_expression "Dragon-Releases" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Dragon-Releases', '\b(Dragon-Releases)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Dragon-Releases', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Dragon-Releases', 'Anime');
-- --- END op 791

-- --- BEGIN op 792 ( create regular_expression "DragsterPS" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('DragsterPS', '\b(DragsterPS)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('DragsterPS', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('DragsterPS', 'Anime');
-- --- END op 792

-- --- BEGIN op 793 ( update regular_expression "Exiled-Destiny" )
update "regular_expressions" set "pattern" = '\b(Exiled-Destiny|E-D)\b' where "name" = 'Exiled-Destiny' and "pattern" = '(?<=^|[\s.-])Exiled-Destiny\b';
-- --- END op 793

-- --- BEGIN op 794 ( update regular_expression "FFF" )
update "regular_expressions" set "pattern" = '\b(FFF)\b' where "name" = 'FFF' and "pattern" = '(?<=^|[\s.-])FFF\b';
-- --- END op 794

-- --- BEGIN op 795 ( update regular_expression "Final8" )
update "regular_expressions" set "pattern" = '\b(Final8)\b' where "name" = 'Final8' and "pattern" = '(?<=^|[\s.-])Final8\b';
-- --- END op 795

-- --- BEGIN op 796 ( create regular_expression "Geonope" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Geonope', '\b(Geonope)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Geonope', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Geonope', 'Anime');
-- --- END op 796

-- --- BEGIN op 797 ( create regular_expression "GJM" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('GJM', '\b(GJM)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('GJM', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('GJM', 'Anime');
-- --- END op 797

-- --- BEGIN op 798 ( create regular_expression "iAHD" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('iAHD', '\b(iAHD)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('iAHD', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('iAHD', 'Anime');
-- --- END op 798

-- --- BEGIN op 799 ( create regular_expression "inid4c" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('inid4c', '\b(inid4c)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('inid4c', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('inid4c', 'Anime');
-- --- END op 799

-- --- BEGIN op 800 ( update regular_expression "Koten_Gars" )
update "regular_expressions" set "pattern" = '\b(Koten[ ._-]Gars)\b' where "name" = 'Koten_Gars' and "pattern" = '(?<=^|[\s.-])Koten_Gars\b';
-- --- END op 800

-- --- BEGIN op 801 ( update regular_expression "kuchikirukia" )
update "regular_expressions" set "pattern" = '\b(kuchikirukia)\b' where "name" = 'kuchikirukia' and "pattern" = '(?<=^|[\s.-])kuchikirukia\b';
-- --- END op 801

-- --- BEGIN op 802 ( create regular_expression "LCE" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('LCE', '\b(LCE)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('LCE', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('LCE', 'Anime');
-- --- END op 802

-- --- BEGIN op 803 ( create regular_expression "NTW" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('NTW', '\b(NTW)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('NTW', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('NTW', 'Anime');
-- --- END op 803

-- --- BEGIN op 804 ( create regular_expression "orz" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('orz', '\b(orz)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('orz', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('orz', 'Anime');
-- --- END op 804

-- --- BEGIN op 805 ( create regular_expression "RAI" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('RAI', '\b(RAI)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('RAI', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('RAI', 'Anime');
-- --- END op 805

-- --- BEGIN op 806 ( create regular_expression "REVO" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('REVO', '\b(REVO)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('REVO', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('REVO', 'Anime');
-- --- END op 806

-- --- BEGIN op 807 ( create regular_expression "SCP-2223" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('SCP-2223', '\b(SCP-2223)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SCP-2223', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SCP-2223', 'Anime');
-- --- END op 807

-- --- BEGIN op 808 ( update regular_expression "Senjou" )
update "regular_expressions" set "pattern" = '\[Senjou\]|-Senjou\b' where "name" = 'Senjou' and "pattern" = '(?<=^|[\s.-])Senjou\b';
-- --- END op 808

-- --- BEGIN op 809 ( create regular_expression "SEV" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('SEV', '\b(SEV)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SEV', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SEV', 'Anime');
-- --- END op 809

-- --- BEGIN op 810 ( update regular_expression "THORA" )
update "regular_expressions" set "pattern" = '\b(THORA)\b' where "name" = 'THORA' and "pattern" = '(?<=^|[\s.-])THORA\b';
-- --- END op 810

-- --- BEGIN op 811 ( create regular_expression "Vivid" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Vivid', '\[Vivid\]|-Vivid\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Vivid', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Vivid', 'Anime');
-- --- END op 811

-- --- BEGIN op 815 ( update custom_format "Anime BD Tier 7" )
update "custom_formats" set "name" = 'Anime BD Tier 7' where "name" = 'Anime Tier 7';
-- --- END op 815

-- --- BEGIN op 816 ( update quality_profile "Anime 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Anime BD Tier 7' where "quality_profile_name" = 'Anime 1080p' and "custom_format_name" = 'Anime Tier 7' and "arr_type" = 'all' and "score" = 1000;
-- --- END op 816

-- --- BEGIN op 817 ( update custom_format "Anime BD Tier 7" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 7', 'Bluray Remux', 'source', 'sonarr', 0, 0);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('Anime BD Tier 7', 'Bluray Remux', 'bluray_raw');
-- --- END op 817

-- --- BEGIN op 818 ( update custom_format "Anime BD Tier 7" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 7', '9volt', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 7', '9volt', '9volt');
-- --- END op 818

-- --- BEGIN op 819 ( update custom_format "Anime BD Tier 7" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 7', 'AC', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 7', 'AC', 'AC');
-- --- END op 819

-- --- BEGIN op 820 ( update custom_format "Anime BD Tier 7" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 7', 'Almighty', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 7', 'Almighty', 'Almighty');
-- --- END op 820

-- --- BEGIN op 821 ( update custom_format "Anime BD Tier 7" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 7', 'Asakura', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 7', 'Asakura', 'Asakura');
-- --- END op 821

-- --- BEGIN op 822 ( update custom_format "Anime BD Tier 7" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 7', 'Asenshi', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 7', 'Asenshi', 'Asenshi');
-- --- END op 822

-- --- BEGIN op 823 ( update custom_format "Anime BD Tier 7" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 7', 'BlurayDesuYo', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 7', 'BlurayDesuYo', 'BlurayDesuYo');
-- --- END op 823

-- --- BEGIN op 824 ( update custom_format "Anime BD Tier 7" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 7', 'Bolshevik', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 7', 'Bolshevik', 'Bolshevik');
-- --- END op 824

-- --- BEGIN op 825 ( update custom_format "Anime BD Tier 7" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 7', 'Brrrrrrr', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 7', 'Brrrrrrr', 'Brrrrrrr');
-- --- END op 825

-- --- BEGIN op 826 ( update custom_format "Anime BD Tier 7" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 7', 'Chihiro', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 7', 'Chihiro', 'Chihiro');
-- --- END op 826

-- --- BEGIN op 827 ( update custom_format "Anime BD Tier 7" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 7', 'Commie', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 7', 'Commie', 'Commie');
-- --- END op 827

-- --- BEGIN op 828 ( update custom_format "Anime BD Tier 7" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 7', 'Crow', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 7', 'Crow', 'Crow');
-- --- END op 828

-- --- BEGIN op 829 ( update custom_format "Anime BD Tier 7" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 7', 'Dae', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 7', 'Dae', 'Dae');
-- --- END op 829

-- --- BEGIN op 830 ( update custom_format "Anime BD Tier 7" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 7', 'Dekinai', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 7', 'Dekinai', 'Dekinai');
-- --- END op 830

-- --- BEGIN op 831 ( update custom_format "Anime BD Tier 7" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 7', 'Dragon-Releases', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 7', 'Dragon-Releases', 'Dragon-Releases');
-- --- END op 831

-- --- BEGIN op 832 ( update custom_format "Anime BD Tier 7" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 7', 'DragsterPS', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 7', 'DragsterPS', 'DragsterPS');
-- --- END op 832

-- --- BEGIN op 833 ( update custom_format "Anime BD Tier 7" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 7', 'Exiled-Destiny', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 7', 'Exiled-Destiny', 'Exiled-Destiny');
-- --- END op 833

-- --- BEGIN op 834 ( update custom_format "Anime BD Tier 7" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 7', 'FFF', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 7', 'FFF', 'FFF');
-- --- END op 834

-- --- BEGIN op 835 ( update custom_format "Anime BD Tier 7" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 7', 'Final8', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 7', 'Final8', 'Final8');
-- --- END op 835

-- --- BEGIN op 836 ( update custom_format "Anime BD Tier 7" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 7', 'Geonope', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 7', 'Geonope', 'Geonope');
-- --- END op 836

-- --- BEGIN op 837 ( update custom_format "Anime BD Tier 7" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 7', 'GJM', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 7', 'GJM', 'GJM');
-- --- END op 837

-- --- BEGIN op 838 ( update custom_format "Anime BD Tier 7" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 7', 'iAHD', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 7', 'iAHD', 'iAHD');
-- --- END op 838

-- --- BEGIN op 839 ( update custom_format "Anime BD Tier 7" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 7', 'inid4c', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 7', 'inid4c', 'inid4c');
-- --- END op 839

-- --- BEGIN op 840 ( update custom_format "Anime BD Tier 7" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 7', 'Koten_Gars', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 7', 'Koten_Gars', 'Koten_Gars');
-- --- END op 840

-- --- BEGIN op 841 ( update custom_format "Anime BD Tier 7" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 7', 'kuchikirukia', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 7', 'kuchikirukia', 'kuchikirukia');
-- --- END op 841

-- --- BEGIN op 842 ( update custom_format "Anime BD Tier 7" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 7', 'LCE', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 7', 'LCE', 'LCE');
-- --- END op 842

-- --- BEGIN op 843 ( update custom_format "Anime BD Tier 7" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 7', 'NTW', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 7', 'NTW', 'NTW');
-- --- END op 843

-- --- BEGIN op 844 ( update custom_format "Anime BD Tier 7" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 7', 'orz', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 7', 'orz', 'orz');
-- --- END op 844

-- --- BEGIN op 845 ( update custom_format "Anime BD Tier 7" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 7', 'RAI', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 7', 'RAI', 'RAI');
-- --- END op 845

-- --- BEGIN op 846 ( update custom_format "Anime BD Tier 7" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 7', 'REVO', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 7', 'REVO', 'REVO');
-- --- END op 846

-- --- BEGIN op 847 ( update custom_format "Anime BD Tier 7" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 7', 'SCP-2223', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 7', 'SCP-2223', 'SCP-2223');
-- --- END op 847

-- --- BEGIN op 848 ( update custom_format "Anime BD Tier 7" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 7', 'Senjou', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 7', 'Senjou', 'Senjou');
-- --- END op 848

-- --- BEGIN op 849 ( update custom_format "Anime BD Tier 7" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 7', 'SEV', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 7', 'SEV', 'SEV');
-- --- END op 849

-- --- BEGIN op 850 ( update custom_format "Anime BD Tier 7" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 7', 'THORA', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 7', 'THORA', 'THORA');
-- --- END op 850

-- --- BEGIN op 851 ( update custom_format "Anime BD Tier 7" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 7', 'Vivid', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 7', 'Vivid', 'Vivid');
-- --- END op 851
