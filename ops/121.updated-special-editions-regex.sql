-- @operation: export
-- @entity: batch
-- @name: Updated Special Editions regex
-- @exportedAt: 2026-03-08T07:21:48.630Z
-- @opIds: 3065, 3066

-- --- BEGIN op 3065 ( update regular_expression "Special Edition - Radarr" )
update "regular_expressions" set "pattern" = '(?<!^)\b(extended|uncut|directors|special|unrated|uncensored|cut|version|(?<!{)edition)(\b|\d)' where "name" = 'Special Edition - Radarr' and "pattern" = '(?<!^|{)\b(extended|uncut|directors|special|unrated|uncensored|cut|version|edition)(\b|\d)';
-- --- END op 3065

-- --- BEGIN op 3066 ( update regular_expression "Special Edition - Sonarr" )
update "regular_expressions" set "pattern" = '(?<!^)\b(extended|superfan|uncut|directors|special|unrated|uncensored|cut|version|(?<!{)edition)(\b|\d)' where "name" = 'Special Edition - Sonarr' and "pattern" = '(?<!^|{)\b(extended|superfan|unrated|uncensored|edition)(\b|\d)';
-- --- END op 3066
