-- @operation: export
-- @entity: batch
-- @name: Pulled the 5.1 Group Exceptions from TrueHD
-- @exportedAt: 2026-08-26T23:58:39.905Z
-- @opIds: 5704, 5705, 5706

-- --- BEGIN op 5704 ( create custom_format "TrueHD" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('TrueHD', 'The Secret Life Of Pets 2016 2160p UHD BluRay TrueHD 7 1 HDR x265-CtrlHD', 'movie', 1, NULL);
-- --- END op 5704

-- --- BEGIN op 5705 ( update custom_format "TrueHD" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'TrueHD'
	  AND name = 'Not Atmos Group (non-5.1)'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 1
	  AND required = 1;
-- --- END op 5705

-- --- BEGIN op 5706 ( delete regular_expression "Not Atmos Group (non-5.1)" )
delete from "regular_expressions" where "name" = 'Not Atmos Group (non-5.1)';
-- --- END op 5706
