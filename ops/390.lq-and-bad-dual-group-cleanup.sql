-- @operation: export
-- @entity: batch
-- @name: LQ and Bad Dual Group Cleanup
-- @exportedAt: 2026-08-23T22:24:34.770Z
-- @opIds: 5691, 5692, 5693, 5694, 5695, 5696, 5697, 5698, 5699, 5700, 5701, 5702

-- --- BEGIN op 5691 ( update regular_expression "TRaSH LQ (Radarr)" )
update "regular_expressions" set "pattern" = '^(24xHD|41RGB|4K4U|AOC|AROMA|aXXo|AZAZE|BARC0DE|BAUCKLEY|BdC|beAst|BTM|C1NEM4|C4K|CDDHD|CHAOS|CHD|CiNE|CLEANUP|COLLECTiVE|CREATiVE24|CrEwSaDe|CTFOH|d3g|DDR|DNL|DRX|E|EPiC|EuReKA|FaNGDiNG0|Feranki1980|FGT|FMD|FRDS|FS|FZHD|GalaxyRG|GHD|GPTHD|HDHUB4U|HDS|HDT|HDTime|HDWinG|iNTENSO|iPlanet|iVy|jennaortega(UHD)?|JFF|KC|KiNGDOM|KIRA|L0SERNIGHT|LAMA|Leffe|Liber8|LiGaS|LUCY|MarkII|MeGusta|Mesc|mHD|mSD|MTeam|MT|MySiLU|NhaNc3|nHD|nikt0|NoGr(ou)?p|nSD|OFT|Pahe(\.(ph|in))?|PATOMiEL|PRODJi|PSA|PTNK|RARBG|RBB|RDN|Rifftrax|RU4HD|SANTi|Scene|SHD|ShieldBearer|STUTTERSHIT|SUNSCREEN|SyncUP|TBS|TEKNO3D|Tigole|TIKO|VISIONPLUSHDR(-X|1000)?|WAF|WiKi|x0r|YIFY|YTS(.(MX|LT|AG))?|Zeus)$' where "name" = 'TRaSH LQ (Radarr)' and "pattern" = '^(24xHD|41RGB|4K4U|AOC|AROMA|aXXo|AZAZE|BARC0DE|BAUCKLEY|BdC|beAst|BTM|C1NEM4|C4K|CDDHD|CHAOS|CHD|CiNE|CLEANUP|COLLECTiVE|CREATiVE24|CrEwSaDe|CTFOH|d3g|DDR|DNL|DRX|E|EPiC|EuReKA|FaNGDiNG0|Feranki1980|FGT|FMD|FRDS|FS|FZHD|GalaxyRG|GHD|GPTHD|HDHUB4U|HDS|HDT|HDTime|HDWinG|iNTENSO|iPlanet|iVy|jennaortega(UHD)?|JFF|KC|KiNGDOM|KIRA|L0SERNIGHT|LAMA|Leffe|Liber8|LiGaS|LUCY|MarkII|MeGusta|Mesc|mHD|mSD|MTeam|MT|MySiLU|NhaNc3|nHD|nikt0|NoGr(ou)?p|nSD|OFT|Pahe(\.(ph|in))?\b|PATOMiEL|PRODJi|PSA|PTNK|RARBG|RBB|RDN|Rifftrax|RU4HD|SANTi|Scene|SHD|ShieldBearer|STUTTERSHIT|SUNSCREEN|SyncUP|TBS|TEKNO3D|Tigole|TIKO|VISIONPLUSHDR(-X|1000)?|WAF|WiKi|x0r|YIFY|YTS(.(MX|LT|AG))?|Zeus)$';
-- --- END op 5691

-- --- BEGIN op 5692 ( update regular_expression "TRaSH LQ (Sonarr)" )
update "regular_expressions" set "pattern" = '^(alfaHD.*|BAT|BlackBit|BNd|C\.A\.A|C76|Cory|CYPHER|EniaHD|EXTREME|FF|FOXX|G4RiS|GUEIRA|LCD|MGE.*|MLH|N3G4N|OldT|ONLYMOViE|PD|PTHome|RiPER|RK|SiGLA|Tars|TM|tokar86a|TURG|TvR|vnlls|WTV|XiQUEXiQUE|Yatogam1|YusukeFLA|ZigZag|ZNM)$' where "name" = 'TRaSH LQ (Sonarr)' and "pattern" = '^(BRiNK|BTM|CHX|CTFOH|d3g|DepraveD|EVO|Feranki1980|FGT|FMD|GHOSTS|HiQVE|iNTENSO|iVy|JFF|KC|MeGusta|nhanc3|OFT|Pahe(\.(ph|in))?\b|PSA|RBB|SasukeducK|SHD|ShieldBearer|TBS|TG|VIDEOHOLE|worldmkv|XLF|Zero00)$';
-- --- END op 5692

-- --- BEGIN op 5693 ( update regular_expression "TRaSH LQ (Sonarr)" )
update "regular_expressions" set "pattern" = '^(BRiNK|BTM|CHX|CTFOH|d3g|DepraveD|EVO|Feranki1980|FGT|FMD|GHOSTS|HiQVE|iNTENSO|iVy|JFF|KC|MeGusta|nhanc3|OFT|Pahe(\.(ph|in))?|PSA|SasukeducK|SHD|ShieldBearer|TBS|TG|VIDEOHOLE|worldmkv|XLF|Zero00)$' where "name" = 'TRaSH LQ (Sonarr)' and "pattern" = '^(alfaHD.*|BAT|BlackBit|BNd|C\.A\.A|C76|Cory|CYPHER|EniaHD|EXTREME|FF|FOXX|G4RiS|GUEIRA|LCD|MGE.*|MLH|N3G4N|OldT|ONLYMOViE|PD|PTHome|RiPER|RK|SiGLA|Tars|TM|tokar86a|TURG|TvR|vnlls|WTV|XiQUEXiQUE|Yatogam1|YusukeFLA|ZigZag|ZNM)$';
-- --- END op 5693

