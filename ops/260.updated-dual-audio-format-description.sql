-- @operation: export
-- @entity: batch
-- @name: Updated Dual Audio format description
-- @exportedAt: 2026-06-04T18:47:56.235Z
-- @opIds: 1590, 1591

-- --- BEGIN op 1590 ( update custom_format "Anime Dual Audio" )
update "custom_formats" set "description" = 'Matches releases with both the original language as well as another language.' where "name" = 'Anime Dual Audio' and "description" = '';
-- --- END op 1590

-- --- BEGIN op 1591 ( update custom_format "Anime Dual Audio" )
update "custom_formats" set "description" = 'Matches releases with both the original language as well as English.' where "name" = 'Anime Dual Audio' and "description" = 'Matches releases with both the original language as well as another language.';
-- --- END op 1591
