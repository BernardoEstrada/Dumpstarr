-- @operation: export
-- @entity: batch
-- @name: Remove One Pace from Banned
-- @exportedAt: 2026-03-06T22:59:27.990Z
-- @opIds: 3057, 3058, 3059

-- --- BEGIN op 3057 ( update custom_format "Banned Groups" )
UPDATE custom_format_conditions
SET negate = 0
WHERE custom_format_name = 'Banned Groups'
  AND name = 'Release Group Missing'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 1
  AND required = 0;
-- --- END op 3057

-- --- BEGIN op 3058 ( update custom_format "Banned Groups" )
UPDATE custom_format_conditions
SET negate = 1
WHERE custom_format_name = 'Banned Groups'
  AND name = 'Release Group Missing'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 3058

-- --- BEGIN op 3059 ( update custom_format "Banned Groups" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Banned Groups'
	  AND name = 'One Pace'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 3059
