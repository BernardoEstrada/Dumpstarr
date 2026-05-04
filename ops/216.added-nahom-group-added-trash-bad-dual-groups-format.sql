-- @operation: export
-- @entity: batch
-- @name: Added NAHOM group|Added TRaSH Bad Dual Groups format
-- @exportedAt: 2026-05-04T17:48:02.910Z
-- @opIds: 548, 549, 550, 551, 552, 553, 554, 555

-- --- BEGIN op 548 ( create regular_expression "NAHOM" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('NAHOM', '^(NAHOM)$', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('NAHOM', 'Release Group');
-- --- END op 548

-- --- BEGIN op 549 ( update custom_format "Generated Dynamic HDR" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Generated Dynamic HDR', 'NAHOM', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Generated Dynamic HDR', 'NAHOM', 'NAHOM');
-- --- END op 549

-- --- BEGIN op 550 ( create regular_expression "TRaSH Bad Dual Groups" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('TRaSH Bad Dual Groups', '^(alfaHD.*|BAT|BlackBit|BNd|C\.A\.A|Cory|EXTREME|FF|FOXX|G4RiS|GUEIRA|LCD|MGE\b.*|N3G4N|ONLYMOViE|PD|PTHome|RiPER|RK|SiGLA|Tars|TM\b|tokar86a|TURG|TvR|vnlls|WTV|Yatogam1|YusukeFLA|ZigZag|ZNM)$', 'These release groups do not use the original language of the media as the first audio track. Since ffprobe relies on the first audio track to determine the primary language of the release, incorrect ordering can lead to parsing issues. This may result in failed imports, misidentified files, or even download loops. To ensure proper handling, the original language should always be the first audio track in the release.', NULL);

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TRaSH Bad Dual Groups', 'Banned');
-- --- END op 550

-- --- BEGIN op 551 ( create custom_format "Bad Dual Groups" )
insert into "custom_formats" ("name", "description") values ('Bad Dual Groups', '');
-- --- END op 551

-- --- BEGIN op 552 ( update custom_format "Bad Dual Groups" )
insert into "tags" ("name") values ('TRaSH') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('Bad Dual Groups', 'TRaSH');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('Bad Dual Groups', 'Banned');
-- --- END op 552

-- --- BEGIN op 553 ( update custom_format "Bad Dual Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Dual Groups', 'Bad Dual Groups', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Dual Groups', 'Bad Dual Groups', 'TRaSH Bad Dual Groups');
-- --- END op 553

-- --- BEGIN op 554 ( update regular_expression "TRaSH Bad Dual Groups" )
update "regular_expressions" set "pattern" = '^(alfaHD.*|BAT|BlackBit|BNd|C\.A\.A|Cory|EXTREME|FF|FOXX|G4RiS|GUEIRA|LCD|MGE\b.*|N3G4N|NAHOM|ONLYMOViE|PD|PTHome|RiPER|RK|SiGLA|Tars|TM\b|tokar86a|TURG|TvR|vnlls|WTV|Yatogam1|YusukeFLA|ZigZag|ZNM)$' where "name" = 'TRaSH Bad Dual Groups' and "pattern" = '^(alfaHD.*|BAT|BlackBit|BNd|C\.A\.A|Cory|EXTREME|FF|FOXX|G4RiS|GUEIRA|LCD|MGE\b.*|N3G4N|ONLYMOViE|PD|PTHome|RiPER|RK|SiGLA|Tars|TM\b|tokar86a|TURG|TvR|vnlls|WTV|Yatogam1|YusukeFLA|ZigZag|ZNM)$';
-- --- END op 554

-- --- BEGIN op 555 ( update regular_expression "TRaSH Bad Dual Groups" )
insert into "tags" ("name") values ('TRaSH') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TRaSH Bad Dual Groups', 'TRaSH');
-- --- END op 555
