-- @operation: export
-- @entity: batch
-- @name: Updated LQ/LQ Title
-- @exportedAt: 2026-06-15T22:02:46.577Z
-- @opIds: 1721, 1722, 1723, 1724, 1725, 1726, 1727, 1728, 1729, 1730, 1731, 1732, 1733, 1734, 1735, 1736, 1737, 1738, 1739, 1740, 1741, 1742, 1743, 1744, 1745, 1746, 1747

-- --- BEGIN op 1721 ( update regular_expression "TRaSH Bad Dual Groups" )
update "regular_expressions" set "pattern" = '^(alfaHD.*|BAT|BiOMA|BlackBit|BNd|C\.A\.A|Cory|CYPHER|EniaHD|EXTREME|FF|FOXX|G4RiS|GUEIRA|LCD|MGE\b.*|MLH|N3G4N|ONLYMOViE|PD|PTHome|RiPER|RK|SiGLA|Tars|TM\b|tokar86a|TURG|TvR|vnlls|WTV|XiQUEXiQUE|Yatogam1|YusukeFLA|ZigZag|ZNM)$' where "name" = 'TRaSH Bad Dual Groups' and "pattern" = '^(alfaHD.*|BAT|BlackBit|BNd|C\.A\.A|Cory|CYPHER|EniaHD|EXTREME|FF|FOXX|G4RiS|GUEIRA|LCD|MGE\b.*|MLH|N3G4N|ONLYMOViE|PD|PTHome|RiPER|RK|SiGLA|Tars|TM\b|tokar86a|TURG|TvR|vnlls|WTV|XiQUEXiQUE|Yatogam1|YusukeFLA|ZigZag|ZNM)$';
-- --- END op 1721

-- --- BEGIN op 1722 ( update regular_expression "TRaSH Bad Dual Groups" )
update "regular_expressions" set "pattern" = '^(alfaHD.*|BAT|BiOMA|BlackBit|BNd|C\.A\.A|Cory|CYPHER|EniaHD|EXTREME|FF|FOXX|G4RiS|GUEIRA|LCD|MGE\b.*|MLH|N3G4N|PD|PTHome|RiPER|RK|SiGLA|Tars|tokar86a|TURG|vnlls|WTV|XiQUEXiQUE|Yatogam1|YusukeFLA|ZigZag|ZNM)$' where "name" = 'TRaSH Bad Dual Groups' and "pattern" = '^(alfaHD.*|BAT|BiOMA|BlackBit|BNd|C\.A\.A|Cory|CYPHER|EniaHD|EXTREME|FF|FOXX|G4RiS|GUEIRA|LCD|MGE\b.*|MLH|N3G4N|ONLYMOViE|PD|PTHome|RiPER|RK|SiGLA|Tars|TM\b|tokar86a|TURG|TvR|vnlls|WTV|XiQUEXiQUE|Yatogam1|YusukeFLA|ZigZag|ZNM)$';
-- --- END op 1722

