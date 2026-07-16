-- @operation: export
-- @entity: batch
-- @name: Updated Bad Season Pack format description
-- @exportedAt: 2026-07-16T15:06:29.049Z
-- @opIds: 3865

-- --- BEGIN op 3865 ( update custom_format "Bad Season Pack" )
update "custom_formats" set "description" = 'This format targets season packs from specific groups that cause issues at import.' where "name" = 'Bad Season Pack' and "description" = '';
-- --- END op 3865
