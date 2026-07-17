-- @operation: export
-- @entity: batch
-- @name: Add RandomBytes to TRaSH UHD Bluray Tier 02
-- @exportedAt: 2026-07-17T19:59:47.937Z
-- @opIds: 3879, 3880, 3881

-- --- BEGIN op 3879 ( update regular_expression "TRaSH UHD Bluray Tier 02" )
update "regular_expressions" set "pattern" = '^(HiDt|HQMUX|RandomBytes)$' where "name" = 'TRaSH UHD Bluray Tier 02' and "pattern" = '^(HiDt|HQMUX)$';
-- --- END op 3879

-- --- BEGIN op 3880 ( update custom_format "WEB Tier 03" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'WEB Tier 03'
	  AND name = 'STC'
	  AND type = 'release_group'
	  AND arr_type = 'sonarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 3880

-- --- BEGIN op 3881 ( delete regular_expression "STC" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'STC' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'STC';
-- --- END op 3881
