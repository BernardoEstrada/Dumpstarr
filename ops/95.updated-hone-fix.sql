-- @operation: export
-- @entity: batch
-- @name: Updated HONE fix
-- @exportedAt: 2026-03-05T15:23:26.757Z
-- @opIds: 2359, 2366, 2367, 2368, 2369, 2370, 2373

-- --- BEGIN op 2359 ( update regular_expression "HONE Release Title" )
update "regular_expressions" set "pattern" = '\s+-?\s*HONE\b' where "name" = 'HONE Release Title' and "pattern" = '\b(HONE)\b';
-- --- END op 2359

-- --- BEGIN op 2366 ( create custom_format "Bad Naming Scheme" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('Bad Naming Scheme', 'How to Train Your Dragon (2010) (2160p UHD BluRay x265 DV HDR10+ DDP 7.1 English - DarQ HONE)', 'movie', 1, NULL);
-- --- END op 2366

-- --- BEGIN op 2367 ( update custom_format "Bad Naming Scheme" )
UPDATE custom_format_conditions
SET required = 0
WHERE custom_format_name = 'Bad Naming Scheme'
  AND name = 'HONE Release Title'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 1;
-- --- END op 2367

-- --- BEGIN op 2368 ( update custom_format "Bad Naming Scheme" )
UPDATE custom_format_conditions
SET required = 0
WHERE custom_format_name = 'Bad Naming Scheme'
  AND name = 'Not Hone Group'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 1
  AND required = 1;
-- --- END op 2368

-- --- BEGIN op 2369 ( update custom_format "Bad Naming Scheme" )
UPDATE custom_format_conditions
SET required = 1
WHERE custom_format_name = 'Bad Naming Scheme'
  AND name = 'Not Hone Group'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 1
  AND required = 0;
-- --- END op 2369

-- --- BEGIN op 2370 ( update regular_expression "HONE" )
update "regular_expressions" set "pattern" = '^(HONE|DiscoD|DarQ|Yogi|Weasley)$' where "name" = 'HONE' and "pattern" = '^(HONE)$';
-- --- END op 2370

-- --- BEGIN op 2373 ( update regular_expression "HONE Release Title" )
update "regular_expressions" set "pattern" = '[-\s]HONE\b' where "name" = 'HONE Release Title' and "pattern" = '\s+-?\s*HONE\b';
-- --- END op 2373
