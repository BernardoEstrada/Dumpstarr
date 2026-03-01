-- @operation: export
-- @entity: batch
-- @name: Removed Dumpstarr Anime Tiers
-- @exportedAt: 2026-03-01T20:20:20.932Z
-- @opIds: 575, 576, 577, 578

-- --- BEGIN op 575 ( delete regular_expression "Dumpstarr Anime Tier 1" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dumpstarr Anime Tier 1' AND tag_name = 'Anime';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dumpstarr Anime Tier 1' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'Dumpstarr Anime Tier 1' and "pattern" = '(?i)(?:^\[|(?<=-)|(?<=\[))(?:Ember|Judas|ASW)(?:\]|\b|$)';
-- --- END op 575

-- --- BEGIN op 576 ( delete regular_expression "Dumpstarr Anime Tier 2" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dumpstarr Anime Tier 2' AND tag_name = 'Anime';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dumpstarr Anime Tier 2' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'Dumpstarr Anime Tier 2' and "pattern" = '(?i)(?:^\[|(?<=-)|(?<=\[))(?:HorribleSubs|Doki|MTBB|Trix|GJM|SCY)(?:\]|\b|$)';
-- --- END op 576

-- --- BEGIN op 577 ( delete regular_expression "Dumpstarr Anime Tier 3" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dumpstarr Anime Tier 3' AND tag_name = 'Anime';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dumpstarr Anime Tier 3' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'Dumpstarr Anime Tier 3' and "pattern" = '(?i)(?:^\[|(?<=-)|(?<=\[))(?:AkihitoSubs|Beatrice[._-]?Raws|Tenrai[._-]?Sensei|Vivid)(?:\]|\b|$)';
-- --- END op 577

-- --- BEGIN op 578 ( delete regular_expression "Dumpstarr Anime Tier 4" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dumpstarr Anime Tier 4' AND tag_name = 'Anime';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dumpstarr Anime Tier 4' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'Dumpstarr Anime Tier 4' and "pattern" = '(?i)(?:^\[|(?<=-)|(?<=\[))(?:SubsPlease|Erai[._-]?Raws|Commie|Nyaa|SAM)(?:\]|\b|$)';
-- --- END op 578
