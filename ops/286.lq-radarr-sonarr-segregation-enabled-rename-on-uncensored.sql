-- @operation: export
-- @entity: batch
-- @name: LQ Radarr/Sonarr Segregation|Enabled Rename on Uncensored
-- @exportedAt: 2026-06-17T15:13:54.315Z
-- @opIds: 1862, 1865, 1866, 1867, 1868, 1869, 1870, 1871, 1872, 1873, 1874, 1875, 1876, 1877

-- --- BEGIN op 1862 ( update custom_format "Uncensored" )
update "custom_formats" set "include_in_rename" = 1 where "name" = 'Uncensored' and "include_in_rename" = 0;
-- --- END op 1862

-- --- BEGIN op 1865 ( update regular_expression "TRaSH LQ" )
update "regular_expressions" set "pattern" = '^(24xHD|41RGB|4K4U|AOC|AROMA|aXXo|AZAZE|BARC0DE|BAUCKLEY|BdC|beAst|BTM|C1NEM4|C4K|CDDHD|CHAOS|CHD|CiNE|COLLECTiVE|CREATiVE24|CrEwSaDe|CTFOH|DDR|d3g|DNL|DRX|E|EPiC|EuReKA|FGT|FMD|FRDS|FZHD|FaNGDiNG0|Feranki1980|GalaxyRG|GHD|GPTHD|HDHUB4U|HDS|HDT|HDTime|HDWinG|iNTENSO|iPlanet|iVy|jennaortega|JFF|KC|KIRA|KiNGDOM|L0SERNIGHT|LAMA|LUCY|Leffe|LiGaS|Liber8|MarkII|MeGusta|Mesc|mHD|mSD|MTeam|MT|MySiLU|NhaNc3|nHD|nikt0|NoGr(ou)?p|nSD|OFT|PATOMiEL|PRODJi|PSA|PTNK|RBB|RDN|RARBG|RU4HD|RiffTrax|SANTi|SHD|STUTTERSHIT|SUNSCREEN|Scene|ShieldBearer|TBS|TEKNO3D|TIKO|Tigole|VISIONPLUSHDR(-X|1000)?|WAF|WiKi|x0r|YIFY|YTS(.(MX|LT|AG))?|Zeus)$' where "name" = 'TRaSH LQ' and "pattern" = '^(24xHD|41RGB|4K4U|AOC|AROMA|aXXo|AZAZE|BARC0DE|BAUCKLEY|BdC|beAst|BTM|C1NEM4|C4K|CDDHD|CHAOS|CHD|CiNE|COLLECTiVE|CREATiVE24|CrEwSaDe|CTFOH|DDR|d3g|DNL|DRX|E|EPiC|EuReKA|FGT|FMD|FRDS|FZHD|FaNGDiNG0|Feranki1980|GalaxyRG|GHD|GPTHD|HDHUB4U|HDS|HDT|HDTime|HDWinG|iNTENSO|iPlanet|iVy|jennaortega|JFF|KC|KIRA|KiNGDOM|L0SERNIGHT|LAMA|LUCY|Leffe|LiGaS|Liber8|MarkII|MeGusta|Mesc|mHD|mSD|MTeam|MT|MySiLU|NhaNc3|nHD|nikt0|NoGr(ou)?p|nSD|OFT|PATOMiEL|PRODJi|PSA|PTNK|RDN|RARBG|RU4HD|RiffTrax|SANTi|SHD|STUTTERSHIT|SUNSCREEN|Scene|ShieldBearer|TBS|TEKNO3D|TIKO|Tigole|VISIONPLUSHDR(-X|1000)?|WAF|WiKi|x0r|YIFY|YTS(.(MX|LT|AG))?|Zeus)$';
-- --- END op 1865

