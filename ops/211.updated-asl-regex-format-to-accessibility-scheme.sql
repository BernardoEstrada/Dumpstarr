-- @operation: export
-- @entity: batch
-- @name: Updated ASL Regex/Format to Accessibility Scheme
-- @exportedAt: 2026-04-26T16:18:30.026Z
-- @opIds: 3388, 3389, 3390, 3391, 3400, 3401

-- --- BEGIN op 3388 ( update regular_expression "Accessbility" )
update "regular_expressions" set "name" = 'Accessbility', "pattern" = '\b(ASL|BASL|BSL|Audio[ ._-]Description)\b' where "name" = 'American Sign Language' and "pattern" = '\b(ASL|BSL|Audio[ ._-]Description)\b';
-- --- END op 3388

-- --- BEGIN op 3389 ( update custom_format "ASL" )
update "condition_patterns" set "regular_expression_name" = 'Accessbility' where "custom_format_name" = 'ASL' and "condition_name" = 'ASL' and "regular_expression_name" = 'American Sign Language';
-- --- END op 3389

-- --- BEGIN op 3390 ( update custom_format "Accessibility" )
update "custom_formats" set "description" = '' where "name" = 'ASL' and "description" = 'Targets releases with ASL (American Sign Language) overlays.';
-- --- END op 3390

-- --- BEGIN op 3391 ( update custom_format "Accessibility" )
update "custom_formats" set "name" = 'Accessibility' where "name" = 'ASL';
-- --- END op 3391

-- --- BEGIN op 3400 ( update custom_format "Accessibility" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Accessibility'
	  AND name = 'ASL'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 1;
-- --- END op 3400

-- --- BEGIN op 3401 ( update custom_format "Accessibility" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Accessibility', 'Accessibility', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Accessibility', 'Accessibility', 'Accessbility');
-- --- END op 3401
