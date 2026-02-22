-- @operation: export
-- @entity: batch
-- @name: Fixed TRaSH Anime Tier 08
-- @exportedAt: 2026-02-22T22:37:24.906Z
-- @opIds: 165

-- --- BEGIN op 165 ( update regular_expression "TRaSH Anime Bluray Tier 8" )
update "regular_expressions" set "pattern" = '(?i)(?:^\[|(?<=-)|(?<=\[))(?:AkihitoSubs|Arukoru|EDGE|EMBER|GHOST|Judas|Nep_Blanc|naiyas|Prof|Shir\u03C3)(?:\]|\b|$)' where "name" = 'TRaSH Anime Bluray Tier 8' and "pattern" = '(?i)(?:^\\[|(?<=-)|(?<=\\[))(?:AkihitoSubs|Arukoru|EDGE|EMBER|GHOST|Judas|Nep_Blanc|naiyas|Prof|Shir\u03C3\)(?:\\]|\\b|$)';
-- --- END op 165