-- --- BEGIN op 1866 ( update regular_expression "TRaSH LQ" )
update "regular_expressions" set "pattern" = '^(24xHD|41RGB|4K4U|AOC|AROMA|aXXo|AZAZE|BARC0DE|BAUCKLEY|BdC|beAst|BTM|C1NEM4|C4K|CDDHD|CHAOS|CHD|CiNE|COLLECTiVE|CREATiVE24|CrEwSaDe|CTFOH|d3g|DDR|DNL|DRX|E|EPiC|EuReKA|FaNGDiNG0|Feranki1980|FGT|FMD|FRDS|FZHD|GalaxyRG|GHD|GPTHD|HDHUB4U|HDS|HDT|HDTime|HDWinG|iNTENSO|iPlanet|iVy|jennaortega(UHD)?|JFF|KC|KiNGDOM|KIRA|L0SERNIGHT|LAMA|Leffe|Liber8|LiGaS|LUCY|MarkII|MeGusta|Mesc|mHD|mSD|MTeam|MT|MySiLU|NhaNc3|nHD|nikt0|NoGr(ou)?p|nSD|OFT|Pahe(\.(ph|in))?\b|PATOMiEL|PRODJi|PSA|PTNK|RARBG|RDN|Rifftrax|RU4HD|SANTi|Scene|SHD|ShieldBearer|STUTTERSHIT|SUNSCREEN|TBS|TEKNO3D|Tigole|TIKO|VISIONPLUSHDR(-X|1000)?|WAF|WiKi|x0r|YIFY|YTS(.(MX|LT|AG))?|Zeus)$' where "name" = 'TRaSH LQ' and "pattern" = '^(24xHD|41RGB|4K4U|AOC|AROMA|aXXo|AZAZE|BARC0DE|BAUCKLEY|BdC|beAst|BTM|C1NEM4|C4K|CDDHD|CHAOS|CHD|CiNE|COLLECTiVE|CREATiVE24|CrEwSaDe|CTFOH|DDR|d3g|DNL|DRX|E|EPiC|EuReKA|FGT|FMD|FRDS|FZHD|FaNGDiNG0|Feranki1980|GalaxyRG|GHD|GPTHD|HDHUB4U|HDS|HDT|HDTime|HDWinG|iNTENSO|iPlanet|iVy|jennaortega|JFF|KC|KIRA|KiNGDOM|L0SERNIGHT|LAMA|LUCY|Leffe|LiGaS|Liber8|MarkII|MeGusta|Mesc|mHD|mSD|MTeam|MT|MySiLU|NhaNc3|nHD|nikt0|NoGr(ou)?p|nSD|OFT|PATOMiEL|PRODJi|PSA|PTNK|RBB|RDN|RARBG|RU4HD|RiffTrax|SANTi|SHD|STUTTERSHIT|SUNSCREEN|Scene|ShieldBearer|TBS|TEKNO3D|TIKO|Tigole|VISIONPLUSHDR(-X|1000)?|WAF|WiKi|x0r|YIFY|YTS(.(MX|LT|AG))?|Zeus)$';
-- --- END op 1866

-- --- BEGIN op 1867 ( update regular_expression "TRaSH LQ (Radarr)" )
update "regular_expressions" set "name" = 'TRaSH LQ (Radarr)' where "name" = 'TRaSH LQ';
-- --- END op 1867

-- --- BEGIN op 1868 ( update custom_format "LQ" )
update "condition_patterns" set "regular_expression_name" = 'TRaSH LQ (Radarr)' where "custom_format_name" = 'LQ' and "condition_name" = 'TRaSH Banned Groups' and "regular_expression_name" in ('TRaSH LQ', 'TRaSH LQ (Radarr)');
-- --- END op 1868

-- --- BEGIN op 1869 ( create regular_expression "TRaSH LQ (Sonarr)" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('TRaSH LQ (Sonarr)', '^(24xHD|41RGB|4K4U|AOC|AROMA|aXXo|AZAZE|BARC0DE|BAUCKLEY|BdC|beAst|BTM|C1NEM4|C4K|CDDHD|CHAOS|CHD|CiNE|COLLECTiVE|CREATiVE24|CrEwSaDe|CTFOH|d3g|DDR|DNL|DRX|E|EPiC|EuReKA|FaNGDiNG0|Feranki1980|FGT|FMD|FRDS|FZHD|GalaxyRG|GHD|GPTHD|HDHUB4U|HDS|HDT|HDTime|HDWinG|iNTENSO|iPlanet|iVy|jennaortega(UHD)?|JFF|KC|KiNGDOM|KIRA|L0SERNIGHT|LAMA|Leffe|Liber8|LiGaS|LUCY|MarkII|MeGusta|Mesc|mHD|mSD|MTeam|MT|MySiLU|NhaNc3|nHD|nikt0|NoGr(ou)?p|nSD|OFT|Pahe(\.(ph|in))?\b|PATOMiEL|PRODJi|PSA|PTNK|RARBG|RDN|Rifftrax|RU4HD|SANTi|Scene|SHD|ShieldBearer|STUTTERSHIT|SUNSCREEN|TBS|TEKNO3D|Tigole|TIKO|VISIONPLUSHDR(-X|1000)?|WAF|WiKi|x0r|YIFY|YTS(.(MX|LT|AG))?|Zeus)$', NULL, NULL);

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TRaSH LQ (Sonarr)', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TRaSH LQ (Sonarr)', 'Release Group');