-- --- BEGIN op 1723 ( update regular_expression "TRaSH LQ" )
update "regular_expressions" set "pattern" = '^(24xHD|41RGB|4K4U|AOC|AROMA|aXXo|AZAZE|BARC0DE|BAUCKLEY|BdC|beAst|BTM|C1NEM4|C4K|CDDHD|CHAOS|CHD|CiNE|COLLECTiVE|CREATiVE24|CrEwSaDe|CTFOH|DDR|d3g|DNL|DRX|E|EPiC|EuReKA|FGT|FMD|FRDS|FZHD|FaNGDiNG0|Feranki1980|GalaxyRG|GHD|GPTHD|HDHUB4U|HDS|HDT|HDTime|HDWinG|iNTENSO|iPlanet|iVy|jennaortega|JFF|KC|KIRA|KiNGDOM|L0SERNIGHT|LAMA|LUCY|Leffe|LiGaS|Liber8|MarkII|MeGusta|Mesc|mHD|mSD|MTeam|MT|MySiLU|NhaNc3|nHD|nikt0|NoGr(ou)?p|nSD|OFT|PATOMiEL|PRODJi|PSA|PTNK|RDN|RARBG|RU4HD|RiffTrax|SANTi|SHD|STUTTERSHIT|SUNSCREEN|Scene|ShieldBearer|TBS|TEKNO3D|TIKO|Tigole|VISIONPLUSHDR(-X|1000)?|WAF|WiKi|x0r|YIFY|YTS(.(MX|LT|AG))?|Zeus)$' where "name" = 'TRaSH LQ' and "pattern" = '^(24xHD|41RGB|4K4U|AOC|AROMA|aXXo|AZAZE|BARC0DE|BAUCKLEY|BdC|beAst|BTM|C1NEM4|C4K|CDDHD|CHAOS|CHD|CiNE|COLLECTiVE|CREATiVE24|CrEwSaDe|CTFOH|DDR|d3g|DNL|DRX|E|EPiC|EuReKA|FGT|FMD|FRDS|FZHD|FaNGDiNG0|Feranki1980|GalaxyRG|GHD|GPTHD|HDHUB4U|HDS|HDT|HDTime|HDWinG|iNTENSO|iPlanet|iVy|jennaortega|JFF|KC|KIRA|KiNGDOM|L0SERNIGHT|LAMA|LUCY|Leffe|LiGaS|Liber8|MarkII|MeGusta|Mesc|mHD|mSD|MTeam|MT|MySiLU|NhaNc3|nHD|nikt0|NoGr(ou)?p|nSD|OFT|PATOMiEL|PRODJi|PSA|PTNK|Pahe(\.(ph|in))?\b|RDN|RARBG|RU4HD|RiffTrax|SANTi|SHD|STUTTERSHIT|SUNSCREEN|Scene|ShieldBearer|TBS|TEKNO3D|TIKO|Tigole|VISIONPLUSHDR(-X|1000)?|WAF|WiKi|x0r|YIFY|YTS(.(MX|LT|AG))?|Zeus)$';
-- --- END op 1723

