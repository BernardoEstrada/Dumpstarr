-- @operation: export
-- @entity: batch
-- @name: Updated custom show regex/formats|Added Bad Source to LQ
-- @exportedAt: 2026-05-18T14:13:00.337Z
-- @opIds: 795, 796, 797, 798, 801, 802, 806, 807, 808, 809, 810, 811, 812, 813, 814, 820, 821, 822

-- --- BEGIN op 795 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'Dumpstarr LQ', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'Dumpstarr LQ'
    AND arr_type = 'radarr'
);
-- --- END op 795

-- --- BEGIN op 796 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'Dumpstarr LQ', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'Dumpstarr LQ'
    AND arr_type = 'sonarr'
);
-- --- END op 796

-- --- BEGIN op 797 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'Dumpstarr LQ Release Title', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'Dumpstarr LQ Release Title'
    AND arr_type = 'radarr'
);
-- --- END op 797

-- --- BEGIN op 798 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'Dumpstarr LQ Release Title', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'Dumpstarr LQ Release Title'
    AND arr_type = 'sonarr'
);
-- --- END op 798

-- --- BEGIN op 801 ( update regular_expression "Adventure Time Season 8 Banned Groups" )
update "regular_expressions" set "pattern" = '(?i)^adventure[ ._-]+time[ ._-]+S08.*-(CtrlHD|EPSiLON|H3B|NTb|RTN)$' where "name" = 'Adventure Time Season 8 Banned Groups' and "pattern" = '(?i)^adventure[ ._-]+time[ ._-]+S08.*-(CtrlHD|EPSiLON|H3B|NTb|RTN)\b';
-- --- END op 801

-- --- BEGIN op 802 ( update regular_expression "House Season 6 Banned Groups" )
update "regular_expressions" set "pattern" = '^(Dr\.\s*)?House.*S06.*-(d3g|DBTV|DUSKLiGHT|HONE|NERO|NINJACENTRAL|LiPAN|SiGMA|TVARCHiV|WADU)$' where "name" = 'House Season 6 Banned Groups' and "pattern" = '^(Dr\.\s*)?House.*S06.*-(d3g|DBTV|DUSKLiGHT|HONE|NERO|NINJACENTRAL|LiPAN|SiGMA|TVARCHiV|WADU)\b';
-- --- END op 802

-- --- BEGIN op 806 ( update regular_expression "The Big Bang Theory" )
update "regular_expressions" set "pattern" = '(?i)^(the[ ._-]+)?big[ ._-]+bang[ ._-]+theory[ ._-].*-(DAWN)$' where "name" = 'The Big Bang Theory' and "pattern" = '\b(the[ ._-]+)?big[ ._-]+bang[ ._-]+theory\b';
-- --- END op 806

-- --- BEGIN op 807 ( update regular_expression "The Big Bang Theory" )
update "regular_expressions" set "pattern" = '(?i)^(the[ ._-]+)?big[ ._-]+bang[ ._-]+theory[ ._-].*-(CiELOS|playWEB)$' where "name" = 'The Big Bang Theory' and "pattern" = '(?i)^(the[ ._-]+)?big[ ._-]+bang[ ._-]+theory[ ._-].*-(DAWN)$';
-- --- END op 807

-- --- BEGIN op 808 ( update regular_expression "The Big Bang Theory" )
update "regular_expressions" set "description" = 'Matches bad releases fore The Big Bang Theory.' where "name" = 'The Big Bang Theory' and "description" = 'Matches the show "The Big Bang Theory"';
-- --- END op 808

-- --- BEGIN op 809 ( update regular_expression "The Big Bang Theory" )
update "regular_expressions" set "pattern" = '(?i)^(?:the[ ._-]+)?big[ ._-]+bang[ ._-]+theory[ ._-].*-(CiELOS|playWEB)$' where "name" = 'The Big Bang Theory' and "pattern" = '(?i)^(the[ ._-]+)?big[ ._-]+bang[ ._-]+theory[ ._-].*-(CiELOS|playWEB)$';
-- --- END op 809

-- --- BEGIN op 810 ( update regular_expression "The Big Bang Theory Banned Groups1" )
update "regular_expressions" set "name" = 'The Big Bang Theory Banned Groups1' where "name" = 'The Big Bang Theory';
-- --- END op 810

-- --- BEGIN op 811 ( update custom_format "TBBT Banned Groups" )
update "condition_patterns" set "regular_expression_name" = 'The Big Bang Theory Banned Groups1' where "custom_format_name" = 'TBBT Banned Groups' and "condition_name" = 'The Big Bang Theory' and "regular_expression_name" in ('The Big Bang Theory', 'The Big Bang Theory Banned Groups1');
-- --- END op 811

-- --- BEGIN op 812 ( delete custom_format "TBBT Banned Groups" )
delete from "custom_formats" where "name" = 'TBBT Banned Groups';
-- --- END op 812

-- --- BEGIN op 813 ( delete regular_expression "The Big Bang Theory Banned Groups" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'The Big Bang Theory Banned Groups' AND tag_name = 'Banned';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'The Big Bang Theory Banned Groups' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'The Big Bang Theory Banned Groups';
-- --- END op 813

-- --- BEGIN op 814 ( update regular_expression "The Big Bang Theory Banned Groups" )
update "regular_expressions" set "name" = 'The Big Bang Theory Banned Groups' where "name" = 'The Big Bang Theory Banned Groups1';
-- --- END op 814

-- --- BEGIN op 820 ( update custom_format "Bad Source" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Source', 'Arthur Banned Groups', 'release_title', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Source', 'Arthur Banned Groups', 'Arthur Banned Groups');
-- --- END op 820

-- --- BEGIN op 821 ( update custom_format "Bad Source" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Source', 'The Big Bang Theory Banned Groups', 'release_title', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Source', 'The Big Bang Theory Banned Groups', 'The Big Bang Theory Banned Groups');
-- --- END op 821

-- --- BEGIN op 822 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'Bad Source', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'Bad Source'
    AND arr_type = 'sonarr'
);
-- --- END op 822