insert into "tags" ("name") values ('TRaSH') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TRaSH LQ (Sonarr)', 'TRaSH');
-- --- END op 1869

-- --- BEGIN op 1870 ( update regular_expression "TRaSH LQ (Sonarr)" )
update "regular_expressions" set "pattern" = '^(BRiNK|BTM|CHX|CTFOH|d3g|DepraveD|EVO|Feranki1980|FGT|FMD|GHOSTS|HiQVE|iNTENSO|iVy|JFF|KC|MeGusta|nhanc3|OFT|Pahe(\.(ph|in))?\b|PSA|SasukeducK|SHD|ShieldBearer|TBS|TG|VIDEOHOLE|worldmkv|XLF|Zero00)$' where "name" = 'TRaSH LQ (Sonarr)' and "pattern" = '^(24xHD|41RGB|4K4U|AOC|AROMA|aXXo|AZAZE|BARC0DE|BAUCKLEY|BdC|beAst|BTM|C1NEM4|C4K|CDDHD|CHAOS|CHD|CiNE|COLLECTiVE|CREATiVE24|CrEwSaDe|CTFOH|d3g|DDR|DNL|DRX|E|EPiC|EuReKA|FaNGDiNG0|Feranki1980|FGT|FMD|FRDS|FZHD|GalaxyRG|GHD|GPTHD|HDHUB4U|HDS|HDT|HDTime|HDWinG|iNTENSO|iPlanet|iVy|jennaortega(UHD)?|JFF|KC|KiNGDOM|KIRA|L0SERNIGHT|LAMA|Leffe|Liber8|LiGaS|LUCY|MarkII|MeGusta|Mesc|mHD|mSD|MTeam|MT|MySiLU|NhaNc3|nHD|nikt0|NoGr(ou)?p|nSD|OFT|Pahe(\.(ph|in))?\b|PATOMiEL|PRODJi|PSA|PTNK|RARBG|RDN|Rifftrax|RU4HD|SANTi|Scene|SHD|ShieldBearer|STUTTERSHIT|SUNSCREEN|TBS|TEKNO3D|Tigole|TIKO|VISIONPLUSHDR(-X|1000)?|WAF|WiKi|x0r|YIFY|YTS(.(MX|LT|AG))?|Zeus)$';
-- --- END op 1870

-- --- BEGIN op 1871 ( update regular_expression "TRaSH LQ (Sonarr)" )
insert into "tags" ("name") values ('Sonarr') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TRaSH LQ (Sonarr)', 'Sonarr');
-- --- END op 1871

-- --- BEGIN op 1872 ( update regular_expression "TRaSH LQ (Radarr)" )
insert into "tags" ("name") values ('Radarr') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TRaSH LQ (Radarr)', 'Radarr');
-- --- END op 1872

-- --- BEGIN op 1873 ( update custom_format "LQ" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'LQ'
	  AND name = 'Pahe'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 1873

-- --- BEGIN op 1874 ( update custom_format "LQ" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'LQ'
	  AND name = 'TRaSH Banned Groups'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 1874

-- --- BEGIN op 1875 ( update custom_format "LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'TRaSH LQ (Radarr)', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'TRaSH LQ (Radarr)', 'TRaSH LQ (Radarr)');
-- --- END op 1875

-- --- BEGIN op 1876 ( update custom_format "LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'TRaSH LQ (Sonarr)', 'release_group', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'TRaSH LQ (Sonarr)', 'TRaSH LQ (Sonarr)');
-- --- END op 1876

-- --- BEGIN op 1877 ( delete regular_expression "Pahe" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Pahe' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'Pahe';
-- --- END op 1877
