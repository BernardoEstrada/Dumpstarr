-- @operation: export
-- @entity: batch
-- @name: Standardize Special Edition naming across Radarr and Sonarr
-- @exportedAt: 2026-02-23T23:23:46.301Z
-- @opIds: 198, 199, 200, 201

-- --- BEGIN op 198 ( update regular_expression "Special Edition - Sonarr" )
update "regular_expressions" set "name" = 'Special Edition - Sonarr' where "name" = 'Sonarr - Special Edition';
-- --- END op 198

-- --- BEGIN op 199 ( update custom_format "TV Editions" )
update "condition_patterns" set "regular_expression_name" = 'Special Edition - Sonarr' where "custom_format_name" = 'TV Editions' and "condition_name" = 'Editions' and "regular_expression_name" = 'Sonarr - Special Edition';
-- --- END op 199

-- --- BEGIN op 200 ( update regular_expression "Special Edition - Radarr" )
update "regular_expressions" set "name" = 'Special Edition - Radarr' where "name" = 'Special Edition';
-- --- END op 200

-- --- BEGIN op 201 ( update custom_format "Special Edition" )
update "condition_patterns" set "regular_expression_name" = 'Special Edition - Radarr' where "custom_format_name" = 'Special Edition' and "condition_name" = 'Special Edition' and "regular_expression_name" = 'Special Edition';
-- --- END op 201
