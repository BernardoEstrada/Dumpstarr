-- @operation: export
-- @entity: batch
-- @name: Move R&H to LQ Title
-- @exportedAt: 2026-06-14T12:32:30.447Z
-- @opIds: 1696, 1697, 1698

-- --- BEGIN op 1696 ( update regular_expression "TRaSH LQ" )
update "regular_expressions" set "pattern" = '^(24xHD|41RGB|4K4U|AOC|AROMA|aXXo|AZAZE|BARC0DE|BAUCKLEY|BdC|beAst|BTM|C1NEM4|C4K|CDDHD|CHAOS|CHD|CiNE|COLLECTiVE|CREATiVE24|CrEwSaDe|CTFOH|DDR|d3g|DNL|DRX|E|EPiC|EuReKA|FGT|FMD|FRDS|FZHD|FaNGDiNG0|Feranki1980|GalaxyRG|GHD|GPTHD|HDHUB4U|HDS|HDT|HDTime|HDWinG|iNTENSO|iPlanet|iVy|jennaortega|JFF|KC|KIRA|KiNGDOM|L0SERNIGHT|LAMA|LUCY|Leffe|LiGaS|Liber8|MarkII|MeGusta|Mesc|mHD|mSD|MTeam|MT|MySiLU|NhaNc3|nHD|nikt0|NoGr(ou)?p|nSD|OFT|PATOMiEL|PRODJi|PSA|PTNK|Pahe(\.(ph|in))?\b|RDN|RARBG|RU4HD|RiffTrax|SANTi|SHD|STUTTERSHIT|SUNSCREEN|Scene|ShieldBearer|TBS|TEKNO3D|TIKO|Tigole|VISIONPLUSHDR(-X|1000)?|WAF|WiKi|x0r|YIFY|YTS(.(MX|LT|AG))?|Zeus)$' where "name" = 'TRaSH LQ' and "pattern" = '^(24xHD|41RGB|4K4U|AOC|AROMA|aXXo|AZAZE|BARC0DE|BAUCKLEY|BdC|beAst|BTM|C1NEM4|C4K|CDDHD|CHAOS|CHD|CiNE|COLLECTiVE|CREATiVE24|CrEwSaDe|CTFOH|DDR|d3g|DNL|DRX|E|EPiC|EuReKA|FGT|FMD|FRDS|FZHD|FaNGDiNG0|Feranki1980|GalaxyRG|GHD|GPTHD|HDHUB4U|HDS|HDT|HDTime|HDWinG|iNTENSO|iPlanet|iVy|jennaortega|JFF|KC|KIRA|KiNGDOM|L0SERNIGHT|LAMA|LUCY|Leffe|LiGaS|Liber8|MarkII|MeGusta|Mesc|mHD|mSD|MTeam|MT|MySiLU|NhaNc3|nHD|nikt0|NoGr(ou)?p|nSD|OFT|PATOMiEL|PRODJi|PSA|PTNK|Pahe(\.(ph|in))?\b|R&H|RDN|RARBG|RU4HD|RiffTrax|SANTi|SHD|STUTTERSHIT|SUNSCREEN|Scene|ShieldBearer|TBS|TEKNO3D|TIKO|Tigole|VISIONPLUSHDR(-X|1000)?|WAF|WiKi|x0r|YIFY|YTS(.(MX|LT|AG))?|Zeus)$';
-- --- END op 1696

-- --- BEGIN op 1697 ( create regular_expression "R&H" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('R&H', '\b(R&H)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('R&H', 'Release Group');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('R&H', 'Banned');
-- --- END op 1697

-- --- BEGIN op 1698 ( update custom_format "LQ Release Title" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ Release Title', 'R&H', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ Release Title', 'R&H', 'R&H');
-- --- END op 1698
