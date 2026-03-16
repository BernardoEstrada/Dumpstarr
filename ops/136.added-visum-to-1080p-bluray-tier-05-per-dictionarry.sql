-- @operation: export
-- @entity: batch
-- @name: Added ViSUM to 1080p Bluray Tier 05 per Dictionarry
-- @exportedAt: 2026-03-15T18:02:39.128Z
-- @opIds: 1007, 1008

-- --- BEGIN op 1007 ( update regular_expression "ViSUM" )
update "regular_expressions" set "pattern" = '^(ViSUM)$' where "name" = 'ViSUM' and "pattern" = '(?<=^|[\s.-])ViSUM\b';

DELETE FROM regular_expression_tags WHERE regular_expression_name IN ('ViSUM') AND tag_name = 'WEB-DL';
-- --- END op 1007

-- --- BEGIN op 1008 ( update custom_format "1080p Bluray Tier 05" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Bluray Tier 05', 'ViSUM', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Bluray Tier 05', 'ViSUM', 'ViSUM');
-- --- END op 1008
