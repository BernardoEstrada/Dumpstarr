-- @operation: export
-- @entity: batch
-- @name: Removed the rest of the TRaSH Anime regex patterns so I don't have to do it later
-- @exportedAt: 2026-03-01T20:39:11.836Z
-- @opIds: 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676

-- --- BEGIN op 656 ( update custom_format "Anime Tier 5" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Anime Tier 5'
	  AND name = 'TRaSH Anime Bluray Tier 5'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 1;
-- --- END op 656

-- --- BEGIN op 657 ( delete regular_expression "TRaSH Anime Bluray Tier 4" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'TRaSH Anime Bluray Tier 4' AND tag_name = 'Anime';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'TRaSH Anime Bluray Tier 4' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'TRaSH Anime Bluray Tier 4' and "pattern" = '(?i)(?:^\[|(?<=-)|(?<=\[))(?:9volt|AOmundson|Asakura|ASO|Bolshevik|Bulldog|Cait-Sidhe|Chihiro|Chimera|CoalGirls|Commie|D3|Davinci|deanzel|Doki|Dragon-Releases|Foxtrot|GHS|HaiveMind|hchcsen|Iznjie|Biznjie|Kaleido|karios|kBaraka|kmplx|Koitern|Koten_Gars|Kulot|Lia|MCLR|mottoj|NH|NTRM|Orphan|RMX|SallySubs|Scriptum|ShadyCrab|SNSbu|SOLA|THORA|Tsundere|UWU|xPearse)(?:\]|\b|$)';
-- --- END op 657

-- --- BEGIN op 658 ( delete regular_expression "TRaSH Anime Bluray Tier 5" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'TRaSH Anime Bluray Tier 5' AND tag_name = 'Anime';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'TRaSH Anime Bluray Tier 5' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'TRaSH Anime Bluray Tier 5' and "pattern" = '(?i)(?:^\[|(?<=-)|(?<=\[))(?:BluDragon|B00BA|D4C|PMR|Raizel|REVO|SRLS|TTGA|VULCAN)(?:\]|\b|$)';
-- --- END op 658

-- --- BEGIN op 659 ( update custom_format "Anime Tier 6" )
delete from "custom_format_conditions" where "custom_format_name" = 'Anime Tier 6' and "name" = 'TRaSH Anime Bluray Tier 6' and "type" = 'release_title' and "arr_type" = 'all' and "negate" = 0 and "required" = 1;
-- --- END op 659

-- --- BEGIN op 660 ( delete regular_expression "TRaSH Anime Bluray Tier 6" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'TRaSH Anime Bluray Tier 6' AND tag_name = 'Anime';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'TRaSH Anime Bluray Tier 6' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'TRaSH Anime Bluray Tier 6' and "pattern" = '(?i)(?:^\[|(?<=-)|(?<=\[))(?:Afro|Akai|Almighty|ANE|Asenshi|BlurayDesuYo|Bunny-Apocalypse|CH|EJF|Exiled-Destiny|FFF|Final8|GS|Harunatsu|Impatience|Inka-Subs|Judgement|Kantai|LCE|Licca|Nii-sama|niizk|Nishi-Taku|OnDeed|orz|PAS|peachflavored|Saizen|SCP-2223|SHiN-gx|SmugCat|Soldado|Sushi|Vivid|Watashi|Yabai|YURASUKA|Zurako)(?:\]|\b|$)';
-- --- END op 660

-- --- BEGIN op 661 ( update custom_format "Anime Tier 7" )
delete from "custom_format_conditions" where "custom_format_name" = 'Anime Tier 7' and "name" = 'TRaSH Anime Bluray Tier 7' and "type" = 'release_title' and "arr_type" = 'all' and "negate" = 0 and "required" = 1;
-- --- END op 661

-- --- BEGIN op 662 ( delete regular_expression "TRaSH Anime Bluray Tier 7" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'TRaSH Anime Bluray Tier 7' AND tag_name = 'Anime';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'TRaSH Anime Bluray Tier 7' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'TRaSH Anime Bluray Tier 7' and "pattern" = '(?i)(?:^\[|(?<=-)|(?<=\[))(?:A-L|ANiHLS|CBM|DHD|DragsterPS|HAiKU|Hark0N|iAHD|inid4c|KiyoshiStar|KS|MCR|NPC|RedBlade|RH|SEV|STRiFE|TENEIGHTY|WaLMaRT)(?:\]|\b|$)';
-- --- END op 662

-- --- BEGIN op 663 ( update custom_format "Anime Tier 8" )
delete from "custom_format_conditions" where "custom_format_name" = 'Anime Tier 8' and "name" = 'TRaSH Anime Bluray Tier 8' and "type" = 'release_title' and "arr_type" = 'all' and "negate" = 0 and "required" = 1;
-- --- END op 663

-- --- BEGIN op 664 ( delete regular_expression "TRaSH Anime Bluray Tier 8" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'TRaSH Anime Bluray Tier 8' AND tag_name = 'Anime';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'TRaSH Anime Bluray Tier 8' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'TRaSH Anime Bluray Tier 8' and "pattern" = '(?i)(?:^\[|(?<=-)|(?<=\[))(?:AkihitoSubs|Arukoru|EDGE|EMBER|GHOST|Judas|Nep_Blanc|naiyas|Prof|Shir\u03C3)(?:\]|\b|$)';
-- --- END op 664

-- --- BEGIN op 665 ( update custom_format "Anime WEB Tier 1" )
delete from "custom_format_conditions" where "custom_format_name" = 'Anime WEB Tier 1' and "name" = 'TRaSH Anime WEB Tier 1' and "type" = 'release_title' and "arr_type" = 'all' and "negate" = 0 and "required" = 1;
-- --- END op 665

-- --- BEGIN op 666 ( delete regular_expression "TRaSH Anime WEB Tier 1" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'TRaSH Anime WEB Tier 1' AND tag_name = 'Anime';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'TRaSH Anime WEB Tier 1' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'TRaSH Anime WEB Tier 1' and "pattern" = '(?i)(?:^\[|(?<=-)|(?<=\[))(?:Arg0|Arid|Baws|LostYears|LYS1TH3A|McBalls|sam|SCY|Setsugen|smol|SoM|Vodes|Z4ST1N|ZeroBuild)(?:\]|\b|$)';
-- --- END op 666

-- --- BEGIN op 667 ( update custom_format "Anime WEB Tier 2" )
delete from "custom_format_conditions" where "custom_format_name" = 'Anime WEB Tier 2' and "name" = 'TRaSH Anime WEB Tier 2' and "type" = 'release_title' and "arr_type" = 'all' and "negate" = 0 and "required" = 1;
-- --- END op 667

-- --- BEGIN op 668 ( delete regular_expression "TRaSH Anime WEB Tier 2" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'TRaSH Anime WEB Tier 2' AND tag_name = 'Anime';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'TRaSH Anime WEB Tier 2' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'TRaSH Anime WEB Tier 2' and "pattern" = '(?i)(?:^\[|(?<=-)|(?<=\[))(?:0x539|Asakura|Cyan|Cytox|Dae|Foxtrot|Gao|Half-Baked|HatSubs|MALD|MTBB|Not-Vodes|Okay-Subs|Pizza|Reza|Slyfox|SoLCE|Tenshi)(?:\]|\b|$)';
-- --- END op 668

-- --- BEGIN op 669 ( update custom_format "Anime WEB Tier 3" )
delete from "custom_format_conditions" where "custom_format_name" = 'Anime WEB Tier 3' and "name" = 'TRaSH Anime WEB Tier 3' and "type" = 'release_title' and "arr_type" = 'all' and "negate" = 0 and "required" = 1;
-- --- END op 669

-- --- BEGIN op 670 ( delete regular_expression "TRaSH Anime WEB Tier 3" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'TRaSH Anime WEB Tier 3' AND tag_name = 'Anime';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'TRaSH Anime WEB Tier 3' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'TRaSH Anime WEB Tier 3' and "pattern" = '(?i)(?:^\[|(?<=-)|(?<=\[))(?:SubsPlease|SubsPlus\+|ZR)(?:\]|\b|$)';
-- --- END op 670

-- --- BEGIN op 671 ( update custom_format "Anime WEB Tier 4" )
delete from "custom_format_conditions" where "custom_format_name" = 'Anime WEB Tier 4' and "name" = 'TRaSH Anime WEB Tier 4' and "type" = 'release_title' and "arr_type" = 'all' and "negate" = 0 and "required" = 1;
-- --- END op 671

-- --- BEGIN op 672 ( delete regular_expression "TRaSH Anime WEB Tier 4" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'TRaSH Anime WEB Tier 4' AND tag_name = 'Anime';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'TRaSH Anime WEB Tier 4' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'TRaSH Anime WEB Tier 4' and "pattern" = '(?i)(?:^\[|(?<=-)|(?<=\[))(?:BlueLobster|Erai-Raws|GST|HorribleRips|HorribleSubs|KAN3D2M|KiyoshiStar|Lia|NanDesuKa|URANIME|VARYG|ZigZag)(?:\]|\b|$)';
-- --- END op 672

-- --- BEGIN op 673 ( update custom_format "Anime WEB Tier 5" )
delete from "custom_format_conditions" where "custom_format_name" = 'Anime WEB Tier 5' and "name" = 'TRaSH Anime WEB Tier 5' and "type" = 'release_title' and "arr_type" = 'all' and "negate" = 0 and "required" = 1;
-- --- END op 673

-- --- BEGIN op 674 ( delete regular_expression "TRaSH Anime WEB Tier 5" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'TRaSH Anime WEB Tier 5' AND tag_name = 'Anime';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'TRaSH Anime WEB Tier 5' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'TRaSH Anime WEB Tier 5' and "pattern" = '(?i)(?:^\[|(?<=-)|(?<=\[))(?:9volt|GJM|Kaleido|Kantai|PlayWeb|SobsPlease|Some-Stuffs)(?:\]|\b|$)';
-- --- END op 674

-- --- BEGIN op 675 ( update custom_format "Anime WEB Tier 6" )
delete from "custom_format_conditions" where "custom_format_name" = 'Anime WEB Tier 6' and "name" = 'TRaSH Anime WEB Tier 6' and "type" = 'release_title' and "arr_type" = 'all' and "negate" = 0 and "required" = 1;
-- --- END op 675

-- --- BEGIN op 676 ( delete regular_expression "TRaSH Anime WEB Tier 6" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'TRaSH Anime WEB Tier 6' AND tag_name = 'Anime';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'TRaSH Anime WEB Tier 6' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'TRaSH Anime WEB Tier 6' and "pattern" = '(?i)(?:^\[|(?<=-)|(?<=\[))(?:Asenshi|Chihiro|Commie|DameDesuYo|Doki|KawaSubs|Tsundere)(?:\]|\b|$)';
-- --- END op 676
