-- @operation: export
-- @entity: batch
-- @name: Move CLEANUP|FS|SyncUP to TRaSH Radarr LQ
-- @exportedAt: 2026-07-04T04:57:40.985Z
-- @opIds: 2651, 2652, 2653, 2654

-- --- BEGIN op 2651 ( update regular_expression "TRaSH LQ (Radarr)" )
update "regular_expressions" set "pattern" = '^(24xHD|41RGB|4K4U|AOC|AROMA|aXXo|AZAZE|BARC0DE|BAUCKLEY|BdC|beAst|BTM|C1NEM4|C4K|CDDHD|CHAOS|CHD|CiNE|CLEANUP|COLLECTiVE|CREATiVE24|CrEwSaDe|CTFOH|d3g|DDR|DNL|DRX|E|EPiC|EuReKA|FaNGDiNG0|Feranki1980|FGT|FMD|FRDS|FS|FZHD|GalaxyRG|GHD|GPTHD|HDHUB4U|HDS|HDT|HDTime|HDWinG|iNTENSO|iPlanet|iVy|jennaortega(UHD)?|JFF|KC|KiNGDOM|KIRA|L0SERNIGHT|LAMA|Leffe|Liber8|LiGaS|LUCY|MarkII|MeGusta|Mesc|mHD|mSD|MTeam|MT|MySiLU|NhaNc3|nHD|nikt0|NoGr(ou)?p|nSD|OFT|Pahe(\.(ph|in))?\b|PATOMiEL|PRODJi|PSA|PTNK|RARBG|RBB|RDN|Rifftrax|RU4HD|SANTi|Scene|SHD|ShieldBearer|STUTTERSHIT|SUNSCREEN|SyncUP|TBS|TEKNO3D|Tigole|TIKO|VISIONPLUSHDR(-X|1000)?|WAF|WiKi|x0r|YIFY|YTS(.(MX|LT|AG))?|Zeus)$' where "name" = 'TRaSH LQ (Radarr)' and "pattern" = '^(24xHD|41RGB|4K4U|AOC|AROMA|aXXo|AZAZE|BARC0DE|BAUCKLEY|BdC|beAst|BTM|C1NEM4|C4K|CDDHD|CHAOS|CHD|CiNE|COLLECTiVE|CREATiVE24|CrEwSaDe|CTFOH|d3g|DDR|DNL|DRX|E|EPiC|EuReKA|FaNGDiNG0|Feranki1980|FGT|FMD|FRDS|FZHD|GalaxyRG|GHD|GPTHD|HDHUB4U|HDS|HDT|HDTime|HDWinG|iNTENSO|iPlanet|iVy|jennaortega(UHD)?|JFF|KC|KiNGDOM|KIRA|L0SERNIGHT|LAMA|Leffe|Liber8|LiGaS|LUCY|MarkII|MeGusta|Mesc|mHD|mSD|MTeam|MT|MySiLU|NhaNc3|nHD|nikt0|NoGr(ou)?p|nSD|OFT|Pahe(\.(ph|in))?\b|PATOMiEL|PRODJi|PSA|PTNK|RARBG|RBB|RDN|Rifftrax|RU4HD|SANTi|Scene|SHD|ShieldBearer|STUTTERSHIT|SUNSCREEN|TBS|TEKNO3D|Tigole|TIKO|VISIONPLUSHDR(-X|1000)?|WAF|WiKi|x0r|YIFY|YTS(.(MX|LT|AG))?|Zeus)$';
-- --- END op 2651

-- --- BEGIN op 2652 ( update custom_format "Dumpstarr LQ Groups" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Dumpstarr LQ Groups'
	  AND name = 'CLEANUP'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2652

-- --- BEGIN op 2653 ( update custom_format "Dumpstarr LQ Groups" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Dumpstarr LQ Groups'
	  AND name = 'FS'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2653

-- --- BEGIN op 2654 ( update custom_format "Dumpstarr LQ Groups" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Dumpstarr LQ Groups'
	  AND name = 'SyncUP'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2654