-- --- BEGIN op 5694 ( update regular_expression "TRaSH Bad Dual Groups" )
update "regular_expressions" set "description" = NULL where "name" = 'TRaSH Bad Dual Groups' and "description" = 'These release groups do not use the original language of the media as the first audio track. Since ffprobe relies on the first audio track to determine the primary language of the release, incorrect ordering can lead to parsing issues. This may result in failed imports, misidentified files, or even download loops. To ensure proper handling, the original language should always be the first audio track in the release.';
-- --- END op 5694

-- --- BEGIN op 5695 ( update regular_expression "TRaSH Bad Dual Groups" )
update "regular_expressions" set "pattern" = '^(alfaHD.*|BAT|BlackBit|BNd|C\.A\.A|C76|Cory|CYPHER|EniaHD|EXTREME|FF|FOXX|G4RiS|GUEIRA|LCD|MGE.*|MLH|N3G4N|OldT|ONLYMOViE|PD|PTHome|RiPER|RK|SiGLA|Tars|TM|tokar86a|TURG|TvR|vnlls|WTV|XiQUEXiQUE|Yatogam1|YusukeFLA|ZigZag|ZNM)$' where "name" = 'TRaSH Bad Dual Groups' and "pattern" = '^(alfaHD.*|BAT|BiOMA|BlackBit|BNd|C76|C\.A\.A|Cory|CYPHER|EniaHD|EXTREME|FF|FOXX|G4RiS|GUEIRA|LCD|MGE\b.*|MLH|N3G4N|OldT|PD|PTHome|RiPER|RK|SiGLA|Tars|tokar86a|TURG|vnlls|WTV|XiQUEXiQUE|Yatogam1|YusukeFLA|ZigZag|ZNM)$';
-- --- END op 5695

-- --- BEGIN op 5696 ( update regular_expression "TRaSH Bad Dual Groups (Radarr)" )
update "regular_expressions" set "name" = 'TRaSH Bad Dual Groups (Radarr)' where "name" = 'TRaSH Bad Dual Groups';
-- --- END op 5696

-- --- BEGIN op 5697 ( update custom_format "Bad Dual Groups" )
update "condition_patterns" set "regular_expression_name" = 'TRaSH Bad Dual Groups (Radarr)' where "custom_format_name" = 'Bad Dual Groups' and "condition_name" = 'Bad Dual Groups' and "regular_expression_name" in ('TRaSH Bad Dual Groups', 'TRaSH Bad Dual Groups (Radarr)');
-- --- END op 5697

-- --- BEGIN op 5698 ( create regular_expression "TRaSH Bad Dual Groups (Sonarr)" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('TRaSH Bad Dual Groups (Sonarr)', '^(alfaHD.*|BAT|BlackBit|BNd|C\.A\.A|C76|Cory|CYPHER|EniaHD|EXTREME|FF|FOXX|G4RiS|GUEIRA|LCD|MGE.*|MLH|N3G4N|OldT|ONLYMOViE|PD|PTHome|RiPER|RK|SiGLA|Tars|TM|tokar86a|TURG|TvR|vnlls|WTV|XiQUEXiQUE|Yatogam1|YusukeFLA|ZigZag|ZNM)$', NULL, NULL);

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TRaSH Bad Dual Groups (Sonarr)', 'Banned');

insert into "tags" ("name") values ('TRaSH') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TRaSH Bad Dual Groups (Sonarr)', 'TRaSH');
-- --- END op 5698

-- --- BEGIN op 5699 ( update regular_expression "TRaSH Bad Dual Groups (Sonarr)" )
update "regular_expressions" set "pattern" = '^(alfaHD.*|BAT|BiOMA|BlackBit|BNd|C\.A\.A|C76|Cory|CYPHER|EniaHD|EXTREME|FF|FOXX|G4RiS|GUEIRA|LCD|MLH|N3G4N|OldT|PD|PTHome|RiPER|RK|SiGLA|Tars|tokar86a|TURG|vnlls|WTV|XiQUEXiQUE|Yatogam1|YusukeFLA|ZigZag|ZNM)$' where "name" = 'TRaSH Bad Dual Groups (Sonarr)' and "pattern" = '^(alfaHD.*|BAT|BlackBit|BNd|C\.A\.A|C76|Cory|CYPHER|EniaHD|EXTREME|FF|FOXX|G4RiS|GUEIRA|LCD|MGE.*|MLH|N3G4N|OldT|ONLYMOViE|PD|PTHome|RiPER|RK|SiGLA|Tars|TM|tokar86a|TURG|TvR|vnlls|WTV|XiQUEXiQUE|Yatogam1|YusukeFLA|ZigZag|ZNM)$';
-- --- END op 5699

-- --- BEGIN op 5700 ( update custom_format "Bad Dual Groups" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Bad Dual Groups'
	  AND name = 'Bad Dual Groups'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 5700

-- --- BEGIN op 5701 ( update custom_format "Bad Dual Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Dual Groups', 'Bad Dual Groups (Radarr)', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Dual Groups', 'Bad Dual Groups (Radarr)', 'TRaSH Bad Dual Groups (Radarr)');
-- --- END op 5701

-- --- BEGIN op 5702 ( update custom_format "Bad Dual Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Dual Groups', 'Bad Dual Groups (Sonarr)', 'release_group', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Dual Groups', 'Bad Dual Groups (Sonarr)', 'TRaSH Bad Dual Groups (Sonarr)');
-- --- END op 5702
