-- @operation: export
-- @entity: batch
-- @name: Pull Rick and Morty from Bad Source
-- @exportedAt: 2026-09-17T12:59:51.756Z
-- @opIds: 6067, 6068, 6069, 6070

-- --- BEGIN op 6067 ( update custom_format "Bad Source" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Source', 'Not Season Pack', 'release_type', 'sonarr', 1, 0);

INSERT INTO condition_release_types (custom_format_name, condition_name, release_type) VALUES ('Bad Source', 'Not Season Pack', 'season_pack');
-- --- END op 6067

-- --- BEGIN op 6068 ( update custom_format "Bad Source" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Bad Source'
	  AND name = 'Not Season Pack'
	  AND type = 'release_type'
	  AND arr_type = 'sonarr'
	  AND negate = 1
	  AND required = 0;
-- --- END op 6068

-- --- BEGIN op 6069 ( update custom_format "Bad Source" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Bad Source'
	  AND name = 'Rick and Morty S09'
	  AND type = 'release_title'
	  AND arr_type = 'sonarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 6069

-- --- BEGIN op 6070 ( delete regular_expression "Rick and Morty S09 Banned Groups" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Rick and Morty S09 Banned Groups' AND tag_name = 'Banned';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Rick and Morty S09 Banned Groups' AND tag_name = 'Custom';

delete from "regular_expressions" where "name" = 'Rick and Morty S09 Banned Groups';
-- --- END op 6070
