-- @operation: export
-- @entity: batch
-- @name: Pulled Bad Season Pack format for now
-- @exportedAt: 2026-07-29T14:29:09.473Z
-- @opIds: 4364, 4365, 4366, 4367

-- --- BEGIN op 4364 ( update quality_profile "TV 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 1080p'
  AND custom_format_name = 'Bad Season Pack'
  AND arr_type = 'sonarr'
  AND score = -10000;
-- --- END op 4364

-- --- BEGIN op 4365 ( update quality_profile "TV 2160p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 2160p'
  AND custom_format_name = 'Bad Season Pack'
  AND arr_type = 'sonarr'
  AND score = -10000;
-- --- END op 4365

-- --- BEGIN op 4366 ( delete custom_format "Bad Season Pack" )
delete from "custom_formats" where "name" = 'Bad Season Pack';
-- --- END op 4366

-- --- BEGIN op 4367 ( delete regular_expression "Release Name (Spaces)" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Release Name (Spaces)' AND tag_name = 'Custom';

delete from "regular_expressions" where "name" = 'Release Name (Spaces)';
-- --- END op 4367
