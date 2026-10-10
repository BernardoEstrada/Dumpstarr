-- @operation: export
-- @entity: batch
-- @name: Updated SiCFoI + CMv4 regex
-- @exportedAt: 2026-10-10T14:33:27.390Z
-- @opIds: 6775, 6776, 6777, 6778, 6779

-- --- BEGIN op 6775 ( update regular_expression "SiCFoI" )
update "regular_expressions" set "pattern" = '^(?=.*\b(CMv4)\b).*\b(SiCFoI)\b' where "name" = 'SiCFoI' and "pattern" = '\b(SiCFoI)\b';
-- --- END op 6775

-- --- BEGIN op 6776 ( update regular_expression "SiCFoI + CMv4" )
update "regular_expressions" set "name" = 'SiCFoI + CMv4' where "name" = 'SiCFoI';
-- --- END op 6776

-- --- BEGIN op 6777 ( update custom_format "LQ Release Title" )
update "condition_patterns" set "regular_expression_name" = 'SiCFoI + CMv4' where "custom_format_name" = 'LQ Release Title' and "condition_name" = 'SiCFoI' and "regular_expression_name" in ('SiCFoI', 'SiCFoI + CMv4');
-- --- END op 6777

-- --- BEGIN op 6778 ( update custom_format "LQ Release Title" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'LQ Release Title'
	  AND name = 'SiCFoI'
	  AND type = 'release_title'
	  AND arr_type = 'radarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 6778

-- --- BEGIN op 6779 ( update custom_format "LQ Release Title" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ Release Title', 'SiCFoI + CMv4', 'release_title', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ Release Title', 'SiCFoI + CMv4', 'SiCFoI + CMv4');
-- --- END op 6779