-- --- BEGIN op 1724 ( create regular_expression "Pahe" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Pahe', 'Pahe(\.(ph|in))?\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Pahe', 'Release Group');
-- --- END op 1724

-- --- BEGIN op 1725 ( update custom_format "LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'Pahe', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'Pahe', 'Pahe');
-- --- END op 1725

-- --- BEGIN op 1726 ( update custom_format "LQ Release Title" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'LQ Release Title'
	  AND name = 'UnKn0wn'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 1726

-- --- BEGIN op 1727 ( update custom_format "LQ Release Title" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ Release Title', 'UnKn0wn (NoRemux)', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ Release Title', 'UnKn0wn (NoRemux)', 'UnKn0wn (NoRemux)');
-- --- END op 1727

-- --- BEGIN op 1728 ( create regular_expression "GalaxyRG" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('GalaxyRG', '\b(GalaxyRG)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('GalaxyRG', 'Release Group');
-- --- END op 1728

-- --- BEGIN op 1729 ( update custom_format "LQ Release Title" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ Release Title', 'GalaxyRG', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ Release Title', 'GalaxyRG', 'GalaxyRG');
-- --- END op 1729

-- --- BEGIN op 1730 ( update custom_format "LQ Release Title" )
UPDATE custom_format_conditions
SET arr_type = 'radarr'
WHERE custom_format_name = 'LQ Release Title'
  AND name = '1XBET'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 1730

-- --- BEGIN op 1731 ( update custom_format "LQ Release Title" )
UPDATE custom_format_conditions
SET arr_type = 'radarr'
WHERE custom_format_name = 'LQ Release Title'
  AND name = 'D3US'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 1731

-- --- BEGIN op 1732 ( update custom_format "LQ Release Title" )
UPDATE custom_format_conditions
SET arr_type = 'radarr'
WHERE custom_format_name = 'LQ Release Title'
  AND name = 'EVO (no WEB-DL)'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 1732

-- --- BEGIN op 1733 ( update custom_format "LQ Release Title" )
UPDATE custom_format_conditions
SET arr_type = 'radarr'
WHERE custom_format_name = 'LQ Release Title'
  AND name = 'Feranki1980'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 1733

-- --- BEGIN op 1734 ( update custom_format "LQ Release Title" )
UPDATE custom_format_conditions
SET arr_type = 'radarr'
WHERE custom_format_name = 'LQ Release Title'
  AND name = 'HHWEB (No MA)'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 1734

-- --- BEGIN op 1735 ( update custom_format "LQ Release Title" )
UPDATE custom_format_conditions
SET arr_type = 'radarr'
WHERE custom_format_name = 'LQ Release Title'
  AND name = 'PiRaTeS (no WEB-DL)'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 1735

-- --- BEGIN op 1736 ( update custom_format "LQ Release Title" )
UPDATE custom_format_conditions
SET arr_type = 'radarr'
WHERE custom_format_name = 'LQ Release Title'
  AND name = 'READ NOTE'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 1736

-- --- BEGIN op 1737 ( update custom_format "LQ Release Title" )
UPDATE custom_format_conditions
SET arr_type = 'radarr'
WHERE custom_format_name = 'LQ Release Title'
  AND name = 'SWTYBLZ'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 1737

-- --- BEGIN op 1738 ( update custom_format "LQ Release Title" )
UPDATE custom_format_conditions
SET arr_type = 'radarr'
WHERE custom_format_name = 'LQ Release Title'
  AND name = 'TEKNO3D'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 1738

-- --- BEGIN op 1739 ( update custom_format "LQ Release Title" )
UPDATE custom_format_conditions
SET arr_type = 'radarr'
WHERE custom_format_name = 'LQ Release Title'
  AND name = 'UnKn0wn (NoRemux)'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 1739

-- --- BEGIN op 1740 ( update custom_format "LQ Release Title" )
UPDATE custom_format_conditions
SET arr_type = 'radarr'
WHERE custom_format_name = 'LQ Release Title'
  AND name = 'Will1969'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 1740

-- --- BEGIN op 1741 ( update custom_format "LQ Release Title" )
UPDATE custom_format_conditions
SET arr_type = 'radarr'
WHERE custom_format_name = 'LQ Release Title'
  AND name = 'jennaortega'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 1741

-- --- BEGIN op 1742 ( update custom_format "LQ Release Title" )
UPDATE custom_format_conditions
SET arr_type = 'radarr'
WHERE custom_format_name = 'LQ Release Title'
  AND name = 'GalaxyRG'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 1742

-- --- BEGIN op 1743 ( create regular_expression "BiTOR (2160p)" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('BiTOR (2160p)', '(?=.*?(\b2160p\b))(?=.*?(\bBiTOR\b))', NULL, NULL);
-- --- END op 1743

-- --- BEGIN op 1744 ( create regular_expression "CREATiVE24" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('CREATiVE24', '\b(CREATiVE24)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('CREATiVE24', 'Release Group');
-- --- END op 1744

-- --- BEGIN op 1745 ( update custom_format "LQ Release Title" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ Release Title', 'BiTOR (2160p)', 'release_title', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ Release Title', 'BiTOR (2160p)', 'BiTOR (2160p)');
-- --- END op 1745

-- --- BEGIN op 1746 ( update custom_format "LQ Release Title" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ Release Title', 'CREATiVE24', 'release_title', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ Release Title', 'CREATiVE24', 'CREATiVE24');
-- --- END op 1746

-- --- BEGIN op 1747 ( update custom_format "LQ Release Title" )
UPDATE custom_format_conditions
SET arr_type = 'all'
WHERE custom_format_name = 'LQ Release Title'
  AND name = 'Feranki1980'
  AND type = 'release_title'
  AND arr_type = 'radarr'
  AND negate = 0
  AND required = 0;
-- --- END op 1747
